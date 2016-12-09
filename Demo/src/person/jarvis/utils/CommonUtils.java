package person.jarvis.utils;

import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;

/**
 * 公共工具类
 * 
 * @author yuexing
 * @time 2016年9月23日
 */
public class CommonUtils {
	private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINESE);
	private static final SimpleDateFormat TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.CHINESE);
	private static final SimpleDateFormat dateFormatChinese = new SimpleDateFormat("y年M月d日", Locale.CHINESE);
	private static final SimpleDateFormat timeFormatChinese = new SimpleDateFormat("y年M月d日H点m分s秒", Locale.CHINESE);

	/**
	 * null值安全检查字符串是否为空
	 * 
	 * @param str
	 *            目标字符串
	 * @return 是否为“”或null
	 */
	public static boolean isEmpty(String str) {
		if (StringUtils.isBlank(str)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 将目标字符串进行MD5加密
	 * 
	 * @param s
	 *            目标字符串
	 * @return 加密后的MD5密文
	 */
	public static String MD5(String s) {
		char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

		try {
			byte[] btInput = s.getBytes();
			// 获得MD5摘要算法的 MessageDigest 对象
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// 使用指定的字节更新摘要
			mdInst.update(btInput);
			// 获得密文
			byte[] md = mdInst.digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str).toLowerCase();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 将Json字符串打包转化成为Json对象
	 * 
	 * @param str
	 *            Json字符串
	 * @return Json对象
	 */
	public static JSONObject packJson(String str) {
		if (isEmpty(str)) {
			return null;
		} else {
			return JSONObject.fromObject(str);
		}
	}

	/**
	 * 将日期转为指定格式的字符串格式
	 * 
	 * @param date
	 *            日期
	 * @param type
	 *            指定的格式
	 * @return 格式化的字符串
	 */
	public static String formatDateTime(Date date, Integer type) {
		if (null == date) {
			return null;
		}
		switch (type) {
		case 1:
			return DATE_FORMAT.format(date);
		case 2:
			return TIME_FORMAT.format(date);
		case 3:
			return dateFormatChinese.format(date);
		case 4:
			return timeFormatChinese.format(date);
		default:
			return DATE_FORMAT.format(date);
		}
	}

	/**
	 * 将日期字符串转化为日期
	 * 
	 * @param str
	 *            日期字符串
	 * @param type
	 *            转化的格式
	 * @return 转化后的日期
	 */
	public static Date parseDateTime(String str, Integer type) {
		if (isEmpty(str)) {
			return null;
		}
		try {
			switch (type) {
			case 1:
				return DATE_FORMAT.parse(str);
			case 2:
				return TIME_FORMAT.parse(str);
			case 3:
				return dateFormatChinese.parse(str);
			case 4:
				return timeFormatChinese.parse(str);
			default:
				return DATE_FORMAT.parse(str);
			}
		} catch (ParseException pe) {
			pe.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 生成guid
	 * @return guid
	 */
	public static String getGuid() {
		UUID uuid = UUID.randomUUID();
		String guid = uuid.toString().replace("-", "");
		return guid;
	}
}
