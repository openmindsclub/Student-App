const mongoose = require('mongoose');
const Section = require('./Section');
const Evenement = require('./Evenement');
const grpSchema = new mongoose.Schema({
    num_groupe : {
        type : Number,
        required : true
    },
    section : {
        type : Section.schema,
        required : true
    },
    evenement: [
        {
            type : Evenement.schema,
            required : true
        }
    ]
} , {timestamps : true })

const Groupe = mongoose.model('Groupe' , grpSchema);

module.exports = Groupe;