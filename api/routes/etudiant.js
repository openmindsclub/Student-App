const { Router } = require("express");
const { index, add, del,update } = require("../controllers/etudiantController");


let etudiantRouter = Router();

etudiantRouter.get('/etudiants/index', index);
etudiantRouter.post('/etudiant/add', add);
etudiantRouter.delete('/etudiant/:id/delete', del);
etudiantRouter.put('/etudiant/:id/update', update);

module.exports = etudiantRouter;