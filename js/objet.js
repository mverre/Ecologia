function AffichePlante(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("txtHint").innerHTML = xmlhttp.responseText + "<button onclick='RetourPlante()'>Retour</button>";
                document.getElementById("txtHint").style.display = "block";
            }
        };
        xmlhttp.open("GET", "affPlantes.php?q=  " + str, true);
        xmlhttp.send();
    }
        document.getElementById("plantes").style.display = "none";
}

function AffichePlante2(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("requete").innerHTML = xmlhttp.responseText + "<button onclick='RetourPlante2()'>Retour</button>";
                document.getElementById("requete").style.display = "block";
            }
        };
        xmlhttp.open("GET", "affPlantes.php?q=  " + str, true);
        xmlhttp.send();
    }
        document.getElementById("calendarID").style.display = "none";
    document.getElementById("information").style.display = "none";
}

function AffichePlanteNom() {
    NomPlante = document.getElementById("Recherche").value;
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("requete").innerHTML = xmlhttp.responseText + "<button onclick='RetourPlante()'>Retour</button>";
            document.getElementById("txtHint").style.display = "block";
        }
    };
    xmlhttp.open("GET", "affNom.php?q=" + NomPlante , true);
    xmlhttp.send();
    document.getElementById("plantes").style.display = "none";
}

function AfficheListe(str,day,month,type,climat) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            document.getElementById("list").innerHTML = xmlhttp.responseText;
        }
    };
    xmlhttp.open("GET", "select.php?q=" + str + "/" + day + "/" +month + "/" + type + "/" + climat, true);
    xmlhttp.send();
}



function VSelectS() {
    select = document.getElementById("saison");
    choice = select.selectedIndex;  // Récupération de l'index du <option> choisi
 
    return select.options[choice].value; // Récupération du texte du <option> d'index "choice"
}

function VSelectT() {
    select = document.getElementById("type");
    choice = select.selectedIndex;  // Récupération de l'index du <option> choisi

    return select.options[choice].value; // Récupération du texte du <option> d'index "choice"
}

function VSelectC() {
    select = document.getElementById("climat");
    choice = select.selectedIndex;  // Récupération de l'index du <option> choisi

    return select.options[choice].value; // Récupération du texte du <option> d'index "choice"
}

function RetourPlante(){
    document.getElementById("txtHint").style.display = "none";
    document.getElementById("plantes").style.display = "inline";
}

function RetourPlante2(){
    document.getElementById("requete").style.display = "none";
    document.getElementById("calendarID").style.display = "inline";
    document.getElementById("information").style.display = "block";
}

/*
function InsertPlante () {
    xmlhttp = new XMLHttpRequest();
    nom = document.getElementById("txtNom").value;
    typ = document.getElementById("txtType").value;
    sai = document.getElementById("txtSaison").value;
    cli = document.getElementById("txtClimat").value;
    im = document.getElementById("txtImage").value;
    ori = document.getElementById("txtOrigine").value;
    desc = document.getElementById("txtDescription").value;
    deb = document.getElementById("txtDebut").value;
    fin = document.getElementById("txtFin").value;
    xmlhttp.open("GET", "insert.php?q=" + nom + "zzz" + typ + "zzz" + sai + "zzz" + cli + "zzz" + im + "zzz" + ori + "zzz" + desc + "zzz" + deb + "zzz" + fin, true);
    xmlhttp.send();
}
*/






var LaPlante;





PlanteSet = function () {
    "use strict";
    this.tabPlantes = new Array();
};

PlanteSet.prototype.add = function (plante) {
    "use strict";
    this.tabPlantes.push(plante);
};

PlanteSet.prototype.draw = function (nb) {
    'use strict';
    LaPlante = document.createElement("div");
    LaPlante.id = "DivPlante";
    document.body.appendChild(LaPlante);
    LaPlante.innerHTML = "Nom : " + this.tabPlantes[nb].Nom + "<br>Type : " + this.tabPlantes[nb].Type + "<br>Saison : " +  this.tabPlantes[nb].Saison + "<br>Climat : " + this.tabPlantes[nb].Climat + "<br>Origine : " + this.tabPlantes[nb].Origine + "<br>Description : " + this.tabPlantes[nb].Description + "<br>Date de début de saison : " + this.tabPlantes[nb].dateDebut[0] + "/" + this.tabPlantes[nb].dateDebut[1] + "<br>Date de fin de saison : " + this.tabPlantes[nb].dateFin[0] + "/" + this.tabPlantes[nb].dateFin[1] + "<br>Image : <img src=" + this.tabPlantes[nb].Image + ">";
};

//nom string, type string, saison string, climat string, imageURL string, origine string, description string, dateD array 2cases, dateF array 2 cases
plante = function (nom, type, saison, climat, imageURL, origine, description, dateD, dateF) {
    'use strict';
    this.Nom = nom; // nom de la plante 
    this.Type = type; // fruit/légume/fleur ...
    this.Saison = saison; // automne hiver printemps été 
    this.Climat = climat; // chaud ou moins chaud
    this.Image = imageURL;
    //this.Image.src = imageURL;
    this.Origine = origine; // pays d'origine
    this.Description = description; // une petite description de la plante
    this.dateDebut = dateD; // la date à partir de laquelle planté est intéressant
    this.dateFin = dateF; // la date à partir de laquelle planté n'est plus intéressant
};
/*
    draw: function () {
    
    }    
};*/

var now = new Date();
var dateActuelle = [now.getDate(),now.getMonth()+1];
console.log(dateActuelle);
