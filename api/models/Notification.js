const mongoose = require('mongoose');
const Personne = require('Personne')

const notiSchema = new mongoose.Schema({
    titre : {
        type : String,
        required : true
    },
    describtion : {
        type : String,
        required : true
    },
    date : {
        type : String,
        required : true
    },
    personne : {
        type : Personne.schema,
        required : true
    }
} , {timestamps : true })

const Notification = mongoose.model('Notification' , notiSchema);

module.exports = Notification;