
package jdbc;

import java.sql.DriverManager;
import javax.swing.JOptionPane;



/**
 *
 * @author clebe
 */
public class ModuloConexao {
    //criando um método ressponável por estabelecer uma conexão com o banco
    public static java.sql.Connection conectar() {
        //criando um método ressponável por estabelecer uma conexão com o banco

        java.sql.Connection conexao = null;
        //criando o driver  correspondente ao banco
        String driver = "com.mysql.cj.jdbc.Driver";
        //armazenando informações referente ao banco de dados
        String url = "jdbc:mysql://localhost:3306/dbos2025?characterEncoding=utf-8"; //useTimezone=true&serverTimezone=UTC
        String user = "rot";
        String senha = "IFROOcrxi18$";
        //estabelecer a conexão com o banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, senha);
            
            
            System.out.println(conexao);
            return conexao;
            
        } catch (Exception e) {
            //a lihna abaixo server de apoio para esclarecer o erro
            System.out.println(e);
            return null;
        }

    }

    public static java.sql.Connection desconectar() {
        java.sql.Connection conexao = null;
        try {
            conexao.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }

        return conexao;
    }

}