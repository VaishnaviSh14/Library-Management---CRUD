<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Library</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* Custom Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        .library-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid #dcdcdc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            font-size: 24px;
            color: #007BFF;
        }

        .btn-primary {
            background-color: #007BFF;
            border-color: #007BFF;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        th, td {
            text-align: center;
            padding: 10px;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .edit-link {
            color: #007BFF;
            text-decoration: none;
            margin-right: 10px;
        }

        .delete-btn {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
<div class="container library-container">
    <h2>LIBRARY Books</h2>
    <br/>
    <a href='/new-book' class="btn btn-primary"><i class="fas fa-plus"></i> ADD NEW BOOK</a>
    <br/><br/>

    <div>
        <div>BOOK LIST</div>
        <div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Author</th>
                    <th>Name</th>
                    <th>Operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.author}</td>
                        <td>${book.name}</td>
                        <td>
                            <a href="/${book.id}" class="edit-link"><i class="fas fa-edit"></i> EDIT</a>
                            <form action="/${book.id}/delete" method="post" style="display: inline;">
                                <button type="submit" class="delete-btn"><i class="fas fa-trash"></i> DELETE</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>

