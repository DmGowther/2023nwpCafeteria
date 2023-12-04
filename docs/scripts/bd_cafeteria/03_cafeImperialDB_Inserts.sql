Use cafeimperialdb;

-- ========================
-- ======= CAFE Y TÉ ======
-- ========================
-- Espresso
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Espresso', 4.50, 'espresso.png', 'Una bebida de café fuerte y concentrada, hecha al pasar agua caliente a alta presión a través de café molido fino. Tiene un sabor intenso y amargo, con notas a chocolate y nueces.', 'Café molido fino, Agua caliente', 1);

-- Americano
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Americano', 3.75, 'americano.png', 'Un espresso diluido con agua caliente. Tiene un sabor más suave que el espresso, pero aún conserva su intensidad.', 'Espresso, Agua caliente', 1);

-- Cappuccino
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cappuccino', 5.00, 'cappuccino.png', 'Una bebida de café con leche espumosa y espuma de leche. La leche espumosa le da una textura cremosa y la espuma de leche le da un toque de dulzura.', 'Espresso, Leche, Espuma de leche', 1);

-- Latte
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Latte', 4.75, 'latte.png', 'Una bebida de café con leche y espuma de leche. La leche le da un sabor más suave que el espresso, y la espuma de leche le da un toque de dulzura.', 'Espresso, Leche, Espuma de leche', 1);

-- Mocha
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Mocha', 5.50, 'mocha.png', 'Una bebida de café con chocolate y espuma de leche. El chocolate le da un sabor dulce y decadente.', 'Espresso, Leche, Chocolate, Espuma de leche', 1);

-- Macchiato
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Macchiato', 4.25, 'macchiato.png', 'Un espresso con una pequeña cantidad de leche espumosa. La leche espumosa le da un toque de dulzura y cremosidad.', 'Espresso, Leche espumosa', 1);

-- Cortado
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cortado', 4.00, 'cortado.png', 'Un espresso con una pequeña cantidad de leche caliente. La leche caliente le da un sabor más suave y cremoso.', 'Espresso, Leche caliente', 1);

-- Flat White
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Flat White', 4.75, 'flatwhite.png', 'Una bebida de café similar al latte, pero con una capa más fina de espuma de leche. La espuma de leche es más cremosa y se funde con el café.', 'Espresso, Leche, Espuma de leche', 1);

-- Affogato
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Affogato', 5.50, 'affogato.png', 'Un helado de vainilla cubierto con un espresso caliente. El espresso caliente derrite el helado, creando una combinación deliciosa de sabores dulces y amargos.', 'Helado de vainilla, Espresso', 1);

-- Frappé de café
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Frappé de café', 6.00, 'frappe.png', 'Una bebida de café fría y cremosa, hecha con café, leche y hielo. La leche le da un sabor cremoso y el hielo le da una textura refrescante.', 'Café, Leche, Hielo', 1);

-- Café con leche condensada
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café con leche condensada', '4.25', 'lechecondensada.png', 'Una bebida de café con leche condensada. La leche condensada le da un sabor dulce y cremoso.', 'Café, Leche condensada', 1);

-- Café vienés
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café vienés', 5.00, 'cafevienes.png', 'Una bebida de café con crema batida y azúcar. La crema batida le da un toque de dulzura y la azúcar le da un sabor más intenso.', 'Café, Crema batida, Azúcar', 1);

-- Café irlandés
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café irlandés', 6.50, 'cafeirlandes.png', 'Una bebida de café con whisky irlandés, crema batida y azúcar. El whisky irlandés le da un sabor alcohólico y especiado.', 'Café, Whisky irlandés, Crema batida, Azúcar', 1);

-- Café con helado
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café con helado', 5.00, 'cafehelado.png', 'Una bebida de café con helado. El helado le da un sabor dulce y cremoso.', 'Café, Helado', 1);

-- Café con saborizante
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café con saborizante', 4.50, 'cafesaborizante.png', 'Una bebida de café con saborizante, como vainilla, chocolate o caramelo. El saborizante le da un toque de sabor adicional al café.', 'Café, Saborizante', 1);

-- Té verde
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Té verde', 3.50, 'teverde.png', 'Una bebida hecha con hojas de té verde fermentadas. Tiene un sabor fresco y astringente, con notas a hierba y limón.', 'Hojas de té verde, Agua caliente', 1);

-- Té negro
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Té negro', 3.75, 'tenegro.png', 'Una bebida hecha con hojas de té negro fermentadas. Tiene un sabor intenso y amargo, con notas a madera y especias.', 'Hojas de té negro, Agua caliente', 1);

-- Chai latte
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Chai latte', 4.50, 'chailatte.png', 'Una bebida de té negro con leche, especias y azúcar. Tiene un sabor especiado y dulce, con notas a canela, jengibre y cardamomo.', 'Té negro, Leche, Especias (canela, jengibre, cardamomo, clavo), Azúcar', 1);

-- Té de frutas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Té de frutas', 4.00, 'tefrutas.png', 'Una bebida hecha con frutas y agua caliente. Tiene un sabor dulce y refrescante, con notas a frutas frescas.', 'Frutas, Agua caliente', 1);

-- ========================
-- ====== ESPECIALES ======
-- ========================

-- Cafe turco
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cafe turco', 110, 'cafeturco.png', 'Una bebida tradicional de Turquía, hecha con café molido muy fino que se prepara hirviendo en agua a fuego lento. Tiene un sabor intenso y amargo, con notas a chocolate y nueces.', 'Café molido muy fino, Agua', 2);

-- Cafe de olla
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cafe de olla', 95, 'cafedeolla.png', 'Una bebida tradicional de México, hecha con café molido, agua, piloncillo y canela. Tiene un sabor dulce y especiado, con notas a café, canela y piloncillo.', 'Café molido, Agua, Piloncillo, Canela', 2);

-- Cafe con licor
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cafe con licor', 130, 'cafeconlicor.png', 'Una bebida hecha con café, licor y, a veces, crema batida. Hay muchas variaciones de esta bebida, pero algunas de las combinaciones más populares incluyen café con brandy, café con ron y café con Baileys.', 'Café, Licor (opcional), Crema batida (opcional)', 2);

-- Cafe nitro
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cafe nitro', 140, 'cafenitro.png', 'Una bebida hecha con café, nitrógeno líquido y agua. El nitrógeno líquido le da al café una textura cremosa y espumosa.', 'Café, Nitrógeno líquido, Agua', 2);

-- Espresso con hielo y jugo de limón
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Espresso con hielo y jugo de limón', 150, 'espressohielojumo.png', 'Una bebida hecha con espresso, hielo y jugo de limón. Es una bebida refrescante y ácida, perfecta para un día caluroso.', 'Espresso, Hielo, Jugo de limón', 2);

-- Café frío con leche de coco y jarabe de almendra
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Café frío con leche de coco y jarabe de almendra', 135, 'cafefriococoalmendra.png', 'Una bebida hecha con café, leche de coco, jarabe de almendra y hielo. Es una bebida cremosa y dulce, perfecta para una tarde relajante.', 'Café, Leche de coco, Jarabe de almendra, Hielo', 2);

-- Tarta de manzana con helado de vainilla
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Tarta de manzana con helado de vainilla', 140, 'tartamanzanahelado.png', 'La tarta de manzana con helado de vainilla es un postre clásico que combina perfectamente lo dulce y lo salado. La tarta de manzana está hecha con una masa crujiente y una mermelada de manzana dulce, y el helado de vainilla agrega un toque de cremosidad y dulzura.', 'Masa de tarta de manzana, Mermelada de manzana, Helado de vainilla', 2);

-- Gofres con crema batida y fresas frescas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Gofres con crema batida y fresas frescas', 155, 'gofresfresas.png', 'Los gofres con crema batida y fresas frescas son un desayuno o postre delicioso y fácil de preparar. Los gofres están hechos con una masa esponjosa y crujiente, y la crema batida y las fresas agregan un toque de dulzura y frescura.', 'Masa de gofres, Crema batida, Fresas frescas', 2);


-- Batido de proteína de vainilla con espinacas y banana
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Batido de proteína de vainilla con espinacas y banana', 120, 'batidoproteina.png', 'El batido de proteína de vainilla con espinacas y plátano es una bebida saludable y nutritiva. Está hecho con proteína en polvo, leche, espinacas, plátano, miel o jarabe de arce y hielo. Es una buena fuente de proteínas, fibra y vitaminas.', 'Proteína en polvo, Leche, Espinacas, Plátano, Miel o jarabe de arce, Hielo', 2);

-- Chips de camote
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Chips de camote', 100, 'chipscamote.png', 'Los chips de camote son una alternativa saludable a los chips de patata. Están hechos con camote, aceite de oliva y especias, y son una buena fuente de fibra y vitamina A.', 'Camote, Aceite de oliva, Especias', 2);

-- ========================
-- ======= POSTRES =======
-- ========================

-- Tarta de limón
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Tarta de limón', 150, 'tartadelimon.png', 'Una tarta clásica y refrescante, hecha con una masa crujiente y una crema de limón ácida y dulce.', 'Masa de tarta, Crema de limón', 3);

-- Flan de caramelo
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Flan de caramelo', 125, 'flandecaramelo.png', 'Porcion grande de un postre delicioso y cremoso, hecho con una capa de caramelo crujiente y una base de crema pastelera.', 'Caramelo, Crema pastelera', 3);

-- Profiteroles rellenos de crema
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Profiteroles rellenos de crema', 175, 'profiteroles.png', 'Diez unidades de una deliciosa y crujiente masa de hojaldre rellena con una crema dulce y cremosa.', 'Hojaldre, Crema pastelera', 3);

-- Barra de chocolate y cacahuete
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Barra de chocolate y cacahuete', 125, 'barrachocolatecacahuete.png', 'Tres porciones de una combinación clásica y deliciosa, hecha con chocolate intenso y cacahuetes crujientes.', 'Chocolate, Cacahuetes', 3);

-- Magdalena de Naranja
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Magdalena de naranja', 100, 'magdalenanaranja.png', 'Ocho unidades de magdalenas suaves y esponjosas, con un delicioso sabor a naranja.', 'Harina, Huevos, Azúcar, Leche, Limón, Naranja', 3);

-- Pastel de Queso y Frutos Rojos
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Pastel de queso y frutos rojos', 250, 'pastelquesofrutosrojos.png', 'Un pastel cremoso y delicioso, hecho con una base de galletas y una capa de queso crema con frutos rojos.', 'Galletas, Queso crema, Frutos rojos', 3);

-- Cheesecake de fresa
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Cheesecake de fresa', 225, 'cheesecakefresa.png', 'Un pastel cremoso y refrescante, hecho con una base de galletas y una capa de queso crema con fresas frescas.', 'Galletas, Queso crema, Fresas frescas', 3);

-- Brownie de chocolate
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Brownie de chocolate', 175, 'browniechocolate.png', 'Un pastel húmedo y chocolatoso de diez porciones, hecho con chocolate intenso y nueces.', 'Chocolate, Nueces', 3);

-- Tiramisú
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Tiramisú', 200, 'tiramisu.png', 'Ocho unidades de un postre italiano clásico, hecho con bizcochos de vainilla, café y queso mascarpone.', 'Bizcochos de vainilla, Café, Queso mascarpone', 3);

-- Muffin de arándanos
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Muffin de arándanos', 125, 'muffinarandanos.png', 'Ocho unidades de un muffin esponjoso y jugoso, hecho con arándanos frescos.', 'Harina, Huevos, Azúcar, Leche, Arándanos frescos', 3);

-- Galletas de avena y pasas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Galletas de avena y pasas', 100, 'galletasavenapasas.png', 'Doce unidades de unas galletas deliciosas y crujientes, hechas con avena, pasas y nueces.', 'Avena, Pasas, Nueces', 3);

-- Dona glaseada
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Dona glaseada', 125, 'donaglaseada.png', 'Ocho donas clásicas y deliciosas, hechas con una masa dulce y crujiente con una cobertura glaseada.', 'Masa de dona, Glaseado', 3);

-- Croissant de almendra
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Croissant de almendra', 175, 'croissantalmendra.png', 'Cuatro unidades de un croissant delicioso y crujiente, relleno con una crema de almendras.', 'Hojaldre, Crema de almendras', 3);

-- Rollitos de canela
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Rollitos de canela', 150, 'rollitoscanela.png', 'Doce unidades de un postre delicioso y esponjoso, hecho con una masa dulce con canela.', 'Harina, Huevos, Azúcar, Leche, Canela', 3);

-- ========================
-- === ACOMPAÑAMIENTOS ====
-- ========================
use cafeimperialdb;

-- Tostadas de aguacate
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Tostadas de aguacate', 100, 'tostadasaguacate.png', 'Tres unidades de una opción saludable y deliciosa para el desayuno o el brunch, hecha con tostadas integrales, aguacate y un toque de limón.', 'Tostadas integrales, Aguacate, Limón', 4);

-- Bagel de salmón y queso crema
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Bagel de salmón y queso crema', 125, 'bagelsalmonquesocrema.png', 'Un bocadillo delicioso y nutritivo, hecho con un bagel integral, salmón ahumado y queso crema.', 'Bagel integral, Salmón ahumado, Queso crema', 4);

-- Sándwich de jamón y queso
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Sándwich de jamón y queso', 100, 'sandwichjamonqueso.png', 'Dos unidades de un clásico bocadillo, hecho con pan, jamón, queso y un poco de mayonesa o mostaza.', 'Pan, Jamón, Queso, Mayonesa o mostaza', 4);

-- Ensalada de frutas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Ensalada de frutas', 75, 'ensaladafrutas.png', 'Un tazon mediano de una opción saludable y refrescante, hecha con una variedad de frutas frescas, como fresas, bananas, manzanas y naranjas.', 'Frutas frescas', 4);

-- Yogur con granola y frutas frescas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Yogur con granola y frutas frescas', 100, 'yogurgranolafrutas.png', 'Un plato de un desayuno o merienda delicioso y nutritivo, hecho con yogur natural, granola y frutas frescas.', 'Yogur natural, Granola, Frutas frescas', 4);

-- Empanada de pollo
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Empanada de pollo', 150, 'empanadapollo.png', 'Tres unidades de un bocadillo delicioso y sabroso, hecho con una masa crujiente y un relleno de pollo, queso y especias.', 'Masa de empanada, Pollo, Queso, Especias', 4);

-- Pudín de pan
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Pudín de pan', 125, 'pudindepan.png', 'Un postre mediano delicioso y cremoso, hecho con pan, leche, huevos y azúcar.', 'Pan, Leche, Huevos, Azúcar', 4);

-- Huevos revueltos con tostadas
INSERT INTO products (name, price, image, description, ingredients, categorieId)
VALUES ('Huevos revueltos con tostadas', 100, 'huevosrevueltostotas.png', 'Un plato de un desayuno clásico y delicioso, hecho con huevos revueltos, tostadas y un toque de salsa.', 'Huevos, Tostadas, Salsa', 4);


