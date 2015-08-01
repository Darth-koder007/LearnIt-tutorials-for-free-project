package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class newContent {

	private Connection conn;

	public newContent(Connection conn) {
		this.conn = conn;

	}

	public boolean login(String email, String password) throws SQLException {
		String sql = "select count(*) as count from users where email =? and password = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, email);
		stmt.setString(2, password);

		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}

		rs.close();
		if (count == 0) {
			return false;
		}

		return true;
	}

	public void createTopic(String tname, String stname, String ctname) throws SQLException {
		String sql1 = "insert into tutorial_index(tutorial_name, tutorial_subheading) values(?,?)";
		PreparedStatement stmt1 = conn.prepareStatement(sql1);
		stmt1.setString(1, tname);
		stmt1.setString(2, stname);

		stmt1.executeUpdate();
		stmt1.close();

		String sql2 = "insert into learnit_content(tutorial_subheading, tutorial_content) values(?,?)";
		PreparedStatement stmt2 = conn.prepareStatement(sql2);
		stmt2.setString(1, stname);
		stmt2.setString(2, ctname);

		stmt2.executeUpdate();
		stmt2.close();
	}

	public boolean exists(String email) throws SQLException {
		String sql = "select count(*) as count from users where email =? ";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, email);

		ResultSet rs = stmt.executeQuery();
		int count = 0;
		if (rs.next()) {
			count = rs.getInt("count");
		}

		rs.close();
		if (count == 0) {
			return false;
		}

		return true;
	}
}
