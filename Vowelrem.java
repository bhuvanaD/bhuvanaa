import java.util.*;

public class Vowelrem

{
public static void main(String args[])
{
System.out.println("enter the sentenece");
Scanner s = new Scanner(System.in);
String wd = s.nextLine();
char[] c = wd.toCharArray();
char cc[] = new char[80];
int j=0;
for(int i=0 ;i<c.length;i++)
{
if(c[i]=='a' || c[i]=='e' || c[i]=='i' || c[i]=='o' || c[i]=='u')
{
continue;
}
else
{
cc[j]=c[i];
j++;
}
}
}
System.out.println(cc);
}
}