package person.jarvis.exception.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ExceptionHandlerExceptionResolver;

import person.jarvis.exception.ParamException;

public class ExceptionHandler extends ExceptionHandlerExceptionResolver {
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object object, Exception exception) {
		try {
			response.setContentType("application/json;charset=UTF-8");
			PrintWriter writer = response.getWriter();
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("method", request.getRequestURI());
			map.put("requestType", request.getMethod());
			// 为安全起见，只有业务异常我们对前端可见，否则统一归为系统异常
			if (exception instanceof ParamException) {
				map.put("message", ((ParamException) exception).getMessage());
				map.put("status", "exception");
				map.put("code", -1);
			} else {
				map.put("message", exception.getMessage());
				map.put("status", "error");
				map.put("code", -2);
			}
			writer.write(JSONArray.fromObject(map).toString());
			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
