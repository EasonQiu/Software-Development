import java.util.List;
import java.util.ArrayList;

public class AndCriteria implements Criteria{
    private Criteria criteria;
    private Criteria otherCriteria;

    public AndCriteria(Criteria criteria, Criteria otherCriteria){
        this.criteria = criteria;
        this.otherCriteria = otherCriteria;
    }

    public List<Country> meetCriteria(List<Country> countries){
        List<Country> first = criteria.meetCriteria(countries);
        return otherCriteria.meetCriteria(first);
    };
}
