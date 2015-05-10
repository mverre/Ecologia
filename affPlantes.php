<!DOCTYPE html>
<html>
<head>
</head>
<body>    
<?php
$q = intval($_GET['q']);
$bdd = mysqli_connect('localhost','root','','ecologia');
$sql="SELECT * FROM Plante WHERE id = '".$q."'";
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
<<<<<<< HEAD
    echo "<img style='margin:auto; width:300px;' src=".$row['Image']."><br>";
=======
    echo "<img style='margin:auto; width:300px; height:280px' src=".$row['Image']."><br>";
>>>>>>> origin/master
    echo "Nom : " . $row['Nom'] . "<br>";
    echo "Type : " . $row['Type'] . "<br>";
    echo "Saison : " . $row['Saison'] . "<br>";
    echo "Climat : " . $row['Climat'] . "<br>";
    echo "Origine : " . $row['Origine'] . "<br>";
    echo "Description : " . $row['Description'] . "<br>";
    echo "Date de debut : " . $row['DateDebut'] . "<br>";
    echo "Date de fin : " . $row['DateFin'] . "<br>";
}
?>
</body>
</html>