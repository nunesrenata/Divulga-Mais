package br.com.renata.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class ConsultaController {

    @RequestMapping(value = "/agenda/consulta")
    public ModelAndView consulta() {

        ModelAndView modelAndView = new ModelAndView("site/consulta");

        try {

            ServicoRepository servicoRepository = new ServicoRepository();
            List<Servico> lista = servicoRepository.findAll();

            modelAndView.addObject("lista_servicos", lista);

        } catch (Exception e) {
            modelAndView.addObject("mensagem_erro", "Falha ao consultar serviços: " + e.getMessage());
        }

        return modelAndView;
    }
}