//Fonction permettant de changer d"onglet.
function change_onglet(name)
{
    document.getElementById("contenu_"+anc_onglet).className = "onglet_cache";
	document.getElementById("contenu_"+name).className = "onglet_affiche";
	document.getElementById("contenu_"+anc_onglet).style.display = "none";
	document.getElementById("contenu_"+name).style.display = "block";
	anc_onglet = name;
}
//L"onglet de base est le printemps.
var anc_onglet = "printemps";

//Fonction permettant d"initialiser le système d"onglets.
function ongletInit(){
    //Création de la div contenant les bouttons d"onglets.
    var elt = document.createElement("div");
    elt.setAttribute("class","onglets_bouttons");
    var eltDiv = document.body.appendChild(elt);
    //On rempli la div avec les boutons.
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","printemps");
    elt2.addEventListener("click",function(){change_onglet("printemps");},false);
    elt2.innerHTML="Printemps";
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","ete");
    elt2.addEventListener("click",function(){change_onglet("ete");},false);
    elt2.innerHTML="Ete";
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","automne");
    elt2.addEventListener("click",function(){change_onglet("automne");},false);
    elt2.innerHTML="Automne";
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","hiver");
    elt2.addEventListener("click",function(){change_onglet("hiver");},false);
    elt2.innerHTML="Hiver";
    eltDiv.appendChild(elt2);
    //Création de la div contenant le contenu associé aux onglets.
    var elt = document.createElement("div");
    elt.setAttribute("class","onglets_contenu");
    var eltDiv = document.body.appendChild(elt);
    //On rempli la div avec le contenu.
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","contenu_printemps");
    elt2.setAttribute("class","onglet_cache");
    elt2.innerHTML=contenuPrintemps;
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","contenu_ete");
    elt2.setAttribute("class","onglet_cache");
    elt2.innerHTML=contenuEte;
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","contenu_automne");
    elt2.setAttribute("class","onglet_cache");
    elt2.innerHTML=contenuAutomne;
    eltDiv.appendChild(elt2);
    var elt2 = document.createElement("span");
    elt2.setAttribute("id","contenu_hiver");
    elt2.setAttribute("class","onglet_cache");
    elt2.innerHTML=contenuHiver;
    eltDiv.appendChild(elt2);
 
}

var contenuPrintemps = "Plante de printemps";
var contenuEte = "Plante d'été";
var contenuHiver = "Plante d'hiver";
var contenuAutomne = "Plante d'automne";

//Au chargment de la page, on initialise le système d"onglet.
document.body.addEventListener("onload", ongletInit(), false);