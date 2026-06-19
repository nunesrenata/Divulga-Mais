package br.com.renata.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class ConsultaServicoController {

    @RequestMapping("/servicos/consulta")
    public ModelAndView consultar() {

        ModelAndView model = new ModelAndView("admin/consulta-servicos");

        try {

            ServicoRepository repository = new ServicoRepository();

            List<Servico> servicos = repository.findAll();

            model.addObject("servicos", servicos);

        } catch (Exception e) {

            model.addObject("mensagem", e.getMessage());

        }

        return model;

    }

}