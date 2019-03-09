/*Shows which customer rented which car from which dealer*/

SELECT customer.first_name, customer.last_name, car_dealer.name, type.marque, rent.time_to_rent
FROM customer
INNER JOIN rent ON customer.customer_id = rent.fk_customer_id
INNER JOIN car_dealer ON rent.fk_car_dealer_id = car_dealer.car_dealer_id
INNER JOIN car ON car_dealer.car_dealer_id = car.fk_car_dealer_id
INNER JOIN type ON car.fk_type_id = type.type_id;

######################################################################################################

/*Shows which manufacturer bulid which car in which timescale*/

SELECT manufacturer.name, build.start_build_time, build.end_build_time, type.marque, type.horsepower
FROM manufacturer
INNER JOIN build ON manufacturer.manufacturer_id = build.fk_manufacturer_id
INNER JOIN car ON build.fk_car_id = car.car_id
INNER JOIN type ON car.fk_type_id = type.type_id;

######################################################################################################

/*Shows all important employee data*/

SELECT car_dealer.name, car_dealer.location, emloyee.first_name, emloyee.last_name, emloyee.salary
FROM car_dealer
INNER JOIN emloyee ON emloyee.fk_car_dealer_id = car_dealer.car_dealer_id;

######################################################################################################

/*Shows which car can get rented for which price and how long*/

SELECT type.marque, car.pick_up_location, car.return_location, rent.rent_price, rent.time_to_rent
FROM car
INNER JOIN type ON car.fk_type_id = type.type_id
INNER JOIN car_dealer ON car.fk_car_dealer_id = car_dealer.car_dealer_id
INNER JOIN rent ON rent.fk_car_dealer_id = car_dealer.car_dealer_id;

######################################################################################################

/*Shows which car from which manufacturer is at which car dealer*/

SELECT car_dealer.name, type.marque, type.horsepower, manufacturer.name
FROM car_dealer
INNER JOIN car ON car.fk_car_dealer_id = car_dealer.car_dealer_id
INNER JOIN type ON car.fk_type_id = type.type_id
INNER JOIN build ON build.fk_car_id = car.car_id
INNER JOIN manufacturer ON build.fk_manufacturer_id = manufacturer.manufacturer_id;

######################################################################################################