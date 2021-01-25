const mongoose = require('mongoose');
const Groupe = require('./Groupe');
const Evenement = require('./Evenement');

const schema = new mongoose.Schema({
    groupe : {
        type : new Groupe(),
        required : true
    },
    Evenement : {
        type : new Evenement(),
        required : true
    }
} , {timestamps : true })

const EvenementGrp = mongoose.model('EvenementGrp' , schema);

module.exports = EvenementGrp;