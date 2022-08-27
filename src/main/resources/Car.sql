DROP TABLE IF EXISTS car, customer,booking;

CREATE TABLE car(
    carId INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    carName VARCHAR(50),
    carModel VARCHAR (50),
    carImage VARCHAR ,
    carPrice INT,
    carStatus boolean
);

CREATE TABLE customer(
                         customerId INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
                         customerFirstName VARCHAR(50),
                         customerLastName VARCHAR(50),
                         customerAddress VARCHAR(100),
                         customerEmail VARCHAR(256),
                         customerPhone VARCHAR(20)

);

CREATE TABLE booking(
                        bookingId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        carId INT,
                        customerId INT,
                        bookingDateFrom DATE,
                        bookingDateTo DATE,
                        priceDay INT,
                        image VARCHAR,
                        totalPrice INT,
                        FOREIGN KEY (carId) REFERENCES car(carId),
                        FOREIGN KEY (customerId) REFERENCES customer(customerId)

);


