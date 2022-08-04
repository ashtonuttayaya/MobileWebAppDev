import java.util.Random;
import java.util.Scanner;

import javax.lang.model.util.ElementScanner14;

public class Methods {
    public static void getRequirements() {
        System.out.println("Developer: Ashton Uttayaya");
        System.out.println("Program evaluates user-entered characters.");
        System.out.println("Use following characters: W or w, C or c, H or h, N or n.");
        System.out.println("Use following decision structures: If..Else, and Switch.");

        System.out.println();
    }

    public static void getUserPhoneType() {
        String myStr="";
        char myChar=' ';
        Scanner sc = new Scanner(System.in);

        System.out.println("Phone types: W or w (work), C or c (cell), H or h (home), N or n (none).");
        System.out.print("Enter phone type: ");
        myStr = sc.next().toLowerCase();
        myChar = myStr.charAt(0);

        System.out.println("\nIf..Else:");

        if(myChar == 'w')
            System.out.println("Phone type: work");
        else if(myChar == 'c')
            System.out.println("Phone type: cell");
        else if(myChar == 'h')
            System.out.println("Phone type: home");
        else if(myChar == 'n')
            System.out.println("Phone type: none");
        else
            System.out.println("Incorrect character entry.");
        
        System.out.println();
        System.out.println("Switch:");
        switch (myChar) {
            case 'w':
                System.out.println("Phone type: work");
                break;
            case 'c':
                System.out.println("Phone type: cell");
                break;
            case 'h':
                System.out.println("Phone type: home");
                break;
            case 'n':
                System.out.println("Phone type: none");
                break;
            default:
                System.out.println("Incorrect character entry.");
                break;
        }
    }
}