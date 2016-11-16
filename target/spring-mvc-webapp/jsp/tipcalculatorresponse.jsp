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
        <title>Tip Calculator Results</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SmallAppsCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/TipCalculatorCSS.css" rel="stylesheet">
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
                            <li role="presentation"><a href="${pageContext.request.contextPath}/flooringcalculator">Flooring Calculator</a></li>
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/tipcalculator">Tip Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/unitconverter">Unit Converter</a></li>
                        </ul>     
                    </div>
                </div>   
            </div>
        </div>
        <div class ="container rounded">
            <h1 class="text-center">Tip Calculator Results</h1>

            <div class="col-sm-offset-4 col-sm-4">
                <table class="table table-striped table-bordered">      
                    <tr>
                        <td>Amount:</td>
                        <td><fmt:formatNumber type="currency" value="${tc.amount}"/></td>
                    </tr>
                    <tr>
                        <td>Tip %:</td>
                        <td><fmt:formatNumber type="percent" value="${tc.tipPercent}"/></td>
                    </tr>
                    <tr>
                        <td>Tip:</td>
                        <td><fmt:formatNumber type="currency" value="${tc.tipAmount}"/></td>
                    </tr>
                    <tr>
                        <td><strong>Total:</strong></b>
                        <td><strong><fmt:formatNumber type="currency" value="${tc.total}"/></strong></td>
                    </tr>      
                </table>
            </div>
    </body>
</html>
