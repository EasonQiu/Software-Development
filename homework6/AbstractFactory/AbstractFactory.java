public abstract class AbstractFactory {
    abstract Students getStudents(String type, String name);
    abstract Faculty  getFaculty(String type, String name);
}
