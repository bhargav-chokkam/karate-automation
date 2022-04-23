package basepackage;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class ParallelBuilder {
	@Test
	public void executeCode() {
		Builder builderObj = new Builder();
		builderObj.path("classpath:basepackage");
//		builderObj.tags("@tagurl");
		builderObj.parallel(5);
	}

}
