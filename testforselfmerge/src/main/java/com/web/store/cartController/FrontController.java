package com.web.store.cartController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FrontController {
	@RequestMapping(value = "/frontEnd", method = RequestMethod.GET)
	public String fronEnd(Model model){
		model.addAttribute("title", "���b��");
		model.addAttribute("info", "���������e�x�����A�����Ȥ᪺���");
		return "frontEnd";
	}
}
