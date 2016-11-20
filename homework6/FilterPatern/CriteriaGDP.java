import java.util.List;
import java.util.ArrayList;

public class CriteriaGDP implements Criteria {
    public List<Country> meetCriteria(List<Country> countries){
        List<Country> top = new ArrayList<Country>();
        for (Country country : countries){
            if (country.getGDPrank() <= 3)  top.add(country);
        }
        return top;
    };
}
