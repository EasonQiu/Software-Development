public class MsStudent extends Student {
    private int enrollYear, graduateYear;
    private float tuition;

    public MsStudent(int id, String name){
        super(id, name);
    }

    public int getEnrollYear(){
        return enrollYear;
    }
    public int getGraduateYear(){
        return graduateYear;
    }
    public float getTuition(){
        return tuition;
    }

    public void setEnrollYear(int year){
        this.enrollYear = year;
    }
    public void setGraduateYear(int year){
        this.graduateYear = year;
    }
    public void setTuition(float tuition){
        this.tuition = tuition;
    }

    public void printStudentInfo(){
        System.out.println("Name: " + getName());
        System.out.println("ID: " + getId());
        System.out.println("Phone: " + getPhone());
        System.out.println("Adress: " + getAddress());
        System.out.println("Age: " + getAge());
        System.out.println("Department: " + getDepartment());
        System.out.println("Duration: " + enrollYear + " to " + graduateYear);
        System.out.println("Tuition: " + tuition);
    }

}
