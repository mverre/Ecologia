function PlanteSet(tabPlantes){
    
    
}





var plante = {
//nom string, type string, saison string, climat string, imageURL string, origine string, description string, dateD array 2cases, dateF array 2 cases
    init: function (nom, type, saison, climat, imageURL, origine, description, dateD, dateF) {
        'use strict';
        this.Nom = nom; // nom de la plante 
        this.Type = type; // fruit/légume/fleur ...
        this.Saison = saison; // automne hiver printemps été 
        this.Climat = climat; // chaud ou moins chaud
        this.Image = new Image(); 
        this.Image.src = imageURL;
        this.Origine = origine; // pays d'origine
        this.Description = description; // une petite description de la plante
        this.dateDebut = dateD; // la date à partir de laquelle planté est intéressant
        this.dateFin = dateF; // la date à partir de laquelle planté n'est plus intéressant
    },
    draw: function () {
        'use strict';
            
        
    
    }    
};

