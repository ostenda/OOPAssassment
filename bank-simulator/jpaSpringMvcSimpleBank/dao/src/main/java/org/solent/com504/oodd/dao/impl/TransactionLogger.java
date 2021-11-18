package org.solent.com504.oodd.cart.spring.web;
import java.io.*; 

public class TransactionLogger{

    public static void main(String[] args) throws Exception{     
        
        fileWriter();

        }  

    public static void fileWriter() throws Exception{

        FileWriter writer = new FileWriter("C:/Users/tiago/OneDrive/Ambiente de Trabalho/testout.txt", true);  
        BufferedWriter buffer = new BufferedWriter(writer);  
        buffer.write("Test\n");  
        buffer.close();  
        System.out.println("Success");  

    }

}  