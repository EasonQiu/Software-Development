import com.sun.tools.corba.se.idl.StringGen;

public class Student implements People {
    private String name, phone, address, department;
    private int id, age;

    public Student(int id, String name){
        this.id = id;
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

    public void printStudentInfo(){
        System.out.println("Name: " + name);
        System.out.println("ID: " + id);
        System.out.println("Phone: " + phone);
        System.out.println("Adress: " + address);
        System.out.println("Age: " + age);
        System.out.println("Department: " + department);
    }
}
