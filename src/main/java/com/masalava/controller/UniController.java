package com.masalava.controller;

import com.masalava.entity.University;

import com.masalava.service.UniService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class UniController {
    @Autowired

    public UniService uniService;

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/universities")
    public String getAllUni(Model model) {
        model.addAttribute("universities", uniService.findAll());
        return "uniList";
    }

    @GetMapping("/university/{id}")
    public String getById(@PathVariable("id") int id, Model model) {
        model.addAttribute("university", uniService.getById(id));
        return "showUni";
    }

    @GetMapping("/addUni")
    public String createUniPage() {
        return "createUni";
    }

    @PostMapping("/addUni")
    public String addUni(@ModelAttribute("university") University university) {
        uniService.save(university);
        return "redirect:/universities";
    }

    @GetMapping("/addUniFromList")
    public String addUniPage() {
        return "addUni";
    }
    @GetMapping("/delete/{id}")
    public String deleteUni(@PathVariable("id") int id) {
        uniService.delete(id);
        return "redirect:/universities";
    }

    @GetMapping("/update/{id}")
    public String updateUni(@PathVariable("id") int id, Model model) {
        model.addAttribute("university", uniService.getById(id));
        return "updateUni";
    }

    @PostMapping("/updateUni")
    public String updateUni(@ModelAttribute("university") University university) {
        uniService.update(university);
        return "redirect:/university/" + university.getId();
    }
}
