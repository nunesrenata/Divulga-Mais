package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class EditarServicoController {

    @RequestMapping("/servicos/editar")
    public ModelAndView editar(Integer idServico) {

        ModelAndView model = new ModelAndView("admin/editar-servico");

        try {

            ServicoRepository repository = new ServicoRepository();

            model.addObject("servico", repository.findById(idServico));

        } catch (Exception e) {

            e.printStackTrace();

        }

        return model;
    }

    @RequestMapping(value="/servicos/atualizar", method=RequestMethod.POST)
    public ModelAndView atualizar(HttpServletRequest request) {

        try {

            Servico servico = new Servico();

            servico.setIdServico(Integer.parseInt(request.getParameter("idServico")));
            servico.setNome(request.getParameter("nome"));
            servico.setDescricao(request.getParameter("descricao"));
            servico.setValor(Double.parseDouble(request.getParameter("valor")));
            servico.setFoto(request.getParameter("foto"));

            ServicoRepository repository = new ServicoRepository();
            repository.update(servico);

        } catch (Exception e) {

            e.printStackTrace();

        }

        return new ModelAndView("redirect:/servicos/consulta");
    }

    @RequestMapping("/servicos/excluir")
    public ModelAndView excluir(Integer idServico) {

        try {

            ServicoRepository repository = new ServicoRepository();

            repository.delete(idServico);

        } catch (Exception e) {

            e.printStackTrace();

        }

        return new ModelAndView("redirect:/servicos/consulta");
    }

}