package person.jarvis.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

import person.jarvis.utils.CommonUtils;

public class Test {
	public static String createHash400(Map<String, Object> map, String secret) throws UnsupportedEncodingException {
		StringBuilder sign = new StringBuilder();
		if (map != null && !map.isEmpty()) {
			String[] keys = map.keySet().toArray(new String[0]);
			Arrays.sort(keys);

			for (String key : keys) {
				String value = map.get(key).toString();
				if (!CommonUtils.isEmpty(value) && !CommonUtils.isEmpty(key))
					sign.append(key).append(URLEncoder.encode(value, "utf-8"));
			}
			sign.append(secret);
			String bytes = encode(sign.toString()).toUpperCase();
			return bytes;
		}
		return null;
	}

	public static String encode(String text) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(text.getBytes());
			byte b[] = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < b.length; offset++) {
				i = b[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			text = buf.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return text;
	}

	public static void main(String[] args) throws UnsupportedEncodingException, InterruptedException, URISyntaxException {
		// Map<String, Object> data = new HashMap<String, Object>();
		// data.put("appver", "1");
		// data.put("timestamp", new Date().getTime());
		// data.put("user", "4000888658");
		// System.out.println(CommonUtils.createHash(data,
		// "a66e422b-20b5-49e2-92ff-49db46ae9cfa"));
		// System.out.println(createHash400(data, "Tianxia800"));
		// System.out.println(encode("account4006090002callingid010334555%2C18611338668timestamp20160907094600user4006090002_devvoicecode133435a66e422b-20b5-49e2-92ff-49db46ae9cfa"));
		// Integer[] ints = new Integer[]{3,6,9};
		// Object temp = ints;
		// Object[] objects = (Object[]) temp;
		// System.out.println(objects[1]);
		// String d = new SimpleDateFormat("yyy-MM-dd HH:00:00").format(new
		// Date());
		// System.out.println(d);
		// String s = "a";
		// s += "s";
		// System.out.println(Arrays.toString(s.split(":")));

		// Map<String, String> s = new TreeMap<String, String>();
		// s.put("s", "SSSS");
		// s.put("a", "AAAA");
		// for (Map.Entry<String, String> entry: s.entrySet()){
		// String str = entry.getValue();
		// str += "CCC";
		// s.put(entry.getKey(), str);
		// }
		// System.out.println(s);

		// Date date1 = new Date(1495383301201l);
		// Date date2 = new Date(1495395216336l);
		// System.out.println(date1);
		// System.out.println(date2);

		CloseableHttpClient http = HttpClients.createDefault();
		HttpPost post = new HttpPost("http://www.linkedsee.com/alarm/custom");
		
		List<BasicNameValuePair> params = new ArrayList<BasicNameValuePair>();
		params.add(new BasicNameValuePair("content", "测试"));

		post.setEntity(new UrlEncodedFormEntity(params));
		post.addHeader("Servicetoken", "f2e808c2078c00f34b294e69bcbfd713");
		try {
			HttpResponse response = http.execute(post);
			InputStream input = response.getEntity().getContent();
			BufferedReader reader = new BufferedReader(new InputStreamReader(input,"utf-8"));
			StringBuffer sb = new StringBuffer();
			String line = null;
			while((line = reader.readLine()) != null)
				sb.append(line + "\n");
			input.close();
            System.out.println(sb.toString());   
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public Map<String, Object> queryStatus(Boolean power, Integer channel, Double frequency, String mode, Integer outputLevel, Boolean ptt) {
		return null;
	}
}
