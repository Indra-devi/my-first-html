<!DOCTYPE html>
<html>
<body>

<form method="post">
    Enter first number : <input type="number" name="num1" required><br><br>
    Enter second number : <input type="number" name="num2" required><br><br>
    
    <select name="operator">
    <option value="sum">ADDITION</option>
    <option value="sub">SUBTRACTION</option>
    <option value="multi">MULTIPLICATION</option> 
    <option value="divide">DIVISION</option>
    </select><br><br>

    <input type="submit" name="submit" value="Result"><br><br>
</form>

<?php

if (isset($_POST['submit'])) {
    
    $num1 = $_POST['num1'];
    $num2 = $_POST['num2'];
    $operator = $_POST['operator'];

switch ($operator) 
{
  case 'sum':
  $result = $num1 + $num2;
  break;
  
  case 'sub':
  $result = $num1 - $num2;
  break;
  
  case 'multi':
  $result = $num1 * $num2;
  break;
        
  case 'divide':
            
if ($num2 == 0) 
{
   $result = "Cannot divide by zero!";
}
else 
{
   $result = $num1 / $num2;
}
   break;
default:
   $result = "Invalid operator!";
   break;
}
    echo "The result is: " . $result;
}
?>
