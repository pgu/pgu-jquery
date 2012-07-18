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
    <select class="variationCriterion">
        <option value="uuuuuu">uu</option>
        <option value="oooooo">oo</option>
    </select>
    <br/>
    <select class="variationCriterion">
        <option value="eeeeee">ee</option>
        <option value="rrrrrr">rr</option>
    </select>
    <br/>
    <select>
        <option value="iiiiii">ii</option>
        <option value="aaaaaa">aa</option>
    </select>
    
<script type="text/javascript">
$(".variationCriterion").change(function () {
	console.log(this);
	
    var href = $(this).val();
    if (href.indexOf("uu") != -1) {
    	console.log("---> found!");
	}	
	
});
</script>
</body>
</html>