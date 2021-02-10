const { Router } = require("express");
const { index, add, del,update } = require("../controllers/etudiantController");
const { verifyToken } = require("../utils");


let etudiantRouter = Router();

etudiantRouter.get('/etudiants/index',[verifyToken], index);
etudiantRouter.post('/etudiant/add',[verifyToken], add);
etudiantRouter.delete('/etudiant/:id/delete',[verifyToken], del);
etudiantRouter.put('/etudiant/:id/update',[verifyToken], update);

module.exports = etudiantRouter;