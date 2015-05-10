<!DOCTYPE html>
<html>
<head>
</head>
<body> <?php
$s = $_GET['q'];
$sEx = explode('/', $s);
$nom = $sEx[0];
$saison = $sEx[1];
$type = $sEx[2];
$climat = $sEx[3];
$day = $sEx[4];
$month = $sEx[5];

$bdd = mysqli_connect('localhost','root','','ecologia');
if ($climat == "tout"){
    if ($saison == "tout" || $saison == "conseil"){
        if ($type == "tout"){
            $sql="SELECT * FROM plante WHERE Nom LIKE '%".$nom."%'";
        }
        else {
            $sql="SELECT * FROM plante where Type='".$type."' and Nom LIKE '%".$nom."%'";
        } 
    }
    else {
        if ($type == "tout"){
            $sql="SELECT * FROM plante WHERE Saison='".$saison."' and Nom LIKE '%".$nom."%'";
        }
        else {
            $sql="SELECT * FROM plante WHERE Saison='".$saison."' and Type='".$type."' and Nom LIKE '%".$nom."%'";
        }
    }
}
else {
    if ($saison == "tout" || $saison == "conseil"){
        if ($type == "tout"){
            $sql="SELECT * FROM plante where Climat='".$climat."' and Nom LIKE '%".$nom."%'";
        }
        else {
            $sql="SELECT * FROM plante where Type='".$type."' and Climat='".$climat."' and Nom LIKE '%".$nom."%'";
        } 
    }
    else {
        if ($type == "tout"){
            $sql="SELECT * FROM plante WHERE Saison='".$saison."'and Climat='".$climat."' and Nom LIKE '%".$nom."%'";
        }
        else {
            $sql="SELECT * FROM plante WHERE Saison='".$saison."' and Type='".$type."' and Climat='".$climat."' and Nom LIKE '%".$nom."%'";
        }
    }
}
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
    if($saison == 'conseil'){
        $datedebut = explode('/',$row['DateDebut']);
        $datefin = explode('/',$row['DateFin']);
        if (($datedebut[1]>$datefin[1] && ($datedebut[1]<$month || $datefin[1]>$month)) ||($datedebut[1]<$datefin[1] && $datedebut[1]<$month && $datefin[1]>$month) || ($datedebut[1]==$month && $datedebut[0]<=$day) || ($datefin[1]==$month && $datefin[0]>=$day)){
            echo "<li onclick='AffichePlante(".$row['id'].")'>
                <img style='width:200px; height:180px' src=".$row['Image'].">
                <h3>".$row['Nom']."</h3>
                <p>".$row['Description']."</p>
                </li>";
        }
    }  
    else {
        echo "<li onclick='AffichePlante(".$row['id'].")'>
            <img style='width:200px; height:180px' src=".$row['Image'].">
            <h3>".$row['Nom']."</h3>
            <p>".$row['Description']."</p>
            </li>";
    }          
}
?>
  </select>
</body>
</html>

