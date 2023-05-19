

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camerarental`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera_reg`
--

CREATE TABLE `camera_reg` (
  `id` int(11) NOT NULL,
  `camera_reg` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera_reg`
--

INSERT INTO `camera_reg` (`id`, `camera_reg`, `make`, `model`, `available`) VALUES
(3, 'A0003', 'Honda', 'Fit6', 'No'),
(4, 'A0004', 'Honda', 'Fit7', 'No'),
(5, 'A0005', 'Honda', 'Swift', 'No'),
(6, 'A0006', 'honda', 'swift2', 'Yes'),
(7, 'A0007', 'Honda', 'Fit4', 'Yes'),
(8, 'A0008', 'Honda', 'swift', 'No'),
(9, 'A0009', 'Honda', 'Swift3', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `name`, `address`, `mobile`) VALUES
(1, 'C0001', 'kobi', 'sddf dsfds dsfdsf', 2342342),
(2, 'C0002', 'Nimal', 'dsfsdf', 2434234),
(3, 'C0003', 'raja', 'main street colombo	', 3432423),
(4, 'C0004', 'banu', 'sdfsf dsf', 34234),
(5, 'C0005', 'john', 'main street chennai', 34324233),
(6, 'C0006', 'Peter', 'dsfsdf	', 4324234);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `camera_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`id`, `camera_id`, `cust_id`, `fee`, `date`, `due`) VALUES
(18, 'A0004', 'C0002', 5000, '2019-02-16', '2019-02-20'),
(19, 'A0002', 'C0001', 4000, '2019-02-17', '2019-02-22'),
(20, 'A0003', 'C0004', 5000, '2019-02-17', '2019-02-18'),
(21, 'A0005', 'C0001', 3000, '2019-10-14', '2019-10-15'),
(22, 'A0008', 'C0006', 1000, '2020-06-17', '2020-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `returncamera`
--

CREATE TABLE `returncamera` (
  `id` int(11) NOT NULL,
  `camera_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elp` int(11) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returncamera`
--

INSERT INTO `returncamera` (`id`, `camera_id`, `cust_id`, `return_date`, `elp`, `fine`) VALUES
(1, 'A0001', 'C0001', '2019-02-04', 12, 1200),
(2, 'A0002', 'C0002', '2019-02-21', 0, 0),
(3, 'A0006', 'C0005', '2019-02-19', 0, 0),
(4, 'A0005', 'C0001', '2019-02-06', 11, 1100),
(5, 'A0007', 'C0006', '2019-10-15', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera_reg`
--
ALTER TABLE `camera_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returncamera`
--
ALTER TABLE `returncamera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera_reg`
--
ALTER TABLE `camera_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `returncamera`
--
ALTER TABLE `returncamera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
