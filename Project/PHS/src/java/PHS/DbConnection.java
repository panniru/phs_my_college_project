package PHS;

/**
 *
 * @author srikanth
 */
import java.sql.*;

public class DbConnection {

    private String url = "jdbc:db2://localhost:50000/PHSYSTEM";
    private String driver = "com.ibm.db2.jcc.DB2Driver";
    private String user = "db2admin";
    private String pwd = "db2admin";
    private ResultSet resultSet;
    private Statement statement;
    private PreparedStatement preparedsStatement;
    private Connection connection;

    public DbConnection()
    {
        try {
            Class.forName(driver);
            this.connection = DriverManager.getConnection(url, user, pwd);
//            stmt = conn.createStatement();
            connection.setAutoCommit(false);
            System.out.println("connection :" + connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
    }
    public Connection getDbConnection() {
        
        return connection;
    }

    /**
     * @return the resultSet
     */
    public ResultSet getResultSet(String query) {
       try{
            resultSet=getStatement().executeQuery(query);
        }catch(SQLException se)
        {
            se.printStackTrace();
        }
        return resultSet;
    }

    /**
     * @return the statement
     */
    public Statement getStatement() {
        try{
            statement = getDbConnection().createStatement();
        }catch(SQLException se)
        {
            se.printStackTrace();
        }

        return statement;
    }
    public Statement getScrollableStatement()
    {
         try{
            statement = getDbConnection().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
        }catch(SQLException se)
        {
            se.printStackTrace();
        }

    
        return statement;
    }

    /**
     * @return the preparedsStatement
     */
    public PreparedStatement getPreparedsStatement(String query) {
        try{
            preparedsStatement= getDbConnection().prepareStatement(query);
        }catch(SQLException se)
        {
            se.printStackTrace();
        }
        return preparedsStatement;
    }
}
