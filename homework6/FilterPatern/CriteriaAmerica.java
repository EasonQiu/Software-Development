import java.util.List;
import java.util.ArrayList;

public class CriteriaAmerica implements Criteria {
    public List<Country> meetCriteria(List<Country> countries){
        List<Country> america = new ArrayList<Country>();
        for (Country country : countries){
            if (country.getContinent() == "America")  america.add(country);
        }
        return america;
    };
}
