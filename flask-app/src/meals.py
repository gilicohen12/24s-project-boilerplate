from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

meal = Blueprint('meal', __name__)

# Get meals for user with particular MealID
@meal.route('/Meal/<MealID>', methods=['GET'])
def get_meal_with_MealID(MealID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Meal WHERE id = %s', (MealID))
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
@meal.route('/Meal', methods=['GET'])
def get_meal():
    cursor = db.get_db().cursor()
    cursor.execute('SELECT * FROM Meal')
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
@meal.route('/Meal', methods=['POST'])
def add_new_meal():
    the_data = request.json
    current_app.logger.info(the_data)

    MealType = the_data['Meal_MealType']
    Date = the_data['Meal_Date']
    MealID = the_data['Meal_MealID']

    query = 'INSERT INTO Meal (MealType, Date, MealID) VALUES (%s, %s, %s)'
    data = (MealType, Date, MealID)
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Successfully added new meal!'

# Changes a meal based on meal id
@meal.route('/Meal/<MealID>', methods=['PUT'])
def put_meal_with_MealID(MealID):
    data = request.json
    current_app.logger.info(data)

    MealType = data['Meal_MealType']
    Date = data['Meal_Date']

    query = 'UPDATE Meal SET MealType = %s, Date = %s WHERE MealID = %s'
    data = (MealType, Date, MealID)

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

# Changes a meal based on Date
@meal.route('/Meal/<Date>', methods=['PUT'])
def put_meal_with_Date(Date):
    data = request.json
    current_app.logger.info(data)

    MealType = data['Meal_MealType']
    MealID = data['Meal_MealID']

    query = 'UPDATE Meal SET MealType = %s, MealID = %s WHERE Date = %s'
    data = (MealType, MealID, Date)

    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()

    return 'Meal updated!'
