const bcrypt = require('bcrypt');
const Etudiant = require("../models/Etudiant");
const Groupe = require("../models/Groupe");
const Personne = require("../models/Personne");
const Faculte = require("../models/Faculte");
const Specialite = require("../models/Specialite");
const Section = require("../models/Section");
const { handleServerError } = require("../utils");

const saltRounds = 10;
module.exports.add = function (request, response) {
    let etudiant = new Etudiant();
    let personne = new Personne();
    let grp = new Groupe();
    let fac = new Faculte();
    let specialite = new Specialite();
    let section = new Section();
    fac.nom = request.body.faculte;
    specialite.nom = request.body.specialite;
    specialite.faculte = fac;
    section.annee = request.body.annee;
    section.num = request.body.num;
    section.specialite = specialite;
    grp.num_groupe = request.body.num_groupe
    grp.section = section;
    grp.evenement = [];
    personne.nom = request.body.nom;
    personne.prenom = request.body.prenom;
    personne.email = request.body.email;
    personne.password = request.body.password;
    etudiant.groupe = grp;
    etudiant.tasks = [];
    etudiant.matricule = request.body.matricule;
    bcrypt.genSalt(saltRounds, function (err, salt) {
        bcrypt.hash(request.body.password, salt, function (err, hash) {
            console.log("done");
            personne.password = hash;
            etudiant.personne = personne;
            etudiant.save((err, res) => {
                console.log(err, res);
                if (err) handleServerError(err, response);
                response.json("student registered successfully");
            });
        });
    });
}

module.exports.update = function (request, response) {
    
}

module.exports.del = function (request, response) {
    
}

module.exports.index = function (request, response) {
    
}