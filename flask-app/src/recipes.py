from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


recipes = Blueprint('recipes', __name__)

# Get all customers from the DB
@recipes.route('/recipes', methods=['GET'])
def get_all_recipes():
    cursor = db.get_db().cursor()
    cursor.execute('select Name, Story, Directions, TagID, BlogID, Origin from Recipe')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer detail for customer with particular userID
@recipes.route('/recipes/<RecipeID>', methods=['GET'])
def get_recipes_recipeID(RecipeID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from customers where RecipeID = {0}'.format(RecipeID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@recipes.route('/recipes', methods=['POST'])
def add_new_recipe():
    
    # collecting data from the request object 
    data = request.json
    current_app.logger.info(data)

    #extracting the variable
    Name = data['Name']
    Story = data['Story']
    Directions = data['Directions']
    TagID = data['TagID']
    BlogID = data['BlogID']
    Origin = data['Origin']

    # Constructing the query
    query = 'insert into Recipe (Name, Story, Directions, TagID, BlogID, Origin) values ("'
    query += Name + '", "'
    query += Story + '", "'
    query += Directions + '", '
    query += TagID + '", '
    query += BlogID + '", '
    query += Origin + ')'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Success!'


@recipes.route('/customers/<RecipeID>', methods=['PUT'])
def put_recipe(RecipeID):
    data = request.json
    current_app.logger.info(data)
    RecipeID = data[RecipeID]
    Name = data['Name']
    Story = data['Story']
    Directions = data['Directions']
    TagID = data['TagID']
    BlogID = data['BlogID']
    Origin = data['Origin']


    query = 'UPDATE customers SET Name = %s, Story = %s, Directions = %s, TagID = %s, BlogID = %s,  Origin = %s WHERE RecipeID = %s'
    data= (Name, Story, Directions, TagID, BlogID, Origin, RecipeID)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'Recipe updated!'

@recipes.route('/recipes/<RecipeID>', methods=['DELETE'])
def delete_recipe_with_recipeID(RecipeID):
    # Constructing the DELETE query
    query = 'DELETE FROM Recipe WHERE RecipeID = {}'.format(RecipeID)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Recipe with ID {} deleted successfully!'.format(RecipeID)

@recipes.route('/recipes/<BlogID>', methods=['DELETE'])
def delete_recipe_with_BlogID(BlogID):
    # Constructing the DELETE query
    query = 'DELETE FROM Recipe WHERE BlogID = {}'.format(BlogID)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Recipe from Blog ID {} deleted successfully!'.format(BlogID)

# update a recipe's tag given the TagID
@recipes.route('/recipes/<TagID>', methods=['PUT'])
def put_new_tag():
    
    # collecting data from the request object 
    data = request.json
    current_app.logger.info(data)

    #extracting the variable
    ContainsNuts = data['ContainsNuts']
    GlutenFree = data['GlutenFree']
    Vegetarian = data['Vegetarian']
    ContainsProtein = data['ContainsProtein']
    FatFree = data['FatFree']
    Vegan = data['Vegan']
    TagID = data['TagID']

    query = 'UPDATE Tags SET ContainsNuts = %s, GlutenFree = %s, Vegetarian = %s, ContainsProtein = %s, FatFree = %s,  Vegan = %s WHERE TagID = %s'
    data= (ContainsNuts, GlutenFree, Vegetarian, ContainsProtein, FatFree, Vegan, TagID)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'Tag updated!'

# Get the fields in Tag
@recipes.route('/recipes/<TagID>', methods=['GET'])
def get_recipes_tagID(TagID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * from Tags where TagID = {0}'.format(TagID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response