function findFactorial() {
  var n = parseInt(prompt("Enter a number:"));
  var fact = 1;

  if (n<0) {
      alert("Factorial is not possible for negative numbers.");
  }
  else {
    for(var i = 1; i<=n; i++) {
       fact = fact * i;
    }
   
    alert("Factorial of " + n + "=" + fact);
  }
}

    