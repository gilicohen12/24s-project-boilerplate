from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


recipes = Blueprint('recipes', __name__)

# Get all recipes from the DB
@recipes.route('/recipes', methods=['GET'])
def get_all_recipes():
    cursor = db.get_db().cursor()
    # cursor.execute('select Name, Story, Directions, TagID, BlogID, Origin from Recipe')
    cursor.execute('select * from Recipe natural join Tags')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Update a specific recipe
@recipes.route('/recipes/update', methods=['PUT'])
def put_recipe():
    data = request.json
    current_app.logger.info(data)

    RecipeID = str(data['RecipeID'])
    Name = data['Name']
    Story = data['Story']
    Directions = data['Directions']
    TagID = str(data['TagID'])
    BlogID = str(data['BlogID'])
    Origin = data['Origin']
    ContainsNuts = data['ContainsNuts']
    ContainsProtein = data['ContainsProtein']
    DairyFree = data['DairyFree']
    FatFree = data['FatFree']
    GlutenFree = data['GlutenFree']
    Vegan = data['Vegan']
    Vegetarian = data['Vegetarian']


    query = 'UPDATE Recipe SET Name = %s, Story = %s, Directions = %s, TagID = %s, BlogID = %s,  Origin = %s WHERE RecipeID = %s'
    data= (Name, Story, Directions, TagID, BlogID, Origin, RecipeID)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()

    query = 'UPDATE Tags SET ContainsNuts = %s, ContainsProtein = %s, DairyFree = %s, FatFree = %s, GlutenFree = %s,  Vegan = %s, Vegetarian = %s WHERE TagID = %s'
    data= (ContainsNuts, ContainsProtein, DairyFree, FatFree, GlutenFree, Vegan, Vegetarian, TagID)
    cursor = db.get_db().cursor()
    r = cursor.execute(query, data)
    db.get_db().commit()
    return 'Recipe updated!'

# Delete a specific recipe
@recipes.route('/recipes/deletethis', methods=['DELETE'])
def delete_recipe_with_recipeID():
    # Constructing the DELETE query
    data = request.json
    current_app.logger.info(data)

    RecipeID = str(data['RecipeID'])
    query = 'DELETE FROM Recipe WHERE RecipeID = {}'.format(RecipeID)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Recipe with ID {} deleted successfully!'.format(RecipeID)

# Delete all recipes of this blog
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

# Get all this user's recipes
@recipes.route('/recipesUsername/<username>', methods=['GET'])
def get_recipes_username(username):
    # Construct the SQL query with parameterization to avoid SQL injection
    query = 'SELECT BlogID FROM Blog WHERE Username = %s'
    current_app.logger.info(query)

    # Execute the query with the username parameter
    cursor = db.get_db().cursor()
    cursor.execute(query, (username,))

    row = cursor.fetchone()
    BlogID = row[0]
  
    query = 'SELECT * FROM Recipe r JOIN Tags t ON r.TagID = t.TagID WHERE BlogID = %s'
    current_app.logger.info(query)

    # Execute the query with the username parameter
    cursor = db.get_db().cursor()
    cursor.execute(query, (BlogID,))
    
    # Fetch the results and prepare JSON response
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    
    the_data = cursor.fetchall()
    
    for row in the_data:
        json_data.append(dict(zip(column_headers, row)))
    
    return jsonify(json_data)
  
# Add a new recipe to this User
@recipes.route('/recipes/<Username>', methods=['POST'])
def add_new_recipe(Username):
    cursor = db.get_db().cursor()
    # collecting data from the request object 
    cursor.execute('SELECT BlogID FROM Blog WHERE Username = %s', (Username))  
    BlogID = cursor.fetchone()[0]  # Assuming Username is unique and fetching the first result
    
    data = request.json
    current_app.logger.info(data)
    #extracting the variable
    Name = data['Name']
    Story = data['Story']
    Directions = data['Directions']
    TagID = data['TagID']
    Origin = data['Origin']

    # Constructing the query
    query = 'INSERT INTO Recipe (Name, Story, Directions, TagID, BlogID, Origin) VALUES (%s, %s, %s, %s, %s, %s)'
    values = (Name, Story, Directions, TagID, BlogID, Origin)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query, values)
    db.get_db().commit()
    
    return 'Success!'

# -----------------------
# NOT IN USE:

# Gets recipe details given RecipeID
@recipes.route('/recipes/<RecipeID>', methods=['GET'])
def get_recipes_recipeID(RecipeID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Recipe where RecipeID = {0}'.format(RecipeID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

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