<?xml version="1.0" encoding="UTF-8" ?>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html">
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <c:import url="../aux-files/header.jsp" />
                <title>Relatório - Paciente</title>
            </head>

            <body>
                <div class="container-fluid text-left">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        <div class="well">
                            <c:import url="../aux-files/menu.jsp" />
                            <div class="panel-heading text-center">
                                <h3><b>Relatório de Pacientes</b></h3>
                            </div>
                            <hr class="hr-black">
                            <div class="panel-body">
                                <!--<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                      <div class="row">
                                            <label for="">Nome:</label>
                                            <input type="text" class="form-control" placeholder="Digite o Nome" name="nomePaciente" value="${nomePaciente}">

                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpace">
                                                <label for="">CPF:</label>
                                                <input type="text" class="form-control" placeholder="Digite o CPF" name="CPFPaciente" value="${CPFPaciente}">
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Sexo Biológico:</label>
                                                <select class="form-control" name="sexoBiologicoPaciente">
                                                    <option value="masculino">Masculino</option>
                                                    <option value="feminino">Feminino</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Orientação Sexual:</label>
                                                <select class="form-control" name="orientacaoSexualPaciente">
                                                    <option value="heterossexual">Heterossexual</option>
                                                    <option value="homossexual">Homossexual</option>
                                                    <option value="bissexual">Bissexual</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Identidade de Gênero:</label>
                                                <select class="form-control" name="identidadeGeneroPaciente">
                                                    <option name="transexual">Transexual</option>
                                                    <option name="natural">Natural</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpace">
                                                <label for="">Data de Nascimento:</label>
                                                <input type="date" class="form-control" placeholder="Data de nascimento" name="dtNascimentoPaciente" value="${dtNascimentoPaciente}">
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Estado Civil:</label>
                                                <select class="form-control" name="estadoCivilPaciente">
                                                    <option value="solteiro">Solteiro</option>
                                                    <option value="casado">Casado</option>
                                                    <option value="divorciado">Divorciado</option>
                                                    <option value="viuvo">Viuvo</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Etnia:</label>
                                                <select class="form-control" name="etniaPaciente">
                                                    <option value="caucasiano">Caucasiano</option>
                                                    <option value="negro">Negro</option>
                                                    <option value="asiatico">Asiatico/Oriental</option>
                                                    <option value="amarelo">Amarelo</option>
                                                </select>
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-6 col-lg-3 resetSpaceRspv">
                                                <label for="">Escolaridade:</label>
                                                <select class="form-control" name="escolaridadePacientes">
                                                    <option value="superior-completo">Superior Completo</option>
                                                    <option value="medio-completo">Médio Completo</option>
                                                    <option value="medio-imcompleto">Médio Incompleto</option>
                                                    <option value="fundamental">Fundamental Completo</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-10 col-md-8 col-lg-4 resetSpace">
                                                <label for="">Profissão:</label>
                                                <input type="text" class="form-control" placeholder="Profissao" name="profissaoPaciente" value="${profissaoPaciente}">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <label for="">Local onde mora:</label>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-8 col-sm-6 col-md-4 col-lg-3 resetSpace">
                                                <label for="">CEP:</label>
                                                <input type="number" class="form-control" placeholder="Digite o CEP" name="cepPaciente" value="${cepPaciente}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 resetSpace">
                                                <label for="">UF:</label>
                                                <input type="text" class="form-control" placeholder="Estado" name="estadoPaciente" value="${estadoPaciente}">
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-5 col-lg-5 resetSpaceRspv">
                                                <label for="">Cidade:</label>
                                                <input type="text" class="form-control" placeholder="Cidade" name="cidadePaciente" value="${cidadePaciente}">
                                            </div>
                                            <div class="col-xs-12 col-sm-10 col-md-5 col-lg-5 resetSpaceRspv">
                                                <label for="">País:</label>
                                                <input type="text" class="form-control" placeholder="País" name="paisPaciente" value="${paisPaciente}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Observações:</label>
                                                <textarea class="form-control" rows="5" name="obsPaciente" value="`${obsPaciente}"></textarea>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-1 col-sm-offset-3 col-md-offset-3 col-lg-offset-4 resetSpaceRspv">
                                            <input type="submit" class="btn btn-primary btn-block" value="Pesquisar">
                                        </div>
                                        <hr>-->
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading text-center">Lista de Pacientes</div>
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <thead class="thead-inverse">
                                                                <tr>
                                                                	<th style="white-space: nowrap">CPF</th>
                                                                    <th style="white-space: nowrap">Nome</th>
                                                                    <th style="white-space: nowrap">Sexo</th>
                                                                    <th style="white-space: nowrap">Orientação</th>
                                                                    <th style="white-space: nowrap">Id. de Gen</th>
                                                                    <th style="white-space: nowrap">Dt. Nasc</th>
                                                                    <th style="white-space: nowrap">Estado Civil</th>
                                                                    <th style="white-space: nowrap">Etnia</th>
                                                                    <th style="white-space: nowrap">Escolaridade</th>
                                                                    <th style="white-space: nowrap">Profissão</th>
                                                                    <th style="white-space: nowrap">CEP</th>
                                                                    <th style="white-space: nowrap">Cidade</th>
                                                                    <th style="white-space: nowrap">Estado</th>
                                                                    <th style="white-space: nowrap">Pais</th>
                                                                    <th style="white-space: nowrap">Observação</th>
                                                                    <th style="white-space: nowrap">Ação</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach items="${pacienteList}" var="paciente">
                                                            	<tr>
                                                            		<td>${paciente.CPFPaciente}</td>
                                                            		<td>${paciente.nomePaciente}</td>
                                                            		<td>${paciente.sexoBiologicoPaciente}</td>
                                                            		<td>${paciente.orientacaoSexualPaciente}</td>
                                                            		<td>${paciente.identidadeGeneroPaciente}</td>
                                                            		<td>${paciente.dtNascimentoPaciente}</td>
                                                            		<td>${paciente.estadoCivilPaciente}</td>
                                                            		<td>${paciente.etniaPaciente}</td>
                                                            		<td>${paciente.escolaridadePaciente}</td>
                                                            		<td>${paciente.profissaoPaciente}</td>
                                                            		<td>${paciente.cepPaciente}</td>
                                                            		<td>${paciente.cidadePaciente}</td>
                                                            		<td>${paciente.estadoPaciente}</td>
                                                            		<td>${paciente.paisPaciente}</td>
                                                            		<td>${paciente.obsPaciente}</td>
                                                            		<td><a href="#" name="idPaciente" value="${paciente.idPaciente}">Selecionar</a></td>
                                                            	</tr>
                                                            </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <!--/div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>