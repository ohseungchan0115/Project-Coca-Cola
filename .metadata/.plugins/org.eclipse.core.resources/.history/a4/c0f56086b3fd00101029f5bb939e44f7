package cocacola.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleConnection {

    private static final String URL =
        "jdbc:oracle:thin:@localhost:1521:xe"; // orcl / xe 확인
    private static final String USER = "cola_user";   // ← 네 DB 계정
    private static final String PASSWORD = "cola"; // ← 네 비밀번호

    public static Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
