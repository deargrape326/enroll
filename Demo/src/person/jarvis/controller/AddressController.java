package person.jarvis.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import person.jarvis.entity.Location;
import person.jarvis.service.AddressService;

@RequestMapping(value = "/address")
@Controller
public class AddressController {
	@Resource
	AddressService addressService;

	@RequestMapping(value = "/queryLocation", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> queryLocation(Integer type, String parent_id) {
		Map<String, Object> data = new HashMap<String, Object>();
		try {
			List<Location> result = addressService.queryLocationList(type, parent_id);
			data.put("result", result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
}
