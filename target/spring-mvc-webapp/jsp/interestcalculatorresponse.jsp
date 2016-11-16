<%-- 
    Document   : response
    Created on : Oct 25, 2016, 9:43:50 AM
    Author     : apprentice
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interest Calculator Results</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SiteLabCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/InterestCalculatorCSS.css" rel="stylesheet">
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
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/interestcalculator">Interest Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/flooringcalculator">Flooring Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/tipcalculator">Tip Calculator</a></li>
                            <li role="presentation"><a href="${pageContext.request.contextPath}/unitconverter">Unit Converter</a></li>
                        </ul>     
                    </div>
                </div>   
            </div>
        </div>
        <div class="container rounded">
            <h1 class="text-center">Interest Calculator Results</h1>
            <div class="col-sm-offset-4 col-sm-4">
                <table class="table table-striped table-bordered table-centered">
                    <caption>
                        <div><h4>Results for <fmt:formatNumber type="currency" value ="${ic.investment}"/> 
                                invested at an interest rate of <fmt:formatNumber type="percent" value ="${ic.interestRate/100}"/>
                                compounded ${ic.compoundString} for ${ic.years} years.</h4></div></caption>
                    <tr>
                        <th>Year</th>
                        <th>Beginning Principal</th>
                        <th>Interest Earned</th>
                        <th>Ending Principal</th>
                    </tr>
                    <c:forEach var="yearInformation" items="${ic.yearInformationList}">
                        <tr>
                            <td><c:out value="${yearInformation.year}"/></td>
                            <td><fmt:formatNumber type="currency" value="${yearInformation.beginningPrincipal}"/></td>
                            <td><fmt:formatNumber type="currency" value="${yearInformation.interestEarned}"/></td>
                            <td><fmt:formatNumber type="currency" value="${yearInformation.endingPrincipal}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="col-sm-offset-4 col-sm-4">
                <table class="table table-bordered table-striped">
                    <tr>
                        <th class="col-sm-4">
                            <div>Amount Invested:</div>                       
                        </th>
                        <th class="col-sm-4">
                            <div>Interest Earned:</div>                      
                        </th>
                        <th class="col-sm-4">
                            <div>Ending Principal:</div>                        
                        </th>
                    </tr>
                    <tr>
                        <td><div><fmt:formatNumber type="currency" value ="${ic.investment}"/></div></td>
                        <td><div><fmt:formatNumber type="currency" value ="${ic.finalYearInformation.endingPrincipal - ic.investment}"/></div></td>
                        <td><div><fmt:formatNumber type="currency" value ="${ic.finalYearInformation.endingPrincipal}"/></div></td>
                    </tr>
                </table>

            </div>
    </body>
</html>
