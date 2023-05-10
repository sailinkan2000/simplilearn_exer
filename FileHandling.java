
import java.io.*;

public class FileHandling {
  public static void main(String[] args) {
    String strFilePath = "E:/JAVA/Try.txt";

    try {
      FileOutputStream fos = new FileOutputStream(strFilePath, true);
      String strContent = "Text to be appended.";
      fos.write(strContent.getBytes());
      fos.close();
      System.out.println("Your required content has been Successfully Appended into the File...");
    } catch (FileNotFoundException ex) {
      System.out.println("Fileisnotfoundwithexception : " + ex.toString());
    } catch (IOException ioe) {
      System.out.println("IOwithincludingException : " + ioe.toString());
    } catch (Exception e) {
      System.out.println("FinalException: " + e.toString());
    }
  }
}
