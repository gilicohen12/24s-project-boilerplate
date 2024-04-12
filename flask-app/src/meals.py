from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

meals = Blueprint('meals', __name__)

# Get meals for user with particular MealID
@meals.route('/meals/<MealID>', methods=['GET'])
def get_mealsWithID(MealID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM meals WHERE id = %s', (MealID,))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all meals from the DB
@meals.route('/meals', methods=['GET'])
def get_meals():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM meals')
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
@meals.route('/meals', methods=['POST'])
def add_new_meal():
    the_data = request.json
    current_app.logger.info(the_data)

    MealType = the_data['meals_MealType']
    Date = the_data['meals_Date']
    MealID = the_data['meals_MealID']

    query = 'INSERT INTO meals (MealType, Date, MealID) VALUES (%s, %s, %s)'
    data = (MealType, Date, MealID)
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Successfully added new meal!'

# Changes a meal based on meal id
@meals.route('/meals/<MealID>', methods=['PUT'])
def put_mealWithMealID(MealID):
    data = request.json
    current_app.logger.info(data)

    MealType = data['meals_MealType']
    Date = data['meals_Date']

    query = 'UPDATE meals SET MealType = %s, Date = %s WHERE MealID = %s'
    data = (MealType, Date, MealID)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Meal updated!'

# Get meals for user with particular Date
@meals.route('/meals/date/<Date>', methods=['GET'])
def get_mealsWithDate(Date):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM meals WHERE Date = %s', (Date,))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Changes a meal based on Date
@meals.route('/meals/date/<Date>', methods=['PUT'])
def put_mealWithDate(Date):
    data = request.json
    current_app.logger.info(data)

    MealType = data['meals_MealType']
    MealID = data['meals_MealID']

    query = 'UPDATE meals SET MealType = %s, MealID = %s WHERE Date = %s'
    data = (MealType, MealID, Date)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Meal updated!'
