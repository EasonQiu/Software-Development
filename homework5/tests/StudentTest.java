import org.junit.Test;

import static org.junit.Assert.*;

public class StudentTest {
    @Test
    public void setAddress() throws Exception {
        Student Eason = new Student(1, "Eason");
        Eason.setAddress("City Station");
        assert (Eason.getAddress() == "City Station");
    }

    @Test
    public void setPhone() throws Exception {
        Student Eason = new Student(1, "Eason");
        Eason.setPhone("110");
        assert (Eason.getPhone() == "110");
    }

    @Test
    public void setAge() throws Exception {
        Student Eason = new Student(1, "Eason");
        Eason.setAge(22);
        assert (Eason.getAge() == 22);
    }

    @Test
    public void setDepartment() throws Exception {
        Student Eason = new Student(1, "Eason");
        Eason.setDepartment("ITWS");
        assert (Eason.getDepartment() == "ITWS");
    }

    @Test
    public void printStudentInfo() throws Exception {
        Student Eason = new Student(1, "Eason");
        Eason.printStudentInfo();
    }

}