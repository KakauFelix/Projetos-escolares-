import java.util.Scanner;
public class Idade_Altura_Peso {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		int i, idade, idadeSuperior=0, idadeMaior=0, idadeMenor=0, porc=0, p=0, h=0;
		double altura=0, peso=0, media=0, somaAltura=0, pesoIdadeMaior=0, pesoIdadeMenor=0;
		
		for(i=1; i<=25; i++) {
			System.out.print("Digite a "+ i +"ª idade: ");
			idade = sc.nextInt();
			System.out.print("Agora digite a altura: ");
			altura = sc.nextDouble();
			System.out.print("E agora o peso: ");
			peso = sc.nextDouble();
					
			if(idade>50) {
				idadeSuperior++;
				
			}else if((idade>=10)&&(idade<=20)) {
				somaAltura += altura;
				h++;	
				
			}else if(peso<40) {
				p = p + 1;
			}
			
			if(i==1) {
				idadeMaior = idade;
				pesoIdadeMaior = peso;
				idadeMenor = idade;
				pesoIdadeMenor = peso;
			}			
	        if (idade < idadeMenor) {
	            idadeMenor = idade;
	            pesoIdadeMenor = peso;
	        }
	        if (idade > idadeMaior) {
	            idadeMaior = idade;
	            pesoIdadeMaior = peso;
	        }	
			
		}
		media = somaAltura/h;
		porc = p*100/25; 		
		
		System.out.println(idadeSuperior +" das pessoas pesquisadas possuem idade superior a 50 anos.");
		System.out.println("A média das alturas das pessoas com idade entre 10 e 20 anos é de " + media + ".");
		System.out.println("A porcentagem de pessoas com peso inferior a 40 quilos é de " + porc + "%.");
		System.out.println("O peso da pessoa mais velha é de "+ pesoIdadeMaior + " kilos.");
		System.out.println("E o peso da pessoa mais nova é de "+ pesoIdadeMenor + " kilos.");
        
	}

}
