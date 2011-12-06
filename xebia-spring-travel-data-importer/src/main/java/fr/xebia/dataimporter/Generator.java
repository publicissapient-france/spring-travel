package fr.xebia.dataimporter;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Properties;

public class Generator {

    public final static Logger LOG = LoggerFactory.getLogger(Generator.class);

    /**
     * Users statement to use with <code>String.format()</code>.
     * Parameters : <ul><li>username</li><li>password (encrypted)</li><li>enabled</li></ul>
     */
    public static final String DEFAULT_PASSWORD = "12430911a8af075c6f41c6976af22b09";

    public static final List<String> ANIMALS;
    public static final List<String> HOTEL_TYPES;
    public static final List<String> NAMES;

    private final Statement statement;
    private final String db;

    static {
        try {
            final InputStream animalsStream = Generator.class.getResource("animals").openStream();
            final InputStream hotelTypesStream = Generator.class.getResource("hotel-types").openStream();
            final InputStream namesStream = Generator.class.getResource("names").openStream();
            ANIMALS = IOUtils.readLines(animalsStream);
            HOTEL_TYPES = IOUtils.readLines(hotelTypesStream);
            NAMES = IOUtils.readLines(namesStream);

            animalsStream.close();
            hotelTypesStream.close();
            namesStream.close();

            Class.forName("org.hsqldb.jdbc.JDBCDriver");
            Class.forName("com.mysql.jdbc.Driver");
        } catch (IOException e) {
            throw new IllegalStateException(e);
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException(e);
        }
    }

    public Generator(Statement statement, String db) {
        this.statement = statement;
        this.db = db;

    }

    public String random(List<String>... lists) {
        boolean first = true;
        StringBuffer result = new StringBuffer();
        for (List<String> list : lists) {
            if (first) {
                first = false;
            } else {
                result.append(" ");
            }
            result.append(list.get((int) (Math.random() * list.size())));
        }
        return result.toString();
    }

    public void generateCustomerFromTo(int from, int to) throws SQLException {
        LOG.info("Generating customers...");

        LOG.debug("Deleting every customer");
        statement.executeUpdate("DELETE FROM Customer");

        LOG.debug("Generating the default customers");
        statement.executeUpdate("insert into Customer (username, first, last, email, password) values ('erwin', 'Erwin', 'Vervaet', 'evervaet@springtravel.com', '12430911a8af075c6f41c6976af22b09')");
        statement.executeUpdate("insert into Customer (username, first, last, email, password) values ('jeremy', 'Jeremy', 'Grelle', 'jgrelle@springtravel.com', '57c6cbff0d421449be820763f03139eb')");
        statement.executeUpdate("insert into Customer (username, first, last, email, password) values ('keith', 'Keith', 'Donald', 'kdonald@springtravel.com', '417c7382b16c395bc25b5da1398cf076')");
        statement.executeUpdate("insert into Customer (username, first, last, email, password) values ('scott', 'Scott', 'Andrews', 'sandrews@springtravel.com', '942f2339bf50796de535a384f0d1af3e')");

        LOG.debug("Generating {} customers", (to - from));
        for (int count = from; count < to; count++) {
            final String countOn6Digits = String.format("%06d", count);
            final String username = "user-" + countOn6Digits;
            final String firstname = "firstname-" + countOn6Digits;
            final String lastname = "lastname-" + countOn6Digits;
            final String mail = firstname + '-' + lastname + "@springtravel.com";

            final String customerStatement = "insert into Customer (username, first, last, email, password) " +
                    "values ('%s', '%s', '%s', '%s', '417c7382b16c395bc25b5da1398cf076');";
            final String currentUserStatement = String.format(customerStatement,
                    username,
                    firstname,
                    lastname,
                    mail
            );

            statement.executeUpdate(currentUserStatement);

            if (count % 100 == 0) {
                statement.clearBatch();
                statement.clearWarnings();
            }
        }
        LOG.debug("Done.");
    }

    public void generateHotelFromTo(int from, int to) throws SQLException {
        LOG.info("Generating hotels...");

        LOG.debug("Deleting every hotel");
        statement.executeUpdate("DELETE FROM Hotel");

        LOG.debug("Generating the default hotels");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (1, 199, 'Westin Diplomat', '3555 S. Ocean Drive', 'Hollywood', 'FL', '33019', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (2, 60, 'Jameson Inn', '890 Palm Bay Rd NE', 'Palm Bay', 'FL', '32905', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (3, 199, 'Chilworth Manor', 'The Cottage, Southampton Business Park', 'Southampton', 'Hants', 'SO16 7JF', 'UK')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (4, 120, 'Marriott Courtyard', 'Tower Place, Buckhead', 'Atlanta', 'GA', '30305', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (5, 180, 'Doubletree', 'Tower Place, Buckhead', 'Atlanta', 'GA', '30305', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (6, 450, 'W Hotel', 'Union Square, Manhattan', 'NY', 'NY', '10011', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (7, 450, 'W Hotel', 'Lexington Ave, Manhattan', 'NY', 'NY', '10011', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (8, 250, 'Hotel Rouge', '1315 16th Street NW', 'Washington', 'DC', '20036', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (9, 300, '70 Park Avenue Hotel', '70 Park Avenue', 'NY', 'NY', '10011', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (10, 300, 'Conrad Miami', '1395 Brickell Ave', 'Miami', 'FL', '33131', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (11, 80, 'Sea Horse Inn', '2106 N Clairemont Ave', 'Eau Claire', 'WI', '54703', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (12, 90, 'Super 8 Eau Claire Campus Area', '1151 W Macarthur Ave', 'Eau Claire', 'WI', '54701', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (13, 160, 'Marriot Downtown', '55 Fourth Street', 'San Francisco', 'CA', '94103', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (14, 200, 'Hilton Diagonal Mar', 'Passeig del Taulat 262-264', 'Barcelona', 'Catalunya', '08019', 'Spain')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (15, 210, 'Hilton Tel Aviv', 'Independence Park', 'Tel Aviv', '', '63405', 'Israel')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (16, 240, 'InterContinental Tokyo Bay', 'Takeshiba Pier', 'Tokyo', '', '105', 'Japan')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (17, 130, 'Hotel Beaulac', ' Esplanade Leopold-Robert 2', 'Neuchatel', '', '2000', 'Switzerland')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (18, 140, 'Conrad Treasury Place', 'William & George Streets', 'Brisbane', 'QLD', '4001', 'Australia')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (19, 230, 'Ritz Carlton', '1228 Sherbrooke St', 'West Montreal', 'Quebec', 'H3G1H6', 'Canada')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (20, 460, 'Ritz Carlton', 'Peachtree Rd, Buckhead', 'Atlanta', 'GA', '30326', 'USA')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (21, 220, 'Swissotel', '68 Market Street', 'Sydney', 'NSW', '2000', 'Australia')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (22, 250, 'Melia White House', 'Albany Street', 'Regents Park London', '', 'NW13UP', 'Great Britain')");
        statement.executeUpdate("insert into Hotel (id, price, name, address, city, state, zip, country) values (23, 210, 'Hotel Allegro', '171 West Randolph Street', 'Chicago', 'IL', '60601', 'USA')");

        LOG.debug("Generating {} hotels", (to - from));
        for (int count = from; count < to; count++) {
            final String countOn6Digits = String.format("%06d", count);
            final int price = (int) (300 + ((count % 2 == 0 ? 1 : -1) * (Math.random() * 100)));

            final String hotelStatement = "insert into Hotel (id, price, name, address, city, state, zip, country) " +
                    "values (%d, %d, '%s', '%s', '%s', '%s', '%s', '%s')";

            final String currentHotelStatement = String.format(hotelStatement,
                    23 + count,
                    price,
                    random(NAMES, ANIMALS, HOTEL_TYPES),
                    "Somewhere, over the rainbow",
                    "Boston",
                    "Texas",
                    "00000",
                    "USA"
            );

            statement.executeUpdate(currentHotelStatement);

            if (count % 100 == 0) {
                statement.clearBatch();
                statement.clearWarnings();
            }
        }
        LOG.debug("Done.");
    }

    public void generateUsersFromTo(int from, int to) throws SQLException {
        LOG.info("Generating users...");

        LOG.debug("Deleting every user");
        statement.executeUpdate("DELETE FROM Customer");

        LOG.debug("Generating the default users");
        statement.executeUpdate("insert into Customer (username, password) values ('erwin', '12430911a8af075c6f41c6976af22b09')");
        statement.executeUpdate("insert into Customer (username, password) values ('jeremy', '57c6cbff0d421449be820763f03139eb')");
        statement.executeUpdate("insert into Customer (username, password) values ('keith', '417c7382b16c395bc25b5da1398cf076')");
        statement.executeUpdate("insert into Customer (username, password) values ('scott', '942f2339bf50796de535a384f0d1af3e')");

        LOG.debug("Generating {} users", (to - from));
        for (int count = from; count < to; count++) {
            final String countOn6Digits = String.format("%06d", count);
            final String username = "user-" + countOn6Digits;

            final String usersStatement = "insert into Customer (username, password) " +
                    "values ('%s', '%s');";
            final String currentUserStatement = String.format(usersStatement,
                    username,
                    DEFAULT_PASSWORD
            );

            statement.executeUpdate(currentUserStatement);

            if (count % 100 == 0) {
                statement.clearBatch();
                statement.clearWarnings();
            }
        }
        LOG.debug("Done.");
    }

    public void generateAuthoritiesFromTo(int from, int to) throws SQLException {
        LOG.info("Generating authorities...");
        /*
       LOG.debug("Deleting every authority");
       statement.executeUpdate("DELETE FROM authorities");

       LOG.debug("Generating the default authorities");
       statement.executeUpdate("insert into authorities (username, authority) values ('erwin', 'ROLE_USER')");
       statement.executeUpdate("insert into authorities (username, authority) values ('jeremy', 'ROLE_USER')");
       statement.executeUpdate("insert into authorities (username, authority) values ('keith', 'ROLE_USER')");
       statement.executeUpdate("insert into authorities (username, authority) values ('scott', 'ROLE_USER')");

       LOG.debug("Generating {} authorities", (to - from));
       for (int count = from; count < to; count++) {
           final String countOn6Digits = String.format("%06d", count);
           final String username = "user-" + countOn6Digits;

           final String authoritiesStatement = "insert into authorities (username, authority) " +
                   "values ('%s', '%s');";
           final String currentAuthorityStatement = String.format(authoritiesStatement,
                   username,
                   "ROLE_USER"
           );

           statement.executeUpdate(currentAuthorityStatement);

           if (count % 100 == 0) {
               statement.clearBatch();
               statement.clearWarnings();
           }
       }
       LOG.debug("Done."); */
    }


    private void createTables() throws SQLException {
        SchemasExecutor executor = new SchemasExecutor(statement, Generator.class.getResourceAsStream("/" + db + ".sql"));
        executor.execute();
    }

    public static void main(String... args) {
        Integer numberOfEntries = null;
        String db = "hsql";
        if (args.length >= 1) {
            try {
                numberOfEntries = Integer.parseInt(args[0]);
            } catch (NumberFormatException e) {
                LOG.error("Invalid number argument : a number is expected");
            }

            if (args.length >= 2) {
                db = args[1];
                if (!db.equals("hsql") && !db.equals("mysql")) {
                    LOG.error("Database should be hsql or mysql\nUsage: Generator <number of entries> [mysql/hsql]");
                }
            }
        }
        if (numberOfEntries == null) {
            LOG.error("Usage: Generator <number of entries> [mysql/hsql]");
            System.exit(1);
        }

        Connection connection = null;
        Statement statement = null;
        try {

            Properties properties = new Properties();
            properties.load(Generator.class.getResourceAsStream("/" + db + ".properties"));
            connection = DriverManager.getConnection(properties.getProperty("jdbc.url"),
                    properties.getProperty("jdbc.name", ""), properties.getProperty("jdbc.password", ""));
            statement = connection.createStatement();
            Generator generator = new Generator(statement, db);

            generator.createTables();

            generator.generateUsersFromTo(1, numberOfEntries);
            generator.generateHotelFromTo(1, numberOfEntries);
            generator.generateAuthoritiesFromTo(1, numberOfEntries);
            generator.generateCustomerFromTo(1, numberOfEntries);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

