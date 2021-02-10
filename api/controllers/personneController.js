const Personne = require("../models/Personne");
const bcrypt = require('bcrypt');
const { handleServerError } = require("../utils");
const saltRounds = 73;
module.exports.add = function (req, response) {
    const p = new Personne();
    p.nom = req.body.nom;
    p.prenom = req.body.prenom;
    p.email = req.body.email;
    bcrypt.genSalt(saltRounds, function(err, salt) {
    bcrypt.hash(req.body.password, salt, function(err, hash) {
        p.password = hash;
        p.save((err, res) => {
                console.log(err, res);
                response.status(200);
                response.json("new personne added successfully");
            });        
        });
    });
}

module.exports.index = function (req, response) {
    Personne.find({}, (err, docs) => {
        response.json(docs);
    });
}

module.exports.update = function (req, response) {
    /*Personne.findOneAndUpdate({ "id": req.params.id }, { "email" : req.body.email ? req.body.email :   }, (err, docs) => {
        
    });*/
}

module.exports.del = function (req, response) {
    Personne.deleteOne({ "id": req.params.id }, err => {
        if (err) handleServerError(err,response);
        response.status(200).json("user deleted successfully");
    });
}