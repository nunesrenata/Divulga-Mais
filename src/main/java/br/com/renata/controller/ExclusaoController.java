package br.com.renata.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class ExclusaoController {

    @RequestMapping(value = "/servico/exclusao")
    public ModelAndView exclusao(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("servico/consulta");

        try {

            Integer idServico = Integer.parseInt(request.getParameter("idServico"));

            ServicoRepository servicoRepository = new ServicoRepository();

            Servico servico = servicoRepository.findById(idServico);

            if (servico != null) {
                servicoRepository.delete(idServico);

                modelAndView.addObject("mensagem_sucesso", "Serviço excluído com sucesso.");
            }

            List<Servico> lista = servicoRepository.findAll();

            modelAndView.addObject("lista_servicos", lista);

        } catch (Exception e) {
            modelAndView.addObject("mensagem_erro", "Falha ao excluir serviço: " + e.getMessage());
        }

        return modelAndView;
    }
}