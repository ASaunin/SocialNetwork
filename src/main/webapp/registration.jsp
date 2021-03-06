<%--@elvariable id="errorMessage" type="String"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<style type="text/css">
    <%@include file="/css/chat.css"%>
    <%@include file="/css/bootstrap.min.css"%>
    <%@include file="/css/bootstrap-formhelpers.min.css"%>
</style>
<script>
    <%@include file="/js/jquery.min.js"%>
    <%@include file="/js/avatar.js"%>
    <%@include file="/js/bootstrap.min.js"%>
    <%@include file="/js/bootstrap-formhelpers.min.js"%>
</script>

<html>
<head>
    <title>Registration</title>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
</head>

<fmt:setLocale value="${sessionScope.locale}"/>
<fmt:setBundle basename="locale" var="loc"/>

<body>
<div class="container" style="margin-top:40px">
    <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>Please sign up for BenchMates</strong>
                </div>
                <div class="panel-body">
                    <form role="form" action="/registration" method="post" autocomplete="off">
                        <div class="form-group">
                            <input type="email" name="email" id="email" class="form-control" placeholder="E-Mail" required maxlength="255" value='${param.email}'>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First name" required maxlength="255" value='${param.first_name}'>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last name" required maxlength="255" value='${param.last_name}'>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control" required maxlength="255" placeholder="Password">
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password" name="confirm_password" id="confirm_password" class="form-control" required maxlength="255" placeholder="Confirm password">
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty errorMessage}">
                            <div class="alert alert-danger">
                                <strong>
                                        ${errorMessage}
                                </strong>
                            </div>
                        </c:if>
                        <div class="form-group">
                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="Register">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="localisation.jsp"/>
</div>

</body>
</html>
