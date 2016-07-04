
package prueba_queupumil_modulo_1;
import java.util.Scanner;
public class EV3_Queupumil_modulo_1_renovada {

    public static void main(String[] args) {
        int pixelnuevo[][]=new int[10][10];//matriz de la foto nueva. 
        int pixelviejo[][]=new int[10][10];//matriz de la foto antigau a comparar.
        int compar[]=new int[50];//arreglo para almasenar la cantidad de comparaciones de fotos.
        int puntosCaractern[][]=new int[50][2];//matriz para guardar los puntos caracateristicos de la foto nueva.
        int puntosCaracterv[][]=new int[50][2];//matriz para guardar los puntos caracateristicos de la foto vieja.
        int cantT=0;//cantidad total de comparaciones.
        int op=0;//variable para las opcionse del menu.
        
        do{
            System.out.println("ingrese opcion:\n1.ingresar pixeles de la foto antigua\n2.ingresar pixeles de la foto nueva\n3.comparar fotos\n4.mostrar pixeles ambas fotos\n5.mostrar cantidad de fotografias comparadas\n6.mostrar los puntos caracteristicos\n7.recorrer foto a traves de cordenada del pixel\n8.salir");
            System.out.print("opcion:" );
            op=llenarme();
            switch (op) {
                case 1:llenarv(pixelviejo);break;//caso  para llenar la foto vieja
                case 2:lenarn(pixelnuevo);break;//caso  para llenar la foto nueva
                case 3:cantT++;comparar(pixelnuevo,pixelviejo,compar,cantT);break;//caso  para comparar
                case 4:mostrarviejanueva(pixelviejo,pixelnuevo);break;//caso para mostrar las fotos y recorrer el arreglo
                case 5:mostrarfotos(compar,cantT);break;//mustra las estadisticas
                case 6:guardarpuntos(puntosCaractern,puntosCaracterv,pixelnuevo,pixelviejo);break;
                case 7:recorrido(pixelnuevo,pixelviejo);break;
                case 8:System.out.println("Adios");;break;
                default:System.out.println("WARNING opcion invalida ingrese otra opcion\n");break;
                    
            }
            
        }while(op!=8);
    }

    private static void llenarv(int[][] pixelviejo) {
        System.out.println("1.llenar automaticamente\notra tecla.llenar manualmente");
        int op1=llenarme();
        switch (op1) {
            case 1:for (int i = 0; i <pixelviejo.length; i++) {
                        for (int j = 0; j < pixelviejo[i].length; j++) {
                            pixelviejo[i][j]=(int) (Math.random()*10+1);
                        }
                    }
                break;
            default:
                    for (int i = 0; i < pixelviejo.length; i++) {
                        for (int j = 0; j < pixelviejo[i].length; j++) {
                            System.out.println("ingrese pixel: ("+i+","+j+")");
                            do {
                                pixelviejo[i][j]=llenarme();
                                if(pixelviejo [i][j]>10){System.out.println("ingrese un pixel valido");}
                            }while(pixelviejo [i][j]>10||pixelviejo [i][j]<0);
                        }
                    }
            } 
        System.out.println("\n----------------\n");
    }
    
    private static void lenarn(int[][] pixelnuevo) {
        System.out.println("1.llenar automaticamente\notra tecla.llenar manualmente");
        int op1=llenarme();
        switch (op1) {
            case 1:for (int i = 0; i <pixelnuevo.length; i++) {
                        for (int j = 0; j < pixelnuevo[i].length; j++) {
                            pixelnuevo[i][j]=(int) (Math.random()*10+1);
                        }
                    }
                break;
            default:
                    for (int i = 0; i < pixelnuevo.length; i++) {
                        for (int j = 0; j < pixelnuevo[i].length; j++) {
                            System.out.println("ingrese pixel: ("+i+","+j+")");
                            do {
                                pixelnuevo[i][j]=llenarme();
                                if(pixelnuevo [i][j]>10){System.out.println("ingrese un pixel valido");}
                            }while(pixelnuevo [i][j]>10||pixelnuevo [i][j]<0);
                        }
                    }
                }
        System.out.println("\n------------------\n");
    }
    
    private static int llenarme() {
        Scanner intro=new Scanner(System.in);
        int llenado=0;
        String llen;
        do{
            llen=intro.nextLine();
            if(!llen.matches("[0-9]+")){System.out.println("Warning caracter invalido, intente denuevo");}
        }while(!llen.matches("[0-9]+"));        
        llenado=Integer.parseInt(llen);
        return llenado;
    }

    public static void comparar(int[][] pixelnuevo, int[][] pixelviejo,int []compar,int cantT) {
        int contpor=0;
        int puntosv=0;
        int puntosn=0;
        int cantp=0,catin=0;
        for (int i = 0; i < pixelnuevo.length; i++) {
            for (int j = 0; j < pixelnuevo[i].length; j++) {
                try {
                    puntosv=puntosv+pixelnuevo[i-1][j]+pixelnuevo[i][j-1]+pixelnuevo[i-1][j-1]+pixelnuevo[1+i][j]+pixelnuevo[i][1+j]+pixelnuevo[1+i][1+j]+pixelnuevo[i-1][1+j]+pixelnuevo[i+1][j-1];
                } catch (ArrayIndexOutOfBoundsException e) {
                }
                try {
                    puntosn=puntosn+pixelviejo[i-1][j]+pixelviejo[i][j-1]+pixelviejo[i-1][j-1]+pixelviejo[i+1][j]+pixelviejo[i][j+1]+pixelviejo[i+1][j+1]+pixelviejo[i+1][j-1]+pixelviejo[i-1][j+1];

                } catch (ArrayIndexOutOfBoundsException e) {
                }
                if (puntosv>=puntosn) {
                contpor++;
                
                }
            }
        }
        System.out.println("el porsentaje de semejanza en la foto es de: "+contpor+"%.");
        if(contpor>95){
            System.out.println("la foto pertenese a la persona");
            compar[cantT]=1;
        }else{
            System.out.println("la foto no pertenese a la persona");      
            compar[cantT]=2;
        }    

            
        System.out.println("\n-----------------\n");
    }

    private static void mostrarviejanueva(int[][] pixelviejo,int[][] pixelnuevo) {
        System.out.println("--------------------------foto vieja-------------------------------");
        for (int i = 0; i < pixelviejo.length; i++) {
            System.out.print("\n");
            for (int j = 0; j < pixelviejo[i].length; j++) {
                System.out.print(pixelviejo[i][j]+"\t");
            }
        }
        System.out.println("\n--------------------------------------------------------------------\n");
        
        System.out.println("--------------------------foto nueva-------------------------------");
        for (int i = 0; i < pixelnuevo.length; i++) {
            System.out.print("\n");
            for (int j = 0; j < pixelnuevo[i].length; j++) {
                System.out.print(pixelnuevo[i][j]+"\t");
            }
        }
        System.out.println("\n--------------------------------------------------------------------\n");
        
    }


    private static void mostrarfotos(int[] comp, int cantT) {
        int cantpar=0;
        int cantinpar=0;
        for (int i = 0; i < comp.length; i++) {
            switch (comp[i]) {
                case 1:cantpar++;break;
                case 2:cantinpar++;break;
                default:break;     
            }
        }
        double porpar=(cantpar*100)/cantT;
        double porinpar=(cantinpar*100)/cantT;
        System.out.println("\nla cantidad total de fotos procesadas: "+cantT);
        System.out.println("porsentaje de fotos identicas "+porpar+"%");
        System.out.println("porsenatje de fotos no correspondientes:"+porinpar+"%");
        System.out.println("\n");
    }

    private static void guardarpuntos(int[][] puntosCaracterv,int[][] puntosCaractern, int[][] pixelnuevo,int[][] pixelviejo) {
        int puntosv=0,puntosn=0;
        int k=0,l=0;
        for (int i = 0; i < pixelnuevo.length; i++) {
            for (int j = 0; j < pixelnuevo[i].length; j++) {
                try {
                    puntosn=pixelnuevo[i-1][j]+pixelnuevo[i][j-1]+pixelnuevo[i-1][j-1]+pixelnuevo[i+1][j]+pixelnuevo[i][j+1]+pixelnuevo[i+1][1+j]+pixelnuevo[i-1][j+1]+pixelnuevo[i+1][j-1];
                } catch (ArrayIndexOutOfBoundsException e) {
                }
                if(puntosn<pixelnuevo[i][j]){
                    puntosCaractern[k][0]=i;
                    puntosCaractern[k][1]=j;
                    k++;
                }
            }
        }
        
        System.out.println("\nlos pixeles conocidos como puntos\ncaracteristicos de la foto nueva\nson pixel:"); 
        for (int i = 0; i <puntosCaractern.length ; i++) {
            if(puntosCaractern[i][0]==0 && puntosCaractern[i][1]==0){
            }else{    
                System.out.println("       x,y("+puntosCaractern[i][0]+","+puntosCaractern[i][1]+")");
            }
        }
        
        for (int i = 0; i < pixelviejo.length; i++) {
            for (int j = 0; j < pixelviejo[i].length; j++) {
                try {
                    puntosv=(pixelviejo[i-1][j])+(pixelviejo[i][j-1])+(pixelviejo[i-1][j-1])+(pixelviejo[i+1][j]+pixelviejo[i][j+1])+(pixelviejo[i+1][j+1])+(pixelviejo[i+1][j-1])+(pixelviejo[i-1][j+1]);
                } catch (ArrayIndexOutOfBoundsException e) {
                }
                if(puntosv<pixelviejo[i][j]){
                    puntosCaracterv[l][0]=i;
                    puntosCaracterv[l][1]=j;
                    l++;
                }
            }
        }
        System.out.println("\nlos pixeles conocidos como puntos\ncaracteristicos de la foto vieja\nson pixel:"); 
        for (int i = 0; i <puntosCaracterv.length ; i++) {
            if(puntosCaracterv[i][0]==0 && puntosCaracterv[i][1]==0){
            } else {
                System.out.println("       x,y("+puntosCaracterv[i][0]+","+puntosCaracterv[i][1]+")");
            }    
        }
           
    }

    private static void recorrido(int[][] pixelnuevo, int[][] pixelviejo) {
        int x,y;
        System.out.print("ingrese pixel a recorrer\nx: ");
        do{    
            x=llenarme();
            System.out.print("y: ");
            y=llenarme();
            if(x<0 || y<0 || x>10 || y>10){
                System.out.println("WARNING PIXELES INVALIDOS");
            }
        }while(x<0 || y<0 || x>10 || y>10); 
        System.out.println("foto vieja: pixel ("+x+","+y+"): "+pixelviejo[x][y]);
        System.out.println("\nfoto nueva: pixel ("+x+","+y+"): "+pixelnuevo[x][y]);
        System.out.println("-------------------------------\n");
    }
    
    
}

