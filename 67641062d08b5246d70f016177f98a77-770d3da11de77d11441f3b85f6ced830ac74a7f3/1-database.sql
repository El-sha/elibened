-- (A) PRODUCTS TABLE
CREATE TABLE `products` (
  `pid` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `products`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `products` (`pid`, `name`, `image`, `price`) VALUES
(1, 'Basket Ball', 'basket.png', '12.34'),
(2, 'Soccer Ball', 'soccer.png', '23.45'),
(3, 'Volley Ball', 'volley.png', '34.56'),
(4, 'Waterpolo Ball', 'water.png', '45.67');

-- (B) ORDERS TABLE
CREATE TABLE `orders` (
  `oid` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`),
  ADD KEY `date` (`date`);

ALTER TABLE `orders`
  MODIFY `oid` bigint(20) NOT NULL AUTO_INCREMENT;

-- (C) ORDERS ITEMS TABLE
CREATE TABLE `orders_items` (
  `oid` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`oid`,`name`);