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
        <title>Unit Converter</title>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/SmallAppsCSS.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/UnitConverterCSS.css" rel="stylesheet">
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
                            <li role="presentation"><a href="${pageContext.request.contextPath}/tipcalculator">Tip Calculator</a></li>
                            <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/unitconverter">Unit Converter</a></li>
                        </ul>     
                    </div>
                </div>   
            </div>
        </div>
        <div class ="container rounded">
            <h1 class="text-center">Unit Converter</h1>
            <div class="col-sm-offset-4 col-sm-4">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td colspan="2">
                            <form class="form-horizontal" action="getUnitConverterUnits" method="post">
                                <select name="conversionTypeChoice" type="submit" class="form-control"id="conversionTypeDropdown" onchange="this.form.submit()" >
                                    <option value="" disabled ${conversionType == null ? 'selected="selected"' : ""}>Select a conversion type</option>
                                    <option value="Distance" ${conversionType == "Distance" ? 'selected="selected"' : ""}>Distance</option>
                                    <option value="Mass" ${conversionType == "Mass" ? 'selected="selected"' : ""}>Mass</option>
                                    <option value="Volume" ${conversionType == "Volume" ? 'selected="selected"' : ""}>Volume</option>
                                </select>
                            </form>
                        </td>   
                    </tr>
                        <sf:form class="form-horizontal" modelAttribute="uc" action="runUnitConverter" method="post">
                        <tr>
                            <td colspan='2'>
                                <sf:errors path="conversionType" cssClass="errors"></sf:errors>
                            </td>
                        </tr>
                        <div class="hidden">
                            <input type="text" value="${conversionType}" name="conversionType">
                        </div>
                        <tr>
                            <td class="col-sm-6">
                                <sf:select path="givenUnit" class="form-control" id="givenUnit">
                                    <c:forEach var="unitType" items="${unitList}">
                                        <option value="${unitType}" ${unitType == uc.givenUnit ? 'selected="selected"' : ""}>${unitType}</option>
                                    </c:forEach>   
                                </sf:select>
                                        <sf:errors path="givenUnit" cssClass="errors"></sf:errors>
                            </td>
                            <td class="col-sm-6">
                                <sf:input class="form-control" type="number" step=".00001" path="givenAmount" value="${uc.givenAmount}"/>
                                <sf:errors path="givenAmount" cssClass="errors"></sf:errors>
                            </td>
                        </tr>
                        <tr>
                            <td class="col-sm-6">
                                <sf:select path="convertedUnit" class="form-control" id="givenUnit">
                                    <c:forEach var="unitType" items="${unitList}">
                                        <option value="${unitType}" ${unitType == uc.convertedUnit ? 'selected="selected"' : ""}>${unitType}</option>
                                    </c:forEach>   
                                </sf:select>
                                        <sf:errors path="convertedUnit" cssClass="errors"></sf:errors>
                            </td>
                            <td class="col-sm-6">
                                <input class="form-control" type="number" name="convertedAmount" value="${uc.convertedAmount}" placeholder="0" readonly/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input class="btn btn-primary form-control" type="submit" id="convertButton" value="Convert"/>
                            </td>
                        </tr>
                    </sf:form>
                </table>
            </div>
        </div>
    </body>
</html>
