<!DOCTYPE html>
<html>
<head>
</head>
<body> 
<select name="plante" onchange="AffichePlante(this.value)">
  <option value="">hmhm</option>
<?php
$q = $_GET['q'];
    $bdd = mysqli_connect('localhost','root','','ecologia');
if ($q == "nom"){
    $sql="SELECT * FROM Plante";  
}
else {
    $sql="SELECT * FROM Plante WHERE Saison='".$q."'";
}
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
    echo "<option value=".$row['id'].">".$row['Nom']."</option>";
}
?>
  </select>
</body>
</html>


