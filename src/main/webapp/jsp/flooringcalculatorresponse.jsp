<%-- 
    Document   : response
    Created on : Oct 25, 2016, 9:43:50 AM
    Author     : apprentice
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flooring Calculator Results</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SiteLabCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/FlooringCalculatorCSS.css" rel="stylesheet">
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
                            <li role="presentation"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/luckysevens">Lucky Sevens</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/factorizer">Factorizer</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/interestcalculator">Interest Calculator</a></li>
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/flooringcalculator">Flooring Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/tipcalculator">Tip Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/unitconverter">Unit Converter</a></li>
                        </ul>     
                    </div>
                </div>   
            </div>
        </div>
        <div class ="container rounded">
            <h1 class="text-center">Flooring Calculator Results</h1>
            <div class="col-sm-offset-3 col-sm-6">
                <table class="table table-striped table-bordered table-centered">
                    <tr>
                        <th>Width</th>
                        <th>Length</th>
                        <th>Square Feet</th>
                        <th>Materials Cost</th>
                        <th>Labor Cost</th>
                        <th>Total Cost</th>
                    </tr>
                    <tr>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${fc.width}"/></td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${fc.length}"/></td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${fc.squareFeet}"/></td>
                        <td><fmt:formatNumber type="currency" value="${fc.materialCost}"/></td>
                        <td><fmt:formatNumber type="currency" value="${fc.laborCost}"/></td>
                        <td><fmt:formatNumber type="currency" value="${fc.totalCost}"/></td>
                    </tr>      
                </table>
            </div>
        </div>
    </body>
</html>
