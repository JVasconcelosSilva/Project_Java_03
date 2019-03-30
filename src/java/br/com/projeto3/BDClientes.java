package br.com.projeto3;

import java.util.ArrayList;

/**
 *
 * @author Jefferson V.
 */
public class BDClientes {
    private static ArrayList<Clientes> clienteList;
    public static ArrayList<Clientes> getContatosList(){
        if(clienteList == null){
            clienteList = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("Fulano");
            c1.setCpf("45759724878");
            c1.setRg("37247102X");
            c1.setEmail("fulano@domain.com");
            c1.setTelefone("+55 13 99000-1111");
            c1.setEndereco("Rua Antônio Figueiredo, 503");
            clienteList.add(c1);
            
            Clientes c2 = new Clientes();
            c2.setNome("Mano");
            c2.setCpf("09863487536");
            c2.setRg("274568972");
            c2.setEmail("mano@domain.com");
            c2.setTelefone("+55 13 99123-1100");
            c2.setEndereco("Avenida Roberto Sales, 2015");
            clienteList.add(c2);
        }
        return clienteList;
    }
}
