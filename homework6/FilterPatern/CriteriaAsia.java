import java.util.List;
import java.util.ArrayList;

public class CriteriaAsia implements Criteria {
    public List<Country> meetCriteria(List<Country> countries){
        List<Country> asia = new ArrayList<Country>();
        for (Country country : countries){
            if (country.getContinent() == "Asia")  asia.add(country);
        }
        return asia;
    };
}
