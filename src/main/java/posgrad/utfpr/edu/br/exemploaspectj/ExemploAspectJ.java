/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 
// https://www.baeldung.com/aspectj

*/
package posgrad.utfpr.edu.br.exemploaspectj;

/**
 *
 * @author Acer
 */

public class ExemploAspectJ {
    public static void main(String[] args) {
        Account account = new Account();
        account.withdraw(5);
        account.withdraw(10);
        account.withdraw(39);
    }
}