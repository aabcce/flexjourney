package tests.agents;

import static org.junit.Assert.*;
import journey.agents.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class JyUserAgentTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testRegister() {
//		fail("Not yet implemented");
		JyUserAgent a = new JyUserAgent();
		String email = "aabcce@sohu.com";
		String password= "aabcce";
		a.register(email, password);
	}

	@Test
	public void testLogin() {
		String email = "aabcce@sohu.com";
		String password= "aabcce";
		JyUserAgent a = new JyUserAgent();
		a.login(email , password);
	}

	@Test
	public void testIsLogin() {
		fail("Not yet implemented");
	}

	@Test
	public void testLogout() {
		fail("Not yet implemented");
	}

	@Test
	public void testLostPassword() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetCurrUser() {
		fail("Not yet implemented");
	}

}
