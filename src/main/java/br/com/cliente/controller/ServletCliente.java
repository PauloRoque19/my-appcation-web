package br.com.cliente.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;



import br.com.cliente.model.Cliente;


@WebServlet("/ServletCliente")
public class ServletCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Cliente cliente = new Cliente();
	
	ArrayList<Cliente>b = new ArrayList();
    
    public ServletCliente() {
        super();
        
        //cliente = new Cliente();
        
    }
    
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		
		//Mensagem de cadastro
		
		String msgS = "Usuario Cadastrado com Sucesso!";
		String msgE = "Usuario Não Foi Cadastrado!";
		
		//Pegando os dados cadastrado da tela de cadastro
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String cpf = request.getParameter("cpf");
		String dataNasc = request.getParameter("dataNascimento");
		
		
		
		//aqui estou verificando se os parametro estão vazio!
		if(nome != "" && email != "" && cpf != "" && dataNasc != "") {
			
			cliente.setNome(nome);
			cliente.setEmail(email);
			cliente.setCpf(cpf);
			cliente.setDataNascimento(dataNasc);
			b.add(cliente);
			
			//Joga mensagem na JSP
			request.setAttribute("lista", b);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/usuarios/usuarios.jsp");
			rd.forward(request, response);
			
			System.out.println(msgS);
			System.out.println(b.toString());
			
		}else {
			//Joga mensagem na jsp
			
			RequestDispatcher rd = request.getRequestDispatcher("/admin/usuarios/cadastroUsuario.jsp");
			rd.forward(request, response);
			
			System.out.println(msgE);
			
		}
		
		 
		
	}
	

}
