<!DOCTYPE html>
<html>
<head>
</head>
<body> 
<?php
    $bdd = mysqli_connect('localhost','root','','ecologia');

    $sql="SELECT * FROM plante";

    $result = mysqli_query($bdd,$sql);

    while($row = mysqli_fetch_array($result)) {
        echo "<li onclick='AffichePlante(".$row['id'].")'>
                <img style='width:200px; height:180px;' src=".$row['Image'].">
                <h3>".$row['Nom']."</h3>
                <p>".$row['Description']."</p>
              </li>";
    }
?>
</body>
</html>