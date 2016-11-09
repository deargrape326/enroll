package person.jarvis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import person.jarvis.dao.TestDao;
import person.jarvis.entity.Test;
import person.jarvis.exception.ParamException;
import person.jarvis.exception.ParamException.CustomException;

@Controller
public class TestController {
	private static Logger LOG = LogManager.getLogger(TestController.class.getName());
	@Resource
	private TestDao test;
	@Autowired
	private HttpServletRequest request;

	@ResponseBody
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public Map<String, Object> test(String name) {
		System.out.println(new ParamException(CustomException.EXCEPTION__UNKNOWN).toString());
		LOG.error(new ParamException(CustomException.EXCEPTION_PARAMS_NOT_ENOUGH));
		throw new ParamException(CustomException.EXCEPTION_PARAMS_NOT_ENOUGH);
	}

	@ResponseBody
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public Map<String, Object> findTest(String name) {
		Map<String, Object> data = new HashMap<String, Object>();
		List<Test> tests = test.queryTestListByName(name);
		LOG.info(request.getServletPath());
		LOG.info(request.getServerName());
		LOG.info(request.getRequestURI());
		data.put("result", tests);
		data.put("totalCount", tests.size());
		LOG.info("findTest return data->" + data);
		return data;
	}
}
