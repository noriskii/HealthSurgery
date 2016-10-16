-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_hsbddd
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `corpo`
--

DROP TABLE IF EXISTS `corpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpo` (
  `idCorpo` int(11) NOT NULL AUTO_INCREMENT,
  `coordenadasCorpo` varchar(255) DEFAULT NULL,
  `descricaoCorpo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCorpo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpo`
--

LOCK TABLES `corpo` WRITE;
/*!40000 ALTER TABLE `corpo` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corpoquestionario`
--

DROP TABLE IF EXISTS `corpoquestionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corpoquestionario` (
  `idQuestionario` int(11) NOT NULL,
  `idCorpo` int(11) NOT NULL,
  PRIMARY KEY (`idQuestionario`,`idCorpo`),
  KEY `fk_idCorpoCP` (`idCorpo`),
  CONSTRAINT `fk_idCorpoCP` FOREIGN KEY (`idCorpo`) REFERENCES `corpo` (`idCorpo`),
  CONSTRAINT `fk_idQuestionarioCP` FOREIGN KEY (`idQuestionario`) REFERENCES `questionario` (`idQuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corpoquestionario`
--

LOCK TABLES `corpoquestionario` WRITE;
/*!40000 ALTER TABLE `corpoquestionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpoquestionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidade` (
  `idEspecialidade` int(11) NOT NULL AUTO_INCREMENT,
  `nomeEspecialidade` varchar(255) NOT NULL,
  PRIMARY KEY (`idEspecialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `regProfissionalMedico` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`regProfissionalMedico`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  CONSTRAINT `fk_regProfissionalMedicoLogin` FOREIGN KEY (`regProfissionalMedico`) REFERENCES `medico` (`regProfissionalMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `regProfissionalMedico` int(11) NOT NULL,
  `nomeMedico` varchar(150) NOT NULL,
  `instituicaoMedico` varchar(100) NOT NULL,
  `cidadeMedico` varchar(100) NOT NULL,
  `estadoMedico` varchar(50) NOT NULL,
  `cepMedico` varchar(10) NOT NULL,
  `paisMedico` varchar(80) NOT NULL,
  `idEspecialidade` int(11) NOT NULL,
  PRIMARY KEY (`regProfissionalMedico`),
  KEY `idEspecialidade_idx` (`idEspecialidade`),
  CONSTRAINT `fk_idEspecialidadeMedico` FOREIGN KEY (`idEspecialidade`) REFERENCES `especialidade` (`idEspecialidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcoesrespostas`
--

DROP TABLE IF EXISTS `opcoesrespostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcoesrespostas` (
  `idOpcaoResposta` int(11) NOT NULL,
  `idPergunta` int(11) NOT NULL,
  `enunciadoResposta` varchar(100) NOT NULL,
  PRIMARY KEY (`idOpcaoResposta`,`idPergunta`),
  KEY `fk_idPergunta_idx` (`idPergunta`),
  CONSTRAINT `fk_idPerguntaOR` FOREIGN KEY (`idPergunta`) REFERENCES `pergunta` (`idPergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcoesrespostas`
--

LOCK TABLES `opcoesrespostas` WRITE;
/*!40000 ALTER TABLE `opcoesrespostas` DISABLE KEYS */;
/*!40000 ALTER TABLE `opcoesrespostas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `CPFPaciente` varchar(11) DEFAULT NULL,
  `nomePaciente` varchar(150) NOT NULL,
  `sexoBiologicoPaciente` varchar(40) NOT NULL,
  `orientacaoSexualPaciente` varchar(40) NOT NULL,
  `identidadeGeneroPaciente` varchar(40) NOT NULL,
  `dtNascimentoPaciente` date NOT NULL,
  `estadoCivilPaciente` varchar(45) NOT NULL,
  `etniaPaciente` varchar(50) NOT NULL,
  `escolaridadePaciente` varchar(60) NOT NULL,
  `profissaoPaciente` varchar(80) NOT NULL,
  `cepPaciente` varchar(10) DEFAULT NULL,
  `cidadePaciente` varchar(100) DEFAULT NULL,
  `estadoPaciente` varchar(50) DEFAULT NULL,
  `paisPaciente` varchar(80) NOT NULL,
  `obsPaciente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPaciente`),
  UNIQUE KEY `idPaciente_UNIQUE` (`idPaciente`),
  UNIQUE KEY `CPFPaciente_UNIQUE` (`CPFPaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pergunta` (
  `idPergunta` int(11) NOT NULL AUTO_INCREMENT,
  `enunciadoPergunta` varchar(255) NOT NULL,
  PRIMARY KEY (`idPergunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psicoterapia`
--

DROP TABLE IF EXISTS `psicoterapia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psicoterapia` (
  `idQuestionario` int(11) NOT NULL,
  `anoPsicoterapia` year(4) DEFAULT NULL,
  `duracaoPsicoterapia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idQuestionario`),
  CONSTRAINT `fk_idQuestionarioPsicoterapia` FOREIGN KEY (`idQuestionario`) REFERENCES `questionario` (`idQuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psicoterapia`
--

LOCK TABLES `psicoterapia` WRITE;
/*!40000 ALTER TABLE `psicoterapia` DISABLE KEYS */;
/*!40000 ALTER TABLE `psicoterapia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psiquiatria`
--

DROP TABLE IF EXISTS `psiquiatria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psiquiatria` (
  `idQuestionario` int(11) NOT NULL,
  `anoPsiquiatria` year(4) DEFAULT NULL,
  `duracaoPsiquiatria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idQuestionario`),
  CONSTRAINT `fk_idQuestionarioPsiquiatria` FOREIGN KEY (`idQuestionario`) REFERENCES `questionario` (`idQuestionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psiquiatria`
--

LOCK TABLES `psiquiatria` WRITE;
/*!40000 ALTER TABLE `psiquiatria` DISABLE KEYS */;
/*!40000 ALTER TABLE `psiquiatria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionario` (
  `idQuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `idPaciente` int(11) NOT NULL,
  `idMedico` int(11) NOT NULL,
  `dataQuestionario` date NOT NULL,
  PRIMARY KEY (`idQuestionario`),
  KEY `idPaciente_idx` (`idPaciente`),
  KEY `idMedico_idx` (`idMedico`),
  CONSTRAINT `fk_idMedicoQuestionario` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`regProfissionalMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idPacienteQuestionario` FOREIGN KEY (`idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resposta` (
  `idQuestionario` int(11) NOT NULL,
  `idResposta` int(11) NOT NULL,
  `idPergunta` int(11) NOT NULL,
  PRIMARY KEY (`idQuestionario`,`idResposta`,`idPergunta`),
  KEY `fk_idResposta_idx` (`idResposta`),
  KEY `fk_idPergunta_idx` (`idPergunta`),
  CONSTRAINT `fk_idPerguntaResposta` FOREIGN KEY (`idPergunta`) REFERENCES `pergunta` (`idPergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idQuestionarioResposta` FOREIGN KEY (`idQuestionario`) REFERENCES `questionario` (`idQuestionario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idRespostaResposta` FOREIGN KEY (`idResposta`) REFERENCES `opcoesrespostas` (`idOpcaoResposta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultadoquestionario`
--

DROP TABLE IF EXISTS `resultadoquestionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultadoquestionario` (
  `idQuestionario` int(11) NOT NULL,
  `nivelSofrimentoQuestionario` int(11) NOT NULL,
  PRIMARY KEY (`idQuestionario`),
  CONSTRAINT `fk_idQuestionarioResultado` FOREIGN KEY (`idQuestionario`) REFERENCES `questionario` (`idQuestionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultadoquestionario`
--

LOCK TABLES `resultadoquestionario` WRITE;
/*!40000 ALTER TABLE `resultadoquestionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultadoquestionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-15 20:05:31
