-- Core recipes
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    cost_per_serving NUMERIC NOT NULL,
    veg INTEGER NOT NULL CHECK (veg IN (0, 1)) DEFAULT 0,
    benefits TEXT NOT NULL,
    calories_kcal NUMERIC NOT NULL 
);

-- A table for all unique ingredients
CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);


-- A junction table to link recipes and ingredients
CREATE TABLE recipe_ingredients (
    recipe_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    quantity NUMERIC NOT NULL,
    unit TEXT NOT NULL, -- e.g., 'grams', 'ml', 'cup', 'tbsp'
    PRIMARY KEY (recipe_id, ingredient_id),
    FOREIGN KEY (recipe_id) REFERENCES recipes(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)
)

-- Categories (like type1_diabetes, type2_diabetes, keto, etc.)
CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Methods for each recipe
CREATE TABLE methods (
    recipe_id INTEGER NOT NULL,
    step_number INTEGER NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (recipe_id, step_number),
    FOREIGN KEY (recipe_id) REFERENCES recipes
    (id)
)

-- Junction table: many-to-many relationship
CREATE TABLE recipe_categories (
    recipe_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    PRIMARY KEY (recipe_id, category_id),
    FOREIGN KEY (recipe_id) REFERENCES recipes(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
INSERT INTO "recipes" ("name", "cost_per_serving", "veg", "rec_type_1_diabetes", "rec_type_2_diabetes") VALUES ('Recipe 1', 10.0, 0, 0, 0);
