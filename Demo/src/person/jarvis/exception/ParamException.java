package person.jarvis.exception;

public class ParamException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4927202106606399799L;

	public enum CustomException {
		EXCEPTION__UNKNOWN(1000, "未知错误"), 
		EXCEPTION__GENERAL(1001, "系统异常, 请联系管理员"), 
		EXCEPTION_PARAMS_NOT_ENOUGH(2001, "非空字段不能为空");
		private Integer code;
		private String message;

		CustomException(Integer code, String message) {
			this.code = code;
			this.message = message;
		}

		public String getMsg() {
			return "[_" + getCode() + ":" + getMessage() + "_]";
		}

		public Integer getCode() {
			return code;
		}

		public void setCode(Integer code) {
			this.code = code;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}
	}

	private String message;

	public ParamException() {
		this(CustomException.EXCEPTION__UNKNOWN);
	}

	public ParamException(CustomException customException) {
		this.message = customException.getMsg();
	}

	public ParamException(Exception e) {
		this.message = "[_999:" + e.getMessage() + "_]";
	}

	public ParamException(String message) {
		this.message = "[_998:" + message + "_]";
	}

	public static void HandlerException(Exception e) throws ParamException {
		if (e instanceof ParamException) {
			throw (ParamException) e;
		} else {
			throw new ParamException(e);
		}
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public void printStackTrace() {
	}
}