<html>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="mt" uri="/WEB-INF/myTags.tld" %>
<jsp:useBean id="competencesBean" scope="request" class="fr.cs.javastl2.bean.CompetencesBean"/>
<head>
    <title>Connaissances</title>
    <link rel="stylesheet" href="connaissance.css">
</head>
<body>
<h1>Notion Objet et Java maitrisées
</h1>
<h2>Veuillez valider les notions Java que vous connaissez afin de poursuivre ce tutoriel :</h2>
<br/>
<form action="action" method="post">
    <table>
        <thead>
        <tr>
            <th>Test de connaissances Java</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Votre nom</td>
            <td><input type="text" name="nom" value="" class="nom"/></td>
        </tr>
        <mt:checkbox liste="${competencesBean.competences}" name="notionJava"/>
        </tbody>
    </table>
    <tr>
        <td><input type="submit" value="Valider" id="button"></td>
    </tr>
</form>
</body>
</html>