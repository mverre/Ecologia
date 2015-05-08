var plante = {
//nom string, type string, saison string, climat string, imageURL string, origine string, description string, dateD array 2cases, dateF array 2 cases
    init: function (nom, type, saison, climat, imageURL, origine, description, dateD, dateF) {
        'use strict';
        this.Nom = nom;
        this.Type = type;
        this.Saison = saison;
        this.Climat = climat;
        this.Image = new Image();
        this.Origine = origine;
        this.Description = description;
        this.dateDebut = dateD;
        this.dateFin = dateF;
    }
};
    
    