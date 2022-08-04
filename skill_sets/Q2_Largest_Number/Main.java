import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Methods.getRequirements();
        System.out.println("***Call static (no object) void (non-value returning) method:***");
        Methods.largestNumber();
        System.out.println("\n***Call static (no object) value-returning method and void method:***");
        
        int myNum1=0, myNum2=0;
        System.out.print("Enter first integer: ");
            myNum1 = Methods.getNum();
        System.out.print("Enter second integer: ");
            myNum2 = Methods.getNum();
        Methods.evaluateNumber(myNum1, myNum2);
    }
}