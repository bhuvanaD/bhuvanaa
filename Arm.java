import java.util.Scanner;
public class Arm
{
public static void main(String args[])
{
int num,temp,rem,sum = 0;
Scanner in = new Scanner(System.in);
System.out.println("enter the number");
num = in.nextInt();

temp = num;
while(temp!=0)
{
rem = temp%10;
sum = sum + (int)Math.pow(rem,3);
temp = temp/10;
}
if(sum == num)
{
System.out.println("the number is armstring");
}
else
{
System.out.println("the numbet is nt armstrong");
}
}
}


