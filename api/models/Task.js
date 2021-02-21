const mongoose = require('mongoose');
const Etudiant = require('./Etudiant');

const taskSchema = new mongoose.Schema({
    titre : {
        type : String,
        required : true
    },
    describtion : {
        type : String,
        required : true
    },
    date : {
        type : Date,
        required : true
    },
    etudiants : [{
        type : Etudiant.schema,
        required : true
    }],
} , {timestamps : true })

const Task = mongoose.model('Task' , taskSchema);

module.exports = Task;