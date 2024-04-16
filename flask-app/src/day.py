from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

day = Blueprint('day', __name__)

# Get everthing from day
@day.route('/day', methods=['GET'])
def get_day():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Day')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get everything from a specific day
@day.route('/day/<Date>', methods=['GET'])
def get_day_with_Date(Date):
    cursor = db.get_db().cursor()
    cursor.execute('select * from day where Date = {0}'.format(Date))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

    # Allows user to input new day
@day.route('/day', methods=['POST'])
def add_new_day():
    
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    VeggieGoal = the_data['day_VeggieGoal']
    FruitGoal = the_data['day_FruitGoal']
    FatsGoal = the_data['day_FatsGoal']
    ProteinGoal = the_data['day_ProteinGoal']
    GrainsGoal = the_data['day_GrainsGoal']
    VeganGoal = the_data['day_VeganGoal']
    VegetarianGoal = the_data['day_VegetarianGoal']
    DairyFreeGoal = the_data['day_DairyFreeGoal']
    GlutenFreeGoal = the_data['day_GlutenFreeGoal']
    LogID = the_data['day_LogID']
    Date = the_data['day_Date']

    # Constructing the query
    query = 'insert into day (VeggieGoal, FruitGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal, VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID, Date) values ("'
    query += VeggieGoal + '", "'
    query += FruitGoal + '", "'
    query += FatsGoal + '", '
    query += ProteinGoal + '", '
    query += GrainsGoal + '", '
    query += VeganGoal + '", '
    query += VegetarianGoal + '", '
    query += DairyFreeGoal + '", '
    query += GlutenFreeGoal + '", '
    query += LogID + '", '
    query += Date + '", '
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Successfully added new day!'

    # Changes a day based on date
@day.route('/day/<Date>', methods=['PUT'])
def put_day_with_date(Date):
    data = request.json
    current_app.logger.info(data)

    VeggieGoal = data['day_MealType']
    FruitsGoal = data['day_Date']
    FatsGoal = data['day_FatsGoal']
    ProteinGoal = data['day_ProteinGoal']
    GrainsGoal = data['day_GrainsGoal']
    VeganGoal = data['day_VeganGoal']
    VegetarianGoal = data['day_VegetarianGoal']
    DairyFreeGoal = data['day_DairyFreeGoal']
    GlutenFreeGoal = data['day_GlutenFreeGoal']
    LogID = data['day_LogID']

    query = 'UPDATE Day SET VeggieGoal = %s, FruitsGoal = %s, FatsGoal = %s, ProteinGoal = %s, GrainsGoal = %s, VeganGoal = %s, VegetarianGoal = %s, DairyFreeGoal = %s, GlutenFreeGoal = %s, LogID = %s, WHERE Date = %s'
    data= (VeggieGoal, FruitsGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal, VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID, Date)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Day updated!'

    # Changes current day
@day.route('/day', methods=['PUT'])
def put_day():
    data = request.json
    current_app.logger.info(data)

    VeggieGoal = data['day_MealType']
    FruitsGoal = data['day_Date']
    FatsGoal = data['day_FatsGoal']
    ProteinGoal = data['day_ProteinGoal']
    GrainsGoal = data['day_GrainsGoal']
    VeganGoal = data['day_VeganGoal']
    VegetarianGoal = data['day_VegetarianGoal']
    DairyFreeGoal = data['day_DairyFreeGoal']
    GlutenFreeGoal = data['day_GlutenFreeGoal']
    LogID = data['day_LogID']
    Date = data['day_Date']

    query = 'UPDATE Day SET VeggieGoal = %s, FruitsGoal = %s, FatsGoal = %s, ProteinGoal = %s, GrainsGoal = %s, VeganGoal = %s, VegetarianGoal = %s, DairyFreeGoal = %s, GlutenFreeGoal = %s, LogID = %s, Date = %s'
    data= (VeggieGoal, FruitsGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal, VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID, Date)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Current day updated!'

@day.route('/day/<Date>', methods=['DELETE'])
def delete_recipe(Date):
    # Constructing the DELETE query
    query = 'DELETE FROM Day WHERE Date = {}'.format(Date)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Goal from Day {} deleted successfully!'.format(Date)

@day.route('/day/<Username>', methods=['POST'])
def post_username(Username):
    query = 'insert into User (Username) values ("'
    query += Username + '")'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    query = 'insert into Blog (Username) values ("'
    query += Username + '")'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    
    return 'Success!'

@day.route('/day/Username', methods=['GET'])
def get_username():
    query = '''
        SELECT *
        FROM Blog
    '''

    cursor = db.get_db().cursor()
    cursor.execute(query)

    column_headers = [x[0] for x in cursor.description]
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    for row in theData:
        json_data.append(dict(zip(column_headers, row)))
    
    return jsonify(json_data)