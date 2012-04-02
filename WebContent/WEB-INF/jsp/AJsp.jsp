<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Persons</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("li").click(function() {
		alert("Hello world!");
	});
	
});
</script>
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