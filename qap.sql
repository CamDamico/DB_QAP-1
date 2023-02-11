select * from passengers;

select * from cities;

insert into airports (id, name, code) values (1, 'Pearson International', 'YYZ');
insert into airports (id, name, code) values (2, 'St.John''s International', 'YYT');
insert into airports (id, name, code) values (3, 'Vancouver International', 'YVR');
insert into airports (id, name, code) values (4, 'Stanfield International', 'YHZ');
insert into airports (id, name, code) values (5, 'James Armstrong Ruchardson International', 'YWG');
insert into airports (id, name, code) values (6, 'Gander International', 'YQX');
insert into airports (id, name, code) values (7, 'Grand-Falls International', 'YWB');
insert into airports (id, name, code) values (8, 'London International', 'YXU');
insert into airports (id, name, code) values (9, 'Ottawa International', 'YOW');
insert into airports (id, name, code) values (10, 'Charlottetown International', 'YYG');

select * from airports;

insert into aircraft (id, type, airline_name, num_of_passengers) values (1, 'Large Jet', 'Air Canada', 307);
insert into aircraft (id, type, airline_name, num_of_passengers) values (2, 'Large Jet', 'WestJet', 300);
insert into aircraft (id, type, airline_name, num_of_passengers) values (3, 'Medium Jet', 'Sunwing', 224);
insert into aircraft (id, type, airline_name, num_of_passengers) values (4, 'Small Jet', 'Porter Airlines', 96);
insert into aircraft (id, type, airline_name, num_of_passengers) values (5, 'Small Jet', 'Flair Airlines', 79);
insert into aircraft (id, type, airline_name, num_of_passengers) values (6, 'Large Jet', 'Air Canada Rouge', 321);
insert into aircraft (id, type, airline_name, num_of_passengers) values (7, 'Medium Jet', 'WestJet', 231);
insert into aircraft (id, type, airline_name, num_of_passengers) values (8, 'Small Jet', 'Sunwing', 102);
insert into aircraft (id, type, airline_name, num_of_passengers) values (9, 'XL Jet', 'Air Canada', 402);
insert into aircraft (id, type, airline_name, num_of_passengers) values (10, 'XL Jet', 'Porter Airlines', 398);

select * from aircraft;



insert into passenger_aircraft (passenger_id, aircraft_id) values (1, 9);
insert into passenger_aircraft (passenger_id, aircraft_id) values (2, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 6);
insert into passenger_aircraft (passenger_id, aircraft_id) values (4, 9);
insert into passenger_aircraft (passenger_id, aircraft_id) values (5, 10);
insert into passenger_aircraft (passenger_id, aircraft_id) values (6, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (7, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (9, 8);
insert into passenger_aircraft (passenger_id, aircraft_id) values (10, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (1, 1);
insert into passenger_aircraft (passenger_id, aircraft_id) values (2, 2);
insert into passenger_aircraft (passenger_id, aircraft_id) values (3, 3);
insert into passenger_aircraft (passenger_id, aircraft_id) values (4, 4);
insert into passenger_aircraft (passenger_id, aircraft_id) values (5, 5);
insert into passenger_aircraft (passenger_id, aircraft_id) values (6, 6);
insert into passenger_aircraft (passenger_id, aircraft_id) values (7, 7);
insert into passenger_aircraft (passenger_id, aircraft_id) values (8, 8);
insert into passenger_aircraft (passenger_id, aircraft_id) values (9, 9);
insert into passenger_aircraft (passenger_id, aircraft_id) values (10, 10);

select * from passenger_aircraft;

insert into passenger_airport (passenger_id, airport_id) values (1, 1);
insert into passenger_airport (passenger_id, airport_id) values (1, 7);
insert into passenger_airport (passenger_id, airport_id) values (2, 2);
insert into passenger_airport (passenger_id, airport_id) values (2, 6);
insert into passenger_airport (passenger_id, airport_id) values (3, 3);
insert into passenger_airport (passenger_id, airport_id) values (3, 8);
insert into passenger_airport (passenger_id, airport_id) values (4, 4);
insert into passenger_airport (passenger_id, airport_id) values (4, 10);
insert into passenger_airport (passenger_id, airport_id) values (5, 5);
insert into passenger_airport (passenger_id, airport_id) values (5, 2);
insert into passenger_airport (passenger_id, airport_id) values (6, 6);
insert into passenger_airport (passenger_id, airport_id) values (6, 9);
insert into passenger_airport (passenger_id, airport_id) values (7, 7);
insert into passenger_airport (passenger_id, airport_id) values (7, 6);
insert into passenger_airport (passenger_id, airport_id) values (8, 8);
insert into passenger_airport (passenger_id, airport_id) values (8, 2);
insert into passenger_airport (passenger_id, airport_id) values (9, 9);
insert into passenger_airport (passenger_id, airport_id) values (9, 10);
insert into passenger_airport (passenger_id, airport_id) values (10, 10);
insert into passenger_airport (passenger_id, airport_id) values (10, 4);

select * from passenger_airport;

insert into airport_aircraft (airport_id, aircraft_id) values (1, 3);
insert into airport_aircraft (airport_id, aircraft_id) values (2, 6);
insert into airport_aircraft (airport_id, aircraft_id) values (3, 1);
insert into airport_aircraft (airport_id, aircraft_id) values (4, 10);
insert into airport_aircraft (airport_id, aircraft_id) values (5, 9);
insert into airport_aircraft (airport_id, aircraft_id) values (6, 2);
insert into airport_aircraft (airport_id, aircraft_id) values (7, 4);
insert into airport_aircraft (airport_id, aircraft_id) values (8, 5);
insert into airport_aircraft (airport_id, aircraft_id) values (9, 8);
insert into airport_aircraft (airport_id, aircraft_id) values (10, 7);
insert into airport_aircraft (airport_id, aircraft_id) values (1, 9);
insert into airport_aircraft (airport_id, aircraft_id) values (2, 7);
insert into airport_aircraft (airport_id, aircraft_id) values (3, 3);
insert into airport_aircraft (airport_id, aircraft_id) values (4, 7);
insert into airport_aircraft (airport_id, aircraft_id) values (5, 3);
insert into airport_aircraft (airport_id, aircraft_id) values (6, 6);
insert into airport_aircraft (airport_id, aircraft_id) values (7, 2);
insert into airport_aircraft (airport_id, aircraft_id) values (8, 2);
insert into airport_aircraft (airport_id, aircraft_id) values (9, 7);
insert into airport_aircraft (airport_id, aircraft_id) values (10, 3);

select * from airport_aircraft;

-- Shows which aircraft passengers have been on 
select * from passengers p, aircraft a, passenger_aircraft pa
where pa.passenger_id = p.id
and pa.aircraft_id = a.id
order by p.first_name;

-- Shows which city passengers are from 
select * from passengers p, cities c
where p.city_id = c.id;

-- Shows airports and their cities
select * from airports a, cities c
where a.id = c.id;

-- Shows which airports passengers have used
select * from passengers p, airports a, passenger_airport pa
where pa.passenger_id = p.id
and pa.airport_id = a.id
order by a.name;

-- Shows which airports an aircrafts can take off from and land at
select * from airports a, aircraft ac, airport_aircraft pa
where pa.airport_id = a.id
and pa.aircraft_id = ac.id
order by a.name;