package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Usuario;
import br.com.renata.repositories.UsuarioRepository;

@Controller
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView abrirLogin() {

        return new ModelAndView("site/login");

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView autenticar(HttpServletRequest request) {

        ModelAndView model = new ModelAndView();

        try {

            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            UsuarioRepository repository = new UsuarioRepository();

            Usuario usuario = repository.autenticar(email, senha);

            if (usuario != null) {

                HttpSession session = request.getSession();

                session.setAttribute("usuarioLogado", usuario);

                model.setViewName("redirect:/admin");

            } else {

                model.setViewName("site/login");

                model.addObject(
                        "mensagem",
                        "E-mail ou senha inválidos."
                );

            }

        } catch (Exception e) {

            model.setViewName("site/login");

            model.addObject(
                    "mensagem",
                    "Erro: " + e.getMessage()
            );

        }

        return model;

    }

}