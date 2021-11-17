package org.solent.com504.oodd.cart.spring.web;

public class TransactionLogger{
public void whenWriteStringUsingBufferedWritter_thenCorrect() 
  throws IOException {
    String str = "Hello";
    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName));
    writer.write(str);
    
    writer.close();
}

@Test
public void whenAppendStringUsingBufferedWritter_thenOldContentShouldExistToo() 
  throws IOException {
    String str = "World";
    BufferedWriter writer = new BufferedWriter(new FileWriter(fileName, true));
    writer.append(' ');
    writer.append(str);
    
    writer.close();
}

}