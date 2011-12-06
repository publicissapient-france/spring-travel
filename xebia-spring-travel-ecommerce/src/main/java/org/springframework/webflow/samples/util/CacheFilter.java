package org.springframework.webflow.samples.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Hashtable;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;

public class CacheFilter implements Filter {

	private boolean isEnabled = true;

	public void setEnabled(boolean enabled) {
		isEnabled = enabled;
	}

	public boolean isEnabled() {
		return isEnabled;
	}

	public class CacheResponseWrapper extends HttpServletResponseWrapper {

		public static final int BUFFER_SIZE = 250;

		protected HttpServletResponse origResponse = null;
		protected ServletOutputStream stream = null;
		protected PrintWriter writer = null;
		protected ByteArrayOutputStream cache = null;

		public CacheResponseWrapper(HttpServletResponse response) {
			super(response);
			this.origResponse = response;
			this.cache = new ByteArrayOutputStream();
		}

		public ServletOutputStream createOutputStream() throws IOException {
			return new CacheResponseStream(this.origResponse, this.cache);
		}

		public void flushBuffer() throws IOException {
			this.stream.flush();
		}

		public ServletOutputStream getOutputStream() throws IOException {
			if (this.writer != null)
				throw new IllegalStateException(
						"getWriter() has already been called!");
			if (this.stream == null)
				this.stream = createOutputStream();
			return this.stream;
		}

		public PrintWriter getWriter() throws IOException {
			if (this.writer != null)
				return this.writer;
			if (this.stream != null)
				throw new IllegalStateException(
						"getOutputStream() has already been called!");
			this.stream = createOutputStream();
			this.writer = new PrintWriter(new OutputStreamWriter(this.stream,
					"UTF-8"));
			return this.writer;
		}

		public InputStream getContentAsInputStream() {
			return new ByteArrayInputStream(this.cache.toByteArray());
		}
	}

	public class CacheResponseStream extends ServletOutputStream {
		protected boolean closed = false;
		protected HttpServletResponse response = null;
		protected ServletOutputStream output = null;
		protected OutputStream cache = null;

		public CacheResponseStream(HttpServletResponse response,
				OutputStream stream) throws IOException {
			this.response = response;
			this.cache = stream;
		}

		public void close() throws IOException {
			if (this.closed)
				throw new IOException(
						"This output stream has already been closed");
			this.cache.close();
			this.closed = true;
		}

		public void flush() throws IOException {
			if (this.closed)
				throw new IOException("Cannot flush a closed output stream");
			this.cache.flush();
		}

		public void write(int i) throws IOException {
			if (this.closed)
				throw new IOException("Cannot write to a closed output stream");
			this.cache.write((byte) i);
		}

		public void write(byte[] bytes) throws IOException {
			write(bytes, 0, bytes.length);
		}

		public void write(byte[] bytes, int start, int offset)
				throws IOException {
			if (this.closed)
				throw new IOException("Cannot write to a closed output stream");
			this.cache.write(bytes, start, offset);
		}

		public boolean closed() {
			return this.closed;
		}

		public void reset() {
		}
	}

	ServletContext context;
	FilterConfig config;
	long cacheTimeout = Long.MAX_VALUE;

	public void init(FilterConfig filterConfig) {

		this.config = filterConfig;

		String timeout = config.getInitParameter("cacheTimeout");
		if (timeout != null) {
			cacheTimeout = 60 * 1000 * Long.parseLong(timeout);
		}
		this.context = filterConfig.getServletContext();
		context.log("Initializing cache filter");
	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		if (this.isEnabled) {

			HttpSession session = request.getSession();
			@SuppressWarnings("unchecked")
			Map<String, CacheEntry> cache = (Map<String, CacheEntry>) session
					.getAttribute("pages.cache");
			if (cache == null) {
				cache = new Hashtable<String, CacheEntry>();
				session.setAttribute("pages.cache", cache);
			}

			// Return cached content if available
			String path = context.getRealPath("") + request.getRequestURI()
					+ request.getQueryString();
			CacheEntry cacheEntry = cache.get(path);
			if (cacheEntry != null) {
				response.setContentType(cacheEntry.t);
			} else {
				// Else, fetch it
				cacheEntry = new CacheEntry();
				CacheResponseWrapper wrapper = new CacheResponseWrapper(
						response);
				chain.doFilter(request, wrapper);

				byte[] buf = cacheEntry.buf;
				InputStream in = wrapper.getContentAsInputStream();
				OutputStream out = cacheEntry.c;
				int length;
				while ((length = in.read(buf)) >= 0) {
					out.write(buf, 0, length);
				}

				cacheEntry.t = wrapper.getContentType();
				cache.put(path, cacheEntry);
			}

			response.setContentType(cacheEntry.t);
			response.getOutputStream().write(cacheEntry.c.toByteArray());
		} else {
			chain.doFilter(request, response);
		}

	}

	public void destroy() {

	}

	private class CacheEntry implements Serializable {
		private static final long serialVersionUID = 1L;
		public byte[] buf = new byte[(CacheResponseWrapper.BUFFER_SIZE << 10)];
		public ByteArrayOutputStream c = new ByteArrayOutputStream();
		public String t = "text/html";
	}

}