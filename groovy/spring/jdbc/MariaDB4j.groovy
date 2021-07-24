// https://github.com/vorburger/MariaDB4j
// https://github.com/vorburger/MariaDB4j/blob/master/mariaDB4j/src/test/java/ch/vorburger/mariadb4j/tests/MariaDB4jSampleTutorialTest.java
// https://stackoverflow.com/questions/6734410/is-there-a-way-to-run-mysql-in-memory-for-junit-test-cases

@Grab('ch.vorburger.mariaDB4j:mariaDB4j-springboot:2.4.0')
@Grab('org.mariadb.jdbc:mariadb-java-client:2.7.3')
@Grab('commons-dbutils:commons-dbutils:1.7')

import java.sql.*
import java.util.Properties

import javax.sql.DataSource

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.core.env.Environment
import org.springframework.jdbc.datasource.DriverManagerDataSource
import org.springframework.boot.jdbc.DataSourceBuilder
import org.springframework.beans.factory.annotation.Qualifier

import java.util.List;

import ch.vorburger.mariadb4j.DB;
import ch.vorburger.mariadb4j.DBConfiguration;
import ch.vorburger.mariadb4j.DBConfigurationBuilder;
import org.mariadb.jdbc.Driver;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

@RestController
class ThisWillActuallyRun {

    @Autowired
    @Qualifier("ds")
    private DataSource dataSource

    @RequestMapping("/")
    String home() {
        try {
            System.out.println(dataSource.getUrl())

            Connection conn = dataSource.getConnection()
            
            QueryRunner qr = new QueryRunner()

            // Should be able to create a new table
            qr.update(conn, "CREATE TABLE hello(world VARCHAR(100))")

            // Should be able to insert into a table
            qr.update(conn, "INSERT INTO hello VALUES ('Hello, world')")

            // Should be able to select from a table
            List<String> results = qr.query(conn, "SELECT * FROM hello", new ColumnListHandler<String>())

            results.toString()
        } catch (SQLException ex) {
            ex.getMessage()
        }
    }

}

@Configuration
public class Config {

    @Autowired
    private DBConfiguration dbConfig

    @Bean("ds")
    public DataSource datasource() {
        final DriverManagerDataSource dataSource = new DriverManagerDataSource()
        dataSource.setDriverClassName("org.mariadb.jdbc.Driver")
        dataSource.setUrl(dbConfig.getURL("test"))
        dataSource.setUsername("root")
        dataSource.setPassword("")

        return dataSource
    }

    @Bean
    public DBConfiguration dbConfig() {
        DBConfigurationBuilder config = DBConfigurationBuilder.newBuilder();
        config.setPort(0); // 0 => autom. detect free port
        config.setSecurityDisabled(false);
        return config.build()
    }

    @Bean
    public DB db() {
        DB db = DB.newEmbeddedDB(dbConfig);
        db.start()
        
        String dbName = "test";
        if (!dbName.equals("test")) {
            // mysqld out-of-the-box already has a DB named "test"
            // in case we need another DB, here's how to create it first
            db.createDB(dbName, "root", "");
        }
        return db
    }
}