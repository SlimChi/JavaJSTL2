<html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="competencesBean" scope="request" class="fr.cs.javastl2.bean.CompetencesBean"/>
<fmt:setLocale value="fr_fr" scope="session"/>
<%@ taglib prefix="mt" uri="/WEB-INF/myTags.tld" %>

<fmt:bundle basename="message">
    <head>
        <title><fmt:message key="skills"/></title>

    </head>
    <body bgcolor="#add8e6">
    <h1><fmt:message key="thanks"/></h1>
    <hr>
    <h3>
        <fmt:message key="hello">
            <fmt:param value="${competencesBean.nom}"/>
        </fmt:message></h3>
    <p></p>

    <h3><fmt:message key="mastered"/> :</h3>
    <div style="color: green">
    <ul>
        <mt:listeUl items="${competencesBean.competencesMaitrisees}"/>
    </ul>
    </div>
    <h3><fmt:message key="towork"/> :</h3>
    <div style="color: red">
        <ol>
            <mt:listeOl items="${competencesBean.competencesManquantes}"/>
        </ol>
    </div>
    </body>
</fmt:bundle>

</body>
</html>
