package fr.xebia.dataimporter;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.io.LineIterator;

/**
 * Created by IntelliJ IDEA.
 * User: slm
 * Date: 04/12/11
 * Time: 23:33
 * To change this template use File | Settings | File Templates.
 */
public class SchemasExecutor {
    private final Statement statement;
    private final InputStream file;

    public SchemasExecutor(Statement statement, InputStream file) {
        this.statement = statement;
        this.file = file;
    }

    public void execute(){


            LineIterator lt = new LineIterator( new InputStreamReader(file));
            while( lt.hasNext()){
                String line = lt.nextLine();
                 try {
                statement.execute(line);
                 }catch (SQLException e) {
                     e.printStackTrace();
                 }
            }
    }
}
