import java.util.Scanner;
public class Tabuada {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		int n, i, r;
		
		System.out.print("Digite o número para apresentar-mos a tabuada: ");
		n = sc.nextInt();
		
		for(i=1; i<=10; i++) {
		r = n * i;
		System.out.println(n + " x " + i + " = " + r);
		}
	}
}
