import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

public class Main {

    private static final Logger log = LogManager.getLogger(Main.class);

    public static void main(String[] args) {
        Student Eason = new Student(1, "Eason");
        Eason.setAddress("City Station");
        Eason.setAge(22);
        Eason.setDepartment("ITWS");
        Eason.setPhone("110");
        Eason.printStudentInfo();
        System.out.println();

        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setAddress("City Station");
        Lily.setAge(23);
        Lily.setDepartment("ITWS");
        Lily.setPhone("120");
        Lily.setEnrollYear(2016);
        Lily.setGraduateYear(2017);
        Lily.setTuition(68770);
        Lily.printStudentInfo();
        System.out.println();

        log.debug("Debugging Message");
        log.info("Informational Message");
        log.warn("Warning Message");
        log.error("Error Message");
        log.fatal("Fatal Message");

    }

}
