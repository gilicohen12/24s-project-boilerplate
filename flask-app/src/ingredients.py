from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


ingredients = Blueprint('ingredients', __name__)

# Get all the ingredients from the database
@ingredients.route('/ingredients', methods=['GET'])
def get_ingredients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM inredients')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


@ingredients.route('/ingredients', methods=['POST'])
def add_new_ingredient():
    
    # collecting data from the request object 
    all_ingredients = request.json
    current_app.logger.info(all_ingredients)

    #extracting the variable
    ing_name = all_ingredients['ing_name']
    protein = all_ingredients['protein']
    grains = all_ingredients['grains']
    fats = all_ingredients['fats']
    veggie = all_ingredients['veggie']
    fruit = all_ingredients['fruit']

    # Constructing the query
    query = 'INSERT INTO Ingredients (ing_name, protein, grains, fats, veggie, fruit) VALUES' \
    '(ing_name = %s, protein = %s, grains = %s, fats = %s, veggie = %s, fruit= %s)'
    data= (ing_name, protein, grains, fats, veggie, fruit)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    
    return 'Successfully added a new ingredient!'


@ingredients.route('/ingredients/<ing_name>', methods=['PUT'])
def put_ingredient(ing_name):
    data = request.json
    current_app.logger.info(data)

    protein = data['protein']
    grains = data['grains']
    fats = data['fats']
    veggie = data['veggie']
    fruit = data['fruit']

    query = 'UPDATE Ingredients SET protein = %s, grains = %s, fats = %s, veggie = %s, fruit = %s WHERE ing_name = %s'
    data= (protein, grains, fats, veggie, fruit, ing_name)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Ingredient updated!'