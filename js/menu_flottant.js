document.body.addEventListener("onload", menuFlottantInit(), false);

function menuFlottantInit(){
    elt = document.createElement("div");
    elt.setAttribute("id","menu_flottant");
    document.body.appendChild(elt);
    elt2 = document.createElement("a");
    elt2.innerHTML = "index";
    elt2.setAttribute("href","index.html");
    elt.appendChild(elt2);
    elt2 = document.createElement("br");
    elt.appendChild(elt2);
    elt2 = document.createElement("a");
    elt2.innerHTML = "plantes";
    elt2.setAttribute("href","plantes.html");
    elt.appendChild(elt2);
    elt2 = document.createElement("br");
    elt.appendChild(elt2);
    elt2 = document.createElement("a");
    elt2.innerHTML = "calendrier";
    elt2.setAttribute("href","calendrier.html");
    elt.appendChild(elt2);
    elt2 = document.createElement("br");
    elt.appendChild(elt2);
    elt2 = document.createElement("a");
    elt2.innerHTML = "conseils";
    elt2.setAttribute("href","conseils.html");
    elt.appendChild(elt2);
    elt2 = document.createElement("br");
    elt.appendChild(elt2);
    elt2 = document.createElement("a");
    elt2.innerHTML = "forum";
    elt2.setAttribute("href","forum.html");
    elt.appendChild(elt2);
}