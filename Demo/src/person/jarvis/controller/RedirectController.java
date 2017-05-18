package person.jarvis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "redirect")
public class RedirectController {

	@RequestMapping(value = "jsp")
	public String redirect(String to) {
		return to;
	}
}
