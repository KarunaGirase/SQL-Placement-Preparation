class Employee{
int empid;
String name;
int salary;
Employee(int a, String b, int c){
empid = a;
name = b;
salary = c;
}
void display(){
System.out.println(empid);
System.out.println(name);
System.out.println(salary);
}

public static void main(String args[]){
Employee e = new Employee(1,"aaa",1000);
e.display();
}
}

