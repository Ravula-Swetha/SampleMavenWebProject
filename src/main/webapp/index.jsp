<html>
<body>
<h2>Enter first number : </h2>
<input id="firstNumber" type="number">
<h2>Enter second number : </h2>
<input id="secondNumber" type="number">
<br></br>
<button onClick="calculate()"> Click to Add </button>
<p id="sol"></p>

<script>
function calculate(){
let a = document.getElementById("firstNumber").value;
let b = document.getElementById("secondNumber").value;
document.getElementById("sol").innerHTML = Number(a)+Number(b);
}
</script>
</body>
</html>
