public class Graduates implements Students {
    private String name, phone, address, department;
    private int id, age;
    private static int idcount = 1;

    public Graduates(String name){
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
        System.out.println("Student " + name + "( " + id + " ) is a graduate.");
    }
}
