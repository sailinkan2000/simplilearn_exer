import java.util.*;
public class CalculationFun {
    public static void main(String[] args)
    {
        Scanner in = new Scanner(System.in);
        double a, b, c = 0.0;

        System.out.print("\n Could you please enter first number:");
        a = in.nextDouble();
        System.out.print("\n Could you please enter second number:");
        b = in.nextDouble();

        System.out.print("\n Look after the number below to your required process" +
              "\n1. Addition of your numbers" +
        		"\n2. Subtraction within your numbers" +
        		"\n3. Multiplication within your numbers" +
        		"\n4. Division inbetween your numbers" +
        		"\n5. Power to your number" +
                "\n" +

        		"\n# Please enter the number of your choice to the operation above\n");
        double somethin = in.nextDouble();
        double addition = 1;
        double subtraction = 2;
        double multiplication = 3;
        double division = 4 ;
        double power = 5;
        if (somethin == addition) {
        	c = a + b;  
        	System.out.println(a + " + " + b + " = " + c);  }
        else if (somethin == subtraction)  {
        	c = a - b;  
        	System.out.println(a + " - " + b + " = " + c);	}
        else if (somethin == multiplication)	{
        	c = a * b;   
        	System.out.println(a + " * " + b + " = " + c);	}
        else if (somethin == division)   {
        	c = a / b;  
        	System.out.println(a + " / " + b + " = " + c);	}
        else if (somethin == power)	{
        	System.out.println("Enhance A or B?" +
        			"\n1.A" +
        			"\n2.B");
        	double enhance = in.nextDouble();
        	double first = 1;
        	double second = 2;
        		if (enhance == first) {
        			System.out.println(Math.pow(a, 2)); }	
        		else if (enhance == second); {
        			System.out.println(Math.pow(b, 2)); }
        
        }
    }
}
