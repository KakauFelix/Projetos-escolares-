import java.util.Scanner;
public class IdadeFaixaEtaria {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		int idade=0, i=0, f1=0, f2=0, f3=0, f4=0, f5=0, porc1=0, porc2=0, porc3=0, porc4=0, porc5=0;
	
		for(i=1; i<=15; i++) {
		System.out.print("Entre com a " + i + "ª idade: ");	
		idade = sc.nextInt();
		
		if(idade<=15) {
			System.out.println(idade + " anos, pertencente a 1ª faixa etária");
			f1++;
		}else if(idade<=30){
			System.out.println(idade + " anos, pertencente a 2ª faixa etária");
			f2++;
		}else if(idade<=45) {
			System.out.println(idade + " anos, pertencente a 3ª faixa etária");
			f3++;
		}else if(idade<=60) {
			System.out.println(idade + " anos, pertencente a 4ª faixa etária");
			f4++;
		}else {
			System.out.println(idade + " anos, pertencente a 5ª faixa etária");
			f5++;
		}	
		}
            porc1 = f1*100/15;
	    porc2 = f2*100/15;
	    porc3 = f3*100/15;
	    porc4 = f4*100/15;
	    porc5 = f5*100/15;	    
	    System.out.println("Das pessoas apresentadas: ");
	    System.out.println(porc1 + "% são pentencentes a 1ª faixa etária");
	    System.out.println(porc2 + "% são pentencentes a 2ª faixa etária");
	    System.out.println(porc3 + "% são pentencentes a 3ª faixa etária");
	    System.out.println(porc4 + "% são pentencentes a 4ª faixa etária");
	    System.out.println(porc5 + "% são pentencentes a 5ª faixa etária");
	}
}

