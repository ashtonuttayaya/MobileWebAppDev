import java.util.Scanner;

public class Methods {
    public static void getRequirements() {
        System.out.println("Developer: Ashton Uttayaya");
        System.out.println("Program loops through array of strings.");
        System.out.println("Use following values: dog, cat, bird, fish, insect");
        System.out.println("Use following loop structures: for, enhanced for, while, do...while.");
        System.out.println("\nNote: Pretest loops: for, enhanced for, while. Posttest loop: do...while.");
        System.out.println();
    }

    public static void arrayLoops() {
        String animals[] = {"dog", "cat", "bird", "fish", "insect"};

        System.out.println("for loop:");
        for(int i = 0; i < animals.length; i++) {
            System.out.println(animals[i]);
        }

        System.out.println("\nEnhanced for loop:");
        for(String test : animals) {
            System.out.println(test);
        }

        System.out.println("\nWhile loop:");
        int i=0;
        while(i < animals.length) {
            System.out.println(animals[i]);
            i++;
        }

        i=0;
        System.out.println("\nDo...While loop:");
        do {
            System.out.println(animals[i]);
            i++;
        }
        while(i < animals.length);
    }
}