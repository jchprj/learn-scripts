@Grab('org.mariadb.jdbc:mariadb-java-client:2.7.3')
import java.sql.*
import javax.sql.DataSource

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

import org.mariadb.jdbc.Driver;
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
            ResultSet rs = stm.executeQuery("SELECT 1+1")
            if (rs.next()) {
                rs.getInt(1)
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

    @Bean
    public DataSource dataSource() {
        final DriverManagerDataSource dataSource = new DriverManagerDataSource()
        dataSource.setDriverClassName("org.mariadb.jdbc.Driver")
        // https://stackoverflow.com/questions/50911760/is-mariadb-jdbc-driver-ignoring-connection-timeout
        // jdbc:mysql://localhost:1433/my-db?socketTimeout=2000
        dataSource.setUrl("jdbc:mariadb:aurora://localhost:3306/test?useLegacyDatetimeCode=false&serverTimezone=UTC")
        dataSource.setUsername("root")
        dataSource.setPassword("")

        return dataSource
    }
}