-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2016 at 11:41 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `VT_Services`
--

CREATE TABLE IF NOT EXISTS `VT_Services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `branding` varchar(10) NOT NULL,
  `rating` float NOT NULL,
  `setup_fee` float NOT NULL,
  `transaction_fees` text NOT NULL,
  `how_to_url` text NOT NULL,
  `currencies` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `VT_Services`
--

INSERT INTO `VT_Services` (`id`, `name`, `image`, `description`, `branding`, `rating`, `setup_fee`, `transaction_fees`, `how_to_url`, `currencies`) VALUES
(1, 'VT-Link', 'https://veritrans.co.id/images/vt-link_logo.png', 'VT-Link facilitates a payment feature for your online store by redirecting the customer to Veritrans payment page through a link.', '0', 4.5, 0, '1%', 'https://youtu.be/O5k2154Difk', '{ "currencies": "IDR, SGD, THB, USD" }'),
(2, 'VT-Web', 'https://veritrans.co.id/images/vt-web_logo.png', 'Payments will be made in the yard Veritrans, with design and layout provided by Veritrans.', '0', 4.6, 0, '2%', 'https://youtu.be/T1UElr1VMCU', '{ "currencies": "IDR, SGD, THB, USD" }'),
(3, 'VT Direct', 'https://veritrans.co.id/images/vt-direct_logo.png', 'Where the payment is made at the merchant''s site; with ease of design and layout tailored to the merchant''s requirement.', '1', 5, 0, '2% + $216.4/mo', 'https://youtu.be/aURmMqIZops', '{ "currencies": "IDR, SGD, THB, USD" }'),
(4, 'Authorize.Net', 'https://www.formstack.com/images/comparison/authorize.png', 'Authorize.net Payment gateway enables Internet merchants to accept online payments via credit card and e-check.', '1', 4, 1, '2.9% + 0.3$', 'http://www.authorize.net/resources/howitworksdiagram/', '{ "currencies": "USD, CAD, GDP, EUR" }'),
(5, 'PayUMoney', 'http://www.nextbigwhat.com/wp-content/uploads/2015/05/PayUmoney-logo.png', 'PayUbiz focuses on enterprises and is used by large enterprises such as Snapdeal whereas PayUmoney is the consumer brand of PayU India and has a wallet solution for consumers and payment acceptance solution for SMB businesses.', '1', 4.4, 0, '2%', 'https://www.payumoney.com/websiteintegration.html', '{ "currencies": "INR" }'),
(6, 'PayPal', 'https://www.formstack.com/images/comparison/paypal.png', 'PayPal is the faster, safer way to send money, make an online payment, receive money or set up a merchant account.', '1', 4.5, 1, '2.9% + 0.30$', 'https://developer.paypal.com/docs/integration/web/', '{ "currencies": "USD, CAD, GDP, EUR, INR" }'),
(7, 'Stripe', 'http://www.commercegurus.com/wp-content/uploads/2014/09/Stripe-Logo.png', 'Stripe is a suite of APIs that powers commerce for businesses of all sizes.', '1', 4.1, 0, '2.9% + 0.30$', 'https://stripe.com/docs/checkout/tutorial', '{ "currencies": "USD, AUD, CAD, GDP, EUR, INR" }');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
