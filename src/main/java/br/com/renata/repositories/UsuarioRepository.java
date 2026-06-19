package br.com.renata.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.renata.entities.Usuario;
import br.com.renata.factories.ConnectionFactory;

public class UsuarioRepository {

    public Usuario autenticar(String email, String senha) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "select * from usuario where email = ? and senha = ?";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, email);
        statement.setString(2, senha);

        ResultSet resultSet = statement.executeQuery();

        Usuario usuario = null;

        if (resultSet.next()) {

            usuario = new Usuario();

            usuario.setIdUsuario(resultSet.getInt("idusuario"));
            usuario.setNome(resultSet.getString("nome"));
            usuario.setEmail(resultSet.getString("email"));
            usuario.setSenha(resultSet.getString("senha"));

        }

        resultSet.close();
        statement.close();
        connection.close();

        return usuario;
    }

    public void save(Usuario usuario) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "insert into usuario(nome, email, senha) values(?, ?, ?)";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, usuario.getNome());
        statement.setString(2, usuario.getEmail());
        statement.setString(3, usuario.getSenha());

        statement.execute();

        statement.close();
        connection.close();
    }

}