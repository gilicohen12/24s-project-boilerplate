from flask import Blueprint, request, jsonify, make_response, current_app
from src import db

posts = Blueprint('posts', __name__)

# Get all the posts from blog ID
@posts.route('/posts/<id>', methods=['GET'])
def get_posts_detail(id):
    query = 'SELECT * FROM posts WHERE BlogID = %s'
    current_app.logger.info(query)
    
    cursor = db.get_db().cursor()
    cursor.execute(query, (id,))
    column_headers = [x[0] for x in cursor.description]
    json_data = [dict(zip(column_headers, row)) for row in cursor.fetchall()]
    
    return jsonify(json_data)

# Adding a post to the blog
@posts.route('/posts/<id>', methods=['POST'])
def add_new_posts(id):
    # collecting data from the request object 
    the_data = request.json
    current_app.logger.info(the_data)

    #extracting the variable
    BlogID = the_data['posts_BlogID']
    Content = the_data['posts_Content']
    Title = the_data['posts_Title']

    # Constructing the query
    query = 'INSERT INTO posts (posts_BlogID, posts_Content, posts_Title) VALUES (%s, %s, %s)'
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

    BlogID = data['posts_BlogID']
    Content = data['posts_BlogID']
    Title = data['posts_Title']

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