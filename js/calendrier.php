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
        ?> 
    </body>
</html>
