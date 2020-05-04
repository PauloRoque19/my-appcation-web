<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Usuários">

	<jsp:attribute name="content">
	
	<section class="content">
			
		  <section class="content-header">
		  	<div>
				
				<h6>USUARIOS DO SISTEMA</h6>
				
			</div>
			
			<c:if test = "${cadastrado != null}">
				<div class="alert alert-success" role="alert">
  					<p>${cadastrado}</p>
				</div>
			
			</c:if>
			
			
			<c:if test = "${editado != null}">
				<div class="alert alert-primary"role="alert">
  					<p>${editado}</p>
				</div>
			
			</c:if>
		
  			<c:if test="${excluido != null}">
  				<div class="alert alert-warning" role="alert">
  					<p>${excluido}</p>
				</div>
			</c:if>
		
			<div>
					
				<table class="table table-sm">
				
					<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nome</th>
						<th scope="col">Data de Nascimento</th>
						<th scope="col">Cpf</th>
						<th scope="col">Email</th>
						<th scope="col">AÇÔES</th>
						
					</tr>
					</thead>
					
					<tbody>
						<c:forEach var="cliente" items="${listaCliente}">
						<tr>
							<td>${cliente.id}</td>
							
							<td>${cliente.nome}</td>
						
							<td>${cliente.dataNascimento}</td>
						
							<td>${cliente.cpf}</td>
						
							<td>${cliente.email}</td>
							<td>
								<a href="${pageContext.request.contextPath}/ServletCliente?id=${cliente.id}&action=editar" class="btn btn-primary" >Editar</a>
							
								<a href="${pageContext.request.contextPath}/ServletCliente?id=${cliente.id}&action=delete" class="btn btn-danger" >Excluir</a>
								
								<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#visualizarUsuario" data-whatever="${cliente}">
									Visualizar
								</button>
							</td>
						</tr>
							
							
					</c:forEach>
					</tbody>
				</table>	
				
				  <!-- Inicio Modal Visualizar -->
		<div class="modal fade" id="visualizarUsuario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Dados do usuario: </h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" data-dismiss="modal" class="btn btn-primary">Fechar</button>
		      </div>
		    </div>
		  </div>
		</div>
	<!-- Final Modal Visualizar -->
				
						
			</div>
			
				
			<div>
				
				<a
				href="${pageContext.request.contextPath}/admin/usuarios/cadastroUsuario.jsp"
				class="btn btn-info btn-sm" type="submit">Novo</a>
						
			</div> 
			
			
	     </section><br><br>
     		
     	
     	
     	
     </section>
   
 
</jsp:attribute>

</mt:admin_tamplate>

<script>
//MODAL VISUALZIAR

$('#visualizarUsuario').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) 
  var usuario = $.parseJSON('whatever')
  var usuario = button.data(usuario.parseJSON('whatever'))
 
  
  
  var modal = $(this)
  modal.find('.modal-title').text('Nome -> ' + usuario.nome)
  modal.find('.modal-body input').val(obj.email)
})
	
</script>

