public class Lectures implements Faculty{
    private String name, phone, address, department, courses;
    private int id, age;
    private static int idcount = 1;

    public Lectures(String name){
        this.id = idcount;  ++idcount;
        this.name = name;
    }

    public String getName(){
        return name;
    }
    public int getId(){
        return id;
    }
    String getAddress(){
        return address;
    }
    protected String getPhone(){
        return phone;
    }
    public int getAge(){
        return age;
    }
    public String getDepartment(){
        return department;
    }
    public String getCourses() {
        return courses;
    }

    void setAddress(String address){
        this.address = address;
    }
    protected void setPhone(String phone){
        this.phone = phone;
    }
    public void setAge(int age){
        this.age = age;
    }
    public void setDepartment(String department){
        this.department = department;
    }
    public void setCourses(String s) {
        this.courses = s;
    }

    public void printFacultyInfo(){
        System.out.println("Lecture " + name + "( " + id + " ) teaches " + courses);
    }

}
