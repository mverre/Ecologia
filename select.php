<!DOCTYPE html>
<html>
<head>
</head>
<body> 
<select name="plante" onchange="AffichePlante(this.value)">
  <option value="">Pick a Plant</option>
<?php
$s = $_GET['q'];
$sEx = explode('/', $s);
$q = $sEx[0];
$day = $sEx[1];
$month = $sEx[2];
$type = $sEx[3];

    $bdd = mysqli_connect('localhost','root','','ecologia');
if ($q == "nom" || $q == "conseil"){
    if ($type == "nom"){
        $sql="SELECT * FROM Plante";
    }
    else {
        $sql="SELECT * FROM Plante where Type='".$type."'";
    } 
}
else {
    if ($type == "nom"){
        $sql="SELECT * FROM Plante WHERE Saison='".$q."'";
    }
    else {
        $sql="SELECT * FROM Plante WHERE Saison='".$q."' and Type='".$type."'";
    }
}
$result = mysqli_query($bdd,$sql);
while($row = mysqli_fetch_array($result)) {
    if($q == 'conseil'){
        echo "meep";
        $datedebut = explode('/',$row['DateDebut']);
        $datefin = explode('/',$row['DateFin']);
        if (($datedebut[1]<$month && $datefin[1]>$month) || ($datedebut[1]==$month && $datedebut[0]<=$day) || ($datefin[1]==$month && $datefin[0]>=$day)){
            echo "<option value=".$row['id'].">".$row['Nom']."</option>";
        }
    }
    else {
        echo "<option value=".$row['id'].">".$row['Nom']."</option>";
    }
}
?>
  </select>
</body>
</html>

