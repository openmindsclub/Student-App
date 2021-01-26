const mongoose = require('mongoose');
const Personne = require("./Personne");
const etudiantSchema = new mongoose.Schema({

    matricule : {
        type : String,
        required : true
    },
    personne : {
        type : Personne.schema,
        required : true
    },
} , {timestamps : true })

const Etudiant = mongoose.model('etudiant' , etudiantSchema);

module.exports.model = Etudiant;
module.exports.schema = etudiantSchema;