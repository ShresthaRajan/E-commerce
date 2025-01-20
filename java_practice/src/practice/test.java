package practice;

import java.util.Scanner;

public class test {

public static void main(String []args) {
	int a, b;
	Scanner scan = new Scanner(System.in);
	System.out.println("Enter the value of x");
	a = scan.nextInt();
	System.out.println("Enter the value of y");
	b = scan.nextInt();
	int sum = a + b;
	System.out.println(sum);
	scan.close();
			
	}
	

}
