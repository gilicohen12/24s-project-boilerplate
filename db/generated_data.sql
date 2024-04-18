SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

USE MunchMasterPro;
INSERT INTO User (Username)
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

INSERT INTO Blog (Username)
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


INSERT INTO Post (Content, BlogId, Title)
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


INSERT INTO Tags (ContainsNuts, GlutenFree, Vegetarian, DairyFree, ContainsProtein, FatFree, Vegan)
VALUES
(0, 0, 0, 0, 1, 0, 0),
(0, 1, 0, 1, 0, 1, 0),
(0, 1, 1, 0, 1, 1, 0),
(1, 0, 0, 1, 0, 0, 1),
(1, 1, 0, 0, 1, 0, 1),
(1, 0, 1, 1, 0, 1, 1),
(0, 1, 0, 1, 1, 0, 1),
(1, 0, 1, 0, 0, 1, 1),
(0, 1, 1, 1, 1, 0, 0),
(1, 1, 1, 1, 1, 1, 1),
(0, 0, 1, 1, 0, 0, 0),
(1, 0, 0, 1, 1, 1, 0),
(1, 1, 1, 0, 0, 0, 1),
(0, 1, 0, 0, 1, 0, 0),
(1, 0, 1, 1, 0, 1, 1),
(0, 1, 0, 1, 1, 0, 1),
(0, 0, 1, 0, 0, 1, 1),
(1, 1, 1, 0, 1, 0, 0),
(0, 0, 0, 1, 1, 1, 0),
(1, 1, 0, 1, 0, 0, 1),
(0, 1, 1, 1, 1, 1, 1),
(1, 0, 0, 0, 0, 1, 0),
(1, 1, 0, 0, 1, 1, 0),
(0, 0, 1, 0, 1, 0, 1),
(1, 0, 1, 0, 0, 1, 1),
(1, 1, 1, 1, 1, 0, 0),
(0, 1, 0, 1, 0, 1, 0),
(0, 1, 1, 1, 0, 0, 1),
(0, 1, 0, 1, 1, 0, 1),
(1, 0, 1, 1, 0, 1, 1),
(1, 1, 0, 0, 1, 0, 0),
(0, 1, 0, 0, 0, 1, 0),
(1, 0, 1, 0, 1, 1, 1),
(0, 1, 1, 1, 0, 0, 0),
(1, 1, 1, 0, 1, 0, 1),
(0, 0, 1, 1, 0, 1, 1),
(1, 0, 0, 1, 1, 0, 1),
(0, 0, 1, 0, 1, 1, 0),
(1, 1, 0, 0, 0, 0, 1),
(0, 1, 1, 0, 1, 1, 0),
(1, 0, 0, 1, 0, 0, 1),
(1, 1, 1, 1, 1, 1, 1),
(0, 0, 0, 1, 0, 1, 0),
(0, 0, 0, 0, 1, 0, 1),
(0, 1, 0, 1, 1, 1, 0),
(1, 0, 1, 0, 0, 0, 0),
(1, 1, 0, 1, 1, 1, 1),
(0, 0, 1, 1, 0, 0, 1),
(1, 1, 1, 0, 1, 0, 0),
(0, 1, 0, 0, 1, 1, 0),
(1, 0, 1, 1, 0, 0, 1);


INSERT INTO Recipe (Name, Story, Directions, TagId, BlogID, Origin)
VALUES
('Cookie dough', 'This was my grandmothers recipe that is 40 years old', 'Mix all ingredients and enjoy', 0, 0, 'My grandma'),
('Ice cream', 'Homemade gelato from my Italy trip!', 'Add ingredients, fix, freeze', 1, 1, 'Italy'),
('Chocolate Cake', 'Family favorite for birthdays!', 'Mix dry ingredients, add wet, bake', 2, 2, 'Family Tradition'),
('Vegetable Stir-Fry', 'Quick and healthy dinner option', 'Chop vegetables, stir-fry with sauce', 3, 3, 'Personal Creation'),
('Spaghetti Carbonara', 'Classic Italian pasta dish', 'Cook pasta, fry bacon, mix with eggs and cheese', 4, 4, 'Italian Cuisine'),
('Avocado Toast', 'Simple and delicious breakfast', 'Toast bread, smash avocado, add toppings', 5, 5, 'Healthy Eating'),
('Chicken Curry', 'Warm and comforting meal', 'Cook chicken, simmer with curry sauce, serve with rice', 6, 6, 'Indian Cuisine'),
('Berry Smoothie', 'Refreshing summer drink', 'Blend berries, yogurt, and ice', 7, 7, 'Summer Treats'),
('Grilled Cheese Sandwich', 'Childhood favorite comfort food', 'Butter bread, add cheese, grill until golden', 8, 8, 'Comfort Food'),
('Caesar Salad', 'Classic salad with a tangy dressing', 'Toss lettuce with dressing, add croutons and cheese', 9, 9, 'Salad Lover'),
('Margarita Pizza', 'Simple yet delicious pizza', 'Spread sauce on dough, add cheese and basil, bake', 10, 10, 'Italian Cuisine'),
('Omelette', 'Versatile breakfast option', 'Whisk eggs, pour into pan, add desired fillings, fold', 11, 11, 'Breakfast Classics'),
('Peanut Butter Smoothie', 'Protein-packed drink for post-workout', 'Blend peanut butter, banana, and protein powder with milk', 12, 12, 'Fitness Fuel'),
('Beef Tacos', 'Tasty Mexican street food', 'Cook beef with spices, assemble in tortillas with toppings', 13, 13, 'Mexican Cuisine'),
('Caprese Salad', 'Fresh and simple Italian salad', 'Layer tomato, mozzarella, and basil, drizzle with olive oil', 14, 14, 'Italian Delight'),
('Sushi Rolls', 'Homemade sushi for sushi lovers', 'Spread rice on seaweed, add fillings, roll tightly, slice', 15, 15, 'Japanese Cuisine'),
('Quinoa Salad', 'Healthy and nutritious meal option', 'Cook quinoa, mix with vegetables and dressing', 16, 16, 'Healthy Eating'),
('Chicken Alfredo Pasta', 'Creamy pasta dish loved by all', 'Cook pasta, sauté chicken, mix with Alfredo sauce', 17, 17, 'Italian Classic'),
('Fruit Salad', 'Colorful and refreshing summer salad', 'Dice assorted fruits, toss with honey-lime dressing', 18, 18, 'Summer Delights'),
('Tomato Soup', 'Comforting soup for chilly evenings', 'Sauté onions, add tomatoes and broth, blend until smooth', 19, 19, 'Comfort Food'),
('Pancakes', 'Fluffy breakfast pancakes', 'Mix batter, pour onto griddle, flip when bubbles form', 20, 20, 'Breakfast Classics'),
('Greek Salad', 'Healthy Mediterranean salad', 'Toss cucumbers, tomatoes, olives, and feta with vinaigrette', 21, 21, 'Mediterranean Cuisine'),
('Shrimp Scampi', 'Buttery shrimp pasta dish', 'Sauté shrimp in garlic butter, toss with pasta and parsley', 22, 22, 'Italian Inspired'),
('Green Smoothie', 'Healthy drink packed with greens', 'Blend spinach, banana, and pineapple with coconut water', 23, 23, 'Healthy Living'),
('Beef Stew', 'Hearty and warming stew for cold days', 'Brown beef, add vegetables, simmer in broth until tender', 24, 24, 'Comfort Food'),
('Tiramisu', 'Classic Italian dessert with coffee flavor', 'Layer ladyfingers with mascarpone mixture, dust with cocoa', 25, 25, 'Italian Delicacy'),
('Eggplant Parmesan', 'Satisfying vegetarian dish', 'Bread and fry eggplant slices, layer with sauce and cheese, bake', 26, 26, 'Italian Inspired'),
('Chicken Salad Sandwich', 'Light and flavorful sandwich filling', 'Mix shredded chicken with mayonnaise, celery, and seasonings', 27, 27, 'Lunch Classics'),
('Beef Burgers', 'Juicy homemade burgers', 'Form patties, grill to desired doneness, assemble with toppings', 28, 28, 'Backyard BBQ'),
('Ratatouille', 'Colorful French vegetable stew', 'Sauté eggplant, zucchini, peppers, and tomatoes with herbs', 29, 29, 'French Cuisine'),
('Mushroom Risotto', 'Creamy and savory Italian rice dish', 'Sauté mushrooms, add Arborio rice and broth, stir until creamy', 30, 30, 'Italian Delight'),
('Pesto Pasta', 'Bright and flavorful pasta dish', 'Blend basil, garlic, pine nuts, and Parmesan with olive oil, toss with pasta', 31, 31, 'Italian Inspired'),
('Chicken Noodle Soup', 'Classic comfort food for sick days', 'Sauté vegetables, add chicken and broth, simmer with noodles', 32, 32, 'Comfort Classics'),
('Blueberry Muffins', 'Delicious homemade muffins bursting with blueberries', 'Mix dry and wet ingredients, fold in blueberries, bake until golden', 33, 33, 'Baking Adventures'),
('Fish Tacos', 'Fresh and flavorful seafood tacos', 'Grill fish, assemble in tortillas with slaw and sauce', 34, 34, 'Seafood Sensation'),
('Stuffed Bell Peppers', 'Colorful and satisfying stuffed peppers', 'Cook filling, stuff into peppers, bake until tender', 35, 35, 'Vegetarian Delight'),
('Lemon Chicken', 'Bright and tangy chicken dish', 'Sauté chicken, add lemon juice, garlic, and herbs, simmer until cooked', 36, 36, 'Family Favorite'),
('Tuna Salad', 'Classic salad for sandwiches or salads', 'Mix tuna with mayonnaise, celery, and onion, season to taste', 37, 37, 'Lunch Classics'),
('Beef Wellington', 'Elegant dish for special occasions', 'Wrap beef fillet in pastry with mushroom duxelles, bake until golden', 38, 38, 'Gourmet Creations'),
('Lentil Soup', 'Hearty and healthy soup option', 'Sauté vegetables, add lentils and broth, simmer until tender', 39, 39, 'Vegetarian Delight'),
('Rice Pilaf', 'Versatile side dish for any meal', 'Sauté rice in butter, add broth and seasonings, simmer until fluffy', 40, 40, 'Side Dish Staples'),
('Fettuccine Alfredo', 'Rich and creamy pasta dish', 'Cook pasta, toss with Alfredo sauce, garnish with parsley and Parmesan', 41, 41, 'Italian Classic'),
('Banana Bread', 'Classic homemade treat', 'Mix ingredients, pour into loaf pan, bake until golden and fragrant', 42, 42, 'Baking Adventures'),
('Mango Salsa', 'Fresh and fruity salsa for dipping or topping', 'Dice mango, onion, and peppers, toss with lime juice and cilantro', 43, 43, 'Tropical Treats'),
('Beef Stir-Fry', 'Quick and flavorful Asian-inspired dish', 'Sauté beef with vegetables and sauce, serve over rice or noodles', 44, 44, 'Asian Delights'),
('Lemon Bars', 'Sweet and tangy dessert bars', 'Mix ingredients, pour into pan, bake until set, dust with powdered sugar', 45, 45, 'Baking Adventures'),
('Cauliflower Rice', 'Low-carb alternative to rice', 'Pulse cauliflower in food processor, sauté until tender', 46, 46, 'Healthy Living'),
('Pulled Pork Sandwiches', 'Slow-cooked pork with tangy barbecue sauce', 'Cook pork until tender, shred, mix with sauce, serve on buns', 47, 47, 'Southern Comfort'),
('Chicken Fajitas', 'Flavorful Mexican-inspired dish', 'Sauté chicken with peppers and onions, serve with tortillas and toppings', 48, 48, 'Mexican Cuisine'),
('Pesto Chicken Pasta', 'Simple and delicious pasta dish', 'Cook pasta, sauté chicken, mix with pesto sauce and tomatoes', 49, 49, 'Italian Inspired'),
('Apple Pie', 'All-American classic dessert', 'Mix ingredients, pour into pie crust, bake until golden and bubbly', 50, 50, 'Homemade Treats');


INSERT INTO Log (Username)
VALUES
('sgibling0'), ('mbertelet1'), ('lgealy2'), ('scoskerry3'), ('egeck4'),
('bmccaskell5'), ('gpevreal6'), ('ustandring7'), ('collcott8'), ('fvido9'),
('mcrickmera'), ('istilingb'), ('tmarsiec'), ('ksteaned'), ('dpolamontaynee'),
('atuffinf'), ('iharriotg'), ('mgaugeh'), ('brulteni'), ('nmcauslanj'),
('rarndtsenk'), ('iluxmoorel'), ('dpykem'), ('bheintzen'), ('bkleinhauso'),
('ptorettap'), ('ccunniffeq'), ('mbartolomuccir'), ('hmccolls'), ('ejanut'),
('tshurrocksu'), ('cantalffyv'), ('pfeldererw'), ('asivex'), ('dhurley'),
('ccuerdaz'), ('ecluley10'), ('aokell11'), ('kmewton12'), ('lhurring13'),
('cmcgruar14'), ('pconstantine15'), ('bakid16'), ('kbiaggioni17'), ('keskell18'),
('cinger19'), ('lmayhou1a'), ('cneve1b'), ('hwadham1c'), ('bickovits1d');



INSERT INTO Day (VeggieGoal, FruitGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal, VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID, Date)
VALUES
(0, 1, 5, 6, 7, 0, 1, 1, 1, 0, '2023-04-18'),
(1, 0, 7, 3, 2, 1, 1, 0, 1, 1, '2023-04-04'),
(0, 1, 9, 4, 3, 0, 1, 0, 0, 2, '2023-04-21'),
(1, 0, 7, 5, 2, 1, 0, 1, 1, 3, '2024-03-11'),
(0, 1, 4, 2, 6, 0, 1, 0, 0, 4, '2024-04-14'),
(1, 0, 8, 7, 9, 1, 1, 1, 1, 5, '2024-04-03'),
(0, 1, 3, 5, 7, 0, 1, 0, 0, 6, '2023-04-27'),
(1, 0, 6, 3, 8, 1, 1, 1, 1, 7, '2024-03-30'),
(0, 1, 5, 4, 2, 0, 1, 0, 1, 8, '2024-04-06'),
(1, 0, 8, 6, 3, 1, 1, 1, 0, 9, '2023-04-15'),
(0, 1, 5, 2, 5, 0, 0, 0, 1, 10, '2024-03-02'),
(1, 0, 6, 7, 4, 1, 1, 1, 0, 11, '2023-03-17'),
(0, 1, 4, 5, 7, 0, 0, 1, 1, 12, '2023-04-19'),
(1, 0, 7, 3, 2, 1, 1, 1, 1, 13, '2023-04-26'),
(0, 1, 6, 6, 4, 0, 0, 1, 0, 14, '2024-03-24'),
(1, 0, 8, 4, 6, 1, 1, 1, 1, 15, '2024-04-23'),
(0, 1, 6, 3, 7, 0, 1, 0, 1, 16, '2024-03-01'),
(1, 0, 9, 5, 8, 1, 1, 1, 0, 17, '2024-04-10'),
(0, 1, 4, 6, 3, 0, 1, 1, 0, 18, '2023-04-28'),
(1, 0, 7, 2, 5, 1, 1, 1, 1, 19, '2023-04-25'),
(0, 1, 5, 5, 9, 0, 0, 0, 1, 20, '2024-03-20'),
(1, 0, 8, 3, 6, 1, 1, 1, 0, 21, '2023-04-22'),
(0, 1, 7, 4, 2, 0, 1, 0, 1, 22, '2023-04-29'),
(1, 0, 6, 7, 3, 1, 1, 1, 1, 23, '2024-04-09'),
(0, 1, 8, 2, 4, 0, 0, 1, 0, 24, '2024-04-07'),
(1, 0, 5, 6, 7, 1, 1, 0, 1, 25, '2024-03-13'),
(0, 1, 6, 3, 2, 0, 1, 0, 0, 26, '2024-02-16'),
(1, 0, 8, 5, 9, 1, 1, 1, 1, 27, '2024-04-05'),
(0, 1, 5, 4, 6, 0, 0, 0, 1, 28, '2024-04-13'),
(1, 0, 7, 2, 3, 1, 1, 1, 0, 29, '2024-04-08'),
(0, 1, 9, 7, 4, 0, 1, 1, 0, 30, '2024-03-28'),
(1, 0, 7, 6, 5, 1, 1, 1, 1, 31, '2024-03-14'),
(0, 1, 5, 3, 8, 0, 1, 0, 0, 32, '2023-04-30'),
(1, 0, 8, 5, 2, 1, 1, 1, 1, 33, '2024-04-11'),
(0, 1, 4, 4, 7, 0, 1, 0, 1, 34, '2023-04-17'),
(1, 0, 7, 3, 3, 1, 1, 1, 0, 35, '2024-03-29'),
(0, 1, 6, 6, 4, 0, 0, 1, 1, 36, '2023-04-20'),
(1, 0, 8, 4, 5, 1, 1, 1, 0, 37, '2023-04-24'),
(0, 1, 6, 3, 2, 0, 1, 0, 1, 38, '2024-02-28'),
(1, 0, 9, 6, 9, 1, 1, 1, 1, 39, '2024-03-06'),
(0, 1, 8, 2, 3, 0, 1, 0, 0, 40, '2024-03-25'),
(1, 0, 5, 5, 6, 1, 1, 1, 1, 41, '2024-02-23'),
(0, 1, 7, 4, 7, 0, 0, 1, 0, 42, '2024-02-08'),
(1, 0, 6, 7, 4, 1, 1, 1, 1, 43, '2024-02-05'),
(0, 1, 8, 3, 5, 0, 1, 0, 1, 44, '2024-02-18'),
(1, 0, 6, 6, 2, 1, 1, 0, 0, 45, '2024-02-10'),
(0, 1, 8, 5, 3, 0, 0, 0, 1, 46, '2024-02-09'),
(1, 0, 5, 6, 8, 1, 1, 1, 0, 47, '2024-03-27'),
(0, 1, 7, 3, 4, 0, 1, 1, 1, 48, '2024-03-12'),
(1, 0, 6, 4, 9, 1, 1, 1, 0, 49, '2024-02-07');


INSERT INTO Meal(MealType, Date)
VALUES
('Breakfast', '2024-04-18'),
('Lunch', '2024-04-04'),
('Lunch', '2024-04-21'),
('Dinner', '2024-04-11'),
('Dessert', '2024-04-14'),
('Snack', '2024-04-03'),
('Breakfast', '2024-04-27'),
('Lunch', '2024-04-30'),
('Lunch', '2024-04-06'),
('Dinner', '2024-04-15'),
('Dessert', '2024-04-02'),
('Snack', '2024-04-17'),
('Breakfast', '2024-04-19'),
('Lunch', '2024-04-26'),
('Lunch', '2024-04-24'),
('Dinner', '2024-04-23'),
('Dessert', '2024-04-01'),
('Snack', '2024-04-10'),
('Breakfast', '2024-04-28'),
('Lunch', '2024-04-25'),
('Lunch', '2024-04-20'),
('Dinner', '2024-04-22'),
('Dessert', '2024-04-29'),
('Snack', '2024-04-09'),
('Breakfast', '2024-04-07'),
('Lunch', '2024-04-12'),
('Lunch', '2024-04-16'),
('Dinner', '2024-04-05'),
('Dessert', '2024-04-13'),
('Snack', '2024-04-08'),
('Breakfast', '2024-04-01'),
('Lunch', '2024-04-14'),
('Lunch', '2024-04-30'),
('Dinner', '2024-04-11'),
('Dessert', '2024-04-17'),
('Snack', '2024-04-29'),
('Breakfast', '2024-04-20'),
('Lunch', '2024-04-24'),
('Lunch', '2024-04-28'),
('Dinner', '2024-04-06'),
('Dessert', '2024-04-25'),
('Snack', '2024-04-23'),
('Breakfast', '2024-04-08'),
('Lunch', '2024-04-05'),
('Lunch', '2024-04-18'),
('Dinner', '2024-04-10'),
('Dessert', '2024-04-09'),
('Snack', '2024-04-27'),
('Breakfast', '2024-04-12'),
('Lunch', '2024-04-07');



INSERT INTO FoodItems (ServingCount, MealID, Food_Name)
VALUES
(8, 0, 'Scrambled eggs'),
(2, 1, 'Caprese salad'),
(6, 2, 'Grilled chicken breast'),
(1, 3, 'Banana split'),
(4, 4, 'Peanut butter sandwich'),
(9, 5, 'Oatmeal'),
(3, 6, 'Chicken Caesar salad'),
(7, 7, 'Beef stir-fry'),
(5, 8, 'Chocolate cake'),
(2, 9, 'Almond trail mix'),
(4, 10, 'Yogurt parfait'),
(6, 11, 'Avocado toast'),
(1, 12, 'Grilled salmon'),
(8, 13, 'Strawberry shortcake'),
(3, 14, 'Carrot sticks'),
(5, 15, 'Bacon and eggs'),
(7, 16, 'Turkey sandwich'),
(2, 17, 'Spaghetti carbonara'),
(4, 18, 'Vanilla ice cream'),
(9, 19, 'Apple slices'),
(1, 20, 'Cereal with milk'),
(6, 21, 'Spinach salad'),
(3, 22, 'Fried rice'),
(5, 23, 'Caramel popcorn'),
(8, 24, 'Grape bunch'),
(2, 25, 'Bagel with cream cheese'),
(7, 26, 'Ham and cheese sandwich'),
(4, 27, 'Homemade pizza'),
(1, 28, 'Lemon sorbet'),
(9, 29, 'Celery sticks'),
(3, 30, 'Pancakes'),
(6, 31, 'Tuna salad'),
(1, 32, 'Grilled shrimp'),
(5, 33, 'Oreo milkshake'),
(8, 34, 'Blueberry muffin'),
(2, 35, 'Butter croissant'),
(7, 36, 'Cucumber sandwich'),
(4, 37, 'Mashed potatoes'),
(1, 38, 'Peach cobbler'),
(9, 39, 'Orange slices'),
(3, 40, 'French toast'),
(6, 41, 'Broccoli soup'),
(2, 42, 'Roasted lamb chops'),
(5, 43, 'Chocolate chip cookies'),
(8, 44, 'Strawberry yogurt'),
(4, 45, 'Biscuits and gravy'),
(7, 46, 'Turkey wrap'),
(1, 47, 'Grilled steak'),
(5, 48, 'Apple pie'),
(9, 49, 'Trail mix');


INSERT INTO Ingredients (Veggie, Fruit, Fats, Protein, Grains, TagId, Food_Name, Ing_Name)
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