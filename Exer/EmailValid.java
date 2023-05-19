import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.*;
public class EmailValid {  
    public static void main(String args[]){  
        ArrayList<String> emails = new ArrayList<String>();  
          
        emails.add("lucky@domain.co.in");  
        emails.add("lucky@gmail.com");  
        emails.add("practise.exercises@gmail.com");  
        emails.add("sailinkan@gmail.com");  
        //Add invalid emails in list  
        emails.add("@yahoo.com");  
        //Regular Expression   
        String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";  
        //Compile regular expression to get the pattern  
        Pattern pattern = Pattern.compile(regex);  
        //Iterate emails array list  
        for(String email : emails){  
            //Create instance of matcher   
            Matcher matcher = pattern.matcher(email);  
            System.out.println(email +" : "+ matcher.matches()+"\n");  
        }  
    }  
}  
