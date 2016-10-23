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
                            <div class="panel-body">
                                <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                    <form action="<c:url value='/usuario/medico'/>" method="get">
                                        <div class="row">
                                            <label for="">Nome:</label>
                                            <input type="text" class="form-control" placeholder="Nome" name="nomeMedico" value="<c:out value="${medico.nomeMedico}"/>">
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpace">
                                                <label for="">Registro Profissional:</label>
                                                <input type="number" class="form-control" placeholder="Registro Médico Profissional" name="regProfissionalMedico" value="<c:out value="${medico.regProfissionalMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">Especialidade:</label>
                                                <select class="form-control" id="cbbxEspec" name="idEspecialidade">
                                                    <option value="" disabled selected hidden>Selecione...</option>
                                                        <option value="<c:out value="${medico.idEspecialidade}"/>"><c:out value="${medico.idEspecialidade}"/></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Nome da instituição:</label>
                                                <input type="text" class="form-control" placeholder="Nome da instituição" name="instituicaoMedico" value="<c:out value="${medico.instituicaoMedico}"/>">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 resetSpace">
                                                <label for="">CEP:</label>
                                                <input type="number" class="form-control" placeholder="CEP" name="cepMedico" value="<c:out value="${medico.cepMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-8 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">Cidade:</label>
                                                <input type="text" class="form-control" placeholder="Cidade" name="cidadeMedico" value="<c:out value="${medico.cidadeMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2 resetSpaceRspv">
                                                <label for="">Estado:</label>
                                                <input type="text" class="form-control" placeholder="Estado" name="estadoMedico" value="<c:out value="${medico.estadoMedico}"/>">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                                <label for="">País:</label>
                                                <input type="text" class="form-control" placeholder="País" name="paisMedico" value="<c:out value="${medico.paisMedico}"/>">
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <label for="">Acesso ao Sistema:</label>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">E-mail:</label>
                                                <input type="email" class="form-control" placeholder="E-mail" name="email" value="${email}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpace">
                                                <label for="">Senha:</label>
                                                <input type="password" class="form-control" placeholder="Sua Senha" name="senha" value="${senha}">
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpaceRspv">
                                                <label for="">Redigite a senha:</label>
                                                <input type="password" class="form-control" placeholder="Redigite a Senha">
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
                                    </form>

                                    <hr>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center resetSpace">
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">Resultado da Pesquisa</div>
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead class="thead-inverse">
                                                            <tr>
                                                                <th>Pacientes</th>
                                                            </tr>
                                                        </thead>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>