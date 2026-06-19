package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Avaliacao;
import br.com.renata.repositories.AvaliacaoRepository;

@Controller
public class AvaliacaoController {

    @RequestMapping(value="/avaliacao", method=RequestMethod.POST)
    public ModelAndView salvar(HttpServletRequest request){

        ModelAndView model = new ModelAndView("redirect:/");

        try{

            Avaliacao avaliacao = new Avaliacao();

            avaliacao.setNome(request.getParameter("nome"));
            avaliacao.setTelefone(request.getParameter("telefone"));
            avaliacao.setNota(Integer.parseInt(request.getParameter("nota")));
            avaliacao.setComentario(request.getParameter("comentario"));

            AvaliacaoRepository repository = new AvaliacaoRepository();

            repository.save(avaliacao);

        }
        catch(Exception e){

            e.printStackTrace();

        }

        return model;

    }

}