<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management</title>
    <style>
        body {
            background-image: url('your-background-image.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: 'Arial', sans-serif;
            color: #333;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.95);
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.02);
        }

        .card-header {
            background-color: #000;
            color: #fff;
            text-align: center;
            padding: 15px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-title {
            font-family: 'Pacifico', cursive;
            color: #fff;
            margin-bottom: 0;
        }

        .btn-success {
            background-color: #007BFF;
            border-color: #007BFF;
            color: #fff;
            transition: background-color 0.2s;
        }

        .btn-success:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h1 class="card-title">Library Management</h1>
            </div>
            <div class="card-body">
                <form:form action="/add" modelAttribute="book" method="post">
                    <div class="row mb-3">
                        <div class="col-2">
                            <form:label path="author" for="author">
                                <b>AUTHOR</b>
                            </form:label>
                        </div>
                        <div class="col-4">
                            <form:input path="author" class="form-control" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-2">
                            <form:label path="name" for="name">
                                <b>NAME</b>
                            </form:label>
                        </div>
                        <div class="col-4">
                            <form:input path="name" class="form-control" />
                        </div>
                    </div>
                    <br />
                    <button type="submit" value='ADD USERS' class="btn btn-success">
                        ADD USERS <i class="fas fa-plus"></i>
                    </button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>


