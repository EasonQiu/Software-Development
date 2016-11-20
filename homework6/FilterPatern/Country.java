public class Country {
    private String name, continent;
    private int GDPrank;

    public Country(String name, String continent, int GDPrank) {
        this.name = name;
        this.continent = continent;
        this.GDPrank = GDPrank;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getContinent() {
        return continent;
    }
    public void setContinent(String continent) {
        this.continent = continent;
    }
    public int getGDPrank() {
        return GDPrank;
    }
    public void setGDPrank(int GDPrank) {
        this.GDPrank = GDPrank;
    }

}
