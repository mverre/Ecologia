<!DOCTYPE HTML>
<html>
    <head>
        <title>Plantes</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href="css/plantes.css" rel="stylesheet" type="text/css" />
    </head>
    <body id="page2"  onload="AffList()">
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
            <div id="FormRech" class="form-wrapper cf">
                <input id="Recherche" type="text" placeholder="Chercher une plante !" required>
                <button onclick='AffichePlanteNom()'>Search</button>
                <select id="saison" name="plante">
                    <option value="tout">Saison</option>
                    <option value="printemps">Printemps</option>
                    <option value="ete">Été</option>
                    <option value="automne">Automne</option>
                    <option value="hiver">Hiver</option>
                    <option value="conseil">Plante du moment</option>
                </select>  
                <select id="type" name="fleur">
                    <option value="tout">Type</option>
                    <option value="fleur">Fleur</option>
                    <option value="legume">Legume</option>
                    <option value="fruit">Fruit</option>
                    <option value="feuille">Feuille</option>
                </select>  
                <select id="climat" name="chaud">
                    <option value="tout">Climat</option>
                    <option value="chaud">Chaud</option>
                    <option value="tempere">Tempere</option>
                </select>  
                <button onclick='AffList()'>Retour</button>
            </div>   
            
            <div id="plantes">
                <ul id="listaff">                   
                </ul>
            </div>
            <div class="form-wrapper" style="display:none;" id="txtHint"></div>
        </div>
    </body>
    <script src="./js/objet.js"></script>
    <script>document.getElementById("Recherche").addEventListener('keydown', doKeyDown, true);</script>
</html>