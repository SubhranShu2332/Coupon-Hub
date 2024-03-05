<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html><body>
	<%!
	Connection con = null;
	Statement smt = null;
	Statement smt1 = null;
	ResultSet rs = null;
	
	
	public void jspInit() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
			smt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			smt1 = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}

	public void jspDestroy() {
		try {
			smt.close();
			smt1.close();
			con.close();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}%>


</body></html>
