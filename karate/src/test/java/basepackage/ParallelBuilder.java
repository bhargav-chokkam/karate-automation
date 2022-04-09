package basepackage;

import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner.Builder;

public class ParallelBuilder {
	@Test
	public void executeCode() {
		Builder builderObj = new Builder();
		builderObj.path("classpath:basepackage");
//		If we provide multiple tags then it acts as logical AND Operator
		builderObj.tags("@tagfa");
		builderObj.parallel(1);
	}

}
