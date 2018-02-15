import org.junit.* ;
public class MinTest {
	
		@Test public void test_find_min() {
			int[] a = {5,1,7};
			int res = Min.find_min(a);
			if(res == 1){
				System.out.print("Test successful\n");
			}
		} 

}