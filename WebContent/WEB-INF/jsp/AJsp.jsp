<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Persons</title>
<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("li").click(function() {
		alert("Hello world!");
	});
	
});
</script>
<!-- DWR -->
<script type="text/javascript" src="dwr/engine.js"></script>
<script type="text/javascript" src="dwr/interface/AService.js"></script>
<script type="text/javascript">
function getPersons() {
  AService.getPersons({
	callback: function(persons) {
		var names = '<ul>';
		for (var i=0; i < persons.length; i++) {
			names += '<li>' + persons[i].name + '</li>';
		}
		names += '</ul>';
		$("#persons").html(names);
	}		
  });	
}
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
    <input type="button" value="Call DWR" onclick="getPersons()"></input>
    <div id="persons"></div>
</body>
</html>