<?xml version="1.0" encoding="UTF-8" ?>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html">
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <c:import url="../aux-files/header.jsp" />
                <title>HealthSurgery</title>
            </head>

            <body>
                <div class="container-fluid text-center">
                    <div class="page-header">
                        <div class="row">
                            <h2>Sistema de Suporte à decisão em Cirurgia Plástica</h2>
                            <h2><small>Quantificador de nivel de sofrimento</small></h2>
                        </div>
                    </div>
                </div>

                <div class="container-fluid text-left">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-6 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-3">
                        <div class="well">
                            <div class="panel-heading text-center">
                                <h3><b>Login</b></h3>
                            </div>
                            <c:if test="${not empty msg}">
                                <div class="alert alert-success" style="text-align: center">${msg}</div>
                            </c:if>
                            <form>
                                <c:if test="${not empty errors}">
                                    <div class="alert alert-danger">
                                        <c:forEach var="error" items="${errors}">
                                            ${error.category} - ${error.message}
                                            <br />
                                        </c:forEach>
                                    </div>
                                </c:if>
                            </form>
                            <div class="panel-body">
                                <form action="<c:url value='/dashboard/logar'/>" method="post">
                                    <div class="row">
                                        <label for="">E-mail:</label>
                                        <input type="email" class="form-control" placeholder="Digite seu E-Mail..." name="login.email" value="${login.email}">
                                    </div>
                                    <br>

                                    <div class="row">
                                        <label for="">Senha:</label>
                                        <input type="password" class="form-control" placeholder="Digite sua Senha..." name="login.senha" value="${login.senha}">
                                        <a href="<c:url value='/dashboard/esqueceu'/>">
                                            <p class="text-primary">Esqueceu sua senha?</p>
                                        </a>
                                    </div>
                                    <hr class="hr-md">
                                    <div class="col-sm-6 col-md-6 col-lg-4 col-sm-offset-3 col-md-offset-0 col-lg-offset-0">
                                        <button type="submit" class="btn btn-primary btn-block btn-text-lg">Entrar</button>
                                    </div>
                                </form>
                                <form action="<c:url value='/usuario/novo'/>" method="post">
                                    <div class="col-sm-6 col-md-6 col-lg-4 col-sm-offset-3 col-md-offset-0 col-lg-offset-0">
                                        <button type="submit" class="btn btn-primary btn-block btn-text-lg">Novo Cadastro</button>
                                    </div>
                                </form>
                                <form action="<c:url value='/dashboard/login'/>">
                                    <div class="col-sm-6 col-md-6 col-lg-4 col-sm-offset-3 col-md-offset-0 col-lg-offset-0">
                                        <a href="#" class="btn btn-primary btn-block btn-text-lg" role="button-block">Limpar</a>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>