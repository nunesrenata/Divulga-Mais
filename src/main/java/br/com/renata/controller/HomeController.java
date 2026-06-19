package br.com.renata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.repositories.AvaliacaoRepository;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView home() {

        ModelAndView model = new ModelAndView("site/home");

        try {

            ServicoRepository servicoRepository = new ServicoRepository();
            model.addObject("servicos", servicoRepository.findAll());

            AvaliacaoRepository avaliacaoRepository = new AvaliacaoRepository();
            model.addObject("avaliacoes", avaliacaoRepository.findAll());

        } catch (Exception e) {

            e.printStackTrace();

        }

        return model;

    }

}