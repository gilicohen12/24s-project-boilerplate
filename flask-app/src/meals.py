from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

meal = Blueprint('meal', __name__)

# Get all meals from the DB
@meal.route('/Meal', methods=['GET'])
def get_meal():
    cursor = db.get_db().cursor()
    cursor.execute('''
        SELECT * 
        FROM Meal m 
         JOIN FoodItems f ON m.MealID = f.MealID 
         JOIN Ingredients i ON i.Food_Name = f.Food_Name
    ''')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Add new meal to meals
@meal.route('/Meal/log/<Username>', methods=['POST'])
def post_new_meal(Username):
    
    cursor = db.get_db().cursor()
    cursor.execute('SELECT LogID FROM Log WHERE Username = %s', (Username))  
    LogID = cursor.fetchone()[0]  # Assuming Username is unique and fetching the first result
    
    the_data = request.json
    current_app.logger.info(the_data)
   
    
    Date = the_data['Date']
    Food_Name = str(the_data['Food_Name'])
    MealType = the_data['MealType']
    ServingCount = str(the_data['ServingCount'])
    Fats = str(the_data['Fats'])
    Fruit = str(the_data['Fruit'])
    Grains = str(the_data['Grains'])
    Ing_Name = str(the_data['Ing_Name'])
    Protein = str(the_data['Protein'])
    Veggie = str(the_data['Veggie'])
    
    query = 'INSERT INTO Day (Date, LogID) VALUES (%s, %s)'
    data = (Date, LogID)
    cursor.execute(query, data)
    db.get_db().commit()

    query = 'INSERT INTO Meal (MealType, Date) VALUES (%s, %s)'
    data = (MealType, Date)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('meal added')

    return 'Successfully added new meal!'

# Logs a meal
@meal.route('/Meal', methods=['POST'])
def add_new_meal():
    the_data = request.json
    current_app.logger.info(the_data)

    MealType = the_data['MealType']
    Date = the_data['Date']

    query = 'INSERT INTO Day (Date) VALUES (%s)'
    data = (Date)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('date added')

    query = 'INSERT INTO Meal (MealType, Date) VALUES (%s, %s)'
    data = (MealType, Date)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('meal added')

    return 'Successfully added new meal!'


# -----------------------
# NOT IN USE:

# Changes a meal based on Date
@meal.route('/Meal/<Date>', methods=['PUT'])
def put_meal_with_Date(Date):
    data = request.json
    current_app.logger.info(data)

    MealType = data['MealType']
    MealID = data['MealID']

    query = 'UPDATE Meal SET MealType = %s, MealID = %s WHERE Date = %s'
    data = (MealType, MealID, Date)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Meal updated!'


# Get meals for user with particular Date
@meal.route('/Meal/<Date>', methods=['GET'])
def get_meal_with_Date(Date):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Meal WHERE Date = %s', (Date,))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Updates a meal
@meal.route('/Meal/update', methods=['PUT'])
def put_meal_():
    data = request.json
    current_app.logger.info(data)

    MealID = data['MealID']
    MealType = data['MealType']
    Food_Name = data['Food_Name']
    ServingCount = data['ServingCount']
    Fats = data['Fats']
    Fruit = data['Fruit']
    Grains = data['Grains']
    Ing_Name = data['Ing_Name']
    Protein = data['Protein']
    TagID = data['TagID']
    Veggie = data['Veggie']


    # query = 'UPDATE Meal SET MealType = %s, Date = %s WHERE MealID = %s'
    # data = (MealType, Date, MealID)
    query = 'UPDATE Meal SET MealType = %s WHERE MealID = %s'
    data = (MealType, MealID)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('meal updated')

    query = 'UPDATE FoodItems SET Food_Name = %s, ServingCount = %s WHERE MealID = %s'
    data = (Food_Name, ServingCount, MealID)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('food items updated')

    query = 'UPDATE Ingredients SET Fats = %s, Fruit = %s, Grains = %s, Ing_Name = %s, Protein = %s, TagID = %s, Veggie = %s WHERE Food_Name = %s'
    data = (Fats, Fruit, Grains, Ing_Name, Protein, TagID, Veggie, Food_Name)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    current_app.logger.info('ingredients updated')
    return 'Meal updated!'

 # Changes a meal based on meal id
@meal.route('/Meal/<MealID>', methods=['PUT'])
def put_meal_with_MealID(MealID):
    data = request.json
    current_app.logger.info(data)

    MealType = data['MealType']
    Date = data['Date']

    query = 'UPDATE Meal SET MealType = %s, Date = %s WHERE MealID = %s'
    data = (MealType, Date, MealID)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Meal updated!'

 # Get meals for user with particular MealID
@meal.route('/Meal/<MealID>', methods=['GET'])
def get_meal_with_MealID(MealID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Meal WHERE id = %s', (MealID,))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response