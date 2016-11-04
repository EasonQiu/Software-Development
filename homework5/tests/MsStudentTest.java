import org.junit.Test;

import static org.junit.Assert.*;

public class MsStudentTest {
    @Test
    public void testEnrollYear() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setEnrollYear(2016);
        assert (Lily.getEnrollYear() == 2016);
    }

    @Test
    public void testGraduateYear() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setGraduateYear(2017);
        assert (Lily.getGraduateYear() == 2017);
    }

    @Test
    public void testTuition() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setTuition(68770);
        assert (Lily.getTuition() == 68770);
    }

    @Test
    public void testPrintStudentInfo() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.printStudentInfo();
    }

}