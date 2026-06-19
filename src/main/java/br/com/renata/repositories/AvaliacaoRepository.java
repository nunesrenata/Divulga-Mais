package br.com.renata.repositories;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.renata.entities.Avaliacao;
import br.com.renata.factories.ConnectionFactory;

public class AvaliacaoRepository {

    public void save(Avaliacao avaliacao) throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "insert into avaliacao(nome, telefone, nota, comentario) values(?, ?, ?, ?)";

        PreparedStatement statement = connection.prepareStatement(query);

        statement.setString(1, avaliacao.getNome());
        statement.setString(2, avaliacao.getTelefone());
        statement.setInt(3, avaliacao.getNota());
        statement.setString(4, avaliacao.getComentario());

        statement.execute();

        statement.close();
        connection.close();

    }

    public List<Avaliacao> findAll() throws Exception {

        Connection connection = ConnectionFactory.getConnection();

        String query = "select * from avaliacao order by idavaliacao desc";

        PreparedStatement statement = connection.prepareStatement(query);

        ResultSet resultSet = statement.executeQuery();

        List<Avaliacao> lista = new ArrayList<Avaliacao>();

        while(resultSet.next()){

            Avaliacao avaliacao = new Avaliacao();

            avaliacao.setIdAvaliacao(resultSet.getInt("idavaliacao"));
            avaliacao.setNome(resultSet.getString("nome"));
            avaliacao.setTelefone(resultSet.getString("telefone"));
            avaliacao.setNota(resultSet.getInt("nota"));
            avaliacao.setComentario(resultSet.getString("comentario"));

            lista.add(avaliacao);

        }

        resultSet.close();
        statement.close();
        connection.close();

        return lista;

    }

}