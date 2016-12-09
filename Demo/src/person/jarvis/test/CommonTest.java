package person.jarvis.test;

import org.junit.Test;

import person.jarvis.exception.ParamException;


public class CommonTest {

	@Test
	public void test() {
		testDateFormat();
	}

	private void testDateFormat() {
		throw new ParamException(new Exception());
	}
}
