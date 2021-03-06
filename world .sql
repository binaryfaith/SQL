SELECT countries.name, languages.language, languages.percentage
FROM countries
	JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

SELECT countries.name, count(cities.name) as num_cities
from countries
	JOIN cities ON countries.id = cities.country_id
GROUP by countries.id
ORDER BY num_cities DESC;

SELECT cities.name, cities.population
from countries
LEFT JOIN cities ON countries.id = cities.country_id
where countries.name = "Mexico" AND cities.population>500000 
ORDER BY cities.population DESC;

SELECT countries.name, languages.language,languages.percentage
FROM countries
	JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy
FROM countries
WHERE countries.government_form = "Constitutional Monarchy" AND countries.capital >200 AND countries.life_expectancy>75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
	JOIN cities ON countries.id = cities.country_id
WHERE countries.name = "Argentina" AND cities.district = "Buenos Aires" AND  cities.population>500000;

SELECT countries.region, count(countries.name) as num_countries
from countries
GROUP BY countries.region
	

















    
