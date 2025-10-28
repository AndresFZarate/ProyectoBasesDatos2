package co.edu.unbosque.model.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    private static final String URL = "jdbc:postgresql://localhost:5432/tu_basedatos";
    private static final String USUARIO = "postgres";
    private static final String PASSWORD = "1234";

    private static Connection con = null;

    private ConexionBD() {}

    public static Connection getCon() {
        try {
            if (con == null || con.isClosed()) {
                con = DriverManager.getConnection(URL, USUARIO, PASSWORD);
                System.out.println("✅ Conexión establecida con PostgreSQL.");
            }
        } catch (SQLException e) {
            System.err.println("Error al conectar con la base de datos: " + e.getMessage());
        }
        return con;
    }

    public static void cerrarConexion() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("Conexión cerrada correctamente.");
            }
        } catch (SQLException e) {
            System.err.println("Error al cerrar la conexión: " + e.getMessage());
        }
    }
}