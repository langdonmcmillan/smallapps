<%-- 
    Document   : index
    Created on : Oct 21, 2016, 9:13:08 AM
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
        <title>Lucky Sevens</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SiteLabCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/LuckySevensCSS.css" rel="stylesheet">
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
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/luckysevens">Lucky Sevens</a></li>
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
        <div class ="container rounded">    
            <h1 class="text-center">Lucky Sevens</h1>
            <div class="col-sm-offset-4 col-sm-4">
                <sf:form class="form-horizontal" modelAttribute="ls" action ="runLuckySevens" method="post">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="col-sm-6">
                            <label for="startingBet" class="control-label">Starting Bet:</label>
                        </td>
                        <td class="col-sm-6">
                            <sf:input type="number" class="form-control" path="startingBet" id="startingBet"/>
                            <sf:errors path="startingBet" cssClass="errors"></sf:errors>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center"><input class="btn btn-primary form-control" type="submit" id="startButton" value="Start Game"/></td>
                    </tr>
                </table>
                </sf:form>  
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </body>
</html>
