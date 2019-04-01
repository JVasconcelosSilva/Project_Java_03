/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto3;

import java.util.ArrayList;

/**
 *
 * @author John.
 */
public class BDFornecedores {
    private static ArrayList<Fornecedores> fornecedorList;
    public static ArrayList<Fornecedores> getFornecedoresList(){
        if(fornecedorList == null){
            fornecedorList = new ArrayList<>();
            Fornecedores fo = new Fornecedores();
            fo.setNome("Fulano");
            fo.setCnpj("45759724878");
            fo.setRazao("37247102X");
            fo.setEmail("fulano@domain.com");
            fo.setTelefone("+55 13 99000-1111");
            fo.setEndereco("Rua Antônio Figueiredo, 503");
            fornecedorList.add(fo);
            
            Fornecedores fo2 = new Fornecedores();
            fo2.setNome("Mano");
            fo2.setCnpj("09863487536");
            fo2.setRazao("274568972");
            fo2.setEmail("mano@domain.com");
            fo2.setTelefone("+55 13 99123-1100");
            fo2.setEndereco("Avenida Roberto Sales, 2015");
            fornecedorList.add(fo2);
        }
        return fornecedorList;
    }
}