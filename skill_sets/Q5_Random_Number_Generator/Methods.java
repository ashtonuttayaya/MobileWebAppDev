import java.util.Random;
import java.util.Scanner;

public class Methods {
    public static void getRequirements() {
        System.out.println("Developer: Ashton Uttayaya");
        System.out.println("Print minimum and maximum integer values.");
        System.out.println("Program prompts user to enter desired number of psuedorandom-generated integers (min 1).");
        System.out.println("Use following loop structures: for, enhanced for, while, do...while.\n");

        System.out.println("Integer.MIN_VALUES = " + Integer.MIN_VALUE);
        System.out.println("Integer.MAX_VALUES = " + Integer.MAX_VALUE);

        System.out.println();
        return;
    }

    public static int[] createArray() {
        Scanner sc = new Scanner(System.in);
        int arraySize = 0;
        
        System.out.print("Enter desired number of psuedorandom-generated integers (min 1): ");
        arraySize = sc.nextInt();

        int yourArray[] = new int[arraySize];
        return yourArray;
    }

    public static void generatePseudoRandomNumbers(int [] myArray) {
        Random r = new Random();

        int i = 0;
        System.out.println("for loop:");
        for(i=0; i < myArray.length; i++) {
            System.out.println(r.nextInt());
        }

        System.out.println("\nEnhance for loop:");
        for(int n: myArray) {
            System.out.println(r.nextInt());
        }

        System.out.println("\nWhile loop:");
        i=0;
        while(i < myArray.length) {
            System.out.println(r.nextInt());
            i++;
        }

        i=0;
        System.out.println("Do...While loop:");
        do {
            System.out.println(r.nextInt());
            i++;
        } while (i < myArray.length);
    }
}