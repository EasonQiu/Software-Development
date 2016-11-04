package test;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;

/**
 * MsStudent Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>Nov 3, 2016</pre>
 */
public class MsStudentTest {

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: getEnrollYear()
     */
    @Test
    public void testEnrollYear() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setEnrollYear(2016);
        assert (Lily.getEnrollYear() == 2016);
    }

    /**
     * Method: getGraduateYear()
     */
    @Test
    public void testGraduateYear() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setGraduateYear(2017);
        assert (Lily.getGraduateYear() == 2017);
    }

    /**
     * Method: getTuition()
     */
    @Test
    public void testTuition() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.setTuition(68770);
        assert (Lily.getTuition() == 68770);
    }

    /**
     * Method: printStudentInfo()
     */
    @Test
    public void testPrintStudentInfo() throws Exception {
        MsStudent Lily = new MsStudent(2, "Lily");
        Lily.printStudentInfo();
    }


} 
