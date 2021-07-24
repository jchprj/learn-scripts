// https://github.com/vorburger/MariaDB4j

@Grab('ch.vorburger.mariaDB4j:mariaDB4j-springboot:2.4.0')
@Grab('org.mariadb.jdbc:mariadb-java-client:2.7.3')
@Grab('commons-dbutils:commons-dbutils:1.7')
@Grab('com.fasterxml.jackson.module:jackson-module-kotlin:2.11.4')

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
import org.apache.commons.dbutils.handlers.MapListHandler;
import com.fasterxml.jackson.databind.ObjectMapper

@RestController
class ThisWillActuallyRun {

    @Autowired
    @Qualifier("ds")
    private DataSource dataSource
    
    @RequestMapping("/")
    String home() {
        System.out.println(dataSource.getUrl())
        Connection conn = dataSource.getConnection()
        try {
            QueryRunner qr = new QueryRunner()
            String sql = "show variables like \"%log_bin%\""
            List<Map<String, Object>> result = qr.query(conn, sql, new MapListHandler());
            ObjectMapper mapper = new ObjectMapper();
            mapper.writeValueAsString(result);
        } catch (Exception ex) {
            ex.getMessage()
        } finally {
            DbUtils.close(conn)
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

        // https://github.com/vorburger/MariaDB4j/issues/52
        // https://dev.mysql.com/doc/refman/5.7/en/replication-options-binary-log.html
        config.addArg("--log-bin=mysql-bin.log")
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