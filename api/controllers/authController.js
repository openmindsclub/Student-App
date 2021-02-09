const Personne = require("../models/Personne");
const { add } = require("./etudiantController");
const bcrypt = require('bcrypt');
const jwt = require("jsonwebtoken");

module.exports.authentificate = function (req, response) {
    Personne.findOne({ "email": req.body.email },["password"], (err, doc) => {
        if (doc) {
            bcrypt.compare(req.body.password, doc.password, (err, res) => {
                if (err) handleServerError(err,response);
                if (res) {
                    console.log(doc);
                    token = jwt.sign({ id: doc._id }, "secrete");
                    response.status(200);
                    response.json({
                        "token": token,
                        "userId":doc._id
                    })
                }
                else {
                    response.status(401).json("incorrect password")
                }
            });
        }
        else {
            response.status(404).json("user not found");
        }
    });
}

module.exports.register = add;