package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class EdicaoController {

    @RequestMapping(value = "/agenda/edicao")
    public ModelAndView edicao(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("site/edicao");

        try {

            Integer idServico = Integer.parseInt(request.getParameter("idServico"));

            ServicoRepository servicoRepository = new ServicoRepository();
            Servico servico = servicoRepository.findById(idServico);

            if (servico != null) {
                modelAndView.addObject("servico", servico);
            } else {
                modelAndView.setViewName("redirect:/agenda/consulta");
            }

        } catch (Exception e) {
            modelAndView.addObject("mensagem_erro", "Falha ao obter serviço: " + e.getMessage());
        }

        return modelAndView;
    }

    @RequestMapping(value = "/agenda/editar-servico", method = RequestMethod.POST)
    public ModelAndView editarServico(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("agenda/edicao");

        try {

            Servico servico = new Servico();

            servico.setIdServico(Integer.parseInt(request.getParameter("idServico")));
            servico.setNome(request.getParameter("nome_servico"));
            servico.setDescricao(request.getParameter("descricao_servico"));
            servico.setValor(Double.parseDouble(request.getParameter("valor_servico")));

            ServicoRepository servicoRepository = new ServicoRepository();
            servicoRepository.update(servico);

            modelAndView.addObject("mensagem_sucesso", "Serviço atualizado com sucesso.");
            modelAndView.addObject("servico", servico);

        } catch (Exception e) {
            modelAndView.addObject("mensagem_erro", "Falha ao atualizar o serviço: " + e.getMessage());
        }

        return modelAndView;
    }
}