<?xml version="1.0" encoding="UTF-8" ?>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html">
            <html xmlns="http://www.w3.org/1999/xhtml">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
                <!--Bootstrap-->
                <link rel="stylesheet" href="../source/plugins/bootstrap/css/bootstrap.min.css" class="href">
                <!--FontAwesome-->
                <link rel="stylesheet" href="../source/plugins/font-awesome/css/font-awesome.min.css">
                <!-- SweetAlert -->
                <link rel="stylesheet" href="../source/plugins/sweetalert2/sweetalert2.min.css">
                <!--JQuery-->
                <script src="../source/plugins/jquery/jquery.min.js"></script>
                <!--CSS-->
                <link rel="stylesheet" type="text/css" href="../source/css/StyleMenu.css">
                <link rel="stylesheet" type="text/css" href="../source/css/Style.css">
                <!--ImageResizer-->
                <script src="../source/plugins/mapsize/jquery.rwdImageMaps.min.js" type="text/javascript"></script>
                <!--ImageMap-->
                <!--                <script type="text/javascript" src="../source/plugins/map/redist/when.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/core.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/graphics.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/mapimage.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/mapdata.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/areadata.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/areacorners.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/scale.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/tooltip.js"></script>-->
                <!--                <script type="text/javascript" src="../source/plugins/map/mapColor.js"></script>-->
                <script type="text/javascript" src="../source/plugins/imagemapster.js"></script>
                <title>Questionário</title>
            </head>

            <body>
                <div class="container-fluid text-left">
                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                        <div class="well">
                            <c:import url="../aux-files/menu.jsp" />
                            <div class="panel-heading text-center">
                                <h3><b>Questionário Inicial</b></h3>
                            </div>
                            <hr class="hr-black">
                            <form action="<c:url value='/fuzzy/adiciona'/>">
                                <img src="../source/media/femaleBody.png" class="img-responsive" alt="Corpo Feminino" usemap="#map" id="imageMap">
                                <map name="map" id="map">
                                    <!--Frente-->
                                    <area href="#" alt="" title="PeEsquerdoFrente" class="PeEsquerdoFrente" shape="poly" coords="339,790,352,796,369,794,374,794,367,784,358,764,335,766,334,777" />
                                    <area href="#" alt="" title="PeDireitoFrente" class="PeDireitoFrente" shape="poly" coords="293,762,318,765,317,781,314,787,302,795,295,795,288,795,280,792,280,788" />
                                    <area href="#" alt="" title="PernaDireitaFrente" class="PernaDireitaFrente" shape="poly" coords="294,760,281,693,280,645,280,617,312,616,319,664,318,761" />
                                    <area href="#" alt="" title="PernaEsquerdaFrente" class="PernaEsquerdaFrente" shape="poly" coords="338,618,371,620,373,652,368,694,356,761,339,764,337,711,332,666" />
                                    <area href="#" alt="" title="JoelhoDireitoFrente" class="JoelhoDireitoFrente" shape="poly" coords="281,614,282,585,314,584,321,598,314,609" />
                                    <area href="#" alt="" title="JoelhoEsquerdoFrente" class="JoelhoEsquerdoFrente" shape="poly" coords="339,613,331,596,339,593,369,590,371,611" />
                                    <area href="#" alt="" title="CoxaDireitaFrente" class="CoxaDireitaFrente" shape="poly" coords="278,582,259,453,319,453,318,575" />
                                    <area href="#" alt="" title="CoxaEsquerdaFrente" class="CoxaEsquerdaFrente" shape="poly" coords="332,585,332,461,392,450,386,524,374,581" />
                                    <area href="#" alt="" title="Pelvis" class="Pelvis" shape="poly" coords="264,420,389,417,393,446,332,449,264,451" />
                                    <area href="#" alt="" title="Barriga" class="Barriga" shape="poly" coords="264,416,285,356,364,350,384,410" />
                                    <area href="#" alt="" title="Torax" class="Torax" shape="poly" coords="278,291,375,293,366,346,288,350" />
                                    <area href="#" alt="" title="MamaDireita" class="MamaDireita" shape="poly" coords="302,289,283,290,273,279,274,271,277,255,294,247,309,255,312,271" />
                                    <area href="#" alt="" title="MamaEsquerda" class="MamaEsquerda" shape="poly" coords="339,271,348,286,360,290,375,290,377,279,376,264,370,252,356,252,344,261" />
                                    <area href="#" alt="" title="Peitoral" class="Peitoral" shape="poly" coords="275,252,292,211,376,210,386,229,372,244,348,254,345,288,320,290,314,265,314,255" />
                                    <area href="#" alt="" title="AxilaEsquerda" class="AxilaEsquerda" shape="poly" coords="381,260,381,242,391,229,398,239" />
                                    <area href="#" alt="" title="AxilaDireita" class="AxilaDireita" shape="poly" coords="256,239,263,226,274,246,270,258" />
                                    <area href="#" alt="" title="BracoEsquerdo" class="BracoEsquerdo" shape="poly" coords="381,201,399,236,488,238,496,213" />
                                    <area href="#" alt="" title="BracoDireito" class="BracoDireito" shape="poly" coords="254,239,263,204,164,214,161,240" />
                                    <area href="#" alt="" title="AntebracoEsquerdo" class="AntebracoEsquerdo" shape="poly" coords="500,212,576,221,579,234,498,238,492,237" />
                                    <area href="#" alt="" title="AntebracoDireito" class="AntebracoDireito" shape="poly" coords="159,214,158,240,79,236,78,221" />
                                    <area href="#" alt="" title="MaoEsquerdaFrente" class="MaoEsquerdaFrente" shape="poly" coords="578,221,586,233,594,230,612,223" />
                                    <area href="#" alt="" title="MaoDireitaFrente" class="MaoDireitaFrente" shape="poly" coords="71,219,56,241,39,236,22,237,28,224" />
                                    <area href="#" alt="" title="PescocoFrente" class="PescocoFrente" shape="poly" coords="294,202,323,207,354,197,346,178,326,184,309,174" />
                                    <area href="#" alt="" title="CabecaFrente" class="CabecaFrente" shape="poly" coords="302,164,292,140,297,114,315,90,335,88,354,107,357,133,356,148,343,168,328,178" />
                                    <!--Tras-->
                                    <area href="#" alt="" title="PeEsquerdoTras" class="PeEsquerdoTras" shape="poly" coords="945,768,929,788,929,795,955,794,967,781,966,766" />
                                    <area href="#" alt="" title="PeDireitoTras" class="PeDireitoTras" shape="poly" coords="988,765,1010,765,1024,786,1020,796,1001,798,989,788,988,779" />
                                    <area href="#" alt="" title="PernaEsquerdaTras" class="PernaEsquerdaTras" shape="poly" coords="944,765,942,730,928,615,966,612,969,667,967,759" />
                                    <area href="#" alt="" title="PernaDireitaTras" class="PernaDireitaTras" shape="poly" coords="987,760,983,674,987,619,1020,618,1019,667,1007,764" />
                                    <area href="#" alt="" title="JoelhoEsquerdoTras" class="JoelhoEsquerdoTras" shape="poly" coords="933,584,969,582,967,609,928,611" />
                                    <area href="#" alt="" title="JoelhoDireitoTras" class="JoelhoDireitoTras" shape="poly" coords="982,588,1021,588,1020,616,985,614" />
                                    <area href="#" alt="" title="CoxaEsquerdaTras" class="CoxaEsquerdaTras" shape="poly" coords="916,454,942,465,968,460,970,578,930,577" />
                                    <area href="#" alt="" title="CoxaDireitaTras" class="CoxaDireitaTras" shape="poly" coords="982,459,1008,467,1038,455,1021,584,986,581" />
                                    <area href="#" alt="" title="NadegaEsquerda" class="NadegaEsquerda" shape="poly" coords="913,451,921,379,948,370,974,410,972,454,944,461" />
                                    <area href="#" alt="" title="NadegaDireita" class="NadegaDireita" shape="poly" coords="977,411,982,452,1008,465,1041,452,1030,381,1003,381" />
                                    <area href="#" alt="" title="CostasBaixo" class="CostasBaixo" shape="poly" coords="939,350,924,376,952,368,980,405,1028,376,1015,350,999,379,982,357,1010" />
                                    <area href="#" alt="" title="CostasCima" class="CostasCima" shape="poly" coords="924,207,915,245,938,347,1015,345,1028,256,1027,207" />
                                    <area href="#" alt="" title="PescocoTras" class="PescocoTras" shape="poly" coords="932,203,956,188,956,165,991,167,997,193,1025,205" />
                                    <area href="#" alt="" title="BracoEsquerdoTras" class="BracoEsquerdoTras" shape="poly" coords="919,202,915,241,830,239,826,213" />
                                    <area href="#" alt="" title="BracoDireitoTras" class="BracoDireitoTras" shape="poly" coords="1030,203,1034,246,1142,238,1146,214" />
                                    <area href="#" alt="" title="AntebracoEsquerdoTras" class="AntebracoEsquerdoTras" shape="poly" coords="715,221,719,236,782,244,826,239,821,216" />
                                    <area href="#" alt="" title="AntebracoDireitoTras" class="AntebracoDireitoTras" shape="poly" coords="1152,213,1149,238,1231,234,1232,222" />
                                    <area href="#" alt="" title="MaoEsquerdaTras" class="MaoEsquerdaTras" shape="poly" coords="675,242,669,233,697,219,710,219,717,237,700,243" />
                                    <area href="#" alt="" title="MaoDireitaTras" class="MaoDireitaTras" shape="poly" coords="1235,220,1238,236,1250,239,1268,234,1284,243,1272,226" />
                                    <area href="#" alt="" title="CabecaTras" class="CabecaTras" shape="poly" coords="954,165,941,132,964,92,983,87,998,111,1003,131,1001,165" />
                                </map>
                                <input type="text" class="autoGen" value="CostasCima" name="mapaCorpo">
                                <input type="text" class="autoGen" value="MaoDireitaTras" name="mapaCorpo">
                                <input type="text" class="autoGen" value="Barriga" name="mapaCorpo">
                                <input type="text" class="autoGen" value="Pelvis" name="mapaCorpo">
                                <script type="text/javascript">
                                    $('area[title]').on('click', function () {
                                        var parte = this.title;
                                        console.log(this);
                                        if ($('input[value=' + parte + ']').length) {
                                            $('input[value=' + parte + ']').remove();
                                            $('area.' + parte).removeClass('selected');
                                        } else {
                                            $('area.' + parte).addClass('selected');
                                            $('area[title=' + parte + ']').append("<input type='text' value='" + parte + "' name='mapaCorpo'>");
                                        }
                                    });

                                    $('#imageMap').mapster({
                                        fillColor: '58c5fc',
                                        fillOpacity: 0.6,
                                        stroke: true,
                                        strokeColor: '1a5c7c',
                                        strokeOpacity: 0.7,
                                        strokeWidth: 2

                                    });

                                    $('input.autoGen').each(function () {
                                        $('area.' + $(this).val()).mapster('set', true);
                                        $('area.' + $(this).val()).addClass('selected');
                                    });

                                    $(document).ready(function (e) {
                                        //$('img[usemap]').rwdImageMaps();
                                    });
                                </script>
                                <script>
                                    //$('#clickme').onload(function () {
                                    //   $('area[title]').click(function (e) {

                                    //     })
                                    //   });
                                </script>
                                <div class="panel-body">
                                    <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                        <div class="row">
                                            <label>Nome:</label>
                                            <label>${pacienteAtual.getPaciente().getNomePaciente()}</label>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Gasta mais do que três horas por dia pensando na aparência?</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="radio displayTypeRspv">
                                                <label>
                                                    <input type="radio" name="questao1" id="optionsRadios1" value="1" checked>Sim
                                                </label>
                                            </div>
                                            <div class="radio displayTypeRspv">
                                                <label>
                                                    <input type="radio" name="questao1" id="optionsRadios2" value="2">Não
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">A insatisfação corporal começou:</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="radio displayTypeRspv">
                                                <label>
                                                    <input type="radio" name="questao2" id="optionsRadios1" value="1" checked>Infância
                                                </label>
                                            </div>
                                            <div class="radio displayTypeRspv">
                                                <label>
                                                    <input type="radio" name="questao2" id="optionsRadios2" value="2">Adolescencia
                                                </label>
                                            </div>
                                            <div class="radio displayTypeRspv">
                                                <label>
                                                    <input type="radio" name="questao2" id="optionsRadios2" value="3">Adulto
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Tratamentos estéticos/cirúrgicos já realizados:</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3 resetSpace">
                                                <div class="checkbox displayTypeRspv">
                                                    <label>
                                                        <input name="questao3" type="checkbox" value="1">Cirurgia Plástica
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-9 resetSpace">
                                                <div class="checkbox displayTypeRspv">
                                                    <label>
                                                        <input name="questao3" type="checkbox" value="2">Odontologia
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3 resetSpace">
                                                <div class="checkbox displayTypeRspv">
                                                    <label>
                                                        <input name="questao3" type="checkbox" value="3">Dermatologia
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-9 resetSpace">
                                                <div class="checkbox displayTypeRspv">
                                                    <label>
                                                        <input name="questao3" type="checkbox" value="4">Academia
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Ja recebeu diagnóstico para:</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="1">Ansiedade Social
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="2">Depressão
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="3">Transtorno obsessivo compulsivo
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="4">Transtorno dismórfico corporal
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="5">Dismorfia muscular
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="6">Bulimia nervosa
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="7">Anorexia nervosa
                                                </label>
                                            </div>
                                            <div class="checkbox littleSpace">
                                                <label>
                                                    <input name="questao4" type="checkbox" value="8">Transtornos relacionados a substâncias de adição
                                                </label>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">
                                                    <h3>1. Preocupação com o problema de aparência</h3></label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Com que frequencia você pensa em seu problema e se sente triste, desmotivado ou chateado?</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios1" value="1" checked>Nunca fica chateado, ou nunca pensa no mesmo
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="2">De 1 a 3 vezes no mês
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="3">De 4 a 7 vezes no mês, ou pensa nisso e se sente chateado uma ou duas vezes a cada semana
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="4">De 8 a 11 vezes no mês
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="5">De 11 a 16 vezes no mês, ou pensa nisso em metades dos dias da semana
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="6">De 17 a 21 vezes no mês
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao5" id="optionsRadios2" value="7">De 22 a 28 vezes no mês, ou pensa nisso quase que diariamente, ficando chateado
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">
                                                    <h3>2. Afastamento da Atividade Fisica</h3>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">Durante o último mês, você evitou atividades fisicas como exercicio ou recreação ao ar livre por causa de seu...</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios1" value="1" checked>Nenhum afastamento de atividade fisica
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="2">Resposta intermediária - Nenhum ou Pouco
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="3">Evito pouco
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="4">Resposta intermediária - Pouco ou Média
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="5">Evito com média frequência
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="6">Resposta intermediária - Média ou Muito
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <div class="radio displayTypeRspv">
                                                    <label>
                                                        <input type="radio" name="questao6" id="optionsRadios2" value="7">Evito muito
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 resetSpace">
                                                <label for="">
                                                    <h2>Tratamentos em saúde mental:</h2></label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="checkbox littleSpace">
                                                <label data-toggle="collapse" data-target="#collapseOne">
                                                    <input type="checkbox" value="">Psiquiatria
                                                </label>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 Space-md">
                                                        <label for="">Quando?</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10 col-sm-4 col-md-2 col-lg-2 Space-md">
                                                        <label for="">Ano:</label>
                                                        <input type="text" name="anoPsiquiatria" class="form-control" placeholder="Ano..." value="${anoPsiquiatria}">
                                                    </div>
                                                    <div class="col-xs-10 col-sm-6 col-md-3 col-lg-3 Space-md-rspv">
                                                        <label for="">Duração (Meses):</label>
                                                        <input type="text" name="psiquiatria.duracaoPsiquiatria" class="form-control" placeholder="Duração..." value="${psiquiatria.duracaoPsiquiatria}">
                                                    </div>
                                                </div>
                                                <div class="checkbox spaceSpecial">
                                                    <label>
                                                        <input type="checkbox" name="psiquiatria.internacao" value="1">Internação
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="checkbox littleSpace">
                                                <label data-toggle="collapse" data-target="#collapseTwo">
                                                    <input type="checkbox" value="">Psicoterapia
                                                </label>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse in">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 Space-md">
                                                        <label for="">Quando?</label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10 col-sm-4 col-md-2 col-lg-2 Space-md">
                                                        <label for="">Ano:</label>
                                                        <input type="text" name="anoPsicoterapia" class="form-control" placeholder="Ano..." value="${anoPsicoterapia}">
                                                    </div>
                                                    <div class="col-xs-10 col-sm-6 col-md-3 col-lg-3 Space-md-rspv">
                                                        <label for="">Duração (Meses):</label>
                                                        <input type="text" name="psicoterapia.duracaoPsicoterapia" class="form-control" placeholder="Duração..." value="${psicoterapia.duracaoPsicoterapia}">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <!--<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-2 col-md-offset-2 col-lg-offset-4">
                            <input type="submit" class="btn btn-primary btn-block" value="Atualizar">
                        </div>-->
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-1 resetSpaceRspv">
                                            <input type="submit" class="btn btn-primary btn-block" value="Calcular">
                                        </div>
                                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-1 resetSpaceRspv">
                                            <a href="#" class="btn btn-primary btn-block btn-text-lg" role="button-block">Pacientes</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <c:import url="../aux-files/footer.jsp" />
            </body>

            </html>