public class FacultyFactory extends AbstractFactory {
    Students getStudents(String type, String name){
        return null;
    };
    Faculty  getFaculty(String type, String name){
        if (type == null)  return null;
        if (type.equalsIgnoreCase("professors"))     return new Professors(name);
        else if (type.equalsIgnoreCase("lectures"))  return new Lectures(name);
        else                                         return new Staff(name);

    };
}
