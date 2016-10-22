<?xml version="1.0" encoding="UTF-8" ?>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html">
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <c:import url="../aux-files/header.jsp" />
                <title>Especialidades</title>
            </head>

            <body>
                <div class="container-fluid text-left">
                    <div class="col-xs-12 col-sm-12 col-md-10 col-lg-8 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-2">
                        <br>
                        <div class="well">
                            <c:import url="../aux-files/menu.jsp" />
                            <div class="panel-heading text-center">
                                <h3><b>Adicionar Especialidade</b></h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <form action="">
                                        <label for="">Nome da Especialidade:</label>
                                        <input type="text" class="form-control" placeholder="Especialidade..." name="nomeEspecialidade" value="${nomeEspecialidade}">
                                    </form>
                                </div>
                                <hr class="hr-md">
                                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-3 col-md-offset-3 col-lg-offset-4">
                                    <input type="submit" class="btn btn-primary btn-block" value="Adicionar">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>