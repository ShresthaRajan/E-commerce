package practice;
public class variable {
	//instance variable
String name;
	//System.out.println(name);
	
public variable() {   /*contructer create.*/
	this.name= "Instance Variable ";				
	}

public void p() {
		//local Variable
		String named = "Local variable";
		System.out.println(named);		
	}	
public static void main(String args[]){
		variable test = new variable();
		test.p();
		//test.variable();
		System.out.println(test.name);	
	}
}


