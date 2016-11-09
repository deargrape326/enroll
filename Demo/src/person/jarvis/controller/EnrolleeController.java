package person.jarvis.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import person.jarvis.entity.Enrollee;
import person.jarvis.exception.ParamException;
import person.jarvis.service.EnrolleeService;

@RequestMapping(value = "/enrollee")
@Controller
public class EnrolleeController {
	@Resource
	EnrolleeService enrolleeService;

	@ResponseBody
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public Map<String, Object> addEnrollee(Enrollee enrollee) {
		Map<String, Object> data = new HashMap<String, Object>();
		try {
			if (enrollee.isComplete()){
				int result = enrolleeService.addEnrollee(enrollee);
				data.put("code", 0);
				data.put("result", result);
			} else {
				data.put("code", 1);
				data.put("message", "非空字段不能为空");
			}
			return data;
		} catch (Exception e) {
			throw new ParamException(e);
		}
	}
}
