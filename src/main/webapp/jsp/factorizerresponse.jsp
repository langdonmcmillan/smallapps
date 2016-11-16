
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorizer Results</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SiteLabCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/FactorizerCSS.css" rel="stylesheet">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="page-header swcColor text-center rounded">
                    <h1>The Software Guild Java Cohort</h1>
                    <h2>Spring MVC Site Lab</h2>
                </div>
            </div>
            <div class="row">
                <div class="navbar center rounded">
                    <div class="navbar-inner">
                        <ul class="nav nav-tabs text-center">
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/luckysevens">Lucky Sevens</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/factorizer">Factorizer</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/interestcalculator">Interest Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/flooringcalculator">Flooring Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/tipcalculator">Tip Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/unitconverter">Unit Converter</a></li>
                        </ul>     
                    </div>
                </div>   
            </div>
        </div>
        <div class="container rounded">
            <div class="col-sm-offset-4 col-sm-4">
                <h1 class="text-center">Factors of ${f.number}</h1>
                <table class="table table-striped table-bordered text-center">
                    <c:forEach var="factor" items="${f.factorList}">
                        <tr>
                            <td><c:out value="${factor}"/><br></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td>${f.number}</td>
                    </tr>
                </table>
                <div class="perfectPrime text-center" id="perfect">${f.isPerfect}</div>
                <div class="perfectPrime text-center" id="prime">${f.isPrime}</div>
            </div>
        </div>
    </div>
</body>
</html>
