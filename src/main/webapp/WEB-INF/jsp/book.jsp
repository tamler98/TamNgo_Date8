<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" href="images/shorcut.jpg">
	<title>Register Form</title>
	<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
          rel="stylesheet">

	<link rel="stylesheet" type="text/scss" href="css/styles.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Passion+One'>
	<link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Oxygen'>
</head>
<body>
    <div class="container" style="margin-top: 20px;  display: flex; justify-content: center;">
        <div class="col-md-4">
            <form:form action="${action}" method="POST" modelAttribute="book">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">
                    </legend>
                    <c:if test="${type.equals('Update Book')}">
                        <div class="form-group">
                            <label class="control-label">ID</label>
                            <form:input path="id" type="text" class="form-control" id="id" placeholder="ID"
                                disabled="true" />
                            <form:hidden path="id" />
                            <form:hidden path="bookDetails.id" />
                        </div>
                    </c:if>
                    <div class="form-group">
                        <label class="control-label">Name (*)</label>
                        <form:input path="name" type="text" class="form-control" placeholder="Name" />

                        <small style="color: red;">
                            <form:errors path="name" class="text-error" />
                        </small>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Author (*)</label>
                        <form:input path="author" type="text" class="form-control" placeholder="Author" />
                        <small style="color: red;">
                            <form:errors path="author" class="text-error" />
                        </small>
                    </div>
                    <div class="form-group">
                        <label class="control-label">ISBN (*)</label>
                        <form:input path="bookDetails.isbn" type="text" class="form-control" placeholder="ISBN"
                            default="1" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Price (*)</label>
                        <form:input path="bookDetails.price" type="number" step="any" min="1" class="form-control"
                            placeholder="Price" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Number Of Pages (*)</label>
                        <form:input path="bookDetails.numberOfPage" type="number" min="1" class="form-control"
                            placeholder="Number Of Page" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Public Date (*)</label>
                        <form:input path="bookDetails.publishDate" type="date" class="form-control"
                            placeholder="Public Date" required="true" value="2023-01-23" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Category (*)</label>

                        <form:select path="category.id" class="form-control">
                            <form:option value="0" label="--- Select ---" />
                            <form:options items="${categoryList}" />
                        </form:select>
                        <small style="color: red;">
                            <c:out value="${message}" />
                        </small>
                    </div>
                    <br>
                    <button class="btn btn-primary btn-sm" type="submit"
                        style="width: 432px; height: 38px; font-size: 110%;">Save</button>
                </fieldset>
            </form:form>
        </div>
    </div>
</body>

</html>