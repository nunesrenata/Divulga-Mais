package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Avaliacao;
import br.com.renata.repositories.AvaliacaoRepository;

@Controller
public class AvaliacaoController {

    @RequestMapping(value="/avaliacao", method=RequestMethod.POST)
    public ModelAndView salvar(HttpServletRequest request){

        ModelAndView model = new ModelAndView("redirect:/");

        try{
            request.setCharacterEncoding("UTF-8");

            Avaliacao avaliacao = new Avaliacao();

            avaliacao.setNome(request.getParameter("nome"));
            avaliacao.setTelefone(request.getParameter("telefone"));
            avaliacao.setNota(Integer.parseInt(request.getParameter("nota")));
            avaliacao.setComentario(request.getParameter("comentario"));

            AvaliacaoRepository repository = new AvaliacaoRepository();
            repository.save(avaliacao);


            request.getSession().setAttribute("mensagem_sucesso_avaliacao", "Sua avaliação foi enviada com sucesso! Muito obrigada.");

        }
        catch(Exception e){
            e.printStackTrace();

            request.getSession().setAttribute("mensagem_erro_avaliacao", "Ocorreu um erro ao enviar sua avaliação.");
        }

        return model;
    }
    
    @RequestMapping(value="/avaliacoes", method=RequestMethod.GET)
    public ModelAndView consultarAvaliacoes() {

        ModelAndView model = new ModelAndView("admin/consulta-avaliacoes");

        try {
            AvaliacaoRepository repository = new AvaliacaoRepository();
            model.addObject("avaliacoes", repository.findAll());
        }
        catch(Exception e) {
            e.printStackTrace();
        }

        return model;
    }
}