package person.jarvis.datasourcefix;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.logging.Logger;

import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

public class FixedBasicDataSource extends BasicDataSource {

	@Override
	public Logger getParentLogger() throws SQLFeatureNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public synchronized void close() throws SQLException {
		DriverManager.deregisterDriver(DriverManager.getDriver(url));
		super.close();
	}
}
