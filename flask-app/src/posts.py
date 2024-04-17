from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

posts = Blueprint('posts', __name__)

# Get all the posts from username
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
@posts.route('/posts/<BlogID>', methods=['POST'])
def add_new_posts(BlogID):
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    Content = the_data['Content']
    Title = the_data['Title']

    # Constructing the query
    query = 'INSERT INTO Post (BlogID, Content, Title) VALUES (%s, %s, %s)'
    current_app.logger.info(query)

    # executing and committing the insert statement 
    cursor = db.get_db().cursor()
    cursor.execute(query, (BlogID, Content, Title))
    db.get_db().commit()
    
    return 'A new post was added!'

#Allow the user to edit their blog post
@posts.route('/posts', methods=['PUT'])
def put_posts():
    data = request.json
    current_app.logger.info(data)

    BlogID = data['BlogID']
    Content = data['Content']
    Title = data['Title']

    query = 'UPDATE Post SET Content = %s, Title = %s WHERE BlogID = %s'
    data= (Content, Title, BlogID)
    cursor = db.get_db().cursor()
    cursor.execute(query, data)
    db.get_db().commit()
    return 'Blog post updated!'
    

# Allow the user to delete all blog posts
@posts.route('/posts/<BlogID>', methods=['DELETE'])
def delete_all_posts(BlogID):
    # Constructing the DELETE query
    query = 'DELETE FROM Post WHERE BlogID = {}'.format(BlogID)
    current_app.logger.info(query)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Posts with ID {} deleted successfully!'.format(BlogID)

# Delete a specific post
@posts.route('/posts/delete', methods=['DELETE'])
def delete_this_post():
    # Constructing the DELETE query
    data = request.json
    current_app.logger.info(data)

    Title = data['Title']
    query = 'DELETE FROM Post WHERE Title = %s'
    current_app.logger.info(query, Title)

    # Executing and committing the DELETE statement
    cursor = db.get_db().cursor()
    cursor.execute(query, Title)
    db.get_db().commit()

    return 'Post with Title {} deleted successfully!'.format(Title)