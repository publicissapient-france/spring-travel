package fr.xebia;

import org.junit.Test;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

/**
 * Test class for the spring context
 */
@ContextConfiguration(locations = {"classpath*:webapp/WEB-INF/spring/root-context.xml"})
public class ContextTest extends AbstractJUnit4SpringContextTests {

    /**
     * Test method for context loading
     */
    @Test
    public void testContext() {
    }
}