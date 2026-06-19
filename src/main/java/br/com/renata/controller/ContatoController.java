package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Contato;
import br.com.renata.repositories.ContatoRepository;

@Controller
public class ContatoController {

    @RequestMapping(value="/contato", method=RequestMethod.POST)
    public ModelAndView enviarContato(HttpServletRequest request){

        ModelAndView modelAndView = new ModelAndView("site/home");

        try{

            Contato contato = new Contato();

            contato.setNome(request.getParameter("nome"));
            contato.setEmail(request.getParameter("email"));
            contato.setTelefone(request.getParameter("telefone"));
            contato.setMensagem(request.getParameter("mensagem"));

            ContatoRepository repository = new ContatoRepository();
            repository.save(contato);

            modelAndView.addObject(
                "mensagem_sucesso",
                "Mensagem enviada com sucesso!"
            );

        }
        catch(Exception e){

            modelAndView.addObject(
                "mensagem_erro",
                "Erro ao enviar mensagem: " + e.getMessage()
            );

        }

        return modelAndView;

    }

}