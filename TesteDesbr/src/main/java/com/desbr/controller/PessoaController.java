package com.desbr.controller;

import com.desbr.model.Pessoa;
import com.desbr.service.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping(value = "/pessoas")
public class PessoaController {


    @Autowired
    PessoaService service;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("project_list");
        List<Pessoa> pessoaList = service.getAll();
        model.addObject("projectList", pessoaList);

        return model;
    }

    @RequestMapping(value = "/add/", method = RequestMethod.GET)
    public ModelAndView add() {
        ModelAndView model = new ModelAndView();

        Pessoa proj = new Pessoa();
        model.addObject("pessoaForm", proj);
        model.setViewName("pessoa_form");

        return model;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView editArticle(@PathVariable long id) {
        ModelAndView model = new ModelAndView();

        Pessoa proj = service.getById(id);
        model.addObject("pessoaForm", proj);
        model.setViewName("pessoa_form");

        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("pessoaForm") Pessoa proj) {
        service.saveOrUpdate(proj);

        return new ModelAndView("redirect:/pessoas/list");
    }

}