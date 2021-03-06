package com.tj.bookup.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.bookup.service.BookService;
@Controller
public class MainController {
	@Autowired
	private BookService bService;
	@RequestMapping(value="main", method=RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute("main", bService.bookListAll());
		return "main/main";
	}
}
