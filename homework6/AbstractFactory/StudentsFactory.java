public class StudentsFactory extends AbstractFactory{
    Students getStudents(String type, String name){
        if (type == null)  return null;
        if (type.equalsIgnoreCase("undergraduates"))  return new Undergraduates(name);
        else if (type.equalsIgnoreCase("graduates"))  return new Graduates(name);
        else                                          return new PhDs(name);
    };
    Faculty  getFaculty(String type, String name){
        return null;
    };
}
