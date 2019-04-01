package br.com.projeto3;

import java.util.ArrayList;

/**
 *
 * @author Jefferson V.
 */
public class BDClientes {

    private static ArrayList<Clientes> clientesList;

    public static ArrayList<Clientes> getClientesList() {
        if (clientesList == null) {
            clientesList = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("Fulano Souza");
            c1.setCpf("37597568245");
            c1.setRg("12458965X");
            c1.setEmail("fulano@domain.com");
            c1.setTelefone("+55 13 99000-1111");
            c1.setEndereco("Rua Antônio Figueiredo, 503");
            clientesList.add(c1);

            Clientes c2 = new Clientes();
            c2.setNome("Mano da Silva");
            c2.setCpf("09863487536");
            c2.setRg("274568972");
            c2.setEmail("manosilva@domain.com");
            c2.setTelefone("+55 13 99123-1100");
            c2.setEndereco("Avenida Roberto Sales, 2015");
            clientesList.add(c2);
            
            Clientes c3 = new Clientes();
            c3.setNome("Danilo Dias Ribeiro");
            c3.setCpf("57543372051");
            c3.setRg("371518556");
            c3.setEmail("danilodias@domain.com");
            c3.setTelefone("+55 13 94518-5655");
            c3.setEndereco("Rua Guimarães, 290");
            clientesList.add(c3);
            
            Clientes c4 = new Clientes();
            c4.setNome("Davi Almeida Costa");
            c4.setCpf("57253267422");
            c4.setRg("778253588");
            c4.setEmail("davi@domain.com");
            c4.setTelefone("+55 13 95478-3688");
            c4.setEndereco("Rua Elisabete Duarte de Oliveira, 887");
            clientesList.add(c4);
            
            Clientes c5 = new Clientes();
            c5.setNome("Camila Ferreira Correia");
            c5.setCpf("61960979763");
            c5.setRg("87580972X");
            c5.setEmail("camila@domain.com");
            c5.setTelefone("+55 13 93950-5076");
            c5.setEndereco("Rua Rio Reno, 717");
            clientesList.add(c5);
            
            Clientes c6 = new Clientes();
            c6.setNome("Laura Oliveira Almeida");
            c6.setCpf("91318308464");
            c6.setRg("532977530");
            c6.setEmail("lauraalmeida@domain.com");
            c6.setTelefone("+55 13 93805-3562");
            c6.setEndereco("Rua Garcia Moreno, 1180");
            clientesList.add(c6);
            
            Clientes c7 = new Clientes();
            c7.setNome("Matheus Ribeiro Gomes");
            c7.setCpf("76413220285");
            c7.setRg("073854569");
            c7.setEmail("matheusr@domain.com");
            c7.setTelefone("+55 13 93776-3142");
            c7.setEndereco("Rua Clara Zeken, 510");
            clientesList.add(c7);
            
            Clientes c8 = new Clientes();
            c8.setNome("Emily Cunha Martins");
            c8.setCpf("44548797846");
            c8.setRg("737384367");
            c8.setEmail("emily@domain.com");
            c8.setTelefone("+55 13 91033-4385");
            c8.setEndereco("Passagem Nunes, 1707");
            clientesList.add(c8);
            
            Clientes c9 = new Clientes();
            c9.setNome("Tiago Sousa Barros");
            c9.setCpf("82189643517");
            c9.setRg("761777563");
            c9.setEmail("tiago@domain.com");
            c9.setTelefone("+55 13 99257-5371");
            c9.setEndereco("Rua Cajari, 891");
            clientesList.add(c9);
            
            Clientes c10 = new Clientes();
            c10.setNome("Pedro Martins Fernandes");
            c10.setCpf("60901983848");
            c10.setRg("973125468");
            c10.setEmail("martins@domain.com");
            c10.setTelefone("+55 13 93894-2619");
            c10.setEndereco("Rua Sidineia Maria Portes Name, 1810");
            clientesList.add(c10);
        }
        return clientesList;
    }
}
