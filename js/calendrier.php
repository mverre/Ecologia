<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body> 
        <?php
            $s = $_GET['q'];
            $sEx = explode('/', $s);
            $day = $sEx[0];
            $month = $sEx[1];
            $bdd = mysqli_connect('localhost','root','','ecologia');
            $sql="SELECT * FROM jours where numero='".$day."'and mois='".$month."'";
            $result = mysqli_query($bdd,$sql);
            while($row = mysqli_fetch_array($result)) {
                echo "<li>Etat lunaire : ".$row['etat_lunaire']."</li><li>Type de plante : ".$row['type_plante']."</li><li>Conseil du jour : ".$row['instruction']."</li>";
            }
            $result = mysqli_query($bdd,$sql);
            $row = mysqli_fetch_array($result);
            if($row['plante_liee']!=NULL){
                    $sql2 = "SELECT Nom FROM jours,plante where id='".$row['plante_liee']."'";
                    $result2 = mysqli_query($bdd,$sql2);
                    if (!$result2) {
                        echo 'Could not run query: ' . mysql_error();
                        exit;
                    }
                    $row2 = mysqli_fetch_array($result2);
                    echo "<button onclick=AffichePlante2('".$row['plante_liee']."');>".$row2[0]."</button>";
                }
        ?> 
    </body>
</html>
