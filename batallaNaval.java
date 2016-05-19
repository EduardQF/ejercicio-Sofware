
package arregloalejandro;
import java.util.Scanner;
public class batallaNaval {
    public static void main(String[] args) {
        Scanner intro= new Scanner(System.in);
        int pc[][]=new int[5][5];
        int usuario[][]=new int[5][5];
        int colum=0, fila=0;
        int barcospc=5,barcosusuario=5;
        for (int i = 0; i <4; i++) {
            for (int j = 0; j < 4; j++) {
                pc[i][j]=0;
                usuario[i][j]=0;
            }
        }
        //UBICACION DE LOS BARCOS ENEMIGOS
        for (int i = 0; i < 5; i++) {
            fila=(int) (Math.random()*5+1);
            colum=(int) (Math.random()*5+1);
            while(pc[fila-1][colum-1]==1){
                i--;
                break;
            }
            pc[fila-1][colum-1]=1;
            
        }
        //UBICACION DE LOS BARCOS USUARIO
        for (int i = 0; i <5; i++) {
            System.out.println("ingrese pocicion del barco "+(i+1));
            System.out.print("fila");
            do{
               fila=intro.nextInt(); 
               if(fila<0||fila>5)System.out.println("WARNING fila no registrada");;
            }while(fila<0||fila>5);
            System.out.print("columna");
            do{
                colum=intro.nextInt();
                if(colum<0||colum>5)System.out.println("WARNING columna ingrsada no valida");;
            }while(colum<0||colum>5);
            while(usuario[fila-1][colum-1]==1){
                System.out.println("WARNING ya tiene un barco ahi");
                i--;
                break;
            }
            usuario[fila-1][colum-1]=1;
        }
        
        //inicia el combate naval
        System.out.println("EL COMBATE COMIENZA\nGO");
        do{
            //turno usuario
            System.out.println("elija pocicion a disparar");
            System.out.print("fila");
            do{
               fila=intro.nextInt(); 
               if(fila<0||fila>5)System.out.println("WARNING fila no registrada");;
            }while(fila<0||fila>5);
            System.out.print("columna");
            do{
                colum=intro.nextInt();
                if(colum<0||colum>5)System.out.println("WARNING columna ingrsada no valida");;
            }while(colum<0||colum>5);
            while(pc[fila-1][colum-1]==2){
                System.out.println("WARNING ya tiene un barco ahi");
                //i--;
                break;
            }
            if(pc[fila-1][colum-1]==1){
                System.out.println("barco enemigo al agua");
                barcospc--;
                System.out.println("barcos usuarios"+barcosusuario);
            }else{
                System.out.println("CUACK CUACK fallaste\npuntos"+barcosusuario);
            }
            pc[fila-1][colum-1]=2;
            
            //turno pc
            fila=(int) (Math.random()*5+1);
            colum=(int) (Math.random()*5+1);
            while(usuario[fila-1][colum-1]==2){
                //i--;
                break;
            }
            if(usuario[fila-1][colum-1]==1){
                System.out.println("barco usuario undido");
                barcosusuario--;
                System.out.println("barcos enemigo "+barcospc);
            }else{
                System.out.println("te has salvado\nbarcos enemigo "+barcospc);
            }
            usuario[fila-1][colum-1]=2;
            //comprobacion
                    System.out.println("pc");
            for (int i = 0; i < 5; i++) {
                System.out.println("  ");
            for (int j = 0; j < 5; j++) {
                System.out.print(pc[i][j]+"\t");
            }

            }
                 System.out.println("\n\nusuario");
            for (int i = 0; i < 5; i++) {
                 System.out.println("  ");
            for (int j = 0; j < 5; j++) {
                System.out.print(usuario[i][j]+"\t");
            }
        }
        }while(barcospc>0||barcosusuario>0);
        
        
        //comprobacion
        
        System.out.println("pc");
        for (int i = 0; i < 5; i++) {
            System.out.println("  ");
            for (int j = 0; j < 5; j++) {
                System.out.print(pc[i][j]+"\t");
            }

        }
        System.out.println("\n\nusuario");
        for (int i = 0; i < 5; i++) {
            System.out.println("  ");
            for (int j = 0; j < 5; j++) {
                System.out.print(usuario[i][j]+"\t");
            }
        }
        
        
    }
}
