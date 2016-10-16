<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:import url="../aux-files/header.jsp"/>
<title>Pesquisa - Médico</title>
</head>
<body>
    <div class="container-fluid text-left">
        <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
            <div class="well">
                <c:import url="../aux-files/menu.jsp" />
                <div class="panel-heading text-center">
                    <h3><b>Pesquisar Médico</b></h3>
                </div>
                <hr class="hr-black">
                <div class="panel-body">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        <div class="row">
                            <form action="">
                                <label for="">Nome:</label>
                                <input type="text" class="form-control" placeholder="">
                            </form>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpace">
                                <form action="">
                                    <label for="">Registro Profissional:</label>
                                    <input type="number" class="form-control" placeholder="">
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                <label for="">Especialidade:</label>
                                <select class="form-control" id="cbbxEspec">
                                    <option value="" disabled selected hidden>Selecione...</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                <form action="">
                                    <label for="">Nome da instituição:</label>
                                    <input type="text" class="form-control" placeholder="">
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 resetSpace">
                                <form action="">
                                    <label for="">CEP:</label>
                                    <input type="number" class="form-control" placeholder="">
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-4 col-lg-4 resetSpaceRspv">
                                <form action="">
                                    <label for="">Cidade:</label>
                                    <input type="text" class="form-control" placeholder="">
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2 resetSpaceRspv">
                                <form action="">
                                    <label for="">Estado:</label>
                                    <input type="text" class="form-control" placeholder="">
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 resetSpaceRspv">
                                <form action="">
                                    <label for="">País:</label>
                                    <input type="text" class="form-control" placeholder="">
                                </form>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <label for="">Acesso ao Sistema:</label>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                <form action="">
                                    <label for="">E-mail:</label>
                                    <input type="email" class="form-control" placeholder="">
                                </form>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpace">
                                <form action="">
                                    <label for="">Senha Antiga:</label>
                                    <input type="password" class="form-control" placeholder="">
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 resetSpaceRspv">
                                <form action="">
                                    <label for="">Nova Senha:</label>
                                    <input type="password" class="form-control" placeholder="">
                                </form>
                            </div>
                        </div>
                        <br>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-1 col-sm-offset-3 col-md-offset-3 col-lg-offset-4 resetSpaceRspv">
                            <input type="submit" class="btn btn-primary btn-block" value="Pesquisar">
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                <div class="panel panel-primary">
                                    <div class="panel-heading text-center">Resultado da Pesquisa</div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="thead-inverse">
                                                <tr>
                                                    <th>Nome</th>
                                                    <th>Instituição</th>
                                                    <th>Localidade</th>
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