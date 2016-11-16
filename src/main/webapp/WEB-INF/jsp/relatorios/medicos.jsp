<?xml version="1.0" encoding="UTF-8" ?>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html">
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <c:import url="../aux-files/header.jsp" />
                <title>Médico</title>
            </head>

            <body>
                <div class="container-fluid text-left">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        <div class="well">
                            <c:import url="../aux-files/menu.jsp" />
                            <div class="panel-heading text-center">
                                <h3><b>Médico</b></h3>
                            </div>
                            <hr class="hr-black">
                            <c:if test="${not empty msg}">
                                <div class="alert alert-success" style="text-align: center">${msg}</div>
                            </c:if>
                            <form>
                                <c:if test="${not empty errors}">
                                    <div class="alert alert-danger">
                                        <c:forEach var="error" items="${errors}">
                                            ${error.message}
                                            <br />
                                        </c:forEach>
                                    </div>
                                </c:if>
                            </form>
                            <div class="panel-body">
                                <!--<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                    <form action="<c:url value='/usuario/atualizar'/>" method="get">
                                        <div class="row">
                                            <label for="">Nome:</label>
                                            <input type="text" class="form-control" placeholder="Nome" name="medico.nomeMedico" value="<c:out value="${medico.nomeMedico}"/>">
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpace">
                                                <label for="">Registro Profissional:</label>
                                                <input type="number" class="form-control" placeholder="Registro Médico Profissional" name="medico.regProfissionalMedico" value="<c:out value="${medico.regProfissionalMedico}"/>" disabled>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">Especialidade:</label>
                                                <select class="form-control" id="cbbxEspec" name="medico.idEspecialidade">
                                                        <option value="<c:out value="${medico.idEspecialidade}"/>" selected><c:out value="${medico.idEspecialidade}"/></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Nome da instituição:</label>
                                                <input type="text" class="form-control" placeholder="Nome da instituição" name="medico.instituicaoMedico" value="<c:out value="${medico.instituicaoMedico}"/>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 resetSpace">
                                                <label for="">CEP:</label>
                                                <input type="number" class="form-control" placeholder="CEP" name="medico.cepMedico" value="<c:out value="${medico.cepMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-8 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">Cidade:</label>
                                                <input type="text" class="form-control" placeholder="Cidade" name="medico.cidadeMedico" value="<c:out value="${medico.cidadeMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2 resetSpaceRspv">
                                                <label for="">Estado:</label>
                                                <input type="text" class="form-control" placeholder="Estado" name="medico.estadoMedico" value="<c:out value="${medico.estadoMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">País:</label>
                                                <input type="text" class="form-control" placeholder="País" name="medico.paisMedico" value="<c:out value="${medico.paisMedico}"/>">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 resetSpaceRspv">
                                                <input type="submit" class="btn btn-primary btn-block" value="Atualizar">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-1 resetSpaceRspv">
                                                <a href="#" class="btn btn-primary btn-block btn-text-lg" role="button-block">Pacientes</a>
                                            </div>
                                        </div>
                                    </form>-->

                                    <hr>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center resetSpace">
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">Lista de Medicos</div>
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead class="thead-inverse">
                                                            <tr>
                                                                <th style="white-space: nowrap">Registro</th>
                                                                <th style="white-space: nowrap">Nome</th>
                                                                <th style="white-space: nowrap">Instituição</th>
                                                                <th style="white-space: nowrap">Cidade</th>
                                                                <th style="white-space: nowrap">Estado</th>
                                                                <th style="white-space: nowrap">CEP</th>
                                                                <th style="white-space: nowrap">País</th>
                                                                <th style="white-space: nowrap">Especialidade</th>
                                                                <th style="white-space: nowrap">Pesquisador</th>
                                                                <th style="white-space: nowrap">Ação</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${medicoList}" var="medico">
                                                            	<tr>
                                                            		<td>${medico.regProfissionalMedico}</td>
                                                            		<td>${medico.nomeMedico}</td>
                                                            		<td>${medico.instituicaoMedico}</td>
                                                            		<td>${medico.cidadeMedico}</td>
                                                            		<td>${medico.estadoMedico}</td>
                                                            		<td>${medico.cepMedico}</td>
                                                            		<td>${medico.paisMedico}</td>
                                                            		<td>${medico.idEspecialidade}</td>
                                                            		<td>${medico.admin}</td>
                                                            		<td><a href="#" name="idMedico" value="${medico.regProfissionalMedico}">Selecionar</a></td>
                                                            	</tr>
                                                            </c:forEach>
                                                            </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <!--</div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>