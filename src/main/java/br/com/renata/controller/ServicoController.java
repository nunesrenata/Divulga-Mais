package br.com.renata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.repositories.ServicoRepository;

@Controller
public class ServicoController {

    @RequestMapping("/site/servicos")
    public ModelAndView servicos() {

        ModelAndView model = new ModelAndView("site/servicos");

        try {

            ServicoRepository repository = new ServicoRepository();

            model.addObject("servicos", repository.findAll());

        } catch (Exception e) {

            e.printStackTrace();

        }

        return model;

    }

}