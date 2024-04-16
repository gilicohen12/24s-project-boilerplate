from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

posts = Blueprint('posts', __name__)

# Get all the posts from blog ID
@posts.route('/posts/<username>', methods=['GET'])
def get_posts_username(username):
    # Construct the SQL query with parameterization to avoid SQL injection
    query = 'SELECT BlogID FROM Blog WHERE Username = %s'
    current_app.logger.info(query)

    # Execute the query with the username parameter
    cursor = db.get_db().cursor()
    cursor.execute(query, (username,))

    row = cursor.fetchone()
    BlogID = row[0]
  
    query = 'SELECT * FROM Post WHERE BlogID = %s'
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

# Adding a post to the blog
@posts.route('/posts/<id>', methods=['POST'])
def add_new_posts(id):
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    BlogID = the_data['BlogID']
    Content = the_data['Content']
    Title = the_data['Title']

    # Constructing the query
    query = 'INSERT INTO posts (BlogID, Content, Title) VALUES (%s, %s, %s)'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query, (BlogID, Content, Title))
    db.get_db().commit()
    
    return 'A new post was added!'

#Allow the user to edit their blog post
@posts.route('/posts/<id>', methods=['PUT'])
def put_posts(id):
    data = request.json
    current_app.logger.info(data)

    BlogID = data['BlogID']
    Content = data['BlogID']
    Title = data['Title']

    query = 'UPDATE Posts SET BlogID = %s, Content = %s, Title = %s'
    data= (BlogID, Content, Title)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Blog post updated!'

#Allow the user to delete a blog post
@posts.route('/posts/<id>', methods=['DELETE'])
def delete_recipe_with_postID(id):
    # Constructing the DELETE query
    query = 'DELETE FROM Posts WHERE id = {}'.format(id)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Posts with ID {} deleted successfully!'.format(id)