-- Drop tables if they already exist
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;


-- Create tables
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL
);


CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL, 
    subcategory VARCHAR(50) NOT NULL
);

CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL, 
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(10) NOT NULL, 
    currency VARCHAR(10),
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL, 
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
