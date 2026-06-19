package br.com.renata.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.renata.entities.Contato;
import br.com.renata.factories.ConnectionFactory;

public class ContatoRepository {

	public void save(Contato contato) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		String query = "INSERT INTO contato (nome, email, telefone, mensagem) VALUES (?, ?, ?, ?)";

		PreparedStatement statement = connection.prepareStatement(query);

		statement.setString(1, contato.getNome());
		statement.setString(2, contato.getEmail());
		statement.setString(3, contato.getTelefone());
		statement.setString(4, contato.getMensagem());

		statement.execute();

		statement.close();
		connection.close();
	}

	public void update(Contato contato) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		String query = "UPDATE contato SET nome=?, email=?, telefone=?, mensagem=? WHERE idcontato=?";

		PreparedStatement statement = connection.prepareStatement(query);

		statement.setString(1, contato.getNome());
		statement.setString(2, contato.getEmail());
		statement.setString(3, contato.getTelefone());
		statement.setString(4, contato.getMensagem());
		statement.setInt(5, contato.getIdContato());

		statement.execute();

		statement.close();
		connection.close();
	}

	public void delete(Integer idContato) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		String query = "DELETE FROM contato WHERE idcontato=?";

		PreparedStatement statement = connection.prepareStatement(query);

		statement.setInt(1, idContato);

		statement.execute();

		statement.close();
		connection.close();
	}

	public List<Contato> findAll() throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		String query = "SELECT * FROM contato ORDER BY idcontato DESC";

		PreparedStatement statement = connection.prepareStatement(query);

		ResultSet resultSet = statement.executeQuery();

		List<Contato> lista = new ArrayList<Contato>();

		while (resultSet.next()) {

			Contato contato = new Contato();

			contato.setIdContato(resultSet.getInt("idcontato"));
			contato.setNome(resultSet.getString("nome"));
			contato.setEmail(resultSet.getString("email"));
			contato.setTelefone(resultSet.getString("telefone"));
			contato.setMensagem(resultSet.getString("mensagem"));

			lista.add(contato);
		}

		resultSet.close();
		statement.close();
		connection.close();

		return lista;
	}

	public Contato findById(Integer idContato) throws Exception {

		Connection connection = ConnectionFactory.getConnection();

		String query = "SELECT * FROM contato WHERE idcontato=?";

		PreparedStatement statement = connection.prepareStatement(query);

		statement.setInt(1, idContato);

		ResultSet resultSet = statement.executeQuery();

		Contato contato = null;

		if (resultSet.next()) {

			contato = new Contato();

			contato.setIdContato(resultSet.getInt("idcontato"));
			contato.setNome(resultSet.getString("nome"));
			contato.setEmail(resultSet.getString("email"));
			contato.setTelefone(resultSet.getString("telefone"));
			contato.setMensagem(resultSet.getString("mensagem"));
		}

		resultSet.close();
		statement.close();
		connection.close();

		return contato;
	}
}
