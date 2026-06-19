package br.com.renata.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.renata.entities.Servico;
import br.com.renata.factories.ConnectionFactory;

public class ServicoRepository {

    public void save(Servico servico) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "insert into servico(nome, descricao, valor) values(?, ?, ?)";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, servico.getNome());
        statement.setString(2, servico.getDescricao());
        statement.setDouble(3, servico.getValor());

        statement.execute();

        connection.close();
    }

    public List<Servico> findAll() throws Exception {

        List<Servico> lista = new ArrayList<Servico>();

        Connection connection = ConnectionFactory.getConnection();

        String query = "select * from servico order by nome";

        PreparedStatement statement = connection.prepareStatement(query);

        ResultSet resultSet = statement.executeQuery();

        while(resultSet.next()) {

            Servico servico = new Servico();

            servico.setIdServico(resultSet.getInt("idservico"));
            servico.setNome(resultSet.getString("nome"));
            servico.setDescricao(resultSet.getString("descricao"));
            servico.setValor(resultSet.getDouble("valor"));

            lista.add(servico);

        }

        connection.close();

        return lista;
    }

    public Servico findById(Integer idServico) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "select * from servico where idservico = ?";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setInt(1, idServico);

        ResultSet resultSet = statement.executeQuery();

        Servico servico = null;

        if(resultSet.next()) {

            servico = new Servico();

            servico.setIdServico(resultSet.getInt("idservico"));
            servico.setNome(resultSet.getString("nome"));
            servico.setDescricao(resultSet.getString("descricao"));
            servico.setValor(resultSet.getDouble("valor"));

        }

        connection.close();

        return servico;
    }

    public void update(Servico servico) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "update servico set nome=?, descricao=?, valor=? where idservico=?";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, servico.getNome());
        statement.setString(2, servico.getDescricao());
        statement.setDouble(3, servico.getValor());
        statement.setInt(4, servico.getIdServico());

        statement.execute();

        connection.close();
    }

    public void delete(Integer idServico) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "delete from servico where idservico=?";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setInt(1, idServico);

        statement.execute();

        connection.close();
    }

}