/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  xduan7
 * Created: 2015-12-4
 */
-- Sample data for table `category`
--('skincare'),('body'),('makeup'),('tool');
INSERT INTO `category` (name) VALUES ('skincare'),('makeup'),('body'),('tools'),('hair');


--
-- Sample data for table `product`
--
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('SK-II', 65, 'Facial Treatment Cleanser (3.6oz)', 1);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Fresh', 52, 'Rose Face Mask (3.3oz)', 1);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('La Mer', 230, 'The Renewal Oil (1oz)', 1);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Tatcha', 45, 'Dewy Skin Mist (40 ml)', 1);

INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Hourglass', 70, 'Ambient Lighting Edit (0.049oz x 6)', 2);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Giorgio Armani', 55, 'Luminous Silk Foundation (1oz)', 2);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Dolce & Gabbana', 43, 'Luminous Cheek Colour (0.17oz)', 2);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Burberry', 56, 'Complete Eye Palette (0.19oz)', 2);

INSERT INTO `product` (`name`, price, description, category_id) VALUES ('LOccitane', 38, 'Hand Cream Collection 5 x 1oz', 3);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Philosophy', 27, 'Snow Angel Set 4 x 4oz', 3);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Clarins', 65, 'Body Lift Cellulite Control (6.9oz)', 3);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Tata Harper', 100, 'Redefining Body Balm (7oz)', 3);

INSERT INTO `product` (`name`, price, description, category_id) VALUES ('ghd', 160, 'Classic Styler (1 inch)', 4);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Marc Jacobs', 73, 'Bronzer Brush No. 12', 4);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Bobbi Brown', 46, 'Blush Brush', 4);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Foreo', 120, 'Luna Mini', 4);

INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Klorane', 15, 'Dry Shampoo (3.2oz)', 5);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('ALTERNA', 29, 'Moisture Conditioner (8.5oz)', 5);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Verb', 12, 'Hydrating Shampoo (12oz)', 5);
INSERT INTO `product` (`name`, price, description, category_id) VALUES ('Agave', 37, 'Oil Treatment (4oz)', 5);


