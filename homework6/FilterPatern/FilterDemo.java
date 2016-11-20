import java.util.List;
import java.util.ArrayList;

public class FilterDemo {
    public static void main(String[] args) {
        List<Country> countries = new ArrayList<Country>();

        countries.add(new Country("USA","America", 1));
        countries.add(new Country("China", "Asia", 2));
        countries.add(new Country("Japan", "Asia", 3));
        countries.add(new Country("Germany", "Europe", 4));
        countries.add(new Country("UK", "Europe", 5));
        countries.add(new Country("France", "Europe", 6));
        countries.add(new Country("India", "Asia", 7));
        countries.add(new Country("Brazil", "America", 8));
        countries.add(new Country("Canada", "America", 9));
        countries.add(new Country("Korea", "Asia", 10));

        Criteria asia = new CriteriaAsia();
        Criteria europe = new CriteriaEurope();
        Criteria america = new CriteriaAmerica();
        Criteria top3GDP = new CriteriaGDP();
        Criteria AsiaTop3 = new AndCriteria(asia, top3GDP);

        System.out.println("Asia: ");
        printCountries(asia.meetCriteria(countries));

        System.out.println("\nEurope: ");
        printCountries(europe.meetCriteria(countries));

        System.out.println("\nAmerica: ");
        printCountries(america.meetCriteria(countries));

        System.out.println("\nTop 3 GDP: ");
        printCountries(top3GDP.meetCriteria(countries));

        System.out.println("\nAsia & Top 3 GDP: ");
        printCountries(AsiaTop3.meetCriteria(countries));
    }

    public static void printCountries(List<Country> countries){

        for (Country country : countries) {
            System.out.println("Country : [ Name : " + country.getName() + ", Continent : " + country.getContinent() + ", GDP Ranking : " + country.getGDPrank() + " ]");
        }
    }
}