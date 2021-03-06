/*
 Navicat Premium Data Transfer

 Source Server         : localDatabase
 Source Server Type    : MySQL
 Source Server Version : 100116
 Source Host           : localhost
 Source Database       : affablebean

 Target Server Type    : MySQL
 Target Server Version : 100116
 File Encoding         : utf-8

 Date: 12/03/2016 16:00:34 PM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` tinyint(3) unsigned NOT NULL,
  `category_name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_imdb_link` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='contains product details';

-- ----------------------------
--  Records of `product`
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('1', 'Avatar ', '24.00', 'IMDb score: 7.9, Directed by James Cameron in 2009', '2016-12-03 15:55:51', '1', 'Action', 'http://www.imdb.com/title/tt0499549/?ref_=fn_tt_tt'), ('2', 'Jurassic World ', '5.13', 'IMDb score: 7, Directed by Colin Trevorrow in 2015', '2016-12-03 15:55:51', '1', 'Action', 'http://www.imdb.com/title/tt0369610/?ref_=fn_tt_tt'), ('3', 'The Avengers ', '1.79', 'IMDb score: 8.1, Directed by Joss Whedon in 2012', '2016-12-03 15:55:51', '1', 'Action', 'http://www.imdb.com/title/tt0848228/?ref_=fn_tt_tt'), ('4', 'The Dark Knight ', '25.18', 'IMDb score: 9, Directed by Christopher Nolan in 2008', '2016-12-03 15:55:51', '1', 'Action', 'http://www.imdb.com/title/tt0468569/?ref_=fn_tt_tt'), ('5', 'Star Wars: Episode I', '4.71', 'IMDb score: 6.5, Directed by George Lucas in 1999', '2016-12-03 15:56:59', '1', 'Action', 'http://www.imdb.com/title/tt0120915/?ref_=fn_tt_tt'), ('6', 'Shrek 2 ', '22.11', 'IMDb score: 7.2, Directed by Andrew Adamson in 2004', '2016-12-03 15:55:51', '2', 'Adventure', 'http://www.imdb.com/title/tt0298148/?ref_=fn_tt_tt'), ('7', 'The Hunger Games: Catching Fire ', '37.56', 'IMDb score: 7.6, Directed by Francis Lawrence in 2013', '2016-12-03 15:55:51', '2', 'Adventure', 'http://www.imdb.com/title/tt1951264/?ref_=fn_tt_tt'), ('8', 'The Lion King ', '5.49', 'IMDb score: 8.5, Directed by Roger Allers in 1994', '2016-12-03 15:55:51', '2', 'Adventure', 'http://www.imdb.com/title/tt0110357/?ref_=fn_tt_tt'), ('9', 'Toy Story 3 ', '13.91', 'IMDb score: 8.3, Directed by Lee Unkrich in 2010', '2016-12-03 15:55:51', '2', 'Adventure', 'http://www.imdb.com/title/tt0435761/?ref_=fn_tt_tt'), ('10', 'The Hunger Games ', '35.06', 'IMDb score: 7.3, Directed by Gary Ross in 2012', '2016-12-03 15:55:51', '2', 'Adventure', 'http://www.imdb.com/title/tt1392170/?ref_=fn_tt_tt'), ('11', 'Forrest Gump ', '38.41', 'IMDb score: 8.8, Directed by Robert Zemeckis in 1994', '2016-12-03 15:55:51', '3', 'Comedy', 'http://www.imdb.com/title/tt0109830/?ref_=fn_tt_tt'), ('12', 'Home Alone ', '19.45', 'IMDb score: 7.5, Directed by Chris Columbus in 1990', '2016-12-03 15:55:51', '3', 'Comedy', 'http://www.imdb.com/title/tt0099785/?ref_=fn_tt_tt'), ('13', 'Meet the Fockers ', '24.56', 'IMDb score: 6.3, Directed by Jay Roach in 2004', '2016-12-03 15:55:51', '3', 'Comedy', 'http://www.imdb.com/title/tt0290002/?ref_=fn_tt_tt'), ('14', 'The Hangover ', '28.41', 'IMDb score: 7.8, Directed by Todd Phillips in 2009', '2016-12-03 15:55:51', '3', 'Comedy', 'http://www.imdb.com/title/tt1119646/?ref_=fn_tt_tt'), ('15', 'The Great Gatsby ', '12.45', 'IMDb score: 7.3, Directed by Baz Luhrmann in 2013', '2016-12-03 15:55:51', '4', 'Drama', 'http://www.imdb.com/title/tt1343092/?ref_=fn_tt_tt'), ('16', 'The Curious Case of Benjamin Button ', '18.29', 'IMDb score: 7.8, Directed by David Fincher in 2008', '2016-12-03 15:55:51', '4', 'Drama', 'http://www.imdb.com/title/tt0421715/?ref_=fn_tt_tt'), ('17', 'I Am Legend ', '10.55', 'IMDb score: 7.2, Directed by Francis Lawrence in 2007', '2016-12-03 15:55:51', '4', 'Drama', 'http://www.imdb.com/title/tt0480249/?ref_=fn_tt_tt'), ('18', 'The Wolfman ', '16.55', 'IMDb score: 5.8, Directed by Joe Johnston in 2010', '2016-12-03 15:55:51', '4', 'Drama', 'http://www.imdb.com/title/tt0780653/?ref_=fn_tt_tt'), ('19', 'Titanic ', '16.44', 'IMDb score: 7.7, Directed by James Cameron in 1997', '2016-12-03 15:55:51', '5', 'Romance', 'http://www.imdb.com/title/tt0120338/?ref_=fn_tt_tt'), ('20', 'The Curious Case of Benjamin Button ', '4.77', 'IMDb score: 7.8, Directed by David Fincher in 2008', '2016-12-03 15:55:51', '5', 'Romance', 'http://www.imdb.com/title/tt0421715/?ref_=fn_tt_tt'), ('21', 'Pearl Harbor ', '17.78', 'IMDb score: 6.1, Directed by Michael Bay in 2001', '2016-12-03 15:55:51', '5', 'Romance', 'http://www.imdb.com/title/tt0213149/?ref_=fn_tt_tt'), ('22', 'Gladiator ', '0.52', 'IMDb score: 8.5, Directed by Ridley Scott in 2000', '2016-12-03 15:55:51', '5', 'Romance', 'http://www.imdb.com/title/tt0172495/?ref_=fn_tt_tt'), ('23', 'Mr. & Mrs. Smith ', '38.66', 'IMDb score: 6.5, Directed by Doug Liman in 2005', '2016-12-03 15:55:51', '5', 'Romance', 'http://www.imdb.com/title/tt0356910/?ref_=fn_tt_tt'), ('24', 'The Exorcist ', '14.19', 'IMDb score: 8, Directed by William Friedkin in 1973', '2016-12-03 15:55:51', '6', 'Horror', 'http://www.imdb.com/title/tt0070047/?ref_=fn_tt_tt'), ('25', 'The Blair Witch Project ', '25.86', 'IMDb score: 6.4, Directed by Daniel Myrick in 1999', '2016-12-03 15:55:51', '6', 'Horror', 'http://www.imdb.com/title/tt0185937/?ref_=fn_tt_tt'), ('26', 'The Conjuring ', '2.69', 'IMDb score: 7.5, Directed by James Wan in 2013', '2016-12-03 15:55:51', '6', 'Horror', 'http://www.imdb.com/title/tt1457767/?ref_=fn_tt_tt'), ('27', 'The Grudge ', '13.60', 'IMDb score: 5.9, Directed by Takashi Shimizu in 2004', '2016-12-03 15:55:51', '6', 'Horror', 'http://www.imdb.com/title/tt0391198/?ref_=fn_tt_tt'), ('28', 'Paranormal Activity ', '0.57', 'IMDb score: 6.3, Directed by Oren Peli in 2007', '2016-12-03 15:55:51', '6', 'Horror', 'http://www.imdb.com/title/tt1179904/?ref_=fn_tt_tt');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
