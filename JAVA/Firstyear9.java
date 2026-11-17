 import java.util.Scanner;
 public class Firstyear9 {

    public String cname;
    public String sname;
    public int rollno;
    public int m1, m2, m3, total;

    public Firstyear9() {
        cname = "BCA";
        m1 = m2 = m3 = total = 0;
    }

    public Firstyear9(String cname) {
        this.cname = cname;
        m1 = m2 = m3 = total = 0;
    }

    public void setStudent() {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter student details: name, roll no, m1, m2, m3:");

        sname = sc.next();
        rollno = sc.nextInt();
        m1 = sc.nextInt();
        m2 = sc.nextInt();
        m3 = sc.nextInt();

        total = m1 + m2 + m3;
    }

    public void display() {
        System.out.println(cname + "\t" + rollno + "\t" + sname + "\t" + m1 + "\t" + m2 + "\t" + m3 + "\t" + total);
    }

    public static void main(String[] args) {

        Firstyear9 s[] = new Firstyear9[60];

        int max = 0;
        String beststudent = "";
        int n;

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter no of students:");
        n = sc.nextInt();
        for(int i = 0; i < n; i++) {
            s[i] = new Firstyear9();
            s[i].setStudent();
            if (s[i].total > max) {
                max = s[i].total;
                beststudent = s[i].sname;
            }
        }

        System.out.println("Course\tRollNo\tName\tM1\tM2\tM3\tTotal");
        for (int i = 0; i < n; i++) {
            s[i].display();
        }

        System.out.println("\nBest Student:" + beststudent);
        System.out.println("Marks:" + max);

    }

 }