import java.util.Scanner;

import javax.lang.model.util.ElementScanner14;

public class Methods {
    public static void getRequirements() {
        System.out.println("Developer: Ashton Uttayaya");
        System.out.println("Program evaulates largest of two integers.");
        System.out.println("Note: Program does *not* check for non-numeric characters or non-integer values.");
        System.out.println();
    }

    public static void largestNumber() {
        int num1, num2;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter first integer: ");
        num1 = sc.nextInt();
            
            System.out.print("Enter second integer: ");
            num2 = sc.nextInt();

            System.out.println();
            if( num1 > num2)
            System.out.println(num1 + " is larger than " + num2);
            else if ( num2 > num1)
            System.out.println(num2 + " is larger than " + num1);
            else
                System.out.println("Integers are equal."); 
    }

    public static int getNum() {
        Scanner sc = new Scanner(System.in);
        return sc.nextInt();
    }

    public static void evaluateNumber(int num1, int num2) {
        System.out.println();
        if( num1 > num2)
        System.out.println(num1 + " is larger than " + num2);
        else if ( num2 > num1)
        System.out.println(num2 + " is larger than " + num1);
        else
        System.out.println("Integers are equal."); 
        return;
    }
}