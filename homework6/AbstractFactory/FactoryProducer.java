public class FactoryProducer {
    public static AbstractFactory getFactory(String choice){
        if (choice.equalsIgnoreCase("students"))      return new StudentsFactory();
        else if (choice.equalsIgnoreCase("faculty"))  return new FacultyFactory();
        else return null;
    }
}
