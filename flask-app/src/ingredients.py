from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


ingredients = Blueprint('ingredients', __name__)

# Get all the ingredients from the database
@ingredients.route('/ingredients', methods=['GET'])
def get_ingredients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM ingredients')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


# Get all the ingredients from the database based on a tagID
@ingredients.route('/ingredients/<TagId>', methods=['GET'])
def get_ingredients_from_tag(TagId):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Ingredients WHERE TagId = {}'.format(TagId))
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


# Get all the ingredients from the database based on the food item
@ingredients.route('/ingredients/<Food_Name>', methods=['GET'])
def get_ingredients_from_fooditem(Food_Name):
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Ingredients WHERE Food_Name = {}'.format(Food_Name))
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# Add a new ingredient
@ingredients.route('/ingredients', methods=['POST'])
def add_new_ingredient():
    
    # collecting data from the request object 
    all_ingredients = request.json
    current_app.logger.info(all_ingredients)

    #extracting the variable
    ing_name = all_ingredients['Ing_Name']
    tag_id = all_ingredients['TagId']
    foodItem = all_ingredients['FoodItem']
    protein = all_ingredients['Protein']
    grains = all_ingredients['Grains']
    fats = all_ingredients['Fats']
    veggie = all_ingredients['Veggie']
    fruit = all_ingredients['Fruit']

    # Constructing the query
    query = 'INSERT INTO Ingredients (Ing_Name, FoodItem, TagId, Protein, Grains, Fats, Veggie, Fruit) VALUES' \
    '(Ing_Name = %s, FoodItem = %s, TagId = %s, Protein = %s, Grains = %s, Fats = %s, Veggie = %s, Fruit= %s)'
    data= (ing_name, foodItem, tag_id, protein, grains, fats, veggie, fruit)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    
    return 'Successfully added a new ingredient!'

# Edit an ingredient
@ingredients.route('/ingredients/<Ing_Name>', methods=['PUT'])
def put_ingredient(ing_name):
    data = request.json
    current_app.logger.info(data)

    protein = data['Protein']
    grains = data['Grains']
    fats = data['Fats']
    veggie = data['Veggie']
    fruit = data['Fruit']
    food_item = data['FoodItem']

    query = 'UPDATE Ingredients SET FoodItem = %s, protein = %s, grains = %s, fats = %s, veggie = %s, fruit = %s WHERE ing_name = %s'
    data= (food_item, protein, grains, fats, veggie, fruit, ing_name)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Ingredient updated!'

# Edit an ingredient given a food item
@ingredients.route('/ingredients/<FoodItem>', methods=['PUT'])
def put_ingredient_from_fooditem(foodItem):
    data = request.json
    current_app.logger.info(data)

    protein = data['protein']
    grains = data['grains']
    fats = data['fats']
    veggie = data['veggie']
    fruit = data['fruit']

    query = 'UPDATE Ingredients SET protein = %s, grains = %s, fats = %s, veggie = %s, fruit = %s WHERE FoodItem = %s'.format(foodItem)
    data= (protein, grains, fats, veggie, fruit, foodItem)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Ingredient in' + foodItem + 'updated!'