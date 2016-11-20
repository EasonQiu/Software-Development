public class AbstractDemo {

    public static void main(String[] args) {
        AbstractFactory stufactory = FactoryProducer.getFactory("students");
        Students stu1 = stufactory.getStudents("Undergraduates", "Zhang San");
        stu1.printStudentInfo();
        Students stu2 = stufactory.getStudents("Graduates", "Li Si");
        stu2.printStudentInfo();
        Students stu3 = stufactory.getStudents("PhDs", "Wang Wu");
        stu3.printStudentInfo();
        Students stu4 = stufactory.getStudents("PhDs", "Zhao Liu");
        stu4.printStudentInfo();

        AbstractFactory teafactory = FactoryProducer.getFactory("faculty");
        Faculty tea1 = teafactory.getFaculty("Professors", "Fu Cong");
        tea1.printFacultyInfo();
        Faculty tea2 = teafactory.getFaculty("Lectures", "Lu Dong");
        tea2.printFacultyInfo();
        Faculty tea3 = teafactory.getFaculty("Staff", "Song Ying");
        tea3.printFacultyInfo();
    }
}
