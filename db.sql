CREATE TABLE Location
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE UserType
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(30) NOT NULL
);

CREATE TABLE PropertyType
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50) NOT NULL
);

CREATE TABLE FurnitureType
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(80) NOT NULL
);

CREATE TABLE Properties
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    property_name VARCHAR(120) NOT NULL,
    price VARCHAR(50) NOT NULL,
    rating INT NOT NULL,
    floors INT NOT NULL,
    bedrooms INT NOT NULL,
    kitchen INT NOT NULL,
    bathroom INT NOT NULL,
    area VARCHAR(30) NOT NULL,
    location INT NOT NULL,
    address VARCHAR(80) NOT NULL,
    ready_to_move INT NOT NULL,
    resale INT NOT NULL,
    type INT NOT NULL,
    furniture INT NOT NULL,
    dealer_id INT NOT NULL,
    date DATETIME NOT NULL,
    contact VARCHAR(15) NOT NULL
);

CREATE TABLE Users
(
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(120) NOT NULL,
    email VARCHAR(50) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    type INT NOT NULL,
    rating INT NOT NULL
);

CREATE TABLE Comments
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    comment VARCHAR(256),
    date DATETIME NOT NULL
);

CREATE TABLE Reviews
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    dealer_id INT NOT NULL,
    review VARCHAR(256),
    rating INT NOT NULL,
    date DATETIME NOT NULL
);