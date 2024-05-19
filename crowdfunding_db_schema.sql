-- Drop existing tables if they exist
DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "contacts";

-- Create the contacts table first
CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

-- Create the category table
CREATE TABLE "category" (
    "category_id" VARCHAR(50) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

-- Create the subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(50) NOT NULL,
    "subcategory" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

-- Create the campaign table last to ensure all referenced tables exist
CREATE TABLE "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" CHAR(2) NOT NULL,
    "currency" CHAR(3) NOT NULL,
    "launch_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(50) NOT NULL,
    "subcategory_id" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_campaign_contact" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
    CONSTRAINT "fk_campaign_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    CONSTRAINT "fk_campaign_subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);

-- Select from contacts table to verify creation
SELECT * FROM "contacts" LIMIT 5;

-- Select from category table to verify creation
SELECT * FROM "category" LIMIT 5;

-- Select from subcategory table to verify creation
SELECT * FROM "subcategory" LIMIT 5;

-- Select from campaign table to verify creation
SELECT * FROM "campaign" LIMIT 5;