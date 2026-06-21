package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Contato;
import br.com.renata.repositories.ContatoRepository;

@Controller
public class ContatoController {

    @RequestMapping(value = "/contato", method = RequestMethod.POST)
    public ModelAndView enviarContato(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("redirect:/");

        try {
            request.setCharacterEncoding("UTF-8");

            Contato contato = new Contato();

            contato.setNome(request.getParameter("nome"));
            contato.setEmail(request.getParameter("email"));
            contato.setTelefone(request.getParameter("telefone"));
            contato.setMensagem(request.getParameter("mensagem"));

            ContatoRepository repository = new ContatoRepository();
            repository.save(contato);

            request.getSession().setAttribute("mensagem_sucesso_contato", "Sua mensagem foi enviada com sucesso!");

        } catch (Exception e) {

            request.getSession().setAttribute("mensagem_erro_contato", "Erro ao enviar mensagem: " + e.getMessage());

        }

        return modelAndView;

    }

    @RequestMapping(value = "/contatos", method = RequestMethod.GET)
    public ModelAndView consultarContatos() {

        ModelAndView model = new ModelAndView("admin/consulta-contatos");

        try {

            ContatoRepository repository = new ContatoRepository();
            model.addObject("contatos", repository.findAll());

        } catch (Exception e) {

            e.printStackTrace();

        }

        return model;

    }

    @RequestMapping(value="/alterarStatusContato", method=RequestMethod.GET)
    public ModelAndView alterarStatus(@RequestParam("id") Integer id, @RequestParam("status") boolean status) {

        ModelAndView model = new ModelAndView("redirect:/contatos");

        try {
            ContatoRepository repository = new ContatoRepository();
            repository.atualizarStatus(id, status);
        }
        catch(Exception e) {
            e.printStackTrace();
        }

        return model;
    }

}