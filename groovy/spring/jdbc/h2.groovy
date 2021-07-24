// https://zetcode.com/java/h2database/
// https://www.tutorialspoint.com/jdbc/jdbc-update-records.htm
// https://www.tutorialspoint.com/how-to-get-column-count-in-a-resultset-in-jdbc

@Grab('h2')
import java.sql.*
import java.util.Properties

import javax.sql.DataSource

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.core.env.Environment
import org.springframework.jdbc.datasource.DriverManagerDataSource

@RestController
class ThisWillActuallyRun {

    @Autowired
    private DataSource dataSource

    @RequestMapping("/")
    String home() {
        try {
            Connection con = dataSource.getConnection()
            Statement stm = con.createStatement()
            ResultSet rs = stm.executeQuery("SELECT 1+1 as col")
            if (rs.next()) {
                //Retrieving the ResultSetMetaData object
                ResultSetMetaData rsmd = rs.getMetaData();
                //getting the column type
                int column_count = rsmd.getColumnCount();
                String type = rsmd.getColumnType(column_count).toString()
                String name = rsmd.getColumnName(column_count)
                column_count + " " + name + "(" + type + "):" + rs.getInt(1)
            } else {
                "nothing"
            }
        } catch (SQLException ex) {
            ex.getMessage()
        }
    }

}

@Configuration
public class Config {

    @Autowired
    private Environment env

    @Bean
    public DataSource dataSource() {
        final DriverManagerDataSource dataSource = new DriverManagerDataSource()
        dataSource.setDriverClassName("org.h2.Driver")
        dataSource.setUrl("jdbc:h2:mem:myDb;DB_CLOSE_DELAY=-1")
        dataSource.setUsername("")
        dataSource.setPassword("")

        return dataSource
    }
}