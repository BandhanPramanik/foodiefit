CREATE TABLE IF NOT EXISTS "recipes" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "cost_per_serving" NUMERIC NOT NULL,
    "veg" INTEGER NOT NULL CHECK("veg" IN (0, 1)) DEFAULT 0,
    "rec_type_1_diabetes" INTEGER NOT NULL CHECK("rec_type_1_diabetes" IN (0, 1)) DEFAULT 0,
    "rec_type_2_diabetes" INTEGER NOT NULL CHECK("rec_type_2_diabetes" IN (0, 1)) DEFAULT 0
);
INSERT INTO "recipes" ("name", "cost_per_serving", "veg", "rec_type_1_diabetes", "rec_type_2_diabetes") VALUES ('Recipe 1', 10.0, 0, 0, 0);