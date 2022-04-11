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
		Builder<Builder> builderObj = new Builder();
		builderObj.path("classpath:basepackage");
		builderObj.tags("@tagfa");
		Results res = builderObj.parallel(5);
		System.out.println(res.getReportDir());
//		getCucumberReport(res.getReportDir());
	}

	private void getCucumberReport(String directory) {
		File reportDir = new File(directory);
		Collection<File> jsonCollection = FileUtils.listFiles(reportDir, new String[] { "json" }, true);
		List<String> jsonFile = new ArrayList<String>();
		jsonCollection.forEach(file -> jsonFile.add(file.getAbsolutePath()));
		Configuration config = new Configuration(reportDir, "Karate Run");
		ReportBuilder reportObj = new ReportBuilder(jsonFile, config);
		reportObj.generateReports();

	}

}
