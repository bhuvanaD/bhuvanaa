public class Reversestring
{
public static void main(String args[])
{
String str = "hai";
System.out.println("oringinal string is: "   +str);
str = new StringBuffer(str).reverse().toString();

System.out.println("reversed string is:" +str);
}
}