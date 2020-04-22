/**
 * 
 */
package br.com.cliente.model;

import java.util.ArrayList;
import java.util.List;

import br.com.cliente.controller.ServletCliente;

/**
 * @author Paulinho
 *
 */
public class Cliente {
	
	private String nome;
	private String dataNascimento;
	private String cpf;
	private String email;
	
	
	public Cliente(String n,String d,String c,String e) {
		this.cpf = c;
		this.dataNascimento = d;
		this.nome = n;
		this.email = e;
	}
	
	
	public Cliente() {}
	
	

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getDataNascimento() {
		return dataNascimento;
	}
	
	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Cliente | nome: " + nome + ", dataNascimento: " + dataNascimento + ", cpf: " + cpf + ", email: " + email ;
	}
	
	
	
	
	
}
