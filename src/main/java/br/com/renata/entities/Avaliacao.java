package br.com.renata.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Avaliacao {

    private Integer idAvaliacao;
    private String nome;
    private String telefone;
    private Integer nota;
    private String comentario;

}