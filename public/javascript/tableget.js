var express = require('express');
const { DEC8_SWEDISH_CI } = require('mysql/lib/protocol/constants/charsets');
var router = express.Router();
const connection = require('../../database').databaseConnection;

function getIngredients(name, res, recipeID) {
try{
    let rep
    let ing;
    let stp;
    let ri;

    let sqlR = "SELECT * FROM Recipes ORDER BY recipesID";
    connection.query (sqlR, (error, data) => {
	    if(error){	
            throw error;
        } else {
            rep = data;
        }
	});

    let sql = "SELECT * FROM Ingredients ORDER BY ingredientsID";
    connection.query (sql, (error, data) => {
	    if(error){	
            throw error;
        } else {
            ing = data;
        }
	});

    let sqlS = "SELECT * FROM Steps ORDER BY stepsID";
    connection.query(sqlS, (error, data) => {
	    if(error){	
            throw error;
        } else {
            stp = data;
        }
	});

    let sqlRI = "SELECT * FROM RecipesIngredients ORDER BY riID";
    connection.query(sqlRI, (error, data) => {
	    if(error){	
            throw error;
        } else {
            res.render(name, {ing:ing, rep:rep, stp:stp, ri:data, recipeID:recipeID});
        }
	});
} catch (err) {
    console.error("Cities error:", err);
    res.status(500).send("Could not load recipe.");
}
};

module.exports = { getIngredients };