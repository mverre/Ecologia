<!DOCTYPE html>
<html>
<head>
</head>
<body> <?php
$q = $_GET['q'];
$bdd = mysqli_connect('localhost','root','','ecologia');
$sql="SELECT * FROM Plante WHERE Nom LIKE '%".$q."%'";
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
<<<<<<< HEAD
    echo "<li onclick='AffichePlante(".$row['id'].")'>
            <img style='width:200px;' src=".$row['Image'].">
            <h3>".$row['Nom']."</h3>
          <p>".$row['Description']."</p>
           </li>";
=======
    echo "<img style='margin:auto; width:300px;' src=".$row['Image']."><br>";
    echo "Nom : " . $row['Nom'] . "<br>";
    echo "Type : " . $row['Type'] . "<br>";
    echo "Saison : " . $row['Saison'] . "<br>";
    echo "Climat : " . $row['Climat'] . "<br>";
    echo "Origine : " . $row['Origine'] . "<br>";
    echo "Description : " . $row['Description'] . "<br>";
    echo "Date de debut : " . $row['DateDebut'] . "<br>";
    echo "Date de fin : " . $row['DateFin'] . "<br>";
>>>>>>> origin/master
}
?>
  </select>
</body>
</html>

