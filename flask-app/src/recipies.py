from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


recipies = Blueprint('recipies', __name__)

# Get all customers from the DB
@recipies.route('/recipies', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select id, company, last_name,\
        first_name, job_title, business_phone from customers')
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
@recipies.route('/recipies/<recipieId>', methods=['GET'])
def get_customer(recipieId):
    cursor = db.get_db().cursor()
    cursor.execute('select * from customers where id = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response