class AddSub {
 int a,b;
  
 void add(int x,int y) {
   a = x;
   b = y;
   System.out.println("Addition = " + (a + b));
  }

 void sub(int x,int y) {
   a = x;
   b = y;
   System.out.println("Subtraction = " + (a - b));
  } 
}

class MulDiv extends AddSub {

 void mul(int x,int y) {
   a = x;
   b = y;
   System.out.println("Multiplication = " + (a * b));
  }

 void div(int x,int y) {
   a = x;
   b = y;
   System.out.println("Division = " + (a / b));
  }
}

class MathOperations {
  public static void main(String[] args) {
 
   MulDiv obj = new MulDiv();

   obj.add(20,10);
   obj.sub(20,10);
   obj.mul(20,10);
   obj.div(20,10);
  }
}
 