% Facts about fruits
fruit(apple).
fruit(banana).
fruit(orange).
fruit(grape).
fruit(mango).
fruit(pineapple).
fruit(strawberry).
fruit(blueberry).
fruit(kiwi).
fruit(peach).
fruit(pomegranate).
fruit(pear).

% Types of fruits
fruit_type(apple, red).
fruit_type(banana, yellow).
fruit_type(orange, orange).
fruit_type(grape, purple).
fruit_type(mango, yellow).
fruit_type(pineapple, yellow).
fruit_type(strawberry, red).
fruit_type(blueberry, blue).
fruit_type(kiwi, green).
fruit_type(peach, orange).
fruit_type(pomegranate, red).
fruit_type(pear, green).

% Tastes
taste(apple, sweet).
taste(banana, sweet).
taste(orange, sweet).
taste(grape, sweet).
taste(mango, sweet).
taste(pineapple, sweet).
taste(strawberry, sweet).
taste(blueberry, sweet).
taste(peach, sweet).
taste(pear, sweet).

% Sizes
size(apple, small).
size(banana, medium).
size(orange, medium).
size(grape, small).
size(mango, medium).
size(pineapple, large).
size(strawberry, small).
size(blueberry, small).
size(kiwi, small).
size(peach, medium).
size(pomegranate, small).
size(pear, medium).

% Colors
color(apple, red).
color(banana, yellow).
color(orange, orange).
color(grape, purple).
color(mango, yellow).
color(pineapple, yellow).
color(strawberry, red).
color(blueberry, blue).
color(kiwi, green).
color(peach, orange).
color(pomegranate, red).
color(pear, green).

% Rule to check if two fruits are of the same type
same_type(Fruit1, Fruit2) :-
    fruit_type(Fruit1, Type),
    fruit_type(Fruit2, Type),
    Fruit1 \= Fruit2.

% Rule to determine which fruits pair well together
pairs_well_with(Fruit1, Fruit2, Color) :-
    taste(Fruit1, sweet),
    taste(Fruit2, sweet),
    same_type(Fruit1, Fruit2),
    size(Fruit1, Size1),
    size(Fruit2, Size2),
    color(Fruit1, Color1),
    color(Fruit2, Color2),
    Size1 \= Size2,
    Color1 = Color2,
    Color1 = Color.
