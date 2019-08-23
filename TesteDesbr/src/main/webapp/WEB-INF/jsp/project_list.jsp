<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Teste Desbr</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
 


</head>


<body>
 <div class="container">
  <h2>Lista de Projetos</h2>
  
  <spring:url value="/projetos/add/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Novo Projeto</a>
    
  <table class="table table-striped">
   <thead>
    <th scope="row">Nome</th>
    <th scope="row">Início</th>
    <th scope="row">Previsão Fim</th>
    <th scope="row">Fim</th>
    <th scope="row">Status</th>
    <th scope="row">Gerente</th>

    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${projectList }" var="proj" >
     <tr>
      <td>${proj.nome }</td>
      <td>${proj.data_inicio }</td>
      <td>${proj.data_previsao_fim }</td>
      <td>${proj.data_fim }</td>
      <td>${proj.status }</td>
      <td>${proj.idgerente }</td>

      <td>

       <spring:url value="/projetos/update/${proj.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/projetos/delete/${proj.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  
  
  
<button onclick="openModal()" type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExemplo">
  Abrir modal de demonstra??o
</button>

<!-- Modal -->
<div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">T?tulo do modal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button onclick="closeModal()"  type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        <button type="button" class="btn btn-primary">Salvar mudan?as</button>
      </div>
    </div>
  </div>
</div>
 
 
 
 
 <script> 
 
//alert("oi");

 function openModal() {
	 //alert("oi");
	  document.getElementById("modalExemplo").style.display = "contents";
 }
 function closeModal() {
	 alert("oi");
	  document.getElementById("modalExemplo").style.display = "none";
 }

 
</script>
 
</body>
</html>