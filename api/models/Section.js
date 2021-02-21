const mongoose = require('mongoose');
const Groupe = require('./Groupe');
const EmploiTemps = require('./EmploiTemps');

const sctSchema = new mongoose.Schema({
    annee: {
        type : Date,
        required : true
    },
    num : {
        type : Number,
        required : true
    },
    groupes : [{
        type : Groupe.schema,
        required : true
    }],
    emploiTemps : {
        type : EmploiTemps.schema,
        required : true
    }
} , {timestamps : true })

const Section = mongoose.model('Section' , sctSchema);

module.exports = Section;