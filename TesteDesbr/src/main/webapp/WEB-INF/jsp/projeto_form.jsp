<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <title>Formulário de Projeto </title>
     <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
     <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
     <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
     <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <div class="container">
  <spring:url value="/projetos/save" var="saveURL" />

  <h2>Detalhes do Projeto</h2>

  <form:form modelAttribute="projetoForm" method="post" action="${saveURL }" cssClass="form" >

   <form:hidden path="id"/>
   <div class="form-group">
      <label>Nome</label>
      <form:input path="nome" cssClass="form-control" id="nome" />
   </div>

   <div class="form-group">
      <label>Início</label>
      <form:input path="data_inicio" cssClass="form-control" id="data_inicio" width="276"/>
   </div>

   <div class="form-group">
     <label>Gerente</label>
     <form:input path="idgerente" cssClass="form-control" id="idgerente" />
   </div>

   <div class="form-group">
          <label>Gerente</label>
          <form:select path="idgerente" cssClass="form-control" id="idgerente">
              <form:options items="${pessoaList}" />
          </form:select>
   </div>

   <div class="form-group">
         <label>Previsão término</label>
         <form:input path="data_previsao_fim" cssClass="form-control" id="data_previsao_fim" width="276" />
  </div>

  <div class="form-group">
           <label>Término</label>
           <form:input path="data_fim" cssClass="form-control" id="data_fim" width="276" />
    </div>
   <div class="form-group">
           <label>Orçamento ($)</label>
           <form:input path="orcamento" cssClass="form-control" id="orcamento"  width="276"/>
    </div>
    <div class="form-group">
           <label>Descrição</label>
           <form:input path="descricao" cssClass="form-control" id="descricao" />
    </div>



    <div class="form-group">
               <label>Status</label>

               <form:select path="status"  id="status" width="200">
                  <form:option value="análise" label="análise"/>
                  <form:option value="análise realizada" label="análise realizada"/>
                  <form:option value="análise aprovada" label="análise aprovada"/>
                  <form:option value="iniciado" label="iniciado"/>
                  <form:option value="planejado" label="planejado"/>
                  <form:option value="em andamento" label="em andamento"/>
                  <form:option value="encerrado" label="encerrado"/>
                  <form:option value="cancelado" label="cancelado"/>
               </form:select>

        </div>





<script>
   $('#data_previsao_fim').datepicker({
       format: 'yyyy-mm-dd'
   });
    $('#data_inicio').datepicker({
          format: 'yyyy-mm-dd'
      });
       $('#data_fim').datepicker({
             format: 'yyyy-mm-dd'
         });
                 $('#dropdown').dropdown();

</script>


   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  
 </div>
</body>
</html>