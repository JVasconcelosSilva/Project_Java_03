package br.com.projeto3;

import java.util.ArrayList;

/**
 *
 * @author Jefferson V.
 */
public class BDClientes {
    private static ArrayList<Clientes> clientesList;
    public static ArrayList<Clientes> getClientesList(){
        if(clientesList == null){
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
        }
        return clientesList;
    }
}
