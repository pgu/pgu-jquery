<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Persons</title>
</head>
<body>

    <div>person's name: ${person.name}</div>
    <div>
        products: <br/>
        <ul> 
        <c:forEach items="${products}" var="product">
            <li>${product.id}, ${product.reference}</li>
        </c:forEach>
        </ul>
    </div>
</body>
</html>