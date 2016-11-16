<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar-header">
    <button class="botao icon-button">
        <i class="fa fa-bars fa-2x" aria-hidden="true"></i>
    </button>
</div>
<div class="sidebar-overlay"></div>
<aside class="sidebar sidebar-default sidebar-fixed-left" id="sidebar" role="navigation">
    <div class="sidebar-header">
        <div class="top-bar"></div>
        <button type="button" class="botao" style="display: initial;">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
        </button>
        <div class="sidebar-image">
            <img src="../source/media/iconUser.png" alt="">
        </div>
        <a href="#settings-dropdown" class="sidebar-brand" data-toggle="dropdown">${usuarioLogado.getUsuario().getEmail()}<b class="caret"></b></a>
    </div>
    <ul class="nav sidebar-nav">
        <li class="dropdown">
            <ul class="dropdown-menu" id="settings-dropdown">
                <li>
	                <a href="<c:url value='/usuario/medico'/>" tabindex="-1">Minha Conta</a>
                </li>
                <li>
                    <a href="<c:url value='/usuario/senha'/>" tabindex="-1">Alterar Senha</a>
                </li>
                <li>
                    <a href="<c:url value='/usuario/especialidade'/>" tabindex="-1">Adicionar Especialidade</a>
                </li>
                <li>
                    <a href="<c:url value='/dashboard/desconectar'/>" tabindex="-1">Desconectar</a>
                </li>
            </ul>
        </li>
        <li class="divide"></li>
        <c:if test="${medicoAtual.getMedico().isAdmin()}">
        <li class="dropdown">
            <a href="#" class="ripple-effect dropdown-toggle" data-toggle="dropdown">Relatórios<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="<c:url value='/relatorios/pacientes'/>" tabindex="-1">Relatório de Pacientes</a>
                </li>
                <li>
                    <a href="<c:url value='/relatorios/medicos'/>" tabindex="-1">Relatório de Médicos</a>
                </li>
                <li>
                    <a href="<c:url value='/relatorios/questionarios'/>" tabindex="-1">Relatório de Questionarios</a>
                </li>
                <li>
                    <a href="<c:url value='/relatorios/resultados'/>" tabindex="-1">Relatório de Resultados</a>
                </li>
            </ul>
        </li>
        </c:if>
        <li class="divide"></li>
        <li class="dropdown">
            <a href="#" class="ripple-effect dropdown-toggle" data-toggle="dropdown">Pesquisar<b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="<c:url value='/pesquisar/medico'/>" tabindex="-1">Pesquisa Médico</a>
                </li>
                <li>
                    <a href="<c:url value='/pesquisar/paciente'/>" tabindex="-1">Pesquisa Paciente</a>
                </li>
            </ul>
        </li>
        <li class="divide"></li>
        <li>
            <a href="<c:url value='/paciente/novo'/>">Novo Paciente</a>
        </li>
    </ul>
</aside>