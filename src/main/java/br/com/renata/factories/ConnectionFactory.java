package br.com.renata.factories;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	private static final String DRIVER = "org.postgresql.Driver";

	public static Connection getConnection() throws Exception {
		
		String host = System.getenv("PGHOST");
		String port = System.getenv("PGPORT");
		String dbName = System.getenv("PGDATABASE");
		String user = System.getenv("PGUSER");
		String password = System.getenv("PGPASSWORD");

		String finalUrl;
		String finalUser;
		String finalPass;

		if (host != null && !host.trim().isEmpty()) {
			finalUrl = "jdbc:postgresql://" + host + ":" + port + "/" + dbName;
			finalUser = user;
			finalPass = password;
		} else {
			finalUrl = "jdbc:postgresql://localhost:5432/bd_divulga_mais";
			finalUser = "postgres";
			finalPass = "coti";
		}

		Class.forName(DRIVER);
		return DriverManager.getConnection(finalUrl, finalUser, finalPass);
	}
}