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
        type : Section.Schema,
        required : true
    }],
    groupes : [{
        type : Groupe.Schema,
        required : true
    }]
} , {timestamps : true })

const Evenement = mongoose.model('évènement' , evnmSchema);

module.exports = Evenement;