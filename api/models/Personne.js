const mongoose = require('mongoose');
const Notification = require('./Notification');

const personneSchema = new mongoose.Schema({
    nom : {
        type : String,
        required : true
    },
    prenom : {
        type : String,
        required : true
    },
    email : {
        type : String,
        required : true,
        unique : true
    },
    password : {
        type : String,
        required : true
    },
    notifications : [{
        type : Notification.schema,
        required : true
    }]
} , {timestamps : true })

const Personne = mongoose.model('Personne' , personneSchema);

module.exports = Personne;
