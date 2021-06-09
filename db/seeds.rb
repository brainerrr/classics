require "open-uri"

User.destroy_all
Car.destroy_all

User.create!(first_name: "John", last_name: "Cena", email: "aaaa@gmail.com", password: "password")

gto_pic = URI.open("https://i2.wp.com/radical-mag.com/wp-content/uploads/2017/01/1962-Ferrari-250-GTO-Talacrest-front-three-quarters.jpg?w=1470")
gto_250 = Car.create!(brand: "Ferrari", model: "250 GTO", year: "1962", price_day: 300, category: "Italian", description: "The Ferrari 250 GTO is a GT car produced by Ferrari from 1962 to 1964 for homologation into the FIA’s Group 3 Grand Touring Car category. It was powered by Ferrari’s Tipo 168/62Colombo V12 engine. The 250 in its name denotes the displacement in cubic centimeters of each of its cylinders; GTO stands for Gran Turismo Omologato, Italian for Grand Touring Homologated. Just 36 of the 250 GTOs were manufactured between 1962 and 1964. This includes 33 cars with 1962-63 bodywork (Series I) and three with 1964 (Series II) bodywork similar to the Ferrari 250 LM. Four of the older 1962-1963 (Series I) cars were updated in 1964 with Series II bodies.", user_id: 6)
gto_250.photo.attach(io: gto_pic, filename: 'nes.png', content_type: 'image/png')
gto_250.save

etype_pic = URI.open("https://s1.1zoom.me/big3/376/Jaguar_Retro_1964-67_E-Type_4.2-Litre_Fixed_Head_515582_4000x2662.jpg")
etype = Car.create!(brand: "Jaguar", model: "E-Type", year: "1960", price_day: 200, category: "British", description: "The Jaguar E-Type, or the Jaguar XK-E for the North American market, is a British sports car that was manufactured by Jaguar Cars Ltd between 1961 and 1975. Its combination of beauty, high performance, and competitive pricing established the model as an icon of the motoring world. The E-Type’s claimed 150 mph (241 km/h) top speed, sub-7-second 0 to 60 mph (97 km/h) acceleration, unitary construction, disc brakes, rack-and-pinion steering, and independent front and rear suspension distinguished the car and spurred industry-wide changes. The E-Type was based on Jaguar’s D-Type racing car, which had won the 24 Hours of Le Mans for three consecutive years beginning in 1955, and employed what was, for the early 1960s, a novel racing design principle, with a front subframe carrying the engine, front suspension and front bodywork bolted directly to the body tub. No ladder frame chassis, as was common at the time, was needed and as such the first cars weighed only 1315 kg (2900 lb)", user_id: 6)
etype.photo.attach(io: etype_pic, filename: 'nes.png', content_type: 'image/png')
etype.save

merc_pic = URI.open("https://i1.wp.com/radical-mag.com/wp-content/uploads/2021/05/x7a3617_copy.jpg")
sl_300 = Car.create!(brand: "Mercedes", model: "300 SL", year: "1954", price_day: 250, category: "German", description: "The Mercedes-Benz 300 SL (chassis code W 198) is a two-seat sports car that was produced by Mercedes-Benz as a gullwinged coupe (1954–1957) and roadster (1957–1963). It was based on the company’s 1952 racer, the W194, with mechanical direct fuel-injection which boosted power almost 50% on its 3-liter overhead camshaft straight-6 engine. Capable of reaching a top speed of up to 263 km/h (163 mph), it was both a sports car racing champion and the fastest production car of its time. Max Hoffman, Mercedes-Benz’s authorized United States importer at the time, inspired the 300 SL and correctly perceived an American market for such a car. The company introduced the 300 SL in February 1954 at the International Motor Sports Show in New York City instead of Europe to get it into U.S. buyers’ hands sooner.", user_id: 6)
sl_300.photo.attach(io: merc_pic, filename: 'nes.png', content_type: 'image/png')
sl_300.save

miura_pic = URI.open("https://i2.wp.com/radical-mag.com/wp-content/uploads/2017/12/@Lamborghini-Miura-P400S-3952-18-e1597747470613.jpg?w=2500")
miura = Car.create!(brand: "Lamborghini", model: "Miura", year: "1966", price_day: 220, category: "Italian", description: "The Lamborghini Miura is a sports car produced by Italian automaker Lamborghini between 1966 and 1973. The car was the first supercar with a rear mid-engined two-seat layout, although the concept was first seen in a production road car with René Bonnet's Matra Djet, introduced in 1964. This layout has since become the standard for high-performance sports and supercars. When released, it was the fastest production road car. The Miura was originally conceived by Lamborghini’s engineering team, which designed the car in its spare time against the wishes[citation needed] of company founder Ferruccio Lamborghini, who preferred powerful yet sedate grand touring cars over the race car-derived machines produced by local rival Ferrari.", user_id: 6)
miura.photo.attach(io: miura_pic, filename: 'nes.png', content_type: 'image/png')
miura.save

porsche_pic = URI.open("https://i2.wp.com/radical-mag.com/wp-content/uploads/2018/07/@Porsche-356-001-31.jpg?w=2500")
speedster = Car.create!(brand: "Porsche", model: "356 Speedster", year: "1955", price_day: 240, category: "German", description: "The 356 is a lightweight and nimble-handling, rear-engine, rear-wheel drive, two-door available both in hardtop coupé and open configurations. Engineering innovations continued during the years of manufacture, contributing to its motorsports success and popularity. Production started in 1948 at Gmünd, Austria, where Porsche built approximately 50 cars. In 1950 the factory relocated to Zuffenhausen, Germany, and general production of the 356 continued until April 1965, well after the replacement model 911 made its September 1964 debut. Of the 76,000 originally produced, approximately half survive.", user_id: 6)
speedster.photo.attach(io: porsche_pic, filename: 'nes.png', content_type: 'image/png')
speedster.save

db_pic = URI.open("https://i0.wp.com/radical-mag.com/wp-content/uploads/2016/12/@1961-Aston-Martin-DB4-Series-II-7.jpg?w=2500")
aston_db4 = Car.create!(brand: "Aston Martin", model: "DB4", year: "1960", price_day: 190 , category: "British", description: "The DB4 is a grand tourer that was produced by Aston Martin from 1958 until 1963. Technically the DB4 was not a development of the DB Mark III it replaced. It had a platform rather than a tubular chassis with a new engine by Tadek Marek.", user_id: 6)
aston_db4.photo.attach(io: db_pic, filename: 'nes.png', content_type: 'image/png')
aston_db4.save

gts_pic = URI.open("https://www.classicdriver.com/sites/default/files/cars_images/feed_706038/82d21ffa43e00868f6d0ca25b1ccbcda44abb1dc.jpg")
gts_275 = Car.create!(brand: "Ferrari", model: "275 GTS", year: "1965", price_day: 225, category: "Italian", description: "The Ferrari 275 is a series of front-engined V12-powered grand touring automobiles with two-seater coupé and spider bodies produced by Ferrari between 1964 and 1968. The first 275 series cars were powered by a 3.3 L (3286 cc) overhead camshaft Colombo 60° V12 engine producing 260–320 hp (190–240 kW). An updated 275 GTB/4 was introduced in 1966, with a revised four overhead camshaft engine producing 300 hp (220 kW). The 275 series were the first road-going Ferraris equipped with a transaxle and independent rear suspension. Pininfarina designed the 275 coupé and spider bodies, while Scaglietti designed the 275 GTS/4 NART Spyder, of which only 10 were made.", user_id: 6)
gts_275.photo.attach(io: gts_pic, filename: 'nes.png', content_type: 'image/png')
gts_275.save

bugatti_pic = URI.open("https://thecarsafe.com/wp-content/uploads/2019/03/9-2.jpg")
bugatti_57 = Car.create!(brand: "Bugatti", model: "Type 57", year: "1938", price_day: 1200 , category: "French", description: "Elegant, sporty, luxurious and rare. these are four of many epithets that can be applied to bugatti. but there is one model for which they are especially appropriate: the type 57 sc atlantic coupé is not just one of the bugatti legends but perhaps the greatest. only four of these cars were created between 1936 and 1938. three of these extraordinary coupés are still in existence. they are regarded as the most valuable cars in the world. the automotive world has been searching for the fourth atlantic for over 80 years.", user_id: 6)
bugatti_57.photo.attach(io: bugatti_pic, filename: 'nes.png', content_type: 'image/png')
bugatti_57.save

rolls_pic = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/RR_Phantom_V_James_Young_Sedanca_de_Ville.jpg/1600px-RR_Phantom_V_James_Young_Sedanca_de_Ville.jpg")
rolls = Car.create!(brand: "Rolls Royce", model: "V", year: "1962", price_day: 530 , category: "British", description: "The Rolls-Royce Phantom V is a large four-door limousine produced by Rolls-Royce Limited from 1959 to 1968. Based on the Silver Cloud II, it shared a V8 engine and General Motors Hydra-Matic automatic gearbox with that model. Rolls-Royce assembled the cars' chassis and drivetrains with bodies made to standard designs by coachbuilders Park Ward, and James Young, former vendors absorbed by Rolls-Royce.", user_id: 6)
rolls.photo.attach(io: rolls_pic, filename: 'nes.png', content_type: 'image/png')
rolls.save

cobra_pic = URI.open("https://i0.wp.com/radical-mag.com/wp-content/uploads/2016/08/1962-Shelby-260-Cobra-22CSX-200022-41.jpg?w=2500&ssl=1")
cobra = Car.create!(brand: "Shelby", model: "Cobra CSX2000", year: "1962", price_day: 190, category: "American", description: "The AC Cobra, sold in the United States as the Shelby Cobra and AC Shelby Cobra, is a British-American sports car with a Ford V8 engine, produced intermittently in both the UK and the US since 1962.", user_id: 6)
cobra.photo.attach(io: cobra_pic, filename: 'nes.png', content_type: 'image/png')
cobra.save

alfa_pic = URI.open("http://radical-mag.com/wp-content/uploads/2016/08/i_20150805-140223-119.jpg")
alfa = Car.create!(brand: "Alfa Romeo", model: "Montreal", year: "1967", price_day: 150, category: "Italian", description: "The Alfa Romeo Montreal was introduced as a concept car in 1967 at Expo 67, held in Montreal, Quebec, Canada.[3] Originally, the concept cars were displayed without any model name, but the public took to calling it The Montreal.[4] It was a 2+2 coupe using the 1.6-litre engine of the Alfa Romeo Giulia TI and the short wheelbase chassis of the Alfa Romeo Giulia Sprint GT, with a body designed by Marcello Gandini at Bertone. One of the two concept cars built for Expo 67 is displayed in the Alfa Romeo Historical Museum in Arese, Italy, while the other is in museum storage", user_id: 6)
alfa.photo.attach(io: alfa_pic, filename: 'nes.png', content_type: 'image/png')
alfa.save

corvette_pic = URI.open("https://i2.wp.com/radical-mag.com/wp-content/uploads/2018/12/@Corvette-Harley-Earl-13.jpg?w=1656")
corvette = Car.create!(brand: "Chevrolet", model: "Corvette", year: "2965", price_day: 180 , category: "American", description: "The Chevrolet Corvette (C2) is the second generation of the Chevrolet Corvette sports car, produced by the Chevrolet division of General Motors for the 1963 to 1967 model years.", user_id: 6)
corvette.photo.attach(io: corvette_pic, filename: 'nes.png', content_type: 'image/png')
corvette.save
