const mongoose = require('mongoose');
const Section = require("./Section");
const Groupe = require("./Groupe");

const evnmSchema = new mongoose.Schema({
    type : {
        type : String,
        required : true
    },
    date : {
        type : Date,
        required : true
    },
    module : {
        type : String,
        required : true
    },
    sections : [{
        type : Section.schema,
        required : true
    }],
    groupes : [{
        type : Groupe.schema,
        required : true
    }]
} , {timestamps : true })

const Evenement = mongoose.model('évènement' , evnmSchema);

module.exports = Evenement;