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
            fo.setNome("Renan Pereira");
            fo.setCnpj("973164312546");
            fo.setRazao("Ltda.");
            fo.setEmail("renan@domain.com");
            fo.setTelefone("+55 13 99888-7777");
            fo.setEndereco("Rua José de Paiva Vidal, 357");
            fornecedorList.add(fo);
            
            Fornecedores fo2 = new Fornecedores();
            fo2.setNome("Luis Ribeiro");
            fo2.setCnpj("173928465248");
            fo2.setRazao("SA");
            fo2.setEmail("luis@domain.com");
            fo2.setTelefone("+55 13 99123-1234");
            fo2.setEndereco("Rua Professor João Augusto de Toledo, 958");
            fornecedorList.add(fo2);
        }
        return fornecedorList;
    }
}