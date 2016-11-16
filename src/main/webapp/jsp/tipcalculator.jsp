<%-- 
    Document   : index
    Created on : Oct 25, 2016, 9:44:06 AM
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
        <title>Tip Calculator</title>
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
            <h1 class="text-center">Tip Calculator</h1>
            <sf:form class="form-horizontal" modelAttribute="tc" action="runTipCalculator" method="post">
                    <div class=" col-sm-offset-4 col-sm-4">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <td>
                                    <label for="amount" class="control-label">Amount:</label>
                                </td>
                                <td>
                                    <div class="input-icon">
                                        <i>$</i>
                                        <sf:input class="form-control" type="number" min=".01" step=".01" path="amount" id="amount" placeholder="0.00"/>
                                    </div>
                                    <sf:errors path="amount" cssClass="errors"></sf:errors>
                                </td>
                            </tr>
                            <tr>
                                <td><label for="enteredTipPercent" class="control-label">Tip:</label></td>
                                <td>
                                    <div class="input-icon input-icon-right">
                                        <i>%</i><sf:input class="form-control" type="number" min="0" path="enteredTipPercent" id="enteredTipPercent" placeholder="0"/>
                                    </div>
                                    <sf:errors path="enteredTipPercent" cssClass="errors"></sf:errors>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center"><input class="btn btn-primary form-control" type="submit" id="calculateButton" value="Calculate Cost"></td>
                            </tr>
                        </table>
                </div>
            </sf:form>
        </div>
    </body>
</html>
