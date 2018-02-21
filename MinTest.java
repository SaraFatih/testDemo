import org.junit.* ;
import static org.junit.Assert.*;
public class MinTest {
	
		@Test public void test_find_min() {
			int[] a = {5,1,7};
			int res = Min.find_min(a);
			assertEquals(res, 0);
		} 

}
