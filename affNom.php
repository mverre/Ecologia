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
    echo "<li onclick='AffichePlante(".$row['id'].")'>
            <img style='width:200px;' src=".$row['Image'].">
            <h3>".$row['Nom']."</h3>
          <p>".$row['Description']."</p>
           </li>";
}
?>
  </select>
</body>
</html>

