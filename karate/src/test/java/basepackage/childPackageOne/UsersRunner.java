package basepackage.childPackageOne;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("PostRequest").relativeTo(getClass());
    }    

}
