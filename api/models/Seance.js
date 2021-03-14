const mongoose = require('mongoose');
const Groupe = require('./Groupe');

const seanceSchema = new mongoose.Schema({
    module : {
        type : String,
        required : true
    },
    jourSeance : {
        type : String,
        required : true
    },
    heure : {
        type : String,
        required : true
    },
    type : {
        type : String,
        required : true
    },
    groupes : [{
        type : Groupe.schema,
        required : true
    }]
} , {timestamps : true })

const Seance = mongoose.model('Seance' , seanceSchema);

module.exports = Seance;