function outils() {
    document.getElementById('materiel').style.display = 'none';
    document.getElementById('conseils').style.display = 'none';
    document.getElementsByClassName('subMateriel')[0].style.display = 'inline';
    document.getElementsByClassName('subMateriel')[1].style.display = 'block';
    document.getElementsByClassName('subMateriel')[2].style.display = 'block';
    document.getElementsByClassName('subMateriel')[3].style.display = 'block';
}

function jardin() {
    document.getElementById('materiel').style.display = 'none';
    document.getElementById('conseils').style.display = 'none';
    document.getElementsByClassName('subConseils')[0].style.display = 'inline';
    document.getElementsByClassName('subConseils')[1].style.display = 'block';
    document.getElementsByClassName('subConseils')[2].style.display = 'block';
    document.getElementsByClassName('subConseils')[3].style.display = 'block';
}