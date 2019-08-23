package com.desbr.controller;

import com.desbr.model.Projeto;
import com.desbr.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@RequestMapping(value = "/projetos")
public class ProjectController {


    @Autowired
    ProjectService service;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("project_list");
        List<Projeto> projetoList = service.getAll();
        model.addObject("projectList", projetoList);

        return model;
    }

    @RequestMapping(value = "/add/", method = RequestMethod.GET)
    public ModelAndView add() {
        ModelAndView model = new ModelAndView();

        Projeto proj = new Projeto();
        model.addObject("projetoForm", proj);
        model.setViewName("projeto_form");

        return model;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public ModelAndView editArticle(@PathVariable long id) {
        ModelAndView model = new ModelAndView();

        Projeto proj = service.getById(id);
        model.addObject("projetoForm", proj);
        model.setViewName("projeto_form");

        return model;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("projetoForm") Projeto proj) {
        service.saveOrUpdate(proj);

        return new ModelAndView("redirect:/projetos/list");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") long id) {
        service.delete(id);

        return new ModelAndView("redirect:/projetos/list");
    }
}