<!DOCTYPE HTML>
<html>
    <head>
        <title>Plantes</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <body id="page2">
        <div id="main">
            <div id="header">
                <div class="bann">
                    <div class="logo"><a href="index.html"><img src="images/banner.png" alt="" /></a></div>
                </div>
                <div class="nav">
                    <div class="left">
                        <ul>
                            <li><a href="index.html"><span>Accueil</span></a></li>
                            <li><a href="plantes.php" class="active"><span>Plantes</span></a></li>
                            <li><a href="calendrier.html"><span>Calendrier</span></a></li>
                            <li><a href="conseils.html"><span>Conseils</span></a></li>
                            <li class="last"><a href="forum.html"><span>Forum</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <form class="form-wrapper cf">
                <input type="text" placeholder="Chercher une plante !" required>
                <button type="submit">Search</button>
            </form>   
            
            <div id="plantes">
                <ul>
                    <?php
                        $bdd = mysqli_connect('localhost','root','','ecologia');

                        $sql="SELECT * FROM plante";
                        
                        $result = mysqli_query($bdd,$sql);

                        while($row = mysqli_fetch_array($result)) {
                            echo "<li>
                                    <img onclick='AffichePlante(".$row['id'].")' src=".$row['Image'].">
                                    <h3>".$row['Nom']."</h3>
                                    <p>".$row['Description']."</p>
                                  </li>";
                        }
                    ?>                   
                </ul>
            </div>
            <div id="txtHint">beep</div>
        </div>
    </body>
    <script src="./js/objet.js"></script>
</html>