<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:import url="../aux-files/header.jsp"/>
<title>Novo Médico</title>
</head>
<body>
    <div class="container-fluid text-left">
        <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
            <div class="well">
               <div class="navbar-header">
                    <a class="botao icon-button" href="<c:url value='/dashboard/login'/>" style="color:black">
                        <i class="fa fa-reply fa-2x" aria-hidden="true"></i>
                    </a>
                </div>
                <div class="panel-heading text-center">
                    <h3><b>Médico - Quero me Cadastrar</b></h3>
                </div>
                <hr class="hr-black">
                <div class="panel-body">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        <form action="<c:url value='/usuario/adiciona'/>" method="post">
                        <div class="row">
                                <label for="">Nome:</label>
                                <input type="text" class="form-control" placeholder="Nome" name="medico.nomeMedico" value="${medico.nomeMedico}">
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpace">
                                    <label for="">Registro Profissional:</label>
                                    <input type="number" class="form-control" placeholder="Registro Médico Profissional" name="medico.regProfissionalMedico" value="${medico.regProfissionalMedico}">
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                <label for="">Especialidade:</label>
                                <select class="form-control" id="cbbxEspec" name="medico.idEspecialidade">
                                    <option value="" disabled selected hidden>Selecione...</option>
                                    <c:forEach items="${especialidadeList}" var="especialidade">
					                    <option value="${especialidade.idEspecialidade}">${especialidade.nomeEspecialidade}</option>
						            </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                    <label for="">Nome da instituição:</label>
                                    <input type="text" class="form-control" placeholder="Nome da instituição" name="medico.instituicaoMedico" value="${medico.instituicaoMedico}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 resetSpace">
                                    <label for="">CEP:</label>
                                    <input type="number" class="form-control" placeholder="CEP" name="medico.cepMedico" value="${medico.cepMedico}">
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-4 col-lg-4 resetSpaceRspv">
                                    <label for="">Cidade:</label>
                                    <input type="text" class="form-control" placeholder="Cidade" name="medico.cidadeMedico" value="${medico.cidadeMedico}">
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2 resetSpaceRspv">
                                    <label for="">Estado:</label>
                                    <input type="text" class="form-control" placeholder="Estado" name="medico.estadoMedico" value="${medico.estadoMedico}">
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                    <label for="">País:</label>
                                    <input type="text" class="form-control" placeholder="País" name="medico.paisMedico" value="${medico.paisMedico}">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <label for="">Acesso ao Sistema:</label>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                    <label for="">E-mail:</label>
                                    <input type="email" class="form-control" placeholder="E-mail" name="email" value="${medico.email}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpace">
                                    <label for="">Senha:</label>
                                    <input type="password" class="form-control" placeholder="Sua Senha" name="senha" value="${medico.senha}">
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpaceRspv">
                                    <label for="">Redigite a senha:</label>
                                    <input type="password" class="form-control" placeholder="Redigite a Senha">
                            </div>
                        </div>
                        <br>
                        <div class="row">
	                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 resetSpaceRspv">
	                            <button type="submit" class="btn btn-primary btn-block">Cadastrar</button>
	                        </div>
	                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 resetSpaceRspv">
	                            <a href="#" class="btn btn-primary btn-block btn-text-lg" role="button-block">Limpar</a>
	                        </div>
                        </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:import url="../aux-files/footer.jsp" />
    <script>
    function message() {
        swal(
          'Cadastro Realizado com Sucesso!',
          'Sua conta já esta ativa!',
          'success'
        ).then(function() {
            window.location.href = "Login.html";
        })
    }
    </script>
</body>

</html>