% Define facts about car options and their attributes.
car_option(sedan, compact, gasoline, comfortable, family_car, yes, no, 8, 78000, audiR8).
car_option(suv, midsize, gasoline, sporty, family_car, no, yes, 20, 91000, audiA6).
car_option(convertible, compact, gasoline, sporty, sports_car, yes, yes, 15, 45666, mercediesCLA200).
car_option(suv, full_size, hybrid, luxurious, travel, yes, yes, 10, 120000, mercidiesGLE).
car_option(sedan, midsize, electric, comfortable, commuting, no, yes, 25, 76000, mercediesX4).
car_option(suv, full_size, gasoline, rugged, travel, yes, yes, 13, 81000, bmwX4).
car_option(sedan, compact, hybrid, economical, commuting, yes, no, 11, 69000, bmwX7).
car_option(sports_car, sports, gasoline, sporty, sports_car, no, no, 18, 74000, volksvagonTygun).
car_option(suv, midsize, hybrid, luxurious, family_car, no, yes, 19, 96000, scodaRapid).
car_option(hatchback, small, electric, eco-friendly, commuting, yes, no, 23, 73000, hyundaiCreta).
car_option(sedan, midsize, gasoline, comfortable, family_car, sunroof, yes, 17, 45000, hyundaiI20).
car_option(suv, full_size, hybrid, luxurious, travel, yes, no, 14, 69000, hyundaiX61).
car_option(hatchback, compact, electric, eco-friendly, commuting, no, yes, 15, 95000, porche911).
car_option(sports_car, sports, gasoline, sporty, sports_car, no, no, 22, 56000, marutiDezire).
car_option(suv, midsize, gasoline, rugged, travel, yes, no, 16, 84000, kiaCeltus).




% Define rules to recommend car options based on user preferences.
recommend_car(User, CarOption) :-
    ask_car_preferences(User, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint),
    (car_option(CarOption, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint, _) ->
        display_car_attributes(CarOption, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint, _) ;
        write('Sorry, no suitable car option available based on your preferences.'), nl).


% Display the ignored car attributes when a match is found.
display_car_attributes(CarOption, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint, CarName) :-
    car_option(CarOption, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint, CarName),
    write('Congratulations, We have the exact car matching your preferences :/  '),
    write('Car Name: '), write(CarName), nl.


% Ask the user about their car preferences.
ask_car_preferences(User, Size, FuelType, Style, Purpose, HasSunroof, HasRearCamera, MilageExpectation, PricePoint) :-
    write('Hello, '), write(User), write('!'), nl,
    write('What size of car do you prefer? (compact/spacious/rugged)'),
    read(Size),
    write('What type of fuel do you prefer? (gasoline/diesel/electric/hybrid)'),
    read(FuelType),
    write('What car style do you like? (sporty/luxury/practical)'),
    read(Style),
    write('What is the primary purpose of the car? (family_car/performance_car/utility_vehicle/eco_car)'),
    read(Purpose),
	write('Do you want a sunroof for your car? (yes/no)'),
    read(HasSunroof),
	write('Do you need a rear view Camera? (yes/no)') ,
    read(HasRearCamera),
	write('Milage Expectations (in Km/hr)'),
    read(MilageExpectation),
	write('Price? (in Rupees'),
    read(PricePoint).




% Example usage:
% To recommend a car option for 'User':
% recommend_car(user, CarOption).



