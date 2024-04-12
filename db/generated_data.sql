SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

USE MunchMasterPro;

DROP TABLE IF EXISTS `User`;
INSERT INTO 'User' (Username) 
VALUES 
('sgibling0'),
('mbertelet1'),
('lgealy2'),
('scoskerry3'),
('egeck4'),
('bmccaskell5'),
('gpevreal6'),
('ustandring7'),
('collcott8'),
('fvido9'),
('mcrickmera'),
('istilingb'),
('tmarsiec'),
('ksteaned'),
('dpolamontaynee'),
('atuffinf'),
('iharriotg'),
('mgaugeh'),
('brulteni'),
('nmcauslanj'),
('rarndtsenk'),
('iluxmoorel'),
('dpykem'),
('bheintzen'),
('bkleinhauso'),
('ptorettap'),
('ccunniffeq'),
('mbartolomuccir'),
('hmccolls'),
('ejanut'),
('tshurrocksu'),
('cantalffyv'),
('pfeldererw'),
('asivex'),
('dhurley'),
('ccuerdaz'),
('ecluley10'),
('aokell11'),
('kmewton12'),
('lhurring13'),
('cmcgruar14'),
('pconstantine15'),
('bakid16'),
('kbiaggioni17'),
('keskell18'),
('cinger19'),
('lmayhou1a'),
('cneve1b'),
('hwadham1c'),
('bickovits1d');


DROP TABLE IF EXISTS `Blog`;
INSERT INTO 'Blog' (Username, BlogId) 
VALUES 
('sgibling0', 1),
('mbertelet1', 2),
('lgealy2', 3),
('scoskerry3', 4),
('egeck4', 5),
('bmccaskell5', 6),
('gpevreal6', 7),
('ustandring7', 8),
('collcott8', 9),
('fvido9', 10),
('mcrickmera', 11),
('istilingb', 12),
('tmarsiec', 13),
('ksteaned', 14),
('dpolamontaynee', 15),
('atuffinf', 16),
('iharriotg', 17),
('mgaugeh', 18),
('brulteni', 19),
('nmcauslanj', 20),
('rarndtsenk', 21),
('iluxmoorel', 22),
('dpykem', 23),
('bheintzen', 24),
('bkleinhauso', 25),
('ptorettap', 26),
('ccunniffeq', 27),
('mbartolomuccir', 28),
('hmccolls', 29),
('ejanut', 30),
('tshurrocksu', 31),
('cantalffyv', 32),
('pfeldererw', 33),
('asivex', 34),
('dhurley', 35),
('ccuerdaz', 36),
('ecluley10', 37),
('aokell11', 38),
('kmewton12', 39),
('lhurring13', 40),
('cmcgruar14', 41),
('pconstantine15', 42),
('bakid16', 43),
('kbiaggioni17', 44),
('keskell18', 45),
('cinger19', 46),
('lmayhou1a', 47),
('cneve1b', 48),
('hwadham1c', 49),
('bickovits1d', 50);


DROP TABLE IF EXISTS `Post`;
INSERT INTO 'Post' (Content, BlogId, Title) 
VALUES 
('sgibling0', 1, 'Chocolate chip cookies'),
('mbertelet1', 2, 'Ice cream'),
('lgealy2', 3, 'Banana bread recipe'),
('scoskerry3', 4, 'Healthy smoothie ideas'),
('egeck4', 5, 'Vegetarian dinner recipes'),
('bmccaskell5', 6, 'How to make homemade pasta'),
('gpevreal6', 7, 'Quick breakfast ideas'),
('ustandring7', 8, 'Simple salad recipes'),
('collcott8', 9, 'Delicious sandwich recipes'),
('fvido9', 10, 'Healthy snack options'),
('mcrickmera', 11, 'Favorite comfort foods'),
('istilingb', 12, 'Easy weeknight dinners'),
('tmarsiec', 13, 'Baking tips for beginners'),
('ksteaned', 14, 'Grilling techniques'),
('dpolamontaynee', 15, 'Soup recipes for winter'),
('atuffinf', 16, 'Low-carb meal ideas'),
('iharriotg', 17, 'Holiday baking recipes'),
('mgaugeh', 18, 'Quick and easy desserts'),
('brulteni', 19, 'Family dinner favorites'),
('nmcauslanj', 20, 'Vegan cooking tips'),
('rarndtsenk', 21, 'Traditional Italian recipes'),
('iluxmoorel', 22, 'Asian cuisine exploration'),
('dpykem', 23, 'Classic French dishes'),
('bheintzen', 24, 'Mexican fiesta recipes'),
('bkleinhauso', 25, 'Spanish tapas ideas'),
('ptorettap', 26, 'Mediterranean diet recipes'),
('ccunniffeq', 27, 'Indian curry recipes'),
('mbartolomuccir', 28, 'Middle Eastern delights'),
('hmccolls', 29, 'African cuisine highlights'),
('ejanut', 30, 'Caribbean flavors'),
('tshurrocksu', 31, 'South American specialties'),
('cantalffyv', 32, 'Australian dishes to try'),
('pfeldererw', 33, 'Scandinavian comfort foods'),
('asivex', 34, 'Quick and tasty stir-fry recipes'),
('dhurley', 35, 'Healthy Mediterranean appetizers'),
('ccuerdaz', 36, 'Hearty German meals'),
('ecluley10', 37, 'Irish cuisine favorites'),
('aokell11', 38, 'British classics revisited'),
('kmewton12', 39, 'Japanese sushi techniques'),
('lhurring13', 40, 'Korean BBQ at home'),
('cmcgruar14', 41, 'Thai street food experience'),
('pconstantine15', 42, 'Chinese dumpling recipes'),
('bakid16', 43, 'Russian cuisine specialties'),
('kbiaggioni17', 44, 'Brazilian BBQ secrets'),
('keskell18', 45, 'Mexican street food guide'),
('cinger19', 46, 'French pastry perfection'),
('lmayhou1a', 47, 'Italian gelato recipes'),
('cneve1b', 48, 'Spanish paella mastery'),
('hwadham1c', 49, 'Greek cuisine delights'),
('bickovits1d', 50, 'Turkish kebab secrets');


DROP TABLE IF EXISTS `Tags`;
INSERT INTO 'Tags' (ContainsNuts, GlutenFree, Vegetarian, DairyFree, ContainsProtein, FatFree, Vegan, TagId) 
VALUES 
(0, 0, 0, 0, 1, 0, 0, 0),
(0, 1, 0, 1, 0, 1, 0, 1),
(0, 1, 1, 0, 1, 1, 0, 2),
(1, 0, 0, 1, 0, 0, 1, 3),
(1, 1, 0, 0, 1, 0, 1, 4),
(1, 0, 1, 1, 0, 1, 1, 5),
(0, 1, 0, 1, 1, 0, 1, 6),
(1, 0, 1, 0, 0, 1, 1, 7),
(0, 1, 1, 1, 1, 0, 0, 8),
(1, 1, 1, 1, 1, 1, 1, 9),
(0, 0, 1, 1, 0, 0, 0, 10),
(1, 0, 0, 1, 1, 1, 0, 11),
(1, 1, 1, 0, 0, 0, 1, 12),
(0, 1, 0, 0, 1, 0, 0, 13),
(1, 0, 1, 1, 0, 1, 1, 14),
(0, 1, 0, 1, 1, 0, 1, 15),
(0, 0, 1, 0, 0, 1, 1, 16),
(1, 1, 1, 0, 1, 0, 0, 17),
(0, 0, 0, 1, 1, 1, 0, 18),
(1, 1, 0, 1, 0, 0, 1, 19),
(0, 1, 1, 1, 1, 1, 1, 20),
(1, 0, 0, 0, 0, 1, 0, 21),
(1, 1, 0, 0, 1, 1, 0, 22),
(0, 0, 1, 0, 1, 0, 1, 23),
(1, 0, 1, 0, 0, 1, 1, 24),
(1, 1, 1, 1, 1, 0, 0, 25),
(0, 1, 0, 1, 0, 1, 0, 26),
(0, 1, 1, 1, 0, 0, 1, 27),
(0, 1, 0, 1, 1, 0, 1, 28),
(1, 0, 1, 1, 0, 1, 1, 29),
(1, 1, 0, 0, 1, 0, 0, 30),
(0, 1, 0, 0, 0, 1, 0, 31),
(1, 0, 1, 0, 1, 1, 1, 32),
(0, 1, 1, 1, 0, 0, 0, 33),
(1, 1, 1, 0, 1, 0, 1, 34),
(0, 0, 1, 1, 0, 1, 1, 35),
(1, 0, 0, 1, 1, 0, 1, 36),
(0, 0, 1, 0, 1, 1, 0, 37),
(1, 1, 0, 0, 0, 0, 1, 38),
(0, 1, 1, 0, 1, 1, 0, 39),
(1, 0, 0, 1, 0, 0, 1, 40),
(1, 1, 1, 1, 1, 1, 1, 41),
(0, 0, 0, 1, 0, 1, 0, 42),
(0, 0, 0, 0, 1, 0, 1, 43),
(0, 1, 0, 1, 1, 1, 0, 44),
(1, 0, 1, 0, 0, 0, 0, 45),
(1, 1, 0, 1, 1, 1, 1, 46),
(0, 0, 1, 1, 0, 0, 1, 47),
(1, 1, 1, 0, 1, 0, 0, 48),
(0, 1, 0, 0, 1, 1, 0, 49),
(1, 0, 1, 1, 0, 0, 1, 50);


DROP TABLE IF EXISTS `Recipe`;
INSERT INTO 'Recipe' (Name, Story, Directions, TagId, BlogID, Origin, RecipeID) 
VALUES 
('Cookie dough', 'This was my grandmothers recipe that is 40 years old', 'Mix all ingredients and enjoy', 0, 0, 'My grandma', 0),
('Ice cream', 'Homemade gelato from my Italy trip!', 'Add ingredients, fix, freeze', 1, 1, 'Italy', 1),
('Chocolate Cake', 'Family favorite for birthdays!', 'Mix dry ingredients, add wet, bake', 2, 2, 'Family Tradition', 2),
('Vegetable Stir-Fry', 'Quick and healthy dinner option', 'Chop vegetables, stir-fry with sauce', 3, 3, 'Personal Creation', 3),
('Spaghetti Carbonara', 'Classic Italian pasta dish', 'Cook pasta, fry bacon, mix with eggs and cheese', 4, 4, 'Italian Cuisine', 4),
('Avocado Toast', 'Simple and delicious breakfast', 'Toast bread, smash avocado, add toppings', 5, 5, 'Healthy Eating', 5),
('Chicken Curry', 'Warm and comforting meal', 'Cook chicken, simmer with curry sauce, serve with rice', 6, 6, 'Indian Cuisine', 6),
('Berry Smoothie', 'Refreshing summer drink', 'Blend berries, yogurt, and ice', 7, 7, 'Summer Treats', 7),
('Grilled Cheese Sandwich', 'Childhood favorite comfort food', 'Butter bread, add cheese, grill until golden', 8, 8, 'Comfort Food', 8),
('Caesar Salad', 'Classic salad with a tangy dressing', 'Toss lettuce with dressing, add croutons and cheese', 9, 9, 'Salad Lover', 9),
('Margarita Pizza', 'Simple yet delicious pizza', 'Spread sauce on dough, add cheese and basil, bake', 10, 10, 'Italian Cuisine', 10),
('Omelette', 'Versatile breakfast option', 'Whisk eggs, pour into pan, add desired fillings, fold', 11, 11, 'Breakfast Classics', 11),
('Peanut Butter Smoothie', 'Protein-packed drink for post-workout', 'Blend peanut butter, banana, and protein powder with milk', 12, 12, 'Fitness Fuel', 12),
('Beef Tacos', 'Tasty Mexican street food', 'Cook beef with spices, assemble in tortillas with toppings', 13, 13, 'Mexican Cuisine', 13),
('Caprese Salad', 'Fresh and simple Italian salad', 'Layer tomato, mozzarella, and basil, drizzle with olive oil', 14, 14, 'Italian Delight', 14),
('Sushi Rolls', 'Homemade sushi for sushi lovers', 'Spread rice on seaweed, add fillings, roll tightly, slice', 15, 15, 'Japanese Cuisine', 15),
('Quinoa Salad', 'Healthy and nutritious meal option', 'Cook quinoa, mix with vegetables and dressing', 16, 16, 'Healthy Eating', 16),
('Chicken Alfredo Pasta', 'Creamy pasta dish loved by all', 'Cook pasta, sauté chicken, mix with Alfredo sauce', 17, 17, 'Italian Classic', 17),
('Fruit Salad', 'Colorful and refreshing summer salad', 'Dice assorted fruits, toss with honey-lime dressing', 18, 18, 'Summer Delights', 18),
('Tomato Soup', 'Comforting soup for chilly evenings', 'Sauté onions, add tomatoes and broth, blend until smooth', 19, 19, 'Comfort Food', 19),
('Pancakes', 'Fluffy breakfast pancakes', 'Mix batter, pour onto griddle, flip when bubbles form', 20, 20, 'Breakfast Classics', 20),
('Greek Salad', 'Healthy Mediterranean salad', 'Toss cucumbers, tomatoes, olives, and feta with vinaigrette', 21, 21, 'Mediterranean Cuisine', 21),
('Shrimp Scampi', 'Buttery shrimp pasta dish', 'Sauté shrimp in garlic butter, toss with pasta and parsley', 22, 22, 'Italian Inspired', 22),
('Green Smoothie', 'Healthy drink packed with greens', 'Blend spinach, banana, and pineapple with coconut water', 23, 23, 'Healthy Living', 23),
('Beef Stew', 'Hearty and warming stew for cold days', 'Brown beef, add vegetables, simmer in broth until tender', 24, 24, 'Comfort Food', 24),
('Tiramisu', 'Classic Italian dessert with coffee flavor', 'Layer ladyfingers with mascarpone mixture, dust with cocoa', 25, 25, 'Italian Delicacy', 25),
('Eggplant Parmesan', 'Satisfying vegetarian dish', 'Bread and fry eggplant slices, layer with sauce and cheese, bake', 26, 26, 'Italian Inspired', 26),
('Chicken Salad Sandwich', 'Light and flavorful sandwich filling', 'Mix shredded chicken with mayonnaise, celery, and seasonings', 27, 27, 'Lunch Classics', 27),
('Beef Burgers', 'Juicy homemade burgers', 'Form patties, grill to desired doneness, assemble with toppings', 28, 28, 'Backyard BBQ', 28),
('Ratatouille', 'Colorful French vegetable stew', 'Sauté eggplant, zucchini, peppers, and tomatoes with herbs', 29, 29, 'French Cuisine', 29),
('Mushroom Risotto', 'Creamy and savory Italian rice dish', 'Sauté mushrooms, add Arborio rice and broth, stir until creamy', 30, 30, 'Italian Delight', 30),
('Pesto Pasta', 'Bright and flavorful pasta dish', 'Blend basil, garlic, pine nuts, and Parmesan with olive oil, toss with pasta', 31, 31, 'Italian Inspired', 31),
('Chicken Noodle Soup', 'Classic comfort food for sick days', 'Sauté vegetables, add chicken and broth, simmer with noodles', 32, 32, 'Comfort Classics', 32),
('Blueberry Muffins', 'Delicious homemade muffins bursting with blueberries', 'Mix dry and wet ingredients, fold in blueberries, bake until golden', 33, 33, 'Baking Adventures', 33),
('Fish Tacos', 'Fresh and flavorful seafood tacos', 'Grill fish, assemble in tortillas with slaw and sauce', 34, 34, 'Seafood Sensation', 34),
('Stuffed Bell Peppers', 'Colorful and satisfying stuffed peppers', 'Cook filling, stuff into peppers, bake until tender', 35, 35, 'Vegetarian Delight', 35),
('Lemon Chicken', 'Bright and tangy chicken dish', 'Sauté chicken, add lemon juice, garlic, and herbs, simmer until cooked', 36, 36, 'Family Favorite', 36),
('Tuna Salad', 'Classic salad for sandwiches or salads', 'Mix tuna with mayonnaise, celery, and onion, season to taste', 37, 37, 'Lunch Classics', 37),
('Beef Wellington', 'Elegant dish for special occasions', 'Wrap beef fillet in pastry with mushroom duxelles, bake until golden', 38, 38, 'Gourmet Creations', 38),
('Lentil Soup', 'Hearty and healthy soup option', 'Sauté vegetables, add lentils and broth, simmer until tender', 39, 39, 'Vegetarian Delight', 39),
('Rice Pilaf', 'Versatile side dish for any meal', 'Sauté rice in butter, add broth and seasonings, simmer until fluffy', 40, 40, 'Side Dish Staples', 40),
('Fettuccine Alfredo', 'Rich and creamy pasta dish', 'Cook pasta, toss with Alfredo sauce, garnish with parsley and Parmesan', 41, 41, 'Italian Classic', 41),
('Banana Bread', 'Classic homemade treat', 'Mix ingredients, pour into loaf pan, bake until golden and fragrant', 42, 42, 'Baking Adventures', 42),
('Mango Salsa', 'Fresh and fruity salsa for dipping or topping', 'Dice mango, onion, and peppers, toss with lime juice and cilantro', 43, 43, 'Tropical Treats', 43),
('Beef Stir-Fry', 'Quick and flavorful Asian-inspired dish', 'Sauté beef with vegetables and sauce, serve over rice or noodles', 44, 44, 'Asian Delights', 44),
('Lemon Bars', 'Sweet and tangy dessert bars', 'Mix ingredients, pour into pan, bake until set, dust with powdered sugar', 45, 45, 'Baking Adventures', 45),
('Cauliflower Rice', 'Low-carb alternative to rice', 'Pulse cauliflower in food processor, sauté until tender', 46, 46, 'Healthy Living', 46),
('Pulled Pork Sandwiches', 'Slow-cooked pork with tangy barbecue sauce', 'Cook pork until tender, shred, mix with sauce, serve on buns', 47, 47, 'Southern Comfort', 47),
('Chicken Fajitas', 'Flavorful Mexican-inspired dish', 'Sauté chicken with peppers and onions, serve with tortillas and toppings', 48, 48, 'Mexican Cuisine', 48),
('Pesto Chicken Pasta', 'Simple and delicious pasta dish', 'Cook pasta, sauté chicken, mix with pesto sauce and tomatoes', 49, 49, 'Italian Inspired', 49),
('Apple Pie', 'All-American classic dessert', 'Mix ingredients, pour into pie crust, bake until golden and bubbly', 50, 50, 'Homemade Treats', 50);


DROP TABLE IF EXISTS `Log`;
INSERT INTO 'Log' (LogID, Username) 
VALUES 
(0, 'sgibling0'), (1, 'mbertelet1'), (2, 'lgealy2'), (3, 'scoskerry3'), (4, 'egeck4'), 
(5, 'bmccaskell5'), (6, 'gpevreal6'), (7, 'ustandring7'), (8, 'collcott8'), (9, 'fvido9'), 
(10, 'mcrickmera'), (11, 'istilingb'), (12, 'tmarsiec'), (13, 'ksteaned'), (14, 'dpolamontaynee'), 
(15, 'atuffinf'), (16, 'iharriotg'), (17, 'mgaugeh'), (18, 'brulteni'), (19, 'nmcauslanj'), 
(20, 'rarndtsenk'), (21, 'iluxmoorel'), (22, 'dpykem'), (23, 'bheintzen'), (24, 'bkleinhauso'), 
(25, 'ptorettap'), (26, 'ccunniffeq'), (27, 'mbartolomuccir'), (28, 'hmccolls'), (29, 'ejanut'), 
(30, 'tshurrocksu'), (31, 'cantalffyv'), (32, 'pfeldererw'), (33, 'asivex'), (34, 'dhurley'), 
(35, 'ccuerdaz'), (36, 'ecluley10'), (37, 'aokell11'), (38, 'kmewton12'), (39, 'lhurring13'), 
(40, 'cmcgruar14'), (41, 'pconstantine15'), (42, 'bakid16'), (43, 'kbiaggioni17'), (44, 'keskell18'), 
(45, 'cinger19'), (46, 'lmayhou1a'), (47, 'cneve1b'), (48, 'hwadham1c'), (49, 'bickovits1d');



DROP TABLE IF EXISTS `Day`;
INSERT INTO 'Day' (VeggieGoal, FruitGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal, VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID, Date)
VALUES
(0, 1, 5, 6, 7, 0, 1, 1, 1, 0, '2024-04-18'),
(1, 0, 7, 3, 2, 1, 1, 0, 1, 1, '2024-04-04'),
(0, 1, 9, 4, 3, 0, 1, 0, 0, 2, '2024-04-21'),
(1, 0, 7, 5, 2, 1, 0, 1, 1, 3, '2024-04-11'),
(0, 1, 4, 2, 6, 0, 1, 0, 0, 4, '2024-04-14'),
(1, 0, 8, 7, 9, 1, 1, 1, 1, 5, '2024-04-03'),
(0, 1, 3, 5, 7, 0, 1, 0, 0, 6, '2024-04-27'),
(1, 0, 6, 3, 8, 1, 1, 1, 1, 7, '2024-04-30'),
(0, 1, 5, 4, 2, 0, 1, 0, 1, 8, '2024-04-06'),
(1, 0, 8, 6, 3, 1, 1, 1, 0, 9, '2024-04-15'),
(0, 1, 5, 2, 5, 0, 0, 0, 1, 10, '2024-04-02'),
(1, 0, 6, 7, 4, 1, 1, 1, 0, 11, '2024-04-17'),
(0, 1, 4, 5, 7, 0, 0, 1, 1, 12, '2024-04-19'),
(1, 0, 7, 3, 2, 1, 1, 1, 1, 13, '2024-04-26'),
(0, 1, 6, 6, 4, 0, 0, 1, 0, 14, '2024-04-24'),
(1, 0, 8, 4, 6, 1, 1, 1, 1, 15, '2024-04-23'),
(0, 1, 6, 3, 7, 0, 1, 0, 1, 16, '2024-04-01'),
(1, 0, 9, 5, 8, 1, 1, 1, 0, 17, '2024-04-10'),
(0, 1, 4, 6, 3, 0, 1, 1, 0, 18, '2024-04-28'),
(1, 0, 7, 2, 5, 1, 1, 1, 1, 19, '2024-04-25'),
(0, 1, 5, 5, 9, 0, 0, 0, 1, 20, '2024-04-20'),
(1, 0, 8, 3, 6, 1, 1, 1, 0, 21, '2024-04-22'),
(0, 1, 7, 4, 2, 0, 1, 0, 1, 22, '2024-04-29'),
(1, 0, 6, 7, 3, 1, 1, 1, 1, 23, '2024-04-09'),
(0, 1, 8, 2, 4, 0, 0, 1, 0, 24, '2024-04-07'),
(1, 0, 5, 6, 7, 1, 1, 0, 1, 25, '2024-04-12'),
(0, 1, 6, 3, 2, 0, 1, 0, 0, 26, '2024-04-16'),
(1, 0, 8, 5, 9, 1, 1, 1, 1, 27, '2024-04-05'),
(0, 1, 5, 4, 6, 0, 0, 0, 1, 28, '2024-04-13'),
(1, 0, 7, 2, 3, 1, 1, 1, 0, 29, '2024-04-08'),
(0, 1, 9, 7, 4, 0, 1, 1, 0, 30, '2024-04-01'),
(1, 0, 7, 6, 5, 1, 1, 1, 1, 31, '2024-04-14'),
(0, 1, 5, 3, 8, 0, 1, 0, 0, 32, '2024-04-30'),
(1, 0, 8, 5, 2, 1, 1, 1, 1, 33, '2024-04-11'),
(0, 1, 4, 4, 7, 0, 1, 0, 1, 34, '2024-04-17'),
(1, 0, 7, 3, 3, 1, 1, 1, 0, 35, '2024-04-29'),
(0, 1, 6, 6, 4, 0, 0, 1, 1, 36, '2024-04-20'),
(1, 0, 8, 4, 5, 1, 1, 1, 0, 37, '2024-04-24'),
(0, 1, 6, 3, 2, 0, 1, 0, 1, 38, '2024-04-28'),
(1, 0, 9, 6, 9, 1, 1, 1, 1, 39, '2024-04-06'),
(0, 1, 8, 2, 3, 0, 1, 0, 0, 40, '2024-04-25'),
(1, 0, 5, 5, 6, 1, 1, 1, 1, 41, '2024-04-23'),
(0, 1, 7, 4, 7, 0, 0, 1, 0, 42, '2024-04-08'),
(1, 0, 6, 7, 4, 1, 1, 1, 1, 43, '2024-04-05'),
(0, 1, 8, 3, 5, 0, 1, 0, 1, 44, '2024-04-18'),
(1, 0, 6, 6, 2, 1, 1, 0, 0, 45, '2024-04-10'),
(0, 1, 8, 5, 3, 0, 0, 0, 1, 46, '2024-04-09'),
(1, 0, 5, 6, 8, 1, 1, 1, 0, 47, '2024-04-27'),
(0, 1, 7, 3, 4, 0, 1, 1, 1, 48, '2024-04-12'),
(1, 0, 6, 4, 9, 1, 1, 1, 0, 49, '2024-04-07');


DROP TABLE IF EXISTS `Meal`;
INSERT INTO 'Meal'(MealType, Date, MealID)
VALUES
('Breakfast', '2024-04-18', 0),
('Lunch', '2024-04-04', 1),
('Lunch', '2024-04-21', 2),
('Dinner', '2024-04-11', 3),
('Dessert', '2024-04-14', 4),
('Snack', '2024-04-03', 5),
('Breakfast', '2024-04-27', 6),
('Lunch', '2024-04-30', 7),
('Lunch', '2024-04-06', 8),
('Dinner', '2024-04-15', 9),
('Dessert', '2024-04-02', 10),
('Snack', '2024-04-17', 11),
('Breakfast', '2024-04-19', 12),
('Lunch', '2024-04-26', 13),
('Lunch', '2024-04-24', 14),
('Dinner', '2024-04-23', 15),
('Dessert', '2024-04-01', 16),
('Snack', '2024-04-10', 17),
('Breakfast', '2024-04-28', 18),
('Lunch', '2024-04-25', 19),
('Lunch', '2024-04-20', 20),
('Dinner', '2024-04-22', 21),
('Dessert', '2024-04-29', 22),
('Snack', '2024-04-09', 23),
('Breakfast', '2024-04-07', 24),
('Lunch', '2024-04-12', 25),
('Lunch', '2024-04-16', 26),
('Dinner', '2024-04-05', 27),
('Dessert', '2024-04-13', 28),
('Snack', '2024-04-08', 29),
('Breakfast', '2024-04-01', 30),
('Lunch', '2024-04-14', 31),
('Lunch', '2024-04-30', 32),
('Dinner', '2024-04-11', 33),
('Dessert', '2024-04-17', 34),
('Snack', '2024-04-29', 35),
('Breakfast', '2024-04-20', 36),
('Lunch', '2024-04-24', 37),
('Lunch', '2024-04-28', 38),
('Dinner', '2024-04-06', 39),
('Dessert', '2024-04-25', 40),
('Snack', '2024-04-23', 41),
('Breakfast', '2024-04-08', 42),
('Lunch', '2024-04-05', 43),
('Lunch', '2024-04-18', 44),
('Dinner', '2024-04-10', 45),
('Dessert', '2024-04-09', 46),
('Snack', '2024-04-27', 47),
('Breakfast', '2024-04-12', 48),
('Lunch', '2024-04-07', 49);


DROP TABLE IF EXISTS `FoodItems`;
INSERT INTO 'FoodItems' (ServingCount, MealType, MealID, Ing_Name, Food_Name)
VALUES
(8, 'Breakfast', 0, 'Eggs', 'Scrambled eggs'),
(2, 'Lunch', 1, 'Tomato', 'Caprese salad'),
(6, 'Dinner', 2, 'Chicken', 'Grilled chicken breast'),
(1, 'Dessert', 3, 'Banana', 'Banana split'),
(4, 'Snack', 4, 'Peanut Butter', 'Peanut butter sandwich'),
(9, 'Breakfast', 5, 'Oats', 'Oatmeal'),
(3, 'Lunch', 6, 'Lettuce', 'Chicken Caesar salad'),
(7, 'Dinner', 7, 'Beef', 'Beef stir-fry'),
(5, 'Dessert', 8, 'Chocolate', 'Chocolate cake'),
(2, 'Snack', 9, 'Almonds', 'Almond trail mix'),
(4, 'Breakfast', 10, 'Yogurt', 'Yogurt parfait'),
(6, 'Lunch', 11, 'Avocado', 'Avocado toast'),
(1, 'Dinner', 12, 'Salmon', 'Grilled salmon'),
(8, 'Dessert', 13, 'Strawberries', 'Strawberry shortcake'),
(3, 'Snack', 14, 'Carrots', 'Carrot sticks'),
(5, 'Breakfast', 15, 'Bacon', 'Bacon and eggs'),
(7, 'Lunch', 16, 'Turkey', 'Turkey sandwich'),
(2, 'Dinner', 17, 'Pasta', 'Spaghetti carbonara'),
(4, 'Dessert', 18, 'Vanilla', 'Vanilla ice cream'),
(9, 'Snack', 19, 'Apple', 'Apple slices'),
(1, 'Breakfast', 20, 'Cereal', 'Cereal with milk'),
(6, 'Lunch', 21, 'Spinach', 'Spinach salad'),
(3, 'Dinner', 22, 'Rice', 'Fried rice'),
(5, 'Dessert', 23, 'Caramel', 'Caramel popcorn'),
(8, 'Snack', 24, 'Grapes', 'Grape bunch'),
(2, 'Breakfast', 25, 'Bagel', 'Bagel with cream cheese'),
(7, 'Lunch', 26, 'Ham', 'Ham and cheese sandwich'),
(4, 'Dinner', 27, 'Pizza dough', 'Homemade pizza'),
(1, 'Dessert', 28, 'Lemon', 'Lemon sorbet'),
(9, 'Snack', 29, 'Celery', 'Celery sticks'),
(3, 'Breakfast', 30, 'Pancake mix', 'Pancakes'),
(6, 'Lunch', 31, 'Tuna', 'Tuna salad'),
(1, 'Dinner', 32, 'Shrimp', 'Grilled shrimp'),
(5, 'Dessert', 33, 'Oreo cookies', 'Oreo milkshake'),
(8, 'Snack', 34, 'Blueberries', 'Blueberry muffin'),
(2, 'Breakfast', 35, 'Croissant', 'Butter croissant'),
(7, 'Lunch', 36, 'Cucumber', 'Cucumber sandwich'),
(4, 'Dinner', 37, 'Potato', 'Mashed potatoes'),
(1, 'Dessert', 38, 'Peach', 'Peach cobbler'),
(9, 'Snack', 39, 'Orange', 'Orange slices'),
(3, 'Breakfast', 40, 'Baguette', 'French toast'),
(6, 'Lunch', 41, 'Broccoli', 'Broccoli soup'),
(2, 'Dinner', 42, 'Lamb', 'Roasted lamb chops'),
(5, 'Dessert', 43, 'Chocolate chips', 'Chocolate chip cookies'),
(8, 'Snack', 44, 'Strawberries', 'Strawberry yogurt'),
(4, 'Breakfast', 45, 'Biscuits', 'Biscuits and gravy'),
(7, 'Lunch', 46, 'Turkey', 'Turkey wrap'),
(1, 'Dinner', 47, 'Steak', 'Grilled steak'),
(5, 'Dessert', 48, 'Apple', 'Apple pie'),
(9, 'Snack', 49, 'Mixed nuts', 'Trail mix');


DROP TABLE IF EXISTS `Ingredients`;
INSERT INTO 'Ingredients' (Veggie, Fruit, Fats, Protein, Grains, TagId, FoodItem, Ing_Name)
VALUES
(0, 1, 3, 7, 5, 0, 'Eggs', 'Scrambled eggs'),
(1, 0, 8, 2, 9, 1, 'Tomato', 'Caprese salad'),
(0, 1, 6, 4, 7, 2, 'Chicken', 'Grilled chicken breast'),
(1, 0, 1, 3, 8, 3, 'Banana', 'Banana split'),
(1, 0, 9, 7, 2, 4, 'Peanut Butter', 'Peanut butter sandwich'),
(0, 1, 0, 5, 3, 5, 'Oats', 'Oatmeal'),
(1, 0, 4, 1, 6, 6, 'Lettuce', 'Chicken Caesar salad'),
(1, 0, 2, 8, 0, 7, 'Beef', 'Beef stir-fry'),
(0, 1, 7, 2, 4, 8, 'Chocolate', 'Chocolate cake'),
(1, 0, 1, 4, 5, 9, 'Almonds', 'Almond trail mix'),
(0, 1, 10, 2, 6, 10, 'Yogurt', 'Yogurt parfait'),
(1, 0, 6, 5, 3, 11, 'Avocado', 'Avocado toast'),
(0, 1, 3, 9, 8, 12, 'Salmon', 'Grilled salmon'),
(0, 1, 8, 3, 4, 13, 'Strawberries', 'Strawberry shortcake'),
(1, 0, 5, 1, 7, 14, 'Carrots', 'Carrot sticks'),
(0, 1, 2, 4, 6, 15, 'Bacon', 'Bacon and eggs'),
(0, 1, 7, 7, 5, 16, 'Turkey', 'Turkey sandwich'),
(1, 0, 3, 3, 9, 17, 'Pasta', 'Spaghetti carbonara'),
(0, 1, 6, 8, 2, 18, 'Vanilla', 'Vanilla ice cream'),
(1, 0, 1, 4, 4, 19, 'Apple', 'Apple slices'),
(0, 1, 8, 6, 6, 20, 'Cereal', 'Cereal with milk'),
(1, 0, 6, 4, 7, 21, 'Spinach', 'Spinach salad'),
(0, 1, 3, 9, 8, 22, 'Rice', 'Fried rice'),
(1, 0, 8, 3, 4, 23, 'Caramel', 'Caramel popcorn'),
(0, 1, 1, 4, 4, 24, 'Grapes', 'Grape bunch'),
(1, 0, 9, 7, 2, 25, 'Bagel', 'Bagel with cream cheese'),
(0, 1, 7, 2, 4, 26, 'Ham', 'Ham and cheese sandwich'),
(0, 1, 4, 7, 7, 27, 'Pizza dough', 'Homemade pizza'),
(1, 0, 8, 2, 9, 28, 'Lemon', 'Lemon sorbet'),
(0, 1, 6, 4, 7, 29, 'Celery', 'Celery sticks'),
(0, 1, 3, 9, 8, 30, 'Pancake mix', 'Pancakes'),
(1, 0, 1, 3, 8, 31, 'Tuna salad', 'Tuna'),
(1, 0, 4, 1, 6, 32, 'Grilled shrimp', 'Shrimp'),
(0, 1, 7, 2, 4, 33, 'Oreo milkshake', 'Oreo cookies'),
(1, 0, 8, 3, 4, 34, 'Blueberry muffin', 'Blueberries'),
(0, 1, 1, 4, 5, 35, 'Butter croissant', 'Croissant'),
(1, 0, 9, 7, 2, 36, 'Cucumber sandwich', 'Cucumber'),
(0, 1, 2, 4, 6, 37, 'Mashed potatoes', 'Potato'),
(1, 0, 7, 7, 5, 38, 'Peach cobbler', 'Peach'),
(0, 1, 1, 4, 4, 39, 'Orange slices', 'Orange'),
(1, 0, 9, 7, 2, 40, 'French toast', 'Baguette'),
(0, 1, 3, 7, 5, 41, 'Broccoli soup', 'Broccoli'),
(1, 0, 8, 2, 9, 42, 'Roasted lamb chops', 'Lamb'),
(0, 1, 6, 4, 7, 43, 'Chocolate chip cookies', 'Chocolate chips'),
(1, 0, 1, 3, 8, 44, 'Strawberry yogurt', 'Strawberries'),
(1, 0, 9, 7, 2, 45, 'Biscuits and gravy', 'Biscuits'),
(0, 1, 7, 2, 4, 46, 'Turkey wrap', 'Turkey'),
(1, 0, 4, 1, 6, 47, 'Grilled steak', 'Steak'),
(1, 0, 2, 8, 0, 48, 'Apple pie', 'Apple'),
(0, 1, 7, 2, 4, 49, 'Trail mix', 'Mixed nuts');