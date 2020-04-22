<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>


<mt:admin_tamplate title="Projeto" breadcrumb="Usuários">

	<jsp:attribute name="content">
	
	<section class="content">
			
		  <section class="content-header">
		  	<div>
				
				<h6>Listagem de usuários</h6>
				
			</div>
			
			<div>
				
				
				<table class="table table-sm">
				
					<thead>
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">Data de Nascimento</th>
						<th scope="col">Cpf</th>
						<th scope="col">Email</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="cliente" items="${lista}">
						<tr>
							<td>${cliente.nome}</td>
						
							<td>${cliente.dataNascimento}</td>
						
							<td>${cliente.cpf}</td>
						
							<td>${cliente.email}</td>
						</tr>
						
							
					</c:forEach>
					</tbody>
				</table>			
			</div>
				
				
			<div>
				
				
				
				<a
				href="${pageContext.request.contextPath}/admin/usuarios/cadastroUsuario.jsp"
				class="btn btn-info btn-sm" type="submit">Cadastro</a>
				
					
			</div> 
			
			
	     </section><br><br>
     		
     	
     	
     	
     </section>
   
</jsp:attribute>

</mt:admin_tamplate>

<script>
	function lerStorage(){
		for (var i = 0; i < localStorage.length; i++) {
			var lastname = localStorage.getItem("cadastrado"+i);
			document.write(lastname);
			
		}
		
	}
	
	
</script>

