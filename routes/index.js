var express = require('express');
var router = express.Router();
var connection = require('../database').databaseConnection;
const { getIngredients } = require('../public/javascript/tableget');


router.get("/", function(req, res){
    let sql = "SELECT * FROM Recipes ORDER BY recipesID";
    connection.query(sql, (error, data) => {
	    if(error){	
            throw error;
        } else {
            res.render('home', {rep:data});
        }
	});
});

router.get("/recipes/:protein", function(req, res) {
    protein = req.params.protein;
    let sqlR = "SELECT * FROM Recipes ORDER BY recipesID";
    connection.query(sqlR, (error, data) => {
	    if(error){	
            throw error;
        } else {
            res.render('recipes', {rep:data, protein:protein});
        }
	});
});

router.get("/recipe/:id", function(req, res) {
    recipeID = req.params.id;
    getIngredients('recipe', res, recipeID);
});

router.get("/add", function(req, res) {
    getIngredients('add', res);
});

module.exports = router;