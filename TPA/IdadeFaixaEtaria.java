import java.util.Scanner;
public class IdadeFaixaEtaria {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		int idade=0, i=0, f1=0, f2=0, f3=0, f4=0, f5=0, porc1=0, porc2=0, porc3=0, porc4=0, porc5=0;
	
		for(i=1; i<=15; i++) {
		System.out.print("Entre com a " + i + "� idade: ");	
		idade = sc.nextInt();
		
		if(idade<=15) {
			System.out.println(idade + " anos, pertencente a 1� faixa et�ria");
			f1++;
		}else if(idade<=30){
			System.out.println(idade + " anos, pertencente a 2� faixa et�ria");
			f2++;
		}else if(idade<=45) {
			System.out.println(idade + " anos, pertencente a 3� faixa et�ria");
			f3++;
		}else if(idade<=60) {
			System.out.println(idade + " anos, pertencente a 4� faixa et�ria");
			f4++;
		}else {
			System.out.println(idade + " anos, pertencente a 5� faixa et�ria");
			f5++;
		}	
		}
            porc1 = f1*100/15;
	    porc2 = f2*100/15;
	    porc3 = f3*100/15;
	    porc4 = f4*100/15;
	    porc5 = f5*100/15;	    
	    System.out.println("Das pessoas apresentadas: ");
	    System.out.println(porc1 + "% s�o pentencentes a 1� faixa et�ria");
	    System.out.println(porc2 + "% s�o pentencentes a 2� faixa et�ria");
	    System.out.println(porc3 + "% s�o pentencentes a 3� faixa et�ria");
	    System.out.println(porc4 + "% s�o pentencentes a 4� faixa et�ria");
	    System.out.println(porc5 + "% s�o pentencentes a 5� faixa et�ria");
	}
}

