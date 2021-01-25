const mongoose = require('mongoose');
const Section = require('./Section');

const grpSchema = new mongoose.Schema({
    num_groupe : {
        type : int,
        required : true
    },
    section : {
        type : new Section(),
        required : true
    }
} , {timestamps : true })

const Groupe = mongoose.model('Groupe' , grpSchema);

module.exports = Groupe;