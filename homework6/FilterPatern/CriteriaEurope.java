import java.util.List;
import java.util.ArrayList;

public class CriteriaEurope implements Criteria {
    public List<Country> meetCriteria(List<Country> countries){
        List<Country> euro = new ArrayList<Country>();
        for (Country country : countries){
            if (country.getContinent() == "Europe")  euro.add(country);
        }
        return euro;
    };
}
