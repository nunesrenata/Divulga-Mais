package br.com.renata.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.renata.entities.Servico;
import br.com.renata.repositories.ServicoRepository;

@Controller
public class CadastroController {

    @RequestMapping(value = "/servicos/cadastro")
    public ModelAndView cadastro() {

        return new ModelAndView("admin/cadastro-servico");

    }

    @RequestMapping(value = "/servicos/cadastrar", method = RequestMethod.POST)
    public ModelAndView cadastrarServico(HttpServletRequest request) {

        ModelAndView modelAndView = new ModelAndView("admin/cadastro-servico");

        try {

            Servico servico = new Servico();

            servico.setNome(request.getParameter("nome_servico"));
            servico.setDescricao(request.getParameter("descricao_servico"));
            servico.setValor(Double.parseDouble(request.getParameter("valor_servico")));
            servico.setFoto(request.getParameter("foto_servico"));

            ServicoRepository servicoRepository = new ServicoRepository();
            servicoRepository.save(servico);

            modelAndView.addObject(
                "mensagem_sucesso",
                "Serviço " + servico.getNome() + " cadastrado com sucesso!"
            );

        }
        catch(Exception e){

            modelAndView.addObject(
                "mensagem_erro",
                "Erro ao cadastrar serviço: " + e.getMessage()
            );

        }

        return modelAndView;

    }

}