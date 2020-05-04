<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Cadastrar Usuarios">
	<jsp:attribute name="content">
	
	<section class="content">

	<section class="content-header">
	
			<c:if test="${ERROR != null}">
  				<div class="alert alert-warning" role="alert">
  					<p>${ERROR}</p>
				</div>
			</c:if>
	
			<form class="text-center border border-light p-5" action="${pageContext.request.contextPath}/ServletCliente" method="post">
			
			    <p class="h4 mb-4">Novo Usuário</p>
			    
				<div class="form-group col-md-12">
					<input type="hidden" name = "id" value ="${cliente.id}" readonly ="readonly">
				</div>
				
				<div class="form-group">
				    <!-- Name -->
				 
				    <input name="nome" type="text" id="nome"
							class="form-control mb-4" placeholder="Digite seu Nome" value ="${cliente.nome}">
				 
			    </div>
			
				<div class="form-group">
				    <!-- Email -->
				    <input name="email" type="email" id="email"
							class="form-control mb-4" placeholder="Digite seu E-mail" value ="${cliente.email}" >
			    </div>
			    
			    <div class="form-group">
				     <!-- idade -->
				    <input name="dataNascimento" type="text" id="dataNascimento"
							class="form-control mb-4" placeholder="Data de nascimento" value ="${cliente.dataNascimento}">
			    </div>
			    <div class="form-group">
				     <!-- cpf -->
				    <input name="cpf" type="text" id="cpf"
							class="form-control mb-4" placeholder="Digite seu Cpf" value ="${cliente.cpf}">
			    </div>
			    
			    <div class="form-group">
				    <!-- login -->
				    <input name="login" type="text" id="login"
							class="form-control mb-4" placeholder="Digite seu login" value ="${cliente.login}">
			    </div>
			    <div class="form-group">
				    <!-- senha -->
				    <input name="senha" type="password" id="senha"
							class="form-control mb-4" placeholder="Digite sua senha" value ="${cliente.senha}">
			    </div>
			    
			    <div class = "box-footer">
					<c:if test = "${cliente.id != null}">
						
						<button id="btn-editar" class="btn btn-primary" type="submit">editar</button>
					</c:if>
					<c:if test = "${cliente.id == null}">
						<button id="btn-salvar" class="btn btn-warning" type="submit">Salvar</button>
					</c:if>
				</div>
			
			    
			    <!-- Enviar -->
			    <!--  <input class="btn btn-info btn-sm" type="submit"  name="enviar" id="enviar"  value="ENVIAR"/>-->
			    
			   
			    
			     <!--   <a href="${pageContext.request.contextPath}/src/main/java/br.com.cliente.controller/ServletCliente"
						class="btn btn-info btn-sm" type="submit">Cadastro</a> -->
						
				
			
			</form> 
	     </section>
     
     
     </section>

	
</jsp:attribute>

</mt:admin_tamplate>
<script>


//var contadora = 0;


	/*function validar() {
		
		
		//event.preventDefault();
		var nome = document.getElementById("nome").value;
		var email = document.getElementById("email").value;
		var idade = document.getElementById("idade").value;
		var cpf = document.getElementById("cpf").value;
		

		if (nome == "" && email == "" && idade == "") {
			alert("Campos vazios")
			//event.preventDefault();
			window.location.href = "add_usuario.jsp";
		}

		else{
			
			var usuario = {
						
					 nome : nome,
				     email : email,
				     idade : idade,
				     cpf   : cpf }
			
			
			alert("Usuário Cadastro com Sucesso.")
			

			var json = JSON.stringify(usuario);

			localStorage.setItem("cadastrado"+contadora, json);

			contadora = contadora + 1;
			
			
		}

		event.preventDefault();
	}*/
</script>