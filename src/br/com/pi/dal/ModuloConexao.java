package br.com.pi.dal;

import java.sql.*;

public class ModuloConexao {

    public static Connection conector() {

        Connection conexao = null;

        String driver = "com.mysql.cj.jdbc.Driver";

        String url = "jdbc:mysql://127.0.0.1:3306/dbvendas";
        String user = "tati";
        String password = "Senha@123";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            //a linha abaixo serve de apoio para esclarecer o erro
            //System.out.println(e);
            return null;
        }
    }

}
