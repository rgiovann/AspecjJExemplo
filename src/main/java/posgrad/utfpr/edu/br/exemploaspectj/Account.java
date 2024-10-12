/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posgrad.utfpr.edu.br.exemploaspectj;

/**
 *
 * @author Acer
 */

public class Account {
    int balance = 20;
    public boolean withdraw(int amount) {
        if (balance < amount) {
            return false;
        } 
        balance = balance - amount;
        return true;
    }
}

