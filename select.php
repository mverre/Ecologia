<!DOCTYPE html>
<html>
<head>
</head>
<body> 
<select name="plante" onchange="AffichePlante(this.value)">
  <option value="">hmhm</option>
<?php
$bdd = mysqli_connect('localhost','root','','ecologia');
$sql="SELECT * FROM Plante";
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
    echo "<option value=".$row['id'].">".$row['Nom']."</option>";
}
?>
  </select>
</body>
</html>


