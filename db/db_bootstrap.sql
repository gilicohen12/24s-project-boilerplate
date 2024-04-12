-- -- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE DATABASE IF NOT EXISTS MunchMasterPro /*!40100 DEFAULT CHARACTER SET latin1 */;

USE MunchMasterPro;

GRANT ALL PRIVILEGES ON MunchMasterPro.* TO 'webapp'@'%';
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS User (
    Username VARCHAR(14) PRIMARY KEY
);

INSERT INTO User(Username)
VALUES('GabeAdams'),
      ('JoeCool'),
      ('GabbyMcBride');

CREATE TABLE IF NOT EXISTS Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(14),
    FOREIGN KEY (Username) REFERENCES User(Username)
);

INSERT INTO Log(Username)
VALUES('GabeAdams'),
      ('JoeCool'),
      ('GabbyMcBride');

CREATE TABLE IF NOT EXISTS Day (
    Date DATE PRIMARY KEY,
    VeggieGoal BOOL DEFAULT FALSE,
    FruitGoal BOOL DEFAULT FALSE,
    FatsGoal INT DEFAULT 0,
    ProteinGoal INT DEFAULT 0,
    GrainsGoal INT DEFAULT 0,
    VeganGoal BOOL DEFAULT FALSE,
    VegetarianGoal BOOL DEFAULT FALSE,
    DairyFreeGoal BOOL DEFAULT FALSE,
    GlutenFreeGoal BOOL DEFAULT FALSE,
    LogID INT,
    FOREIGN KEY (LogID) REFERENCES Log(LogID)
);

INSERT INTO Day(Date, VeggieGoal, FruitGoal, FatsGoal, ProteinGoal, GrainsGoal, VeganGoal,
                VegetarianGoal, DairyFreeGoal, GlutenFreeGoal, LogID)
VALUES(CURDATE(), 0, 0, 6, 7, 0, 0, 1, 1, 0, 1),
      ('2024-04-02', 1, 0, 8, 0, 2, 1, 1, 0, 0, 2),
      ('2024-04-01', 0, 0, 10, 2, 12, 1, 0, 0, 1, 3);

CREATE TABLE IF NOT EXISTS Meal (
    MealID INT AUTO_INCREMENT PRIMARY KEY,
    MealType VARCHAR(20),
    Date DATE,
    FOREIGN KEY (Date) REFERENCES Day(Date)
);

INSERT INTO Meal(MealType, Date)
VALUES('Breakfast', CURDATE()),
      ('Lunch', CURDATE()),
      ('Dinner', CURDATE());

CREATE TABLE IF NOT EXISTS FoodItems (
    Food_Name VARCHAR(30) PRIMARY KEY,
    ServingCount INT,
    MealID INT,
    FOREIGN KEY (MealID) REFERENCES Meal(MealID)
);

INSERT INTO FoodItems(Food_Name, ServingCount, MealID)
VALUES('Fruit salad', 1, 1),
      ('Cheese plate', 2, 2),
      ('Chocolate ice cream', 4, 3);

CREATE TABLE IF NOT EXISTS Tags (
    TagID INT AUTO_INCREMENT PRIMARY KEY,
    ContainsNuts BOOL DEFAULT FALSE,
    GlutenFree BOOL DEFAULT FALSE,
    Vegetarian BOOL DEFAULT FALSE,
    DairyFree BOOL DEFAULT FALSE,
    ContainsProtein BOOL DEFAULT FALSE,
    FatFree BOOL DEFAULT FALSE,
    Vegan BOOL DEFAULT FALSE
);

INSERT INTO Tags(ContainsNuts, GlutenFree, Vegetarian, DairyFree, ContainsProtein,
                 FatFree, Vegan)
VALUES(0, 1, 1, 1, 1, 0, 1),
      (0, 1, 1, 0, 1, 0, 0),
      (1, 1, 1, 0, 1, 0, 0);

CREATE TABLE IF NOT EXISTS Ingredients (
    Ing_Name VARCHAR(30),
    Veggie BOOL DEFAULT FALSE,
    Fruit BOOL DEFAULT FALSE,
    Fats INT DEFAULT 0,
    Protein INT DEFAULT 0,
    Grains INT DEFAULT 0,
    TagID INT,
    Food_Name VARCHAR(30),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID),
    FOREIGN KEY (Food_Name) REFERENCES FoodItems(Food_Name)
);

INSERT INTO Ingredients(Ing_Name, Veggie, Fruit, Fats, Protein, Grains, TagID, Food_Name)
VALUES('Banana', 0, 1, 1, 2, 0, 1, 'Fruit salad'),
      ('Cheddar cheese', 0, 0, 9, 7, 0, 2, 'Cheese plate'),
      ('Chocolate', 0, 0, 9, 2, 0, 3, 'Chocolate ice cream');

CREATE TABLE IF NOT EXISTS Blog (
    BlogID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(14),
    FOREIGN KEY (Username) REFERENCES User(Username)
);

INSERT INTO Blog(Username)
VALUES('GabeAdams'),
      ('JoeCool'),
      ('GabbyMcBride');

CREATE TABLE IF NOT EXISTS Recipe (
    RecipeID INT AUTO_INCREMENT PRIMARY KEY,
    Name TEXT,
    Story TEXT,
    Directions TEXT,
    TagID INT,
    BlogID INT,
    Origin TEXT,
    FOREIGN KEY (TagID) REFERENCES Tags(TagID),
    FOREIGN KEY (BlogID) REFERENCES Blog(BlogID)
);

INSERT INTO Recipe(Name, Story, Directions, TagID, BlogID, Origin)
VALUES('Donuts', 'This is my Grandmother''s recipe for her donuts from Greece!',
       'Ingredients: 2 cups all-purpose flour, 1/2 cup granulated sugar, 2 tsp baking powder, 1/2 tsp salt, 1/2 cup milk, 1/4 cup melted butter, 1 tsp vanilla extract, 1 egg. Instructions: Preheat your oven to 350°F (175°C). In a mixing bowl, combine flour, sugar, baking powder, and salt. In another bowl, whisk together milk, melted butter, vanilla extract, and egg. Pour the wet ingredients into the dry ingredients and mix until just combined. Fill a donut pan with the batter, about 3/4 full in each cavity. Bake for 10-12 minutes or until a toothpick inserted into a donut comes out clean. Let the donuts cool slightly before removing them from the pan. Optionally, glaze or coat the donuts with your favorite toppings before serving.',
       1, 1, 'Greece'),
      ('Cookie dough', 'My perfected cookie dough recipe that can be made in 10 min!',
       'Ingredients: 1 cup all-purpose flour, 1/2 cup softened butter, 1/2 cup packed brown sugar, 1/4 cup granulated sugar, 1 tsp vanilla extract, 1/4 tsp salt, 1/2 cup chocolate chips (optional). Instructions: In a mixing bowl, cream together the softened butter, brown sugar, and granulated sugar until light and fluffy. Mix in the vanilla extract until well combined. Gradually add the flour and salt, mixing until a dough forms. If desired, fold in the chocolate chips until evenly distributed. Use the dough immediately or refrigerate it for about 30 minutes for easier handling. Enjoy the cookie dough as is, or use it to bake delicious cookies!',
       2, 2, 'My own creation!'),
      ('Homemade chocolate ice cream', 'Make chocolate ice cream from scratch in minutes!',
       'Ingredients: 2 cups heavy cream, 1 cup whole milk, 3/4 cup granulated sugar, 1/2 cup unsweetened cocoa powder, 1 tsp vanilla extract, Pinch of salt. Instructions: In a mixing bowl, whisk together the cocoa powder and sugar until well combined. Add the heavy cream, whole milk, vanilla extract, and salt. Whisk until the sugar and cocoa are fully dissolved. Pour the mixture into an ice cream maker and churn according to the manufacturer''s instructions, usually for about 20-25 minutes, until it reaches a soft-serve consistency. Transfer the ice cream to a freezer-safe container and freeze for at least 4 hours, or until firm. Serve and enjoy your homemade chocolate ice cream!',
       3, 3, 'Cuisinart online recipe collection');

CREATE TABLE IF NOT EXISTS Post (
    Title VARCHAR(100) PRIMARY KEY,
    Content TEXT,
    BlogID INT,
    FOREIGN KEY (BlogID) REFERENCES Blog(BlogID)
);

INSERT INTO Post(Title, Content, BlogID)
VALUES('Vegetarian substitute for taco bowl!', 'Been recently exploring vegetarian options to eat healthier and came across marinated and fried tofu and thought I would share as it is a great option instead of meat and healthy too!', 1),
      ('Protein-packed breakfast bars', 'My daughter got one of these for free, after a race she ran and they are amazing! It is called a Built Bar and has 17 grams of protein in it and it is so tasty, like candy! Highly recommend', 2),
      ('Walking tacos', 'Just went camping and had a revelation. Put your taco toppings in a chip bag for an easy, portable dinner! Just make sure to crush the chips before!', 3);
