-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 07:53 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_additionaldetails`
--

CREATE TABLE `account_additionaldetails` (
  `id` bigint(20) NOT NULL,
  `cust_name` varchar(25) NOT NULL,
  `is_diff` tinyint(1) NOT NULL,
  `inc_holder` tinyint(1) NOT NULL,
  `con_phone` varchar(10) NOT NULL,
  `con_person_name` varchar(25) NOT NULL,
  `con_person_phone` varchar(10) NOT NULL,
  `applicant_type_id` bigint(20) NOT NULL,
  `cust_type_id` bigint(20) NOT NULL,
  `lead_id_id` bigint(20) NOT NULL,
  `relation_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_additionaldetails`
--

INSERT INTO `account_additionaldetails` (`id`, `cust_name`, `is_diff`, `inc_holder`, `con_phone`, `con_person_name`, `con_person_phone`, `applicant_type_id`, `cust_type_id`, `lead_id_id`, `relation_id`) VALUES
(3, 'Shamlata Poojary', 0, 1, '8104930932', '', '', 1, 1, 3, 1),
(4, 'Raj Singh', 0, 1, '7894568526', '', '', 1, 1, 1, 1),
(5, 'Rohan Shetty', 0, 1, '7845964521', '', '', 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_contactperson`
--

CREATE TABLE `account_contactperson` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser`
--

CREATE TABLE `account_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` longtext DEFAULT NULL,
  `pincode` longtext DEFAULT NULL,
  `mapped_to_dept` varchar(200) NOT NULL,
  `reporting_head` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `system_role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_customuser`
--

INSERT INTO `account_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `phone`, `address`, `pincode`, `mapped_to_dept`, `reporting_head`, `email`, `city_id`, `system_role_id`) VALUES
(1, 'pbkdf2_sha256$390000$2uuNMBmJdWphYQvSEb6SBV$DNEkMQAyiZ3FN6l0LPFRdnkxR5/o5YSQ8m/nMD11Nug=', '2022-12-24 02:20:20.198814', 1, 'Raj', '', '', 1, 1, '2022-11-14 15:55:26.000000', '7898898457', 'Dadar', '45454', 'Admin', 'Admin', 'rajsingh08471@gmail.com', 2, NULL),
(15, 'pbkdf2_sha256$390000$MOeU2te0LhGv4nZ2exw2pv$d5chZk0MGoTU/wIrOJh3Iqd14Fdi9zYYL67F8fKXgzQ=', '2022-12-22 16:34:51.650221', 0, 'ORP015', '', '', 1, 1, '2022-12-03 14:08:04.073905', '4789875462', 'Mulund', '454545', 'Admin', 'Admin', 'raj.singh15789@sakec.ac.in', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_groups`
--

CREATE TABLE `account_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_customuser_groups`
--

INSERT INTO `account_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(14, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_user_permissions`
--

CREATE TABLE `account_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_housewifedetails`
--

CREATE TABLE `account_housewifedetails` (
  `hw_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(3) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `alt_phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `end_use` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_housewifeexistingcarddetails`
--

CREATE TABLE `account_housewifeexistingcarddetails` (
  `card_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `credit_limit` varchar(20) NOT NULL,
  `limit_utilized` varchar(20) NOT NULL,
  `min_due` varchar(20) NOT NULL,
  `card_age` varchar(3) NOT NULL,
  `pay_delay` varchar(5) NOT NULL,
  `pay_delay_year` varchar(20) NOT NULL,
  `moratorium_taken` varchar(20) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_housewifeexistingloandetails`
--

CREATE TABLE `account_housewifeexistingloandetails` (
  `loan_det_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `product` varchar(10) NOT NULL,
  `loan_amt` varchar(10) NOT NULL,
  `emi` varchar(10) NOT NULL,
  `roi` varchar(3) NOT NULL,
  `tenure` varchar(3) NOT NULL,
  `emi_start_date` date NOT NULL,
  `emi_end_date` date NOT NULL,
  `outstanding_paid` varchar(10) NOT NULL,
  `outstanding_amt` varchar(10) NOT NULL,
  `any_bounce` varchar(10) NOT NULL,
  `moratorium_taken` varchar(10) NOT NULL,
  `applicant_type` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_housewifeinvestmentdetails`
--

CREATE TABLE `account_housewifeinvestmentdetails` (
  `invest_id` int(11) NOT NULL,
  `investment` varchar(30) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_housewifepersonaldetails`
--

CREATE TABLE `account_housewifepersonaldetails` (
  `hw_per_det_id` int(11) NOT NULL,
  `loan_Amt` varchar(10) NOT NULL,
  `cibil_type` varchar(10) NOT NULL,
  `cibil_score` varchar(10) NOT NULL,
  `loan_cc` varchar(10) NOT NULL,
  `repayment_history` varchar(10) NOT NULL,
  `default_year` varchar(10) NOT NULL,
  `details_default` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_leads`
--

CREATE TABLE `account_leads` (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `alt_phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `loan_amt` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `added_by` varchar(50) DEFAULT NULL,
  `city_id` bigint(20) NOT NULL,
  `prefix_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `sub_product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_leads`
--

INSERT INTO `account_leads` (`id`, `name`, `phone`, `alt_phone`, `email`, `reference`, `loan_amt`, `address`, `pincode`, `added_by`, `city_id`, `prefix_id`, `product_id`, `state_id`, `sub_product_id`) VALUES
(1, 'Raj Singh', '7894568526', '7582693542', 'rajsingh08471@gmail.com', 'Friend', 450000, 'Dombivli East', '421201', 'raj', 4, 1, 1, 1, 1),
(2, 'Shamlata Poojary', '8104930932', '5454546892', 'shamlata.poojary@gmail.com', 'Raj', 1000000, 'Chembur', '454545', 'Raj', 1, 1, 1, 1, 2),
(3, 'Shamlata Poojary', '8104930932', '5454546892', 'raj.singh15789@sakec.ac.in', 'Friend', 100000, 'Chembur', '454545', 'Raj', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_loanapplication`
--

CREATE TABLE `account_loanapplication` (
  `id` bigint(20) NOT NULL,
  `websiteUrl` varchar(254) DEFAULT NULL,
  `coApplicantWebsiteUrl` varchar(254) DEFAULT NULL,
  `loan` varchar(124) NOT NULL,
  `loanCustomerType` varchar(50) DEFAULT NULL,
  `loanCustomerCoApplicantType` varchar(50) DEFAULT NULL,
  `remark` longtext NOT NULL,
  `lead_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_loandocuments`
--

CREATE TABLE `account_loandocuments` (
  `id` bigint(20) NOT NULL,
  `documentName` varchar(124) NOT NULL,
  `document` varchar(100) NOT NULL,
  `loanApplication_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_propertydetails`
--

CREATE TABLE `account_propertydetails` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype1`
--

CREATE TABLE `account_proptype1` (
  `id` bigint(20) NOT NULL,
  `builder_name` varchar(50) NOT NULL,
  `proj_name` varchar(50) NOT NULL,
  `apf_num` varchar(50) NOT NULL,
  `const_stage` varchar(50) NOT NULL,
  `per_complete` double NOT NULL,
  `possession_date` date NOT NULL,
  `total_floors` int(11) NOT NULL,
  `buy_floor` int(11) NOT NULL,
  `slabs_done` int(11) NOT NULL,
  `agreement_val` int(11) NOT NULL,
  `market_val` int(11) NOT NULL,
  `prop_loc` varchar(50) NOT NULL,
  `cc_rec` tinyint(1) NOT NULL,
  `cc_rec_upto` int(11) DEFAULT NULL,
  `municipal_approved` tinyint(1) NOT NULL,
  `area_size` int(11) NOT NULL,
  `pay_till_date` decimal(12,2) NOT NULL,
  `stamp_duty` tinyint(1) NOT NULL,
  `stamp_duty_amt` varchar(10) NOT NULL,
  `cost_sheet` tinyint(1) NOT NULL,
  `cost_sheet_amt` varchar(7) DEFAULT NULL,
  `future_rent` int(11) NOT NULL,
  `car_parking_amt` int(11) DEFAULT NULL,
  `subvention_scheme` tinyint(1) DEFAULT NULL,
  `car_parking` tinyint(1) NOT NULL,
  `agreement_type_id` bigint(20) NOT NULL,
  `area_in_id` bigint(20) NOT NULL,
  `area_type_id` bigint(20) NOT NULL,
  `lead_id_id` bigint(20) NOT NULL,
  `prop_city_id` bigint(20) NOT NULL,
  `prop_in_id` bigint(20) NOT NULL,
  `prop_state_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype1_apf_approved_lender`
--

CREATE TABLE `account_proptype1_apf_approved_lender` (
  `id` bigint(20) NOT NULL,
  `proptype1_id` bigint(20) NOT NULL,
  `bankname_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype2`
--

CREATE TABLE `account_proptype2` (
  `id` bigint(20) NOT NULL,
  `builder_name` varchar(50) NOT NULL,
  `proj_name` varchar(50) NOT NULL,
  `apf_num` varchar(50) NOT NULL,
  `const_stage` varchar(50) NOT NULL,
  `per_complete` double NOT NULL,
  `possession_date` date NOT NULL,
  `total_floors` int(11) NOT NULL,
  `buy_floor` int(11) NOT NULL,
  `slabs_done` int(11) NOT NULL,
  `agreement_val` int(11) NOT NULL,
  `market_val` int(11) NOT NULL,
  `prop_loc` varchar(50) NOT NULL,
  `cc_rec` tinyint(1) NOT NULL,
  `cc_rec_upto` int(11) DEFAULT NULL,
  `municipal_approved` tinyint(1) NOT NULL,
  `area_size` int(11) NOT NULL,
  `pay_till_date` varchar(20) DEFAULT NULL,
  `stamp_duty` tinyint(1) NOT NULL,
  `stamp_duty_amt` int(11) NOT NULL,
  `cost_sheet` tinyint(1) NOT NULL,
  `cost_sheet_amt` int(11) DEFAULT NULL,
  `future_rent` int(11) NOT NULL,
  `car_parking_amt` int(11) DEFAULT NULL,
  `car_parking` tinyint(1) NOT NULL,
  `agreement_type_id` bigint(20) NOT NULL,
  `area_in_id` bigint(20) NOT NULL,
  `area_type_id` bigint(20) NOT NULL,
  `lead_id_id` bigint(20) NOT NULL,
  `prop_city_id` bigint(20) NOT NULL,
  `prop_in_id` bigint(20) NOT NULL,
  `prop_state_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `seller_status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype2_apf_approved_lender`
--

CREATE TABLE `account_proptype2_apf_approved_lender` (
  `id` bigint(20) NOT NULL,
  `proptype2_id` bigint(20) NOT NULL,
  `bankname_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype3`
--

CREATE TABLE `account_proptype3` (
  `id` bigint(20) NOT NULL,
  `builder_name` varchar(50) NOT NULL,
  `proj_name` varchar(50) NOT NULL,
  `apf_num` varchar(50) NOT NULL,
  `total_floors` int(11) NOT NULL,
  `buy_floor` int(11) NOT NULL,
  `building_age` int(11) NOT NULL,
  `agreement_val` int(11) NOT NULL,
  `market_val` int(11) NOT NULL,
  `prop_loc` varchar(50) NOT NULL,
  `cc_rec` tinyint(1) NOT NULL,
  `oc_rec` tinyint(1) NOT NULL,
  `municipal_approved` tinyint(1) NOT NULL,
  `area_size` int(11) NOT NULL,
  `pay_till_date` varchar(10) NOT NULL,
  `stamp_duty` tinyint(1) NOT NULL,
  `stamp_duty_amt` int(11) DEFAULT NULL,
  `cost_sheet` tinyint(1) NOT NULL,
  `cost_sheet_amt` int(11) DEFAULT NULL,
  `car_parking_amt` int(11) DEFAULT NULL,
  `car_parking` tinyint(1) NOT NULL,
  `agreement_type_id` bigint(20) NOT NULL,
  `area_in_id` bigint(20) NOT NULL,
  `area_type_id` bigint(20) NOT NULL,
  `lead_id_id` bigint(20) NOT NULL,
  `prop_city_id` bigint(20) NOT NULL,
  `prop_in_id` bigint(20) NOT NULL,
  `prop_state_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype3_apf_approved_lender`
--

CREATE TABLE `account_proptype3_apf_approved_lender` (
  `id` bigint(20) NOT NULL,
  `proptype3_id` bigint(20) NOT NULL,
  `bankname_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype4`
--

CREATE TABLE `account_proptype4` (
  `id` bigint(20) NOT NULL,
  `name_of_seller` varchar(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `apf_num` varchar(50) NOT NULL,
  `total_floors` int(11) NOT NULL,
  `buy_floor` int(11) NOT NULL,
  `building_age` int(11) NOT NULL,
  `agreement_val` int(11) NOT NULL,
  `market_val` int(11) NOT NULL,
  `prop_loc` varchar(50) NOT NULL,
  `cc_available` tinyint(1) NOT NULL,
  `oc_rec` tinyint(1) NOT NULL,
  `oc_rec_floor` int(11) DEFAULT NULL,
  `municipal_approved` tinyint(1) NOT NULL,
  `area_size` int(11) NOT NULL,
  `pay_till_date` varchar(10) NOT NULL,
  `previous_aggrement_available` tinyint(1) DEFAULT NULL,
  `registration_done_previous_aggremnet` varchar(100) NOT NULL,
  `concern_area` varchar(100) NOT NULL,
  `stamp_duty_registration_paid` tinyint(1) NOT NULL,
  `stamp_duty_amt` int(11) DEFAULT NULL,
  `property_tax_paid` tinyint(1) DEFAULT NULL,
  `society_informed` tinyint(1) DEFAULT NULL,
  `car_parking_amt` int(11) DEFAULT NULL,
  `car_parking` tinyint(1) NOT NULL,
  `agreement_type_id` bigint(20) NOT NULL,
  `area_in_id` bigint(20) NOT NULL,
  `area_type_id` bigint(20) NOT NULL,
  `lead_id_id` bigint(20) NOT NULL,
  `prop_city_id` bigint(20) NOT NULL,
  `prop_in_id` bigint(20) NOT NULL,
  `prop_state_id` bigint(20) NOT NULL,
  `room_type_id` bigint(20) NOT NULL,
  `seller_status_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_proptype4_apf_approved_lender`
--

CREATE TABLE `account_proptype4_apf_approved_lender` (
  `id` bigint(20) NOT NULL,
  `proptype4_id` bigint(20) NOT NULL,
  `bankname_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_referralprofile`
--

CREATE TABLE `account_referralprofile` (
  `id` bigint(20) NOT NULL,
  `has_GST` tinyint(1) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `referral_code` varchar(200) NOT NULL,
  `agreement` varchar(100) NOT NULL,
  `profession` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `full_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_referralprofile`
--

INSERT INTO `account_referralprofile` (`id`, `has_GST`, `reference`, `referral_code`, `agreement`, `profession`, `user_id`, `full_name`) VALUES
(13, 1, 'Friend', '4545', 'agreements/Agreement_ORP015.pdf', 'Employee', 15, 'Ramesh Jha');

-- --------------------------------------------------------

--
-- Table structure for table `account_retireddetails`
--

CREATE TABLE `account_retireddetails` (
  `retired_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(3) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `alt_phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `end_use` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredexistingcarddetails`
--

CREATE TABLE `account_retiredexistingcarddetails` (
  `card_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `credit_limit` varchar(20) NOT NULL,
  `limit_utilized` varchar(20) NOT NULL,
  `min_due` varchar(20) NOT NULL,
  `card_age` varchar(3) NOT NULL,
  `pay_delay` varchar(5) NOT NULL,
  `pay_delay_year` varchar(20) NOT NULL,
  `moratorium_taken` varchar(20) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredexistingloandetails`
--

CREATE TABLE `account_retiredexistingloandetails` (
  `loan_det_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `product` varchar(10) NOT NULL,
  `loan_amt` varchar(10) NOT NULL,
  `emi` varchar(10) NOT NULL,
  `roi` varchar(3) NOT NULL,
  `tenure` varchar(3) NOT NULL,
  `emi_start_date` date NOT NULL,
  `emi_end_date` date NOT NULL,
  `outstanding_paid` varchar(10) NOT NULL,
  `outstanding_amt` varchar(10) NOT NULL,
  `any_bounce` varchar(10) NOT NULL,
  `moratorium_taken` varchar(10) NOT NULL,
  `applicant_type` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredinvestmentdetails`
--

CREATE TABLE `account_retiredinvestmentdetails` (
  `invest_id` int(11) NOT NULL,
  `investment` varchar(30) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredotherdetails`
--

CREATE TABLE `account_retiredotherdetails` (
  `other_det_id` int(11) NOT NULL,
  `inward_cheque` varchar(30) NOT NULL,
  `multiple_enquiry` varchar(30) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredpensiondetails`
--

CREATE TABLE `account_retiredpensiondetails` (
  `pension_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `net_pension` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_retiredresidencedetails`
--

CREATE TABLE `account_retiredresidencedetails` (
  `res_id` int(11) NOT NULL,
  `res_type` varchar(50) NOT NULL,
  `current_location` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_saladditionaldetails`
--

CREATE TABLE `account_saladditionaldetails` (
  `sal_add_det_id` int(11) NOT NULL,
  `inward_cheque_return` int(10) UNSIGNED NOT NULL CHECK (`inward_cheque_return` >= 0),
  `loan_inquiry_disbursement` tinyint(1) NOT NULL,
  `loan_inquiry_disbursement_details` longtext DEFAULT NULL,
  `addi_details_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_saladditionalotherincomes`
--

CREATE TABLE `account_saladditionalotherincomes` (
  `add_oth_inc_id` int(11) NOT NULL,
  `Future_Rent` tinyint(1) NOT NULL,
  `income_amount` int(10) UNSIGNED NOT NULL CHECK (`income_amount` >= 0),
  `addi_details_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_salcompanydetails`
--

CREATE TABLE `account_salcompanydetails` (
  `comp_det_id` int(11) NOT NULL,
  `other_company_name` varchar(20) NOT NULL,
  `paid_up_capital` int(10) UNSIGNED NOT NULL CHECK (`paid_up_capital` >= 0),
  `company_age` int(10) UNSIGNED NOT NULL CHECK (`company_age` >= 0),
  `designation` varchar(50) NOT NULL,
  `nature_of_business` varchar(50) NOT NULL,
  `current_experience` int(10) UNSIGNED NOT NULL CHECK (`current_experience` >= 0),
  `total_experience` int(10) UNSIGNED NOT NULL CHECK (`total_experience` >= 0),
  `form_16` tinyint(1) NOT NULL,
  `Provident_Fund_deduction` tinyint(1) NOT NULL,
  `TDS_deduction` tinyint(1) NOT NULL,
  `office_phone` varchar(10) NOT NULL,
  `office_email` varchar(50) NOT NULL,
  `addi_details_id_id` bigint(20) DEFAULT NULL,
  `company_name_id` bigint(20) DEFAULT NULL,
  `company_type_id` bigint(20) DEFAULT NULL,
  `designation_type_id` bigint(20) DEFAULT NULL,
  `employment_type_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salcompanydetails`
--

INSERT INTO `account_salcompanydetails` (`comp_det_id`, `other_company_name`, `paid_up_capital`, `company_age`, `designation`, `nature_of_business`, `current_experience`, `total_experience`, `form_16`, `Provident_Fund_deduction`, `TDS_deduction`, `office_phone`, `office_email`, `addi_details_id_id`, `company_name_id`, `company_type_id`, `designation_type_id`, `employment_type_id`, `location_id`) VALUES
(1, 'Null', 5000000, 23, 'Manager', 'dont know', 2, 5, 0, 0, 1, '4545454545', 'ramesh@gmail.com', 3, 1, 9, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_salexistingcreditcard`
--

CREATE TABLE `account_salexistingcreditcard` (
  `existing_credit_card_id` int(11) NOT NULL,
  `other_bank_name` varchar(10) NOT NULL,
  `credit_limit` int(10) UNSIGNED NOT NULL CHECK (`credit_limit` >= 0),
  `limit_utilized` int(10) UNSIGNED NOT NULL CHECK (`limit_utilized` >= 0),
  `minimum_due` decimal(12,2) NOT NULL,
  `credit_card_age` int(10) UNSIGNED NOT NULL CHECK (`credit_card_age` >= 0),
  `payment_delay` tinyint(1) NOT NULL,
  `moratorium_taken` tinyint(1) NOT NULL,
  `addi_details_id_id` bigint(20) NOT NULL,
  `bank_name_id` bigint(20) NOT NULL,
  `payment_delay_year_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salexistingcreditcard`
--

INSERT INTO `account_salexistingcreditcard` (`existing_credit_card_id`, `other_bank_name`, `credit_limit`, `limit_utilized`, `minimum_due`, `credit_card_age`, `payment_delay`, `moratorium_taken`, `addi_details_id_id`, `bank_name_id`, `payment_delay_year_id`) VALUES
(1, 'no', 85000, 25000, '2500.00', 4, 0, 0, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_salexistingloandetails`
--

CREATE TABLE `account_salexistingloandetails` (
  `existing_loan_det_id` int(11) NOT NULL,
  `other_bank_name` varchar(10) NOT NULL,
  `loan_amount` int(10) UNSIGNED NOT NULL CHECK (`loan_amount` >= 0),
  `emi` decimal(12,2) NOT NULL,
  `rate_of_interest` decimal(12,2) NOT NULL,
  `tenure` int(10) UNSIGNED NOT NULL CHECK (`tenure` >= 0),
  `emi_start_date` date NOT NULL,
  `emi_end_date` date NOT NULL,
  `outstanding_amount_paid_by_customer` int(10) UNSIGNED NOT NULL CHECK (`outstanding_amount_paid_by_customer` >= 0),
  `outstanding_amount` int(10) UNSIGNED NOT NULL CHECK (`outstanding_amount` >= 0),
  `any_bounces` tinyint(1) NOT NULL,
  `moratorium_taken` tinyint(1) NOT NULL,
  `addi_details_id_id` bigint(20) NOT NULL,
  `applicant_type_id` bigint(20) NOT NULL,
  `bank_name_id` bigint(20) NOT NULL,
  `products_or_services_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salexistingloandetails`
--

INSERT INTO `account_salexistingloandetails` (`existing_loan_det_id`, `other_bank_name`, `loan_amount`, `emi`, `rate_of_interest`, `tenure`, `emi_start_date`, `emi_end_date`, `outstanding_amount_paid_by_customer`, `outstanding_amount`, `any_bounces`, `moratorium_taken`, `addi_details_id_id`, `applicant_type_id`, `bank_name_id`, `products_or_services_id`) VALUES
(1, 'no', 100000, '4000.00', '10.00', 45, '2020-12-24', '2024-12-24', 2500, 2500, 0, 0, 3, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_salincomedetails`
--

CREATE TABLE `account_salincomedetails` (
  `inc_det_id` int(11) NOT NULL,
  `Other_Bank_Name` varchar(15) DEFAULT NULL,
  `gross_sal` int(10) UNSIGNED NOT NULL CHECK (`gross_sal` >= 0),
  `net_sal` int(10) UNSIGNED NOT NULL CHECK (`net_sal` >= 0),
  `bonus_type` varchar(11) NOT NULL,
  `bonus_duration` int(10) UNSIGNED DEFAULT NULL CHECK (`bonus_duration` >= 0),
  `bonus_amount` int(10) UNSIGNED NOT NULL CHECK (`bonus_amount` >= 0),
  `incentive_duration` int(10) UNSIGNED NOT NULL CHECK (`incentive_duration` >= 0),
  `incentive_amount` int(10) UNSIGNED NOT NULL CHECK (`incentive_amount` >= 0),
  `addi_details_id_id` bigint(20) NOT NULL,
  `bank_name_id` bigint(20) NOT NULL,
  `salary_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salincomedetails`
--

INSERT INTO `account_salincomedetails` (`inc_det_id`, `Other_Bank_Name`, `gross_sal`, `net_sal`, `bonus_type`, `bonus_duration`, `bonus_amount`, `incentive_duration`, `incentive_amount`, `addi_details_id_id`, `bank_name_id`, `salary_type_id`) VALUES
(1, NULL, 86000, 83000, 'Monthly', NULL, 4500, 2, 2300, 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `account_salinvestments`
--

CREATE TABLE `account_salinvestments` (
  `sal_inv_id` int(11) NOT NULL,
  `bank_sav_dep` int(10) UNSIGNED NOT NULL CHECK (`bank_sav_dep` >= 0),
  `current_bal` int(10) UNSIGNED NOT NULL CHECK (`current_bal` >= 0),
  `life_ins` int(10) UNSIGNED NOT NULL CHECK (`life_ins` >= 0),
  `share_sec` int(10) UNSIGNED NOT NULL CHECK (`share_sec` >= 0),
  `Other_Assets` varchar(100) NOT NULL,
  `Other_Owned_Property_Details` varchar(100) NOT NULL,
  `addi_details_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_salotherincomes`
--

CREATE TABLE `account_salotherincomes` (
  `other_inc_id` int(11) NOT NULL,
  `lessee_name` varchar(50) DEFAULT NULL,
  `rent_amount` int(10) UNSIGNED NOT NULL CHECK (`rent_amount` >= 0),
  `tenure_of_agreement` int(10) UNSIGNED NOT NULL CHECK (`tenure_of_agreement` >= 0),
  `tenure_pending` int(10) UNSIGNED NOT NULL CHECK (`tenure_pending` >= 0),
  `valid_rent_agreement` tinyint(1) NOT NULL,
  `will_you_make_agreement` tinyint(1) DEFAULT NULL,
  `how_old_is_agreement` int(10) UNSIGNED NOT NULL CHECK (`how_old_is_agreement` >= 0),
  `reflection_in_bank_account` tinyint(1) DEFAULT NULL,
  `reflection_in_itr` tinyint(1) DEFAULT NULL,
  `extension_expected_years` int(10) UNSIGNED NOT NULL CHECK (`extension_expected_years` >= 0),
  `addi_details_id_id` bigint(20) NOT NULL,
  `agreement_type_id` bigint(20) DEFAULT NULL,
  `lessee_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_salpersonaldetails`
--

CREATE TABLE `account_salpersonaldetails` (
  `per_det_id` int(11) NOT NULL,
  `loan_amount` int(11) DEFAULT NULL,
  `cibil_score` int(11) DEFAULT NULL,
  `loan_taken` tinyint(1) NOT NULL,
  `repayment_history` varchar(4) DEFAULT NULL,
  `details_about_default` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `retirement_age` int(11) DEFAULT NULL,
  `retirement_proof` tinyint(1) NOT NULL,
  `degree_others` varchar(100) DEFAULT NULL,
  `enduse` varchar(200) DEFAULT NULL,
  `Lawyer_Type_id` bigint(20) DEFAULT NULL,
  `additional_details_id_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `default_year_id` bigint(20) DEFAULT NULL,
  `degree_id` bigint(20) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `marital_status_id` bigint(20) DEFAULT NULL,
  `nationality_id` bigint(20) DEFAULT NULL,
  `product_id_id` bigint(20) DEFAULT NULL,
  `profession_id` bigint(20) DEFAULT NULL,
  `qualification_id` bigint(20) DEFAULT NULL,
  `tenure_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salpersonaldetails`
--

INSERT INTO `account_salpersonaldetails` (`per_det_id`, `loan_amount`, `cibil_score`, `loan_taken`, `repayment_history`, `details_about_default`, `dob`, `age`, `retirement_age`, `retirement_proof`, `degree_others`, `enduse`, `Lawyer_Type_id`, `additional_details_id_id`, `country_id`, `default_year_id`, `degree_id`, `gender_id`, `marital_status_id`, `nationality_id`, `product_id_id`, `profession_id`, `qualification_id`, `tenure_id`) VALUES
(1, 100000, 850, 0, NULL, '', NULL, 26, 60, 1, NULL, 'Education', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `account_salresidencedetails`
--

CREATE TABLE `account_salresidencedetails` (
  `sal_res_det_id` int(11) NOT NULL,
  `addi_details_id_id` bigint(20) NOT NULL,
  `current_location_city_id` bigint(20) NOT NULL,
  `current_residence_type_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_salresidencedetails`
--

INSERT INTO `account_salresidencedetails` (`sal_res_det_id`, `addi_details_id_id`, `current_location_city_id`, `current_residence_type_id`, `state_id`) VALUES
(1, 3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_studentdetails`
--

CREATE TABLE `account_studentdetails` (
  `student_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(3) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `alt_phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `location` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL,
  `end_use` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_studentexistingcarddetails`
--

CREATE TABLE `account_studentexistingcarddetails` (
  `card_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `credit_limit` varchar(20) NOT NULL,
  `limit_utilized` varchar(20) NOT NULL,
  `min_due` varchar(20) NOT NULL,
  `card_age` varchar(3) NOT NULL,
  `pay_delay` varchar(5) NOT NULL,
  `pay_delay_year` varchar(20) NOT NULL,
  `moratorium_taken` varchar(20) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_studentexistingloandetails`
--

CREATE TABLE `account_studentexistingloandetails` (
  `loan_det_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `product` varchar(10) NOT NULL,
  `loan_amt` varchar(10) NOT NULL,
  `emi` varchar(10) NOT NULL,
  `roi` varchar(3) NOT NULL,
  `tenure` varchar(3) NOT NULL,
  `emi_start_date` date NOT NULL,
  `emi_end_date` date NOT NULL,
  `outstanding_paid` varchar(10) NOT NULL,
  `outstanding_amt` varchar(10) NOT NULL,
  `any_bounce` varchar(10) NOT NULL,
  `moratorium_taken` varchar(10) NOT NULL,
  `applicant_type` varchar(10) NOT NULL,
  `add_det_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_userdocuments`
--

CREATE TABLE `account_userdocuments` (
  `id` bigint(20) NOT NULL,
  `documentName` varchar(250) NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Referral Partner'),
(2, 'Staff'),
(3, 'Vendor');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 9),
(2, 1, 12),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 10),
(13, 2, 11),
(14, 2, 12),
(15, 2, 13),
(16, 2, 14),
(17, 2, 15),
(18, 2, 16),
(19, 2, 17),
(20, 2, 18),
(21, 2, 19),
(22, 2, 20),
(23, 2, 21),
(24, 2, 22),
(25, 2, 23),
(26, 2, 24),
(27, 2, 25),
(28, 2, 26),
(29, 2, 27),
(30, 2, 28),
(31, 2, 29),
(32, 2, 30),
(33, 2, 31),
(34, 2, 32),
(35, 2, 33),
(36, 2, 34),
(37, 2, 35),
(38, 2, 36),
(39, 2, 37),
(40, 2, 38),
(41, 2, 39),
(42, 2, 40),
(43, 2, 41),
(44, 2, 42),
(45, 2, 43),
(46, 2, 44),
(47, 2, 45),
(48, 2, 46),
(49, 2, 47),
(50, 2, 48),
(51, 2, 49),
(52, 2, 50),
(53, 2, 51),
(54, 2, 52),
(55, 2, 53),
(56, 2, 54),
(57, 2, 55),
(58, 2, 56),
(59, 2, 57),
(60, 2, 58),
(61, 2, 59),
(62, 2, 60),
(63, 2, 61),
(64, 2, 62),
(65, 2, 63),
(66, 2, 64),
(67, 2, 65),
(68, 2, 66),
(69, 2, 67),
(70, 2, 68),
(71, 2, 69),
(72, 2, 70),
(73, 2, 71),
(74, 2, 72),
(75, 2, 73),
(76, 2, 74),
(77, 2, 75),
(78, 2, 76),
(79, 2, 77),
(80, 2, 78),
(81, 2, 79),
(82, 2, 80),
(83, 2, 81),
(84, 2, 82),
(85, 2, 83),
(86, 2, 84),
(87, 2, 85),
(88, 2, 86),
(89, 2, 87),
(90, 2, 88),
(91, 2, 89),
(92, 2, 90),
(93, 2, 91),
(94, 2, 92),
(95, 2, 93),
(96, 2, 94),
(97, 2, 95),
(98, 2, 96),
(99, 2, 97),
(100, 2, 98),
(101, 2, 99),
(102, 2, 100),
(103, 2, 101),
(104, 2, 102),
(105, 2, 103),
(106, 2, 104),
(107, 2, 105),
(108, 2, 106),
(109, 2, 107),
(110, 2, 108),
(111, 2, 109),
(112, 2, 110),
(113, 2, 111),
(114, 2, 112),
(115, 2, 113),
(116, 2, 114),
(117, 2, 115),
(118, 2, 116),
(119, 2, 117),
(120, 2, 118),
(121, 2, 119),
(122, 2, 120),
(123, 2, 121),
(124, 2, 122),
(125, 2, 123),
(126, 2, 124),
(127, 2, 125),
(128, 2, 126),
(129, 2, 127),
(130, 2, 128),
(131, 2, 129),
(132, 2, 130),
(133, 2, 131),
(134, 2, 132),
(135, 2, 133),
(136, 2, 134),
(137, 2, 135),
(138, 2, 136),
(139, 2, 137),
(140, 2, 138),
(141, 2, 139),
(142, 2, 140),
(143, 2, 141),
(144, 2, 142),
(145, 2, 143),
(146, 2, 144),
(147, 2, 369),
(148, 2, 370),
(149, 2, 371),
(150, 2, 372),
(151, 2, 373),
(152, 2, 374),
(153, 2, 375),
(154, 2, 376),
(155, 2, 377),
(156, 2, 378),
(157, 2, 379),
(158, 2, 380),
(159, 2, 381),
(160, 2, 382),
(161, 2, 383),
(162, 2, 384),
(163, 2, 385),
(164, 2, 386),
(165, 2, 387),
(166, 2, 388),
(167, 2, 389),
(168, 2, 390),
(169, 2, 391),
(170, 2, 392),
(171, 2, 393),
(172, 2, 394),
(173, 2, 395),
(174, 2, 396),
(175, 2, 397),
(176, 2, 398),
(177, 2, 399),
(178, 2, 400),
(179, 2, 401),
(180, 2, 402),
(181, 2, 403),
(182, 2, 404),
(183, 2, 405),
(184, 2, 406),
(185, 2, 407),
(186, 2, 408),
(187, 2, 409),
(188, 2, 410),
(189, 2, 411),
(190, 2, 412),
(191, 2, 413),
(192, 2, 414),
(193, 2, 415),
(194, 2, 416),
(195, 2, 417),
(196, 2, 418),
(197, 2, 419),
(198, 2, 420),
(199, 2, 421),
(200, 2, 422),
(201, 2, 423),
(202, 2, 424),
(203, 2, 425),
(204, 2, 426),
(205, 2, 427),
(206, 2, 428),
(207, 2, 429),
(208, 2, 430),
(209, 2, 431),
(210, 2, 432),
(211, 2, 433),
(212, 2, 434),
(213, 2, 435),
(214, 2, 436),
(215, 2, 437),
(216, 2, 438),
(217, 2, 439),
(218, 2, 440),
(219, 2, 441),
(220, 2, 442),
(221, 2, 443),
(222, 2, 444),
(223, 2, 445),
(224, 2, 446),
(225, 2, 447),
(226, 2, 448),
(227, 2, 449),
(228, 2, 450),
(229, 2, 451),
(230, 2, 452),
(231, 2, 453),
(232, 2, 454),
(233, 2, 455),
(234, 2, 456),
(235, 2, 457),
(236, 2, 458),
(237, 2, 459),
(238, 2, 460),
(239, 2, 461),
(240, 2, 462),
(241, 2, 463),
(242, 2, 464),
(243, 2, 465),
(244, 2, 466),
(245, 2, 467),
(246, 2, 468),
(247, 2, 469),
(248, 2, 470),
(249, 2, 471),
(250, 2, 472),
(251, 2, 473),
(252, 2, 474),
(253, 2, 475),
(254, 2, 476),
(255, 2, 477),
(256, 2, 478),
(257, 2, 479),
(258, 2, 480),
(259, 2, 481),
(260, 2, 482),
(261, 2, 483),
(262, 2, 484),
(263, 3, 9),
(264, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add additional details', 1, 'add_additionaldetails'),
(2, 'Can change additional details', 1, 'change_additionaldetails'),
(3, 'Can delete additional details', 1, 'delete_additionaldetails'),
(4, 'Can view additional details', 1, 'view_additionaldetails'),
(5, 'Can add contact person', 2, 'add_contactperson'),
(6, 'Can change contact person', 2, 'change_contactperson'),
(7, 'Can delete contact person', 2, 'delete_contactperson'),
(8, 'Can view contact person', 2, 'view_contactperson'),
(9, 'Can add leads', 3, 'add_leads'),
(10, 'Can change leads', 3, 'change_leads'),
(11, 'Can delete leads', 3, 'delete_leads'),
(12, 'Can view leads', 3, 'view_leads'),
(13, 'Can add property details', 4, 'add_propertydetails'),
(14, 'Can change property details', 4, 'change_propertydetails'),
(15, 'Can delete property details', 4, 'delete_propertydetails'),
(16, 'Can view property details', 4, 'view_propertydetails'),
(17, 'Can add student existing loan details', 5, 'add_studentexistingloandetails'),
(18, 'Can change student existing loan details', 5, 'change_studentexistingloandetails'),
(19, 'Can delete student existing loan details', 5, 'delete_studentexistingloandetails'),
(20, 'Can view student existing loan details', 5, 'view_studentexistingloandetails'),
(21, 'Can add student existing card details', 6, 'add_studentexistingcarddetails'),
(22, 'Can change student existing card details', 6, 'change_studentexistingcarddetails'),
(23, 'Can delete student existing card details', 6, 'delete_studentexistingcarddetails'),
(24, 'Can view student existing card details', 6, 'view_studentexistingcarddetails'),
(25, 'Can add student details', 7, 'add_studentdetails'),
(26, 'Can change student details', 7, 'change_studentdetails'),
(27, 'Can delete student details', 7, 'delete_studentdetails'),
(28, 'Can view student details', 7, 'view_studentdetails'),
(29, 'Can add sal residence details', 8, 'add_salresidencedetails'),
(30, 'Can change sal residence details', 8, 'change_salresidencedetails'),
(31, 'Can delete sal residence details', 8, 'delete_salresidencedetails'),
(32, 'Can view sal residence details', 8, 'view_salresidencedetails'),
(33, 'Can add sal investments', 9, 'add_salinvestments'),
(34, 'Can change sal investments', 9, 'change_salinvestments'),
(35, 'Can delete sal investments', 9, 'delete_salinvestments'),
(36, 'Can view sal investments', 9, 'view_salinvestments'),
(37, 'Can add sal existing credit card', 10, 'add_salexistingcreditcard'),
(38, 'Can change sal existing credit card', 10, 'change_salexistingcreditcard'),
(39, 'Can delete sal existing credit card', 10, 'delete_salexistingcreditcard'),
(40, 'Can view sal existing credit card', 10, 'view_salexistingcreditcard'),
(41, 'Can add sal company details', 11, 'add_salcompanydetails'),
(42, 'Can change sal company details', 11, 'change_salcompanydetails'),
(43, 'Can delete sal company details', 11, 'delete_salcompanydetails'),
(44, 'Can view sal company details', 11, 'view_salcompanydetails'),
(45, 'Can add sal additional other incomes', 12, 'add_saladditionalotherincomes'),
(46, 'Can change sal additional other incomes', 12, 'change_saladditionalotherincomes'),
(47, 'Can delete sal additional other incomes', 12, 'delete_saladditionalotherincomes'),
(48, 'Can view sal additional other incomes', 12, 'view_saladditionalotherincomes'),
(49, 'Can add sal additional details', 13, 'add_saladditionaldetails'),
(50, 'Can change sal additional details', 13, 'change_saladditionaldetails'),
(51, 'Can delete sal additional details', 13, 'delete_saladditionaldetails'),
(52, 'Can view sal additional details', 13, 'view_saladditionaldetails'),
(53, 'Can add retired residence details', 14, 'add_retiredresidencedetails'),
(54, 'Can change retired residence details', 14, 'change_retiredresidencedetails'),
(55, 'Can delete retired residence details', 14, 'delete_retiredresidencedetails'),
(56, 'Can view retired residence details', 14, 'view_retiredresidencedetails'),
(57, 'Can add retired pension details', 15, 'add_retiredpensiondetails'),
(58, 'Can change retired pension details', 15, 'change_retiredpensiondetails'),
(59, 'Can delete retired pension details', 15, 'delete_retiredpensiondetails'),
(60, 'Can view retired pension details', 15, 'view_retiredpensiondetails'),
(61, 'Can add retired other details', 16, 'add_retiredotherdetails'),
(62, 'Can change retired other details', 16, 'change_retiredotherdetails'),
(63, 'Can delete retired other details', 16, 'delete_retiredotherdetails'),
(64, 'Can view retired other details', 16, 'view_retiredotherdetails'),
(65, 'Can add retired investment details', 17, 'add_retiredinvestmentdetails'),
(66, 'Can change retired investment details', 17, 'change_retiredinvestmentdetails'),
(67, 'Can delete retired investment details', 17, 'delete_retiredinvestmentdetails'),
(68, 'Can view retired investment details', 17, 'view_retiredinvestmentdetails'),
(69, 'Can add retired existing loan details', 18, 'add_retiredexistingloandetails'),
(70, 'Can change retired existing loan details', 18, 'change_retiredexistingloandetails'),
(71, 'Can delete retired existing loan details', 18, 'delete_retiredexistingloandetails'),
(72, 'Can view retired existing loan details', 18, 'view_retiredexistingloandetails'),
(73, 'Can add retired existing card details', 19, 'add_retiredexistingcarddetails'),
(74, 'Can change retired existing card details', 19, 'change_retiredexistingcarddetails'),
(75, 'Can delete retired existing card details', 19, 'delete_retiredexistingcarddetails'),
(76, 'Can view retired existing card details', 19, 'view_retiredexistingcarddetails'),
(77, 'Can add retired details', 20, 'add_retireddetails'),
(78, 'Can change retired details', 20, 'change_retireddetails'),
(79, 'Can delete retired details', 20, 'delete_retireddetails'),
(80, 'Can view retired details', 20, 'view_retireddetails'),
(81, 'Can add prop type4', 21, 'add_proptype4'),
(82, 'Can change prop type4', 21, 'change_proptype4'),
(83, 'Can delete prop type4', 21, 'delete_proptype4'),
(84, 'Can view prop type4', 21, 'view_proptype4'),
(85, 'Can add prop type3', 22, 'add_proptype3'),
(86, 'Can change prop type3', 22, 'change_proptype3'),
(87, 'Can delete prop type3', 22, 'delete_proptype3'),
(88, 'Can view prop type3', 22, 'view_proptype3'),
(89, 'Can add prop type2', 23, 'add_proptype2'),
(90, 'Can change prop type2', 23, 'change_proptype2'),
(91, 'Can delete prop type2', 23, 'delete_proptype2'),
(92, 'Can view prop type2', 23, 'view_proptype2'),
(93, 'Can add loan application', 24, 'add_loanapplication'),
(94, 'Can change loan application', 24, 'change_loanapplication'),
(95, 'Can delete loan application', 24, 'delete_loanapplication'),
(96, 'Can view loan application', 24, 'view_loanapplication'),
(97, 'Can add loan documents', 25, 'add_loandocuments'),
(98, 'Can change loan documents', 25, 'change_loandocuments'),
(99, 'Can delete loan documents', 25, 'delete_loandocuments'),
(100, 'Can view loan documents', 25, 'view_loandocuments'),
(101, 'Can add sal personal details', 26, 'add_salpersonaldetails'),
(102, 'Can change sal personal details', 26, 'change_salpersonaldetails'),
(103, 'Can delete sal personal details', 26, 'delete_salpersonaldetails'),
(104, 'Can view sal personal details', 26, 'view_salpersonaldetails'),
(105, 'Can add prop type1', 27, 'add_proptype1'),
(106, 'Can change prop type1', 27, 'change_proptype1'),
(107, 'Can delete prop type1', 27, 'delete_proptype1'),
(108, 'Can view prop type1', 27, 'view_proptype1'),
(109, 'Can add housewife personal details', 28, 'add_housewifepersonaldetails'),
(110, 'Can change housewife personal details', 28, 'change_housewifepersonaldetails'),
(111, 'Can delete housewife personal details', 28, 'delete_housewifepersonaldetails'),
(112, 'Can view housewife personal details', 28, 'view_housewifepersonaldetails'),
(113, 'Can add sal other incomes', 29, 'add_salotherincomes'),
(114, 'Can change sal other incomes', 29, 'change_salotherincomes'),
(115, 'Can delete sal other incomes', 29, 'delete_salotherincomes'),
(116, 'Can view sal other incomes', 29, 'view_salotherincomes'),
(117, 'Can add sal income details', 30, 'add_salincomedetails'),
(118, 'Can change sal income details', 30, 'change_salincomedetails'),
(119, 'Can delete sal income details', 30, 'delete_salincomedetails'),
(120, 'Can view sal income details', 30, 'view_salincomedetails'),
(121, 'Can add sal existing loan details', 31, 'add_salexistingloandetails'),
(122, 'Can change sal existing loan details', 31, 'change_salexistingloandetails'),
(123, 'Can delete sal existing loan details', 31, 'delete_salexistingloandetails'),
(124, 'Can view sal existing loan details', 31, 'view_salexistingloandetails'),
(125, 'Can add housewife investment details', 32, 'add_housewifeinvestmentdetails'),
(126, 'Can change housewife investment details', 32, 'change_housewifeinvestmentdetails'),
(127, 'Can delete housewife investment details', 32, 'delete_housewifeinvestmentdetails'),
(128, 'Can view housewife investment details', 32, 'view_housewifeinvestmentdetails'),
(129, 'Can add housewife existing loan details', 33, 'add_housewifeexistingloandetails'),
(130, 'Can change housewife existing loan details', 33, 'change_housewifeexistingloandetails'),
(131, 'Can delete housewife existing loan details', 33, 'delete_housewifeexistingloandetails'),
(132, 'Can view housewife existing loan details', 33, 'view_housewifeexistingloandetails'),
(133, 'Can add housewife existing card details', 34, 'add_housewifeexistingcarddetails'),
(134, 'Can change housewife existing card details', 34, 'change_housewifeexistingcarddetails'),
(135, 'Can delete housewife existing card details', 34, 'delete_housewifeexistingcarddetails'),
(136, 'Can view housewife existing card details', 34, 'view_housewifeexistingcarddetails'),
(137, 'Can add housewife details', 35, 'add_housewifedetails'),
(138, 'Can change housewife details', 35, 'change_housewifedetails'),
(139, 'Can delete housewife details', 35, 'delete_housewifedetails'),
(140, 'Can view housewife details', 35, 'view_housewifedetails'),
(141, 'Can add user', 36, 'add_customuser'),
(142, 'Can change user', 36, 'change_customuser'),
(143, 'Can delete user', 36, 'delete_customuser'),
(144, 'Can view user', 36, 'view_customuser'),
(145, 'Can add agreement type', 37, 'add_agreementtype'),
(146, 'Can change agreement type', 37, 'change_agreementtype'),
(147, 'Can delete agreement type', 37, 'delete_agreementtype'),
(148, 'Can view agreement type', 37, 'view_agreementtype'),
(149, 'Can add applicant type', 38, 'add_applicanttype'),
(150, 'Can change applicant type', 38, 'change_applicanttype'),
(151, 'Can delete applicant type', 38, 'delete_applicanttype'),
(152, 'Can view applicant type', 38, 'view_applicanttype'),
(153, 'Can add area in', 39, 'add_areain'),
(154, 'Can change area in', 39, 'change_areain'),
(155, 'Can delete area in', 39, 'delete_areain'),
(156, 'Can view area in', 39, 'view_areain'),
(157, 'Can add area type', 40, 'add_areatype'),
(158, 'Can change area type', 40, 'change_areatype'),
(159, 'Can delete area type', 40, 'delete_areatype'),
(160, 'Can view area type', 40, 'view_areatype'),
(161, 'Can add ay year', 41, 'add_ayyear'),
(162, 'Can change ay year', 41, 'change_ayyear'),
(163, 'Can delete ay year', 41, 'delete_ayyear'),
(164, 'Can view ay year', 41, 'view_ayyear'),
(165, 'Can add bank name', 42, 'add_bankname'),
(166, 'Can change bank name', 42, 'change_bankname'),
(167, 'Can delete bank name', 42, 'delete_bankname'),
(168, 'Can view bank name', 42, 'view_bankname'),
(169, 'Can add bonus type', 43, 'add_bonustype'),
(170, 'Can change bonus type', 43, 'change_bonustype'),
(171, 'Can delete bonus type', 43, 'delete_bonustype'),
(172, 'Can view bonus type', 43, 'view_bonustype'),
(173, 'Can add cibil loan type', 44, 'add_cibilloantype'),
(174, 'Can change cibil loan type', 44, 'change_cibilloantype'),
(175, 'Can delete cibil loan type', 44, 'delete_cibilloantype'),
(176, 'Can view cibil loan type', 44, 'view_cibilloantype'),
(177, 'Can add cibil type', 45, 'add_cibiltype'),
(178, 'Can change cibil type', 45, 'change_cibiltype'),
(179, 'Can delete cibil type', 45, 'delete_cibiltype'),
(180, 'Can view cibil type', 45, 'view_cibiltype'),
(181, 'Can add company name', 46, 'add_companyname'),
(182, 'Can change company name', 46, 'change_companyname'),
(183, 'Can delete company name', 46, 'delete_companyname'),
(184, 'Can view company name', 46, 'view_companyname'),
(185, 'Can add company type', 47, 'add_companytype'),
(186, 'Can change company type', 47, 'change_companytype'),
(187, 'Can delete company type', 47, 'delete_companytype'),
(188, 'Can view company type', 47, 'view_companytype'),
(189, 'Can add cibil', 48, 'add_cibil'),
(190, 'Can change cibil', 48, 'change_cibil'),
(191, 'Can delete cibil', 48, 'delete_cibil'),
(192, 'Can view cibil', 48, 'view_cibil'),
(193, 'Can add company category', 49, 'add_companycategory'),
(194, 'Can change company category', 49, 'change_companycategory'),
(195, 'Can delete company category', 49, 'delete_companycategory'),
(196, 'Can view company category', 49, 'view_companycategory'),
(197, 'Can add foir', 50, 'add_foir'),
(198, 'Can change foir', 50, 'change_foir'),
(199, 'Can delete foir', 50, 'delete_foir'),
(200, 'Can view foir', 50, 'view_foir'),
(201, 'Can add residence type', 51, 'add_residencetype'),
(202, 'Can change residence type', 51, 'change_residencetype'),
(203, 'Can delete residence type', 51, 'delete_residencetype'),
(204, 'Can view residence type', 51, 'view_residencetype'),
(205, 'Can add salary type', 52, 'add_salarytype'),
(206, 'Can change salary type', 52, 'change_salarytype'),
(207, 'Can delete salary type', 52, 'delete_salarytype'),
(208, 'Can view salary type', 52, 'view_salarytype'),
(209, 'Can add tenure', 53, 'add_tenure'),
(210, 'Can change tenure', 53, 'change_tenure'),
(211, 'Can delete tenure', 53, 'delete_tenure'),
(212, 'Can view tenure', 53, 'view_tenure'),
(213, 'Can add company catergory types', 54, 'add_companycatergorytypes'),
(214, 'Can change company catergory types', 54, 'change_companycatergorytypes'),
(215, 'Can delete company catergory types', 54, 'delete_companycatergorytypes'),
(216, 'Can view company catergory types', 54, 'view_companycatergorytypes'),
(217, 'Can add country', 55, 'add_country'),
(218, 'Can change country', 55, 'change_country'),
(219, 'Can delete country', 55, 'delete_country'),
(220, 'Can view country', 55, 'view_country'),
(221, 'Can add customer type', 56, 'add_customertype'),
(222, 'Can change customer type', 56, 'change_customertype'),
(223, 'Can delete customer type', 56, 'delete_customertype'),
(224, 'Can view customer type', 56, 'view_customertype'),
(225, 'Can add deduction type', 57, 'add_deductiontype'),
(226, 'Can change deduction type', 57, 'change_deductiontype'),
(227, 'Can delete deduction type', 57, 'delete_deductiontype'),
(228, 'Can view deduction type', 57, 'view_deductiontype'),
(229, 'Can add default year', 58, 'add_defaultyear'),
(230, 'Can change default year', 58, 'change_defaultyear'),
(231, 'Can delete default year', 58, 'delete_defaultyear'),
(232, 'Can view default year', 58, 'view_defaultyear'),
(233, 'Can add degree', 59, 'add_degree'),
(234, 'Can change degree', 59, 'change_degree'),
(235, 'Can delete degree', 59, 'delete_degree'),
(236, 'Can view degree', 59, 'view_degree'),
(237, 'Can add designation type', 60, 'add_designationtype'),
(238, 'Can change designation type', 60, 'change_designationtype'),
(239, 'Can delete designation type', 60, 'delete_designationtype'),
(240, 'Can view designation type', 60, 'view_designationtype'),
(241, 'Can add employment type', 61, 'add_employmenttype'),
(242, 'Can change employment type', 61, 'change_employmenttype'),
(243, 'Can delete employment type', 61, 'delete_employmenttype'),
(244, 'Can view employment type', 61, 'view_employmenttype'),
(245, 'Can add gender', 62, 'add_gender'),
(246, 'Can change gender', 62, 'change_gender'),
(247, 'Can delete gender', 62, 'delete_gender'),
(248, 'Can view gender', 62, 'view_gender'),
(249, 'Can add incentives type', 63, 'add_incentivestype'),
(250, 'Can change incentives type', 63, 'change_incentivestype'),
(251, 'Can delete incentives type', 63, 'delete_incentivestype'),
(252, 'Can view incentives type', 63, 'view_incentivestype'),
(253, 'Can add investment type', 64, 'add_investmenttype'),
(254, 'Can change investment type', 64, 'change_investmenttype'),
(255, 'Can delete investment type', 64, 'delete_investmenttype'),
(256, 'Can view investment type', 64, 'view_investmenttype'),
(257, 'Can add lawyer type', 65, 'add_lawyertype'),
(258, 'Can change lawyer type', 65, 'change_lawyertype'),
(259, 'Can delete lawyer type', 65, 'delete_lawyertype'),
(260, 'Can view lawyer type', 65, 'view_lawyertype'),
(261, 'Can add lead source', 66, 'add_leadsource'),
(262, 'Can change lead source', 66, 'change_leadsource'),
(263, 'Can delete lead source', 66, 'delete_leadsource'),
(264, 'Can view lead source', 66, 'view_leadsource'),
(265, 'Can add lesse type', 67, 'add_lessetype'),
(266, 'Can change lesse type', 67, 'change_lessetype'),
(267, 'Can delete lesse type', 67, 'delete_lessetype'),
(268, 'Can view lesse type', 67, 'view_lessetype'),
(269, 'Can add loan amount', 68, 'add_loanamount'),
(270, 'Can change loan amount', 68, 'change_loanamount'),
(271, 'Can delete loan amount', 68, 'delete_loanamount'),
(272, 'Can view loan amount', 68, 'view_loanamount'),
(273, 'Can add marital status', 69, 'add_maritalstatus'),
(274, 'Can change marital status', 69, 'change_maritalstatus'),
(275, 'Can delete marital status', 69, 'delete_maritalstatus'),
(276, 'Can view marital status', 69, 'view_maritalstatus'),
(277, 'Can add products or services', 70, 'add_productsorservices'),
(278, 'Can change products or services', 70, 'change_productsorservices'),
(279, 'Can delete products or services', 70, 'delete_productsorservices'),
(280, 'Can view products or services', 70, 'view_productsorservices'),
(281, 'Can add nationality', 71, 'add_nationality'),
(282, 'Can change nationality', 71, 'change_nationality'),
(283, 'Can delete nationality', 71, 'delete_nationality'),
(284, 'Can view nationality', 71, 'view_nationality'),
(285, 'Can add nature of business', 72, 'add_natureofbusiness'),
(286, 'Can change nature of business', 72, 'change_natureofbusiness'),
(287, 'Can delete nature of business', 72, 'delete_natureofbusiness'),
(288, 'Can view nature of business', 72, 'view_natureofbusiness'),
(289, 'Can add negative area', 73, 'add_negativearea'),
(290, 'Can change negative area', 73, 'change_negativearea'),
(291, 'Can delete negative area', 73, 'delete_negativearea'),
(292, 'Can view negative area', 73, 'view_negativearea'),
(293, 'Can add payment delay year', 74, 'add_paymentdelayyear'),
(294, 'Can change payment delay year', 74, 'change_paymentdelayyear'),
(295, 'Can delete payment delay year', 74, 'delete_paymentdelayyear'),
(296, 'Can view payment delay year', 74, 'view_paymentdelayyear'),
(297, 'Can add prefix', 75, 'add_prefix'),
(298, 'Can change prefix', 75, 'change_prefix'),
(299, 'Can delete prefix', 75, 'delete_prefix'),
(300, 'Can view prefix', 75, 'view_prefix'),
(301, 'Can add product', 76, 'add_product'),
(302, 'Can change product', 76, 'change_product'),
(303, 'Can delete product', 76, 'delete_product'),
(304, 'Can view product', 76, 'view_product'),
(305, 'Can add profession', 77, 'add_profession'),
(306, 'Can change profession', 77, 'change_profession'),
(307, 'Can delete profession', 77, 'delete_profession'),
(308, 'Can view profession', 77, 'view_profession'),
(309, 'Can add property in', 78, 'add_propertyin'),
(310, 'Can change property in', 78, 'change_propertyin'),
(311, 'Can delete property in', 78, 'delete_propertyin'),
(312, 'Can view property in', 78, 'view_propertyin'),
(313, 'Can add qualification', 79, 'add_qualification'),
(314, 'Can change qualification', 79, 'change_qualification'),
(315, 'Can delete qualification', 79, 'delete_qualification'),
(316, 'Can view qualification', 79, 'view_qualification'),
(317, 'Can add property type', 80, 'add_propertytype'),
(318, 'Can change property type', 80, 'change_propertytype'),
(319, 'Can delete property type', 80, 'delete_propertytype'),
(320, 'Can view property type', 80, 'view_propertytype'),
(321, 'Can add rate of interest', 81, 'add_rateofinterest'),
(322, 'Can change rate of interest', 81, 'change_rateofinterest'),
(323, 'Can delete rate of interest', 81, 'delete_rateofinterest'),
(324, 'Can view rate of interest', 81, 'view_rateofinterest'),
(325, 'Can add rejection type', 82, 'add_rejectiontype'),
(326, 'Can change rejection type', 82, 'change_rejectiontype'),
(327, 'Can delete rejection type', 82, 'delete_rejectiontype'),
(328, 'Can view rejection type', 82, 'view_rejectiontype'),
(329, 'Can add relation', 83, 'add_relation'),
(330, 'Can change relation', 83, 'change_relation'),
(331, 'Can delete relation', 83, 'delete_relation'),
(332, 'Can view relation', 83, 'view_relation'),
(333, 'Can add role', 84, 'add_role'),
(334, 'Can change role', 84, 'change_role'),
(335, 'Can delete role', 84, 'delete_role'),
(336, 'Can view role', 84, 'view_role'),
(337, 'Can add room type', 85, 'add_roomtype'),
(338, 'Can change room type', 85, 'change_roomtype'),
(339, 'Can delete room type', 85, 'delete_roomtype'),
(340, 'Can view room type', 85, 'view_roomtype'),
(341, 'Can add stage of construction', 86, 'add_stageofconstruction'),
(342, 'Can change stage of construction', 86, 'change_stageofconstruction'),
(343, 'Can delete stage of construction', 86, 'delete_stageofconstruction'),
(344, 'Can view stage of construction', 86, 'view_stageofconstruction'),
(345, 'Can add state', 87, 'add_state'),
(346, 'Can change state', 87, 'change_state'),
(347, 'Can delete state', 87, 'delete_state'),
(348, 'Can view state', 87, 'view_state'),
(349, 'Can add status', 88, 'add_status'),
(350, 'Can change status', 88, 'change_status'),
(351, 'Can delete status', 88, 'delete_status'),
(352, 'Can view status', 88, 'view_status'),
(353, 'Can add sub product', 89, 'add_subproduct'),
(354, 'Can change sub product', 89, 'change_subproduct'),
(355, 'Can delete sub product', 89, 'delete_subproduct'),
(356, 'Can view sub product', 89, 'view_subproduct'),
(357, 'Can add city', 90, 'add_city'),
(358, 'Can change city', 90, 'change_city'),
(359, 'Can delete city', 90, 'delete_city'),
(360, 'Can view city', 90, 'view_city'),
(361, 'Can add product_and_policy_master', 91, 'add_product_and_policy_master'),
(362, 'Can change product_and_policy_master', 91, 'change_product_and_policy_master'),
(363, 'Can delete product_and_policy_master', 91, 'delete_product_and_policy_master'),
(364, 'Can view product_and_policy_master', 91, 'view_product_and_policy_master'),
(365, 'Can add bank category', 92, 'add_bankcategory'),
(366, 'Can change bank category', 92, 'change_bankcategory'),
(367, 'Can delete bank category', 92, 'delete_bankcategory'),
(368, 'Can view bank category', 92, 'view_bankcategory'),
(369, 'Can add bank', 93, 'add_bank'),
(370, 'Can change bank', 93, 'change_bank'),
(371, 'Can delete bank', 93, 'delete_bank'),
(372, 'Can view bank', 93, 'view_bank'),
(373, 'Can add cost sheet', 94, 'add_costsheet'),
(374, 'Can change cost sheet', 94, 'change_costsheet'),
(375, 'Can delete cost sheet', 94, 'delete_costsheet'),
(376, 'Can view cost sheet', 94, 'view_costsheet'),
(377, 'Can add hl basic details', 95, 'add_hlbasicdetails'),
(378, 'Can change hl basic details', 95, 'change_hlbasicdetails'),
(379, 'Can delete hl basic details', 95, 'delete_hlbasicdetails'),
(380, 'Can view hl basic details', 95, 'view_hlbasicdetails'),
(381, 'Can add products and policy', 96, 'add_productsandpolicy'),
(382, 'Can change products and policy', 96, 'change_productsandpolicy'),
(383, 'Can delete products and policy', 96, 'delete_productsandpolicy'),
(384, 'Can view products and policy', 96, 'view_productsandpolicy'),
(385, 'Can add remarks', 97, 'add_remarks'),
(386, 'Can change remarks', 97, 'change_remarks'),
(387, 'Can delete remarks', 97, 'delete_remarks'),
(388, 'Can view remarks', 97, 'view_remarks'),
(389, 'Can add property', 98, 'add_property'),
(390, 'Can change property', 98, 'change_property'),
(391, 'Can delete property', 98, 'delete_property'),
(392, 'Can view property', 98, 'view_property'),
(393, 'Can add other details roi', 99, 'add_otherdetailsroi'),
(394, 'Can change other details roi', 99, 'change_otherdetailsroi'),
(395, 'Can delete other details roi', 99, 'delete_otherdetailsroi'),
(396, 'Can view other details roi', 99, 'view_otherdetailsroi'),
(397, 'Can add other details', 100, 'add_otherdetails'),
(398, 'Can change other details', 100, 'change_otherdetails'),
(399, 'Can delete other details', 100, 'delete_otherdetails'),
(400, 'Can view other details', 100, 'view_otherdetails'),
(401, 'Can add obligation', 101, 'add_obligation'),
(402, 'Can change obligation', 101, 'change_obligation'),
(403, 'Can delete obligation', 101, 'delete_obligation'),
(404, 'Can view obligation', 101, 'view_obligation'),
(405, 'Can add negative employer profile', 102, 'add_negativeemployerprofile'),
(406, 'Can change negative employer profile', 102, 'change_negativeemployerprofile'),
(407, 'Can delete negative employer profile', 102, 'delete_negativeemployerprofile'),
(408, 'Can view negative employer profile', 102, 'view_negativeemployerprofile'),
(409, 'Can add ltv resale', 103, 'add_ltvresale'),
(410, 'Can change ltv resale', 103, 'change_ltvresale'),
(411, 'Can delete ltv resale', 103, 'delete_ltvresale'),
(412, 'Can view ltv resale', 103, 'view_ltvresale'),
(413, 'Can add loan towards valuation', 104, 'add_loantowardsvaluation'),
(414, 'Can change loan towards valuation', 104, 'change_loantowardsvaluation'),
(415, 'Can delete loan towards valuation', 104, 'delete_loantowardsvaluation'),
(416, 'Can view loan towards valuation', 104, 'view_loantowardsvaluation'),
(417, 'Can add income foir', 105, 'add_incomefoir'),
(418, 'Can change income foir', 105, 'change_incomefoir'),
(419, 'Can delete income foir', 105, 'delete_incomefoir'),
(420, 'Can view income foir', 105, 'view_incomefoir'),
(421, 'Can add income', 106, 'add_income'),
(422, 'Can change income', 106, 'change_income'),
(423, 'Can delete income', 106, 'delete_income'),
(424, 'Can view income', 106, 'view_income'),
(425, 'Can add hl property', 107, 'add_hlproperty'),
(426, 'Can change hl property', 107, 'change_hlproperty'),
(427, 'Can delete hl property', 107, 'delete_hlproperty'),
(428, 'Can view hl property', 107, 'view_hlproperty'),
(429, 'Can add hl other details', 108, 'add_hlotherdetails'),
(430, 'Can change hl other details', 108, 'change_hlotherdetails'),
(431, 'Can delete hl other details', 108, 'delete_hlotherdetails'),
(432, 'Can view hl other details', 108, 'view_hlotherdetails'),
(433, 'Can add hl obligation', 109, 'add_hlobligation'),
(434, 'Can change hl obligation', 109, 'change_hlobligation'),
(435, 'Can delete hl obligation', 109, 'delete_hlobligation'),
(436, 'Can view hl obligation', 109, 'view_hlobligation'),
(437, 'Can add hl loan_ to_ value_ type_2', 110, 'add_hlloan_to_value_type_2'),
(438, 'Can change hl loan_ to_ value_ type_2', 110, 'change_hlloan_to_value_type_2'),
(439, 'Can delete hl loan_ to_ value_ type_2', 110, 'delete_hlloan_to_value_type_2'),
(440, 'Can view hl loan_ to_ value_ type_2', 110, 'view_hlloan_to_value_type_2'),
(441, 'Can add hl loan_ to_ value_ type_1', 111, 'add_hlloan_to_value_type_1'),
(442, 'Can change hl loan_ to_ value_ type_1', 111, 'change_hlloan_to_value_type_1'),
(443, 'Can delete hl loan_ to_ value_ type_1', 111, 'delete_hlloan_to_value_type_1'),
(444, 'Can view hl loan_ to_ value_ type_1', 111, 'view_hlloan_to_value_type_1'),
(445, 'Can add hl income foir', 112, 'add_hlincomefoir'),
(446, 'Can change hl income foir', 112, 'change_hlincomefoir'),
(447, 'Can delete hl income foir', 112, 'delete_hlincomefoir'),
(448, 'Can view hl income foir', 112, 'view_hlincomefoir'),
(449, 'Can add hl income', 113, 'add_hlincome'),
(450, 'Can change hl income', 113, 'change_hlincome'),
(451, 'Can delete hl income', 113, 'delete_hlincome'),
(452, 'Can view hl income', 113, 'view_hlincome'),
(453, 'Can add fees', 114, 'add_fees'),
(454, 'Can change fees', 114, 'change_fees'),
(455, 'Can delete fees', 114, 'delete_fees'),
(456, 'Can view fees', 114, 'view_fees'),
(457, 'Can add customer nationality', 115, 'add_customernationality'),
(458, 'Can change customer nationality', 115, 'change_customernationality'),
(459, 'Can delete customer nationality', 115, 'delete_customernationality'),
(460, 'Can view customer nationality', 115, 'view_customernationality'),
(461, 'Can add customer designation', 116, 'add_customerdesignation'),
(462, 'Can change customer designation', 116, 'change_customerdesignation'),
(463, 'Can delete customer designation', 116, 'delete_customerdesignation'),
(464, 'Can view customer designation', 116, 'view_customerdesignation'),
(465, 'Can add customer', 117, 'add_customer'),
(466, 'Can change customer', 117, 'change_customer'),
(467, 'Can delete customer', 117, 'delete_customer'),
(468, 'Can view customer', 117, 'view_customer'),
(469, 'Can add company', 118, 'add_company'),
(470, 'Can change company', 118, 'change_company'),
(471, 'Can delete company', 118, 'delete_company'),
(472, 'Can view company', 118, 'view_company'),
(473, 'Can add bank codes', 119, 'add_bankcodes'),
(474, 'Can change bank codes', 119, 'change_bankcodes'),
(475, 'Can delete bank codes', 119, 'delete_bankcodes'),
(476, 'Can view bank codes', 119, 'view_bankcodes'),
(477, 'Can add cibil', 120, 'add_cibil'),
(478, 'Can change cibil', 120, 'change_cibil'),
(479, 'Can delete cibil', 120, 'delete_cibil'),
(480, 'Can view cibil', 120, 'view_cibil'),
(481, 'Can add age', 121, 'add_age'),
(482, 'Can change age', 121, 'change_age'),
(483, 'Can delete age', 121, 'delete_age'),
(484, 'Can view age', 121, 'view_age'),
(485, 'Can add permission', 122, 'add_permission'),
(486, 'Can change permission', 122, 'change_permission'),
(487, 'Can delete permission', 122, 'delete_permission'),
(488, 'Can view permission', 122, 'view_permission'),
(489, 'Can add group', 123, 'add_group'),
(490, 'Can change group', 123, 'change_group'),
(491, 'Can delete group', 123, 'delete_group'),
(492, 'Can view group', 123, 'view_group'),
(493, 'Can add content type', 124, 'add_contenttype'),
(494, 'Can change content type', 124, 'change_contenttype'),
(495, 'Can delete content type', 124, 'delete_contenttype'),
(496, 'Can view content type', 124, 'view_contenttype'),
(497, 'Can add session', 125, 'add_session'),
(498, 'Can change session', 125, 'change_session'),
(499, 'Can delete session', 125, 'delete_session'),
(500, 'Can view session', 125, 'view_session'),
(501, 'Can add log entry', 126, 'add_logentry'),
(502, 'Can change log entry', 126, 'change_logentry'),
(503, 'Can delete log entry', 126, 'delete_logentry'),
(504, 'Can view log entry', 126, 'view_logentry'),
(505, 'Can add comissionrates', 127, 'add_comissionrates'),
(506, 'Can change comissionrates', 127, 'change_comissionrates'),
(507, 'Can delete comissionrates', 127, 'delete_comissionrates'),
(508, 'Can view comissionrates', 127, 'view_comissionrates'),
(509, 'Can add commission', 128, 'add_commission'),
(510, 'Can change commission', 128, 'change_commission'),
(511, 'Can delete commission', 128, 'delete_commission'),
(512, 'Can view commission', 128, 'view_commission'),
(513, 'Can add referral profile', 129, 'add_referralprofile'),
(514, 'Can change referral profile', 129, 'change_referralprofile'),
(515, 'Can delete referral profile', 129, 'delete_referralprofile'),
(516, 'Can view referral profile', 129, 'view_referralprofile'),
(517, 'Can add multiplier category', 130, 'add_multipliercategory'),
(518, 'Can change multiplier category', 130, 'change_multipliercategory'),
(519, 'Can delete multiplier category', 130, 'delete_multipliercategory'),
(520, 'Can view multiplier category', 130, 'view_multipliercategory'),
(521, 'Can add foir category', 131, 'add_foircategory'),
(522, 'Can change foir category', 131, 'change_foircategory'),
(523, 'Can delete foir category', 131, 'delete_foircategory'),
(524, 'Can view foir category', 131, 'view_foircategory'),
(525, 'Can add multiplier_ info', 132, 'add_multiplier_info'),
(526, 'Can change multiplier_ info', 132, 'change_multiplier_info'),
(527, 'Can delete multiplier_ info', 132, 'delete_multiplier_info'),
(528, 'Can view multiplier_ info', 132, 'view_multiplier_info'),
(529, 'Can add multiplier_ data', 133, 'add_multiplier_data'),
(530, 'Can change multiplier_ data', 133, 'change_multiplier_data'),
(531, 'Can delete multiplier_ data', 133, 'delete_multiplier_data'),
(532, 'Can view multiplier_ data', 133, 'view_multiplier_data'),
(533, 'Can add per tenure_ multiplier_ data', 134, 'add_pertenure_multiplier_data'),
(534, 'Can change per tenure_ multiplier_ data', 134, 'change_pertenure_multiplier_data'),
(535, 'Can delete per tenure_ multiplier_ data', 134, 'delete_pertenure_multiplier_data'),
(536, 'Can view per tenure_ multiplier_ data', 134, 'view_pertenure_multiplier_data'),
(537, 'Can add per tenure_ foir_ data', 135, 'add_pertenure_foir_data'),
(538, 'Can change per tenure_ foir_ data', 135, 'change_pertenure_foir_data'),
(539, 'Can delete per tenure_ foir_ data', 135, 'delete_pertenure_foir_data'),
(540, 'Can view per tenure_ foir_ data', 135, 'view_pertenure_foir_data'),
(541, 'Can add foir_ info', 136, 'add_foir_info'),
(542, 'Can change foir_ info', 136, 'change_foir_info'),
(543, 'Can delete foir_ info', 136, 'delete_foir_info'),
(544, 'Can view foir_ info', 136, 'view_foir_info'),
(545, 'Can add foir_ data', 137, 'add_foir_data'),
(546, 'Can change foir_ data', 137, 'change_foir_data'),
(547, 'Can delete foir_ data', 137, 'delete_foir_data'),
(548, 'Can view foir_ data', 137, 'view_foir_data'),
(549, 'Can add additional rate_ info', 138, 'add_additionalrate_info'),
(550, 'Can change additional rate_ info', 138, 'change_additionalrate_info'),
(551, 'Can delete additional rate_ info', 138, 'delete_additionalrate_info'),
(552, 'Can view additional rate_ info', 138, 'view_additionalrate_info'),
(553, 'Can add rate of interest_ info', 139, 'add_rateofinterest_info'),
(554, 'Can change rate of interest_ info', 139, 'change_rateofinterest_info'),
(555, 'Can delete rate of interest_ info', 139, 'delete_rateofinterest_info'),
(556, 'Can view rate of interest_ info', 139, 'view_rateofinterest_info'),
(557, 'Can add user documents', 140, 'add_userdocuments'),
(558, 'Can change user documents', 140, 'change_userdocuments'),
(559, 'Can delete user documents', 140, 'delete_userdocuments'),
(560, 'Can view user documents', 140, 'view_userdocuments');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(224, '2022-11-14 16:41:24.848142', '1', 'Role object (1)', 1, '[{\"added\": {}}]', 84, 1),
(225, '2022-11-14 16:42:30.033388', '1', 'Role object (1)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 84, 1),
(226, '2022-11-14 16:42:40.814807', '2', 'Role object (2)', 1, '[{\"added\": {}}]', 84, 1),
(227, '2022-11-14 16:54:28.247017', '3', 'Role object (3)', 1, '[{\"added\": {}}]', 84, 1),
(228, '2022-11-14 18:16:19.045922', '2', 'default', 3, '', 36, 1),
(229, '2022-11-15 01:55:04.832086', '3', 'default', 3, '', 36, 1),
(230, '2022-11-15 02:17:06.041394', '4', 'ORP004', 3, '', 36, 1),
(231, '2022-11-15 02:26:57.805357', '5', 'ORP005', 3, '', 36, 1),
(232, '2022-11-15 03:33:55.127532', '6', 'ORP006', 3, '', 36, 1),
(233, '2022-11-15 06:19:22.451176', '5', 'Sanjay Bansali_ORP007', 2, '[]', 129, 1),
(234, '2022-11-15 06:48:12.089872', '7', 'ORP007', 3, '', 36, 1),
(235, '2022-11-15 07:43:40.776359', '8', 'ORP008', 3, '', 36, 1),
(236, '2022-11-15 08:48:05.164773', '9', 'ORP009', 3, '', 36, 1),
(237, '2022-11-15 08:59:03.751855', '10', 'ORP010', 3, '', 36, 1),
(238, '2022-11-15 09:01:12.232626', '11', 'ORP011', 3, '', 36, 1),
(239, '2022-12-03 14:00:39.851694', '12', 'ORP012', 3, '', 36, 1),
(240, '2022-12-03 14:05:17.236290', '13', 'ORP013', 3, '', 36, 1),
(241, '2022-12-03 14:07:16.531649', '14', 'ORP014', 3, '', 36, 1),
(242, '2022-12-05 07:21:09.747700', '1', 'SUPER CAT A', 2, '[{\"changed\": {\"fields\": [\"Banks\"]}}]', 54, 1),
(243, '2022-12-05 07:21:20.151994', '2', 'CAT A', 2, '[{\"changed\": {\"fields\": [\"Banks\"]}}]', 54, 1),
(244, '2022-12-05 07:21:25.527191', '3', 'CAT B', 2, '[{\"changed\": {\"fields\": [\"Banks\"]}}]', 54, 1),
(245, '2022-12-05 07:21:28.583543', '3', 'CAT B', 2, '[]', 54, 1),
(246, '2022-12-05 07:50:33.320832', '10', 'SUPER CAT A', 3, '', 54, 1),
(247, '2022-12-08 09:11:52.981992', '2', 'Multiplier_Data object (2)', 3, '', 133, 1),
(248, '2022-12-08 09:11:52.985414', '1', 'Multiplier_Data object (1)', 3, '', 133, 1),
(249, '2022-12-08 09:12:27.280966', '17', 'PerTenure_Multiplier_Data object (17)', 3, '', 134, 1),
(250, '2022-12-08 09:12:27.283733', '16', 'PerTenure_Multiplier_Data object (16)', 3, '', 134, 1),
(251, '2022-12-08 09:12:27.286265', '15', 'PerTenure_Multiplier_Data object (15)', 3, '', 134, 1),
(252, '2022-12-08 09:12:27.288905', '14', 'PerTenure_Multiplier_Data object (14)', 3, '', 134, 1),
(253, '2022-12-08 09:12:27.290513', '13', 'PerTenure_Multiplier_Data object (13)', 3, '', 134, 1),
(254, '2022-12-08 09:12:27.293292', '12', 'PerTenure_Multiplier_Data object (12)', 3, '', 134, 1),
(255, '2022-12-08 09:12:27.294675', '11', 'PerTenure_Multiplier_Data object (11)', 3, '', 134, 1),
(256, '2022-12-08 09:12:27.297300', '10', 'PerTenure_Multiplier_Data object (10)', 3, '', 134, 1),
(257, '2022-12-08 09:12:27.298604', '9', 'PerTenure_Multiplier_Data object (9)', 3, '', 134, 1),
(258, '2022-12-08 09:12:27.300690', '8', 'PerTenure_Multiplier_Data object (8)', 3, '', 134, 1),
(259, '2022-12-08 09:12:27.302473', '7', 'PerTenure_Multiplier_Data object (7)', 3, '', 134, 1),
(260, '2022-12-08 09:12:27.304193', '6', 'PerTenure_Multiplier_Data object (6)', 3, '', 134, 1),
(261, '2022-12-08 09:12:27.306621', '5', 'PerTenure_Multiplier_Data object (5)', 3, '', 134, 1),
(262, '2022-12-08 09:12:27.309384', '4', 'PerTenure_Multiplier_Data object (4)', 3, '', 134, 1),
(263, '2022-12-08 09:12:27.310825', '3', 'PerTenure_Multiplier_Data object (3)', 3, '', 134, 1),
(264, '2022-12-08 09:12:27.313591', '2', 'PerTenure_Multiplier_Data object (2)', 3, '', 134, 1),
(265, '2022-12-08 09:12:27.315257', '1', 'PerTenure_Multiplier_Data object (1)', 3, '', 134, 1),
(266, '2022-12-08 09:18:07.558908', '49', 'PerTenure_Multiplier_Data object (49)', 3, '', 134, 1),
(267, '2022-12-08 09:18:07.563014', '48', 'PerTenure_Multiplier_Data object (48)', 3, '', 134, 1),
(268, '2022-12-08 09:18:07.565393', '47', 'PerTenure_Multiplier_Data object (47)', 3, '', 134, 1),
(269, '2022-12-08 09:18:07.568756', '46', 'PerTenure_Multiplier_Data object (46)', 3, '', 134, 1),
(270, '2022-12-08 09:18:07.570310', '45', 'PerTenure_Multiplier_Data object (45)', 3, '', 134, 1),
(271, '2022-12-08 09:18:07.573167', '44', 'PerTenure_Multiplier_Data object (44)', 3, '', 134, 1),
(272, '2022-12-08 09:18:07.575736', '43', 'PerTenure_Multiplier_Data object (43)', 3, '', 134, 1),
(273, '2022-12-08 09:18:07.578727', '42', 'PerTenure_Multiplier_Data object (42)', 3, '', 134, 1),
(274, '2022-12-08 09:18:07.580944', '41', 'PerTenure_Multiplier_Data object (41)', 3, '', 134, 1),
(275, '2022-12-08 09:18:07.583788', '40', 'PerTenure_Multiplier_Data object (40)', 3, '', 134, 1),
(276, '2022-12-08 09:18:07.586474', '39', 'PerTenure_Multiplier_Data object (39)', 3, '', 134, 1),
(277, '2022-12-08 09:18:07.588262', '38', 'PerTenure_Multiplier_Data object (38)', 3, '', 134, 1),
(278, '2022-12-08 09:18:07.590935', '37', 'PerTenure_Multiplier_Data object (37)', 3, '', 134, 1),
(279, '2022-12-08 09:18:07.593477', '36', 'PerTenure_Multiplier_Data object (36)', 3, '', 134, 1),
(280, '2022-12-08 09:18:07.595752', '35', 'PerTenure_Multiplier_Data object (35)', 3, '', 134, 1),
(281, '2022-12-08 09:18:07.598816', '34', 'PerTenure_Multiplier_Data object (34)', 3, '', 134, 1),
(282, '2022-12-08 09:18:07.601352', '33', 'PerTenure_Multiplier_Data object (33)', 3, '', 134, 1),
(283, '2022-12-08 09:18:07.603459', '32', 'PerTenure_Multiplier_Data object (32)', 3, '', 134, 1),
(284, '2022-12-08 09:18:07.604629', '31', 'PerTenure_Multiplier_Data object (31)', 3, '', 134, 1),
(285, '2022-12-08 09:18:07.606918', '30', 'PerTenure_Multiplier_Data object (30)', 3, '', 134, 1),
(286, '2022-12-08 09:18:07.608790', '29', 'PerTenure_Multiplier_Data object (29)', 3, '', 134, 1),
(287, '2022-12-08 09:18:07.610786', '28', 'PerTenure_Multiplier_Data object (28)', 3, '', 134, 1),
(288, '2022-12-08 09:18:07.612629', '27', 'PerTenure_Multiplier_Data object (27)', 3, '', 134, 1),
(289, '2022-12-08 09:18:07.615084', '26', 'PerTenure_Multiplier_Data object (26)', 3, '', 134, 1),
(290, '2022-12-08 09:18:07.617244', '25', 'PerTenure_Multiplier_Data object (25)', 3, '', 134, 1),
(291, '2022-12-08 09:18:07.619752', '24', 'PerTenure_Multiplier_Data object (24)', 3, '', 134, 1),
(292, '2022-12-08 09:18:07.622487', '23', 'PerTenure_Multiplier_Data object (23)', 3, '', 134, 1),
(293, '2022-12-08 09:18:07.623980', '22', 'PerTenure_Multiplier_Data object (22)', 3, '', 134, 1),
(294, '2022-12-08 09:18:07.625612', '21', 'PerTenure_Multiplier_Data object (21)', 3, '', 134, 1),
(295, '2022-12-08 09:18:07.628649', '20', 'PerTenure_Multiplier_Data object (20)', 3, '', 134, 1),
(296, '2022-12-08 09:18:07.629868', '19', 'PerTenure_Multiplier_Data object (19)', 3, '', 134, 1),
(297, '2022-12-08 09:18:07.631810', '18', 'PerTenure_Multiplier_Data object (18)', 3, '', 134, 1),
(298, '2022-12-08 09:18:27.220076', '2', 'Multiplier_Info object (2)', 3, '', 132, 1),
(299, '2022-12-08 09:18:27.222093', '1', 'Multiplier_Info object (1)', 3, '', 132, 1),
(300, '2022-12-08 09:18:40.746237', '6', 'Multiplier_Data object (6)', 3, '', 133, 1),
(301, '2022-12-08 09:18:40.753977', '5', 'Multiplier_Data object (5)', 3, '', 133, 1),
(302, '2022-12-08 09:18:40.756721', '4', 'Multiplier_Data object (4)', 3, '', 133, 1),
(303, '2022-12-08 09:18:40.758146', '3', 'Multiplier_Data object (3)', 3, '', 133, 1),
(304, '2022-12-08 09:19:30.824914', '10', 'KOTAPERSAL', 3, '', 91, 1),
(305, '2022-12-08 09:19:30.827907', '9', 'KOTAPERSAL', 3, '', 91, 1),
(306, '2022-12-08 09:19:30.830444', '8', 'KOTAPERSAL', 3, '', 91, 1),
(307, '2022-12-08 09:19:30.832518', '7', 'KOTAPERSAL', 3, '', 91, 1),
(308, '2022-12-10 06:14:47.949768', '4', 'Multiplier_Info object (4)', 3, '', 132, 1),
(309, '2022-12-10 06:14:47.955848', '3', 'Multiplier_Info object (3)', 3, '', 132, 1),
(310, '2022-12-10 06:15:01.714971', '8', 'Multiplier_Data object (8)', 3, '', 133, 1),
(311, '2022-12-10 06:15:01.719035', '7', 'Multiplier_Data object (7)', 3, '', 133, 1),
(312, '2022-12-10 06:16:00.520449', '65', 'PerTenure_Multiplier_Data object (65)', 3, '', 134, 1),
(313, '2022-12-10 06:16:00.523949', '64', 'PerTenure_Multiplier_Data object (64)', 3, '', 134, 1),
(314, '2022-12-10 06:16:00.527681', '63', 'PerTenure_Multiplier_Data object (63)', 3, '', 134, 1),
(315, '2022-12-10 06:16:00.530985', '62', 'PerTenure_Multiplier_Data object (62)', 3, '', 134, 1),
(316, '2022-12-10 06:16:00.533738', '61', 'PerTenure_Multiplier_Data object (61)', 3, '', 134, 1),
(317, '2022-12-10 06:16:00.536322', '60', 'PerTenure_Multiplier_Data object (60)', 3, '', 134, 1),
(318, '2022-12-10 06:16:00.538088', '59', 'PerTenure_Multiplier_Data object (59)', 3, '', 134, 1),
(319, '2022-12-10 06:16:00.541182', '58', 'PerTenure_Multiplier_Data object (58)', 3, '', 134, 1),
(320, '2022-12-10 06:16:00.544269', '57', 'PerTenure_Multiplier_Data object (57)', 3, '', 134, 1),
(321, '2022-12-10 06:16:00.547507', '56', 'PerTenure_Multiplier_Data object (56)', 3, '', 134, 1),
(322, '2022-12-10 06:16:00.550252', '55', 'PerTenure_Multiplier_Data object (55)', 3, '', 134, 1),
(323, '2022-12-10 06:16:00.554057', '54', 'PerTenure_Multiplier_Data object (54)', 3, '', 134, 1),
(324, '2022-12-10 06:16:00.557051', '53', 'PerTenure_Multiplier_Data object (53)', 3, '', 134, 1),
(325, '2022-12-10 06:16:00.560048', '52', 'PerTenure_Multiplier_Data object (52)', 3, '', 134, 1),
(326, '2022-12-10 06:16:00.562799', '51', 'PerTenure_Multiplier_Data object (51)', 3, '', 134, 1),
(327, '2022-12-10 06:16:00.564365', '50', 'PerTenure_Multiplier_Data object (50)', 3, '', 134, 1),
(328, '2022-12-10 06:25:56.891129', '12', 'Multiplier_Data object (12)', 3, '', 133, 1),
(329, '2022-12-10 06:25:56.896872', '11', 'Multiplier_Data object (11)', 3, '', 133, 1),
(330, '2022-12-10 06:25:56.898617', '10', 'Multiplier_Data object (10)', 3, '', 133, 1),
(331, '2022-12-10 06:25:56.901862', '9', 'Multiplier_Data object (9)', 3, '', 133, 1),
(332, '2022-12-10 06:26:19.059635', '6', 'Multiplier_Info object (6)', 3, '', 132, 1),
(333, '2022-12-10 06:26:19.062698', '5', 'Multiplier_Info object (5)', 3, '', 132, 1),
(334, '2022-12-10 06:26:36.213845', '9', 'PerTenure_Foir_Data object (9)', 3, '', 135, 1),
(335, '2022-12-10 06:26:36.217221', '8', 'PerTenure_Foir_Data object (8)', 3, '', 135, 1),
(336, '2022-12-10 06:26:36.220357', '7', 'PerTenure_Foir_Data object (7)', 3, '', 135, 1),
(337, '2022-12-10 06:26:36.223854', '6', 'PerTenure_Foir_Data object (6)', 3, '', 135, 1),
(338, '2022-12-10 06:26:36.226441', '5', 'PerTenure_Foir_Data object (5)', 3, '', 135, 1),
(339, '2022-12-10 06:26:36.229194', '4', 'PerTenure_Foir_Data object (4)', 3, '', 135, 1),
(340, '2022-12-10 06:26:36.231855', '3', 'PerTenure_Foir_Data object (3)', 3, '', 135, 1),
(341, '2022-12-10 06:26:36.235292', '2', 'PerTenure_Foir_Data object (2)', 3, '', 135, 1),
(342, '2022-12-10 06:26:36.238690', '1', 'PerTenure_Foir_Data object (1)', 3, '', 135, 1),
(343, '2022-12-10 06:26:54.802827', '97', 'PerTenure_Multiplier_Data object (97)', 3, '', 134, 1),
(344, '2022-12-10 06:26:54.806572', '96', 'PerTenure_Multiplier_Data object (96)', 3, '', 134, 1),
(345, '2022-12-10 06:26:54.809581', '95', 'PerTenure_Multiplier_Data object (95)', 3, '', 134, 1),
(346, '2022-12-10 06:26:54.812446', '94', 'PerTenure_Multiplier_Data object (94)', 3, '', 134, 1),
(347, '2022-12-10 06:26:54.815908', '93', 'PerTenure_Multiplier_Data object (93)', 3, '', 134, 1),
(348, '2022-12-10 06:26:54.818736', '92', 'PerTenure_Multiplier_Data object (92)', 3, '', 134, 1),
(349, '2022-12-10 06:26:54.820654', '91', 'PerTenure_Multiplier_Data object (91)', 3, '', 134, 1),
(350, '2022-12-10 06:26:54.823337', '90', 'PerTenure_Multiplier_Data object (90)', 3, '', 134, 1),
(351, '2022-12-10 06:26:54.825664', '89', 'PerTenure_Multiplier_Data object (89)', 3, '', 134, 1),
(352, '2022-12-10 06:26:54.827892', '88', 'PerTenure_Multiplier_Data object (88)', 3, '', 134, 1),
(353, '2022-12-10 06:26:54.829879', '87', 'PerTenure_Multiplier_Data object (87)', 3, '', 134, 1),
(354, '2022-12-10 06:26:54.831557', '86', 'PerTenure_Multiplier_Data object (86)', 3, '', 134, 1),
(355, '2022-12-10 06:26:54.834764', '85', 'PerTenure_Multiplier_Data object (85)', 3, '', 134, 1),
(356, '2022-12-10 06:26:54.837755', '84', 'PerTenure_Multiplier_Data object (84)', 3, '', 134, 1),
(357, '2022-12-10 06:26:54.840074', '83', 'PerTenure_Multiplier_Data object (83)', 3, '', 134, 1),
(358, '2022-12-10 06:26:54.842514', '82', 'PerTenure_Multiplier_Data object (82)', 3, '', 134, 1),
(359, '2022-12-10 06:26:54.845337', '81', 'PerTenure_Multiplier_Data object (81)', 3, '', 134, 1),
(360, '2022-12-10 06:26:54.847148', '80', 'PerTenure_Multiplier_Data object (80)', 3, '', 134, 1),
(361, '2022-12-10 06:26:54.850101', '79', 'PerTenure_Multiplier_Data object (79)', 3, '', 134, 1),
(362, '2022-12-10 06:26:54.851805', '78', 'PerTenure_Multiplier_Data object (78)', 3, '', 134, 1),
(363, '2022-12-10 06:26:54.855062', '77', 'PerTenure_Multiplier_Data object (77)', 3, '', 134, 1),
(364, '2022-12-10 06:26:54.857186', '76', 'PerTenure_Multiplier_Data object (76)', 3, '', 134, 1),
(365, '2022-12-10 06:26:54.859995', '75', 'PerTenure_Multiplier_Data object (75)', 3, '', 134, 1),
(366, '2022-12-10 06:26:54.862707', '74', 'PerTenure_Multiplier_Data object (74)', 3, '', 134, 1),
(367, '2022-12-10 06:26:54.864631', '73', 'PerTenure_Multiplier_Data object (73)', 3, '', 134, 1),
(368, '2022-12-10 06:26:54.867199', '72', 'PerTenure_Multiplier_Data object (72)', 3, '', 134, 1),
(369, '2022-12-10 06:26:54.869759', '71', 'PerTenure_Multiplier_Data object (71)', 3, '', 134, 1),
(370, '2022-12-10 06:26:54.871499', '70', 'PerTenure_Multiplier_Data object (70)', 3, '', 134, 1),
(371, '2022-12-10 06:26:54.874467', '69', 'PerTenure_Multiplier_Data object (69)', 3, '', 134, 1),
(372, '2022-12-10 06:26:54.878085', '68', 'PerTenure_Multiplier_Data object (68)', 3, '', 134, 1),
(373, '2022-12-10 06:26:54.879741', '67', 'PerTenure_Multiplier_Data object (67)', 3, '', 134, 1),
(374, '2022-12-10 06:26:54.881979', '66', 'PerTenure_Multiplier_Data object (66)', 3, '', 134, 1),
(375, '2022-12-10 06:27:10.125674', '2', 'Foir_Data object (2)', 3, '', 137, 1),
(376, '2022-12-10 06:27:10.128503', '1', 'Foir_Data object (1)', 3, '', 137, 1),
(377, '2022-12-10 06:27:22.241101', '2', 'Foir_Info object (2)', 3, '', 136, 1),
(378, '2022-12-10 06:27:22.248892', '1', 'Foir_Info object (1)', 3, '', 136, 1),
(379, '2022-12-15 08:00:16.843439', '113', 'PerTenure_Multiplier_Data object (113)', 3, '', 134, 1),
(380, '2022-12-15 08:00:16.848239', '112', 'PerTenure_Multiplier_Data object (112)', 3, '', 134, 1),
(381, '2022-12-15 08:00:16.850576', '111', 'PerTenure_Multiplier_Data object (111)', 3, '', 134, 1),
(382, '2022-12-15 08:00:16.853376', '110', 'PerTenure_Multiplier_Data object (110)', 3, '', 134, 1),
(383, '2022-12-15 08:00:16.854981', '109', 'PerTenure_Multiplier_Data object (109)', 3, '', 134, 1),
(384, '2022-12-15 08:00:16.858180', '108', 'PerTenure_Multiplier_Data object (108)', 3, '', 134, 1),
(385, '2022-12-15 08:00:16.860085', '107', 'PerTenure_Multiplier_Data object (107)', 3, '', 134, 1),
(386, '2022-12-15 08:00:16.862851', '106', 'PerTenure_Multiplier_Data object (106)', 3, '', 134, 1),
(387, '2022-12-15 08:00:16.865426', '105', 'PerTenure_Multiplier_Data object (105)', 3, '', 134, 1),
(388, '2022-12-15 08:00:16.868288', '104', 'PerTenure_Multiplier_Data object (104)', 3, '', 134, 1),
(389, '2022-12-15 08:00:16.870886', '103', 'PerTenure_Multiplier_Data object (103)', 3, '', 134, 1),
(390, '2022-12-15 08:00:16.873176', '102', 'PerTenure_Multiplier_Data object (102)', 3, '', 134, 1),
(391, '2022-12-15 08:00:16.875004', '101', 'PerTenure_Multiplier_Data object (101)', 3, '', 134, 1),
(392, '2022-12-15 08:00:16.877985', '100', 'PerTenure_Multiplier_Data object (100)', 3, '', 134, 1),
(393, '2022-12-15 08:00:16.879985', '99', 'PerTenure_Multiplier_Data object (99)', 3, '', 134, 1),
(394, '2022-12-15 08:00:16.883589', '98', 'PerTenure_Multiplier_Data object (98)', 3, '', 134, 1),
(395, '2022-12-15 08:00:31.004173', '17', 'PerTenure_Foir_Data object (17)', 3, '', 135, 1),
(396, '2022-12-15 08:00:31.013986', '16', 'PerTenure_Foir_Data object (16)', 3, '', 135, 1),
(397, '2022-12-15 08:00:31.016437', '15', 'PerTenure_Foir_Data object (15)', 3, '', 135, 1),
(398, '2022-12-15 08:00:31.019115', '14', 'PerTenure_Foir_Data object (14)', 3, '', 135, 1),
(399, '2022-12-15 08:00:31.021509', '13', 'PerTenure_Foir_Data object (13)', 3, '', 135, 1),
(400, '2022-12-15 08:00:31.023459', '12', 'PerTenure_Foir_Data object (12)', 3, '', 135, 1),
(401, '2022-12-15 08:00:31.025784', '11', 'PerTenure_Foir_Data object (11)', 3, '', 135, 1),
(402, '2022-12-15 08:00:31.028482', '10', 'PerTenure_Foir_Data object (10)', 3, '', 135, 1),
(403, '2022-12-15 08:00:45.380856', '14', 'Multiplier_Data object (14)', 3, '', 133, 1),
(404, '2022-12-15 08:00:45.383625', '13', 'Multiplier_Data object (13)', 3, '', 133, 1),
(405, '2022-12-15 08:01:00.128548', '7', 'Multiplier_Info object (7)', 3, '', 132, 1),
(406, '2022-12-15 08:01:13.843321', '15', 'KOTAPERSAL', 3, '', 91, 1),
(407, '2022-12-15 08:01:44.237915', '3', 'MultiplierCategory object (3)', 3, '', 130, 1),
(408, '2022-12-15 08:01:44.240564', '2', 'MultiplierCategory object (2)', 3, '', 130, 1),
(409, '2022-12-15 08:01:44.241622', '1', 'MultiplierCategory object (1)', 3, '', 130, 1),
(410, '2022-12-15 08:02:02.077577', '2', 'FoirCategory object (2)', 3, '', 131, 1),
(411, '2022-12-15 08:02:02.080599', '1', 'FoirCategory object (1)', 3, '', 131, 1),
(412, '2022-12-15 08:02:15.929526', '3', 'Foir_Data object (3)', 3, '', 137, 1),
(413, '2022-12-15 08:02:42.595658', '3', 'Foir_Info object (3)', 3, '', 136, 1),
(414, '2022-12-15 08:10:37.359506', '1', 'RateOfInterest_Info object (1)', 3, '', 139, 1),
(415, '2022-12-15 08:10:52.780517', '1', 'AdditionalRate_Info object (1)', 3, '', 138, 1),
(416, '2022-12-15 09:13:27.182389', '8', 'Multiplier_Info object (8)', 3, '', 132, 1),
(417, '2022-12-15 09:13:47.103571', '4', 'Foir_Info object (4)', 3, '', 136, 1),
(418, '2022-12-15 10:29:41.528916', '2', 'RateOfInterest_Info object (2)', 3, '', 139, 1),
(419, '2022-12-15 10:29:52.571367', '3', 'RateOfInterest_Info object (3)', 3, '', 139, 1),
(420, '2022-12-15 10:30:18.222427', '2', 'AdditionalRate_Info object (2)', 3, '', 138, 1),
(421, '2022-12-15 10:30:35.830157', '5', 'Foir_Info object (5)', 3, '', 136, 1),
(422, '2022-12-15 10:30:52.046723', '9', 'Multiplier_Info object (9)', 3, '', 132, 1),
(423, '2022-12-15 10:41:12.975194', '3', 'AdditionalRate_Info object (3)', 3, '', 138, 1),
(424, '2022-12-15 10:41:39.217333', '5', 'RateOfInterest_Info object (5)', 3, '', 139, 1),
(425, '2022-12-15 10:41:39.221902', '4', 'RateOfInterest_Info object (4)', 3, '', 139, 1),
(426, '2022-12-15 10:41:50.551652', '19', 'KOTAPERSAL', 3, '', 91, 1),
(427, '2022-12-15 10:41:50.557737', '18', 'KOTAPERSAL', 3, '', 91, 1),
(428, '2022-12-15 10:42:09.814726', '11', 'Multiplier_Info object (11)', 3, '', 132, 1),
(429, '2022-12-15 10:42:09.817033', '10', 'Multiplier_Info object (10)', 3, '', 132, 1),
(430, '2022-12-15 10:42:22.380031', '6', 'Foir_Info object (6)', 3, '', 136, 1),
(431, '2022-12-15 11:00:10.723168', '6', 'RateOfInterest_Info object (6)', 3, '', 139, 1),
(432, '2022-12-15 11:00:20.251725', '7', 'RateOfInterest_Info object (7)', 3, '', 139, 1),
(433, '2022-12-15 11:00:34.772189', '4', 'AdditionalRate_Info object (4)', 3, '', 138, 1),
(434, '2022-12-15 11:00:51.582410', '12', 'Multiplier_Info object (12)', 3, '', 132, 1),
(435, '2022-12-15 11:01:12.041788', '20', 'KOTAPERSAL', 3, '', 91, 1),
(436, '2022-12-15 11:01:35.620293', '7', 'Foir_Info object (7)', 3, '', 136, 1),
(437, '2022-12-15 11:06:01.487052', '9', 'RateOfInterest_Info object (9)', 3, '', 139, 1),
(438, '2022-12-15 11:06:01.491155', '8', 'RateOfInterest_Info object (8)', 3, '', 139, 1),
(439, '2022-12-15 11:06:13.542381', '6', 'AdditionalRate_Info object (6)', 3, '', 138, 1),
(440, '2022-12-15 11:06:13.546168', '5', 'AdditionalRate_Info object (5)', 3, '', 138, 1),
(441, '2022-12-15 11:06:25.712694', '21', 'KOTAPERSAL', 3, '', 91, 1),
(442, '2022-12-15 11:06:37.533187', '13', 'Multiplier_Info object (13)', 3, '', 132, 1),
(443, '2022-12-15 11:06:52.801274', '8', 'Foir_Info object (8)', 3, '', 136, 1),
(444, '2022-12-16 13:48:28.377696', '6', 'SalPersonalDetails object (6)', 3, '', 26, 1),
(445, '2022-12-16 13:48:28.381018', '5', 'SalPersonalDetails object (5)', 3, '', 26, 1),
(446, '2022-12-16 13:48:28.383678', '4', 'SalPersonalDetails object (4)', 3, '', 26, 1),
(447, '2022-12-16 13:48:28.385876', '3', 'SalPersonalDetails object (3)', 3, '', 26, 1),
(448, '2022-12-16 13:48:55.742636', '2', 'SalPersonalDetails object (2)', 2, '[{\"changed\": {\"fields\": [\"Cibil score\", \"Country\"]}}]', 26, 1),
(449, '2022-12-16 14:07:39.532195', '4', 'Kotak_TCS_SUPER CAT A', 1, '[{\"added\": {}}]', 92, 1),
(450, '2022-12-16 14:10:02.349649', '15', 'Multiplier_Info object (15)', 1, '[{\"added\": {}}]', 132, 1),
(451, '2022-12-16 14:10:24.586538', '15', 'Multiplier_Data object (15)', 3, '', 133, 1),
(452, '2022-12-16 14:12:32.233925', '22', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Multiplier info\", \"Salary type\", \"Residence type\", \"Tenure\", \"Company type\"]}}]', 91, 1),
(453, '2022-12-17 04:14:41.814054', '22', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Tenure\"]}}]', 91, 1),
(454, '2022-12-17 04:38:03.922509', '2', 'SalExistingLoanDetails object (2)', 1, '[{\"added\": {}}]', 31, 1),
(455, '2022-12-17 04:39:44.939007', '2', 'SalExistingCreditCard object (2)', 1, '[{\"added\": {}}]', 10, 1),
(456, '2022-12-17 05:11:43.271140', '15', 'Multiplier_Info object (15)', 3, '', 132, 1),
(457, '2022-12-17 05:14:00.641165', '18', 'PerTenure_Foir_Data object (18)', 1, '[{\"added\": {}}]', 135, 1),
(458, '2022-12-17 05:14:08.674091', '19', 'PerTenure_Foir_Data object (19)', 1, '[{\"added\": {}}]', 135, 1),
(459, '2022-12-17 05:14:17.328451', '20', 'PerTenure_Foir_Data object (20)', 1, '[{\"added\": {}}]', 135, 1),
(460, '2022-12-17 05:14:25.263270', '21', 'PerTenure_Foir_Data object (21)', 1, '[{\"added\": {}}]', 135, 1),
(461, '2022-12-17 05:14:33.744390', '22', 'PerTenure_Foir_Data object (22)', 1, '[{\"added\": {}}]', 135, 1),
(462, '2022-12-17 05:14:41.466791', '23', 'PerTenure_Foir_Data object (23)', 1, '[{\"added\": {}}]', 135, 1),
(463, '2022-12-17 05:15:19.169015', '114', 'PerTenure_Multiplier_Data object (114)', 1, '[{\"added\": {}}]', 134, 1),
(464, '2022-12-17 05:15:27.197887', '115', 'PerTenure_Multiplier_Data object (115)', 1, '[{\"added\": {}}]', 134, 1),
(465, '2022-12-17 05:15:37.446104', '116', 'PerTenure_Multiplier_Data object (116)', 1, '[{\"added\": {}}]', 134, 1),
(466, '2022-12-17 05:15:47.569241', '117', 'PerTenure_Multiplier_Data object (117)', 1, '[{\"added\": {}}]', 134, 1),
(467, '2022-12-17 05:16:02.456083', '118', 'PerTenure_Multiplier_Data object (118)', 1, '[{\"added\": {}}]', 134, 1),
(468, '2022-12-17 05:16:11.485530', '119', 'PerTenure_Multiplier_Data object (119)', 1, '[{\"added\": {}}]', 134, 1),
(469, '2022-12-17 05:16:49.264624', '16', 'Multiplier_Data object (16)', 1, '[{\"added\": {}}]', 133, 1),
(470, '2022-12-17 05:17:05.103153', '14', 'Multiplier_Info object (14)', 2, '[{\"changed\": {\"fields\": [\"Multiplier data\"]}}]', 132, 1),
(471, '2022-12-17 05:18:08.359095', '4', 'Foir_Data object (4)', 1, '[{\"added\": {}}]', 137, 1),
(472, '2022-12-17 05:18:23.534655', '9', 'Foir_Info object (9)', 2, '[{\"changed\": {\"fields\": [\"Foir data\"]}}]', 136, 1),
(473, '2022-12-17 06:40:57.267660', '12', 'RateOfInterest_Info object (12)', 3, '', 139, 1),
(474, '2022-12-17 06:40:57.270224', '11', 'RateOfInterest_Info object (11)', 3, '', 139, 1),
(475, '2022-12-17 06:40:57.272666', '10', 'RateOfInterest_Info object (10)', 3, '', 139, 1),
(476, '2022-12-17 06:41:13.451916', '11', 'AdditionalRate_Info object (11)', 3, '', 138, 1),
(477, '2022-12-17 06:41:13.454458', '10', 'AdditionalRate_Info object (10)', 3, '', 138, 1),
(478, '2022-12-17 06:41:13.456007', '9', 'AdditionalRate_Info object (9)', 3, '', 138, 1),
(479, '2022-12-17 06:41:13.457652', '8', 'AdditionalRate_Info object (8)', 3, '', 138, 1),
(480, '2022-12-17 06:41:13.459742', '7', 'AdditionalRate_Info object (7)', 3, '', 138, 1),
(481, '2022-12-17 06:43:19.351191', '12', 'AdditionalRate_Info object (12)', 1, '[{\"added\": {}}]', 138, 1),
(482, '2022-12-17 06:43:45.261663', '13', 'RateOfInterest_Info object (13)', 1, '[{\"added\": {}}]', 139, 1),
(483, '2022-12-17 06:59:50.105106', '22', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Rate of interest\"]}}]', 91, 1),
(484, '2022-12-18 14:28:41.620498', '22', 'KOTAPERSAL', 2, '[]', 91, 1),
(485, '2022-12-18 14:29:22.242807', '22', 'KOTAPERSAL', 3, '', 91, 1),
(486, '2022-12-18 15:46:20.157412', '24', 'KOTAPERSAL', 3, '', 91, 1),
(487, '2022-12-18 15:46:27.995475', '23', 'KOTAPERSAL', 3, '', 91, 1),
(488, '2022-12-18 16:26:24.007709', '25', 'KOTAPERSAL', 3, '', 91, 1),
(489, '2022-12-18 16:27:35.172670', '12', 'Foir_Info object (12)', 3, '', 136, 1),
(490, '2022-12-18 16:27:35.180138', '11', 'Foir_Info object (11)', 3, '', 136, 1),
(491, '2022-12-18 16:27:35.183118', '10', 'Foir_Info object (10)', 3, '', 136, 1),
(492, '2022-12-18 16:28:03.872424', '18', 'Multiplier_Info object (18)', 3, '', 132, 1),
(493, '2022-12-18 16:28:03.875971', '17', 'Multiplier_Info object (17)', 3, '', 132, 1),
(494, '2022-12-18 16:28:03.878966', '16', 'Multiplier_Info object (16)', 3, '', 132, 1),
(495, '2022-12-18 16:36:09.846009', '26', 'KOTAPERSAL', 3, '', 91, 1),
(496, '2022-12-18 16:36:24.695291', '19', 'Multiplier_Info object (19)', 3, '', 132, 1),
(497, '2022-12-18 16:36:37.262496', '13', 'Foir_Info object (13)', 3, '', 136, 1),
(498, '2022-12-18 16:37:31.713631', '20', 'Multiplier_Info object (20)', 3, '', 132, 1),
(499, '2022-12-18 16:37:46.001022', '14', 'Foir_Info object (14)', 3, '', 136, 1),
(500, '2022-12-18 16:40:05.509391', '27', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Multiplier info\", \"Foir info\", \"Salary type\", \"Residence type\", \"Tenure\", \"Company type\", \"Rate of interest\"]}}]', 91, 1),
(501, '2022-12-19 05:49:59.971578', '28', 'KOTAPERSAL', 3, '', 91, 1),
(502, '2022-12-19 05:49:59.974731', '27', 'KOTAPERSAL', 3, '', 91, 1),
(503, '2022-12-19 05:50:12.000206', '13', 'RateOfInterest_Info object (13)', 3, '', 139, 1),
(504, '2022-12-19 05:50:39.170845', '12', 'AdditionalRate_Info object (12)', 3, '', 138, 1),
(505, '2022-12-19 05:51:00.873215', '15', 'Foir_Info object (15)', 3, '', 136, 1),
(506, '2022-12-19 05:51:00.883053', '9', 'Foir_Info object (9)', 3, '', 136, 1),
(507, '2022-12-19 05:51:12.010451', '21', 'Multiplier_Info object (21)', 3, '', 132, 1),
(508, '2022-12-19 05:51:12.016326', '14', 'Multiplier_Info object (14)', 3, '', 132, 1),
(509, '2022-12-19 05:53:56.230972', '22', 'Multiplier_Info object (22)', 3, '', 132, 1),
(510, '2022-12-19 05:54:09.771123', '14', 'RateOfInterest_Info object (14)', 3, '', 139, 1),
(511, '2022-12-19 05:54:26.329520', '16', 'Foir_Info object (16)', 3, '', 136, 1),
(512, '2022-12-19 05:57:59.182076', '30', 'KOTAPERSAL', 3, '', 91, 1),
(513, '2022-12-19 05:57:59.184840', '29', 'KOTAPERSAL', 3, '', 91, 1),
(514, '2022-12-19 05:58:11.937322', '23', 'Multiplier_Info object (23)', 3, '', 132, 1),
(515, '2022-12-19 05:58:23.308677', '17', 'Foir_Info object (17)', 3, '', 136, 1),
(516, '2022-12-19 05:58:41.551700', '15', 'RateOfInterest_Info object (15)', 3, '', 139, 1),
(517, '2022-12-19 06:02:45.759569', '13', 'AdditionalRate_Info object (13)', 3, '', 138, 1),
(518, '2022-12-19 06:02:57.211940', '24', 'Multiplier_Info object (24)', 3, '', 132, 1),
(519, '2022-12-19 06:03:14.426303', '18', 'Foir_Info object (18)', 3, '', 136, 1),
(520, '2022-12-19 06:03:25.004229', '16', 'RateOfInterest_Info object (16)', 3, '', 139, 1),
(521, '2022-12-19 06:03:40.948617', '31', 'KOTAPERSAL', 3, '', 91, 1),
(522, '2022-12-19 06:07:43.052470', '32', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Salary type\", \"Residence type\", \"Tenure\", \"Company type\"]}}]', 91, 1),
(523, '2022-12-19 06:13:27.336147', '14', 'AdditionalRate_Info object (14)', 3, '', 138, 1),
(524, '2022-12-19 06:13:45.535541', '19', 'Foir_Info object (19)', 3, '', 136, 1),
(525, '2022-12-19 06:13:55.746704', '25', 'Multiplier_Info object (25)', 3, '', 132, 1),
(526, '2022-12-19 06:14:25.881781', '17', 'RateOfInterest_Info object (17)', 3, '', 139, 1),
(527, '2022-12-19 06:14:43.586832', '32', 'KOTAPERSAL', 3, '', 91, 1),
(528, '2022-12-19 06:16:16.559681', '33', 'KOTAPERSAL', 2, '[{\"changed\": {\"fields\": [\"Salary type\", \"Residence type\", \"Tenure\", \"Company type\"]}}]', 91, 1),
(529, '2022-12-19 06:16:50.932883', '26', 'Multiplier_Info object (26)', 2, '[{\"changed\": {\"fields\": [\"Multiplier data\"]}}]', 132, 1),
(530, '2022-12-19 06:17:02.887512', '20', 'Foir_Info object (20)', 2, '[{\"changed\": {\"fields\": [\"Foir data\"]}}]', 136, 1),
(531, '2022-12-19 06:21:20.951800', '16', 'AdditionalRate_Info object (16)', 2, '[]', 138, 1),
(532, '2022-12-19 06:21:31.103835', '15', 'AdditionalRate_Info object (15)', 2, '[{\"changed\": {\"fields\": [\"Max salary\"]}}]', 138, 1),
(533, '2022-12-21 15:12:46.018119', '16', 'AdditionalRate_Info object (16)', 3, '', 138, 1),
(534, '2022-12-21 15:12:51.928590', '15', 'AdditionalRate_Info object (15)', 3, '', 138, 1),
(535, '2022-12-21 15:13:03.340992', '26', 'Multiplier_Info object (26)', 3, '', 132, 1),
(536, '2022-12-21 15:13:14.107026', '16', 'Multiplier_Data object (16)', 3, '', 133, 1),
(537, '2022-12-21 15:13:29.936978', '20', 'Foir_Info object (20)', 3, '', 136, 1),
(538, '2022-12-21 15:13:39.413323', '4', 'Foir_Data object (4)', 3, '', 137, 1),
(539, '2022-12-21 15:14:13.430658', '23', 'PerTenure_Foir_Data object (23)', 3, '', 135, 1),
(540, '2022-12-21 15:14:13.431656', '22', 'PerTenure_Foir_Data object (22)', 3, '', 135, 1),
(541, '2022-12-21 15:14:13.433650', '21', 'PerTenure_Foir_Data object (21)', 3, '', 135, 1),
(542, '2022-12-21 15:14:13.433650', '20', 'PerTenure_Foir_Data object (20)', 3, '', 135, 1),
(543, '2022-12-21 15:14:13.434672', '19', 'PerTenure_Foir_Data object (19)', 3, '', 135, 1),
(544, '2022-12-21 15:14:13.435645', '18', 'PerTenure_Foir_Data object (18)', 3, '', 135, 1),
(545, '2022-12-21 15:14:25.523348', '119', 'PerTenure_Multiplier_Data object (119)', 3, '', 134, 1),
(546, '2022-12-21 15:14:25.525157', '118', 'PerTenure_Multiplier_Data object (118)', 3, '', 134, 1),
(547, '2022-12-21 15:14:25.526158', '117', 'PerTenure_Multiplier_Data object (117)', 3, '', 134, 1),
(548, '2022-12-21 15:14:25.527154', '116', 'PerTenure_Multiplier_Data object (116)', 3, '', 134, 1),
(549, '2022-12-21 15:14:25.528173', '115', 'PerTenure_Multiplier_Data object (115)', 3, '', 134, 1),
(550, '2022-12-21 15:14:25.529116', '114', 'PerTenure_Multiplier_Data object (114)', 3, '', 134, 1),
(551, '2022-12-21 15:14:37.194953', '33', 'KOTAPERSAL', 3, '', 91, 1),
(552, '2022-12-21 15:21:34.210900', '27', 'Multiplier_Info object (27)', 3, '', 132, 1),
(553, '2022-12-21 15:21:43.803166', '17', 'Multiplier_Data object (17)', 3, '', 133, 1),
(554, '2022-12-21 15:22:24.117418', '125', 'PerTenure_Multiplier_Data object (125)', 3, '', 134, 1),
(555, '2022-12-21 15:22:24.118914', '124', 'PerTenure_Multiplier_Data object (124)', 3, '', 134, 1),
(556, '2022-12-21 15:22:24.119948', '123', 'PerTenure_Multiplier_Data object (123)', 3, '', 134, 1),
(557, '2022-12-21 15:22:24.120898', '122', 'PerTenure_Multiplier_Data object (122)', 3, '', 134, 1),
(558, '2022-12-21 15:22:24.121811', '121', 'PerTenure_Multiplier_Data object (121)', 3, '', 134, 1),
(559, '2022-12-21 15:22:24.122758', '120', 'PerTenure_Multiplier_Data object (120)', 3, '', 134, 1),
(560, '2022-12-21 15:22:40.753092', '18', 'RateOfInterest_Info object (18)', 3, '', 139, 1),
(561, '2022-12-21 15:22:54.003721', '34', 'KOTAPERSAL', 3, '', 91, 1),
(562, '2022-12-21 15:25:01.404449', '17', 'AdditionalRate_Info object (17)', 3, '', 138, 1),
(563, '2022-12-21 15:25:14.106698', '35', 'KOTAPERSAL', 3, '', 91, 1),
(564, '2022-12-21 15:25:24.072787', '131', 'PerTenure_Multiplier_Data object (131)', 3, '', 134, 1),
(565, '2022-12-21 15:25:24.074936', '130', 'PerTenure_Multiplier_Data object (130)', 3, '', 134, 1),
(566, '2022-12-21 15:25:24.075813', '129', 'PerTenure_Multiplier_Data object (129)', 3, '', 134, 1),
(567, '2022-12-21 15:25:24.076807', '128', 'PerTenure_Multiplier_Data object (128)', 3, '', 134, 1),
(568, '2022-12-21 15:25:24.077747', '127', 'PerTenure_Multiplier_Data object (127)', 3, '', 134, 1),
(569, '2022-12-21 15:25:24.077747', '126', 'PerTenure_Multiplier_Data object (126)', 3, '', 134, 1),
(570, '2022-12-21 15:26:39.634008', '29', 'PerTenure_Foir_Data object (29)', 3, '', 135, 1),
(571, '2022-12-21 15:26:39.635006', '28', 'PerTenure_Foir_Data object (28)', 3, '', 135, 1),
(572, '2022-12-21 15:26:39.636003', '27', 'PerTenure_Foir_Data object (27)', 3, '', 135, 1),
(573, '2022-12-21 15:26:39.636003', '26', 'PerTenure_Foir_Data object (26)', 3, '', 135, 1),
(574, '2022-12-21 15:26:39.637000', '25', 'PerTenure_Foir_Data object (25)', 3, '', 135, 1),
(575, '2022-12-21 15:26:39.637998', '24', 'PerTenure_Foir_Data object (24)', 3, '', 135, 1),
(576, '2022-12-21 15:26:49.732681', '28', 'Multiplier_Info object (28)', 3, '', 132, 1),
(577, '2022-12-21 15:26:59.411963', '18', 'Multiplier_Data object (18)', 3, '', 133, 1),
(578, '2022-12-21 15:27:24.461928', '19', 'RateOfInterest_Info object (19)', 3, '', 139, 1),
(579, '2022-12-21 15:28:06.931464', '5', 'Foir_Data object (5)', 3, '', 137, 1),
(580, '2022-12-21 15:28:17.332070', '21', 'Foir_Info object (21)', 3, '', 136, 1),
(581, '2022-12-21 15:32:53.506176', '18', 'AdditionalRate_Info object (18)', 3, '', 138, 1),
(582, '2022-12-21 15:33:04.508352', '6', 'Foir_Data object (6)', 3, '', 137, 1),
(583, '2022-12-21 15:33:15.278240', '22', 'Foir_Info object (22)', 3, '', 136, 1),
(584, '2022-12-21 15:33:30.290981', '35', 'PerTenure_Foir_Data object (35)', 3, '', 135, 1),
(585, '2022-12-21 15:33:30.292395', '34', 'PerTenure_Foir_Data object (34)', 3, '', 135, 1),
(586, '2022-12-21 15:33:30.293319', '33', 'PerTenure_Foir_Data object (33)', 3, '', 135, 1),
(587, '2022-12-21 15:33:30.294318', '32', 'PerTenure_Foir_Data object (32)', 3, '', 135, 1),
(588, '2022-12-21 15:33:30.294318', '31', 'PerTenure_Foir_Data object (31)', 3, '', 135, 1),
(589, '2022-12-21 15:33:30.296034', '30', 'PerTenure_Foir_Data object (30)', 3, '', 135, 1),
(590, '2022-12-21 15:33:53.034783', '137', 'PerTenure_Multiplier_Data object (137)', 3, '', 134, 1),
(591, '2022-12-21 15:33:53.037017', '136', 'PerTenure_Multiplier_Data object (136)', 3, '', 134, 1),
(592, '2022-12-21 15:33:53.037979', '135', 'PerTenure_Multiplier_Data object (135)', 3, '', 134, 1),
(593, '2022-12-21 15:33:53.038978', '134', 'PerTenure_Multiplier_Data object (134)', 3, '', 134, 1),
(594, '2022-12-21 15:33:53.039975', '133', 'PerTenure_Multiplier_Data object (133)', 3, '', 134, 1),
(595, '2022-12-21 15:33:53.040810', '132', 'PerTenure_Multiplier_Data object (132)', 3, '', 134, 1),
(596, '2022-12-21 15:34:04.144817', '36', 'KOTAPERSAL', 3, '', 91, 1),
(597, '2022-12-21 15:34:28.375840', '20', 'RateOfInterest_Info object (20)', 3, '', 139, 1),
(598, '2022-12-21 15:35:13.649145', '19', 'Multiplier_Data object (19)', 3, '', 133, 1),
(599, '2022-12-21 15:35:27.170896', '29', 'Multiplier_Info object (29)', 3, '', 132, 1),
(600, '2022-12-21 15:41:01.592594', '30', 'Multiplier_Info object (30)', 3, '', 132, 1),
(601, '2022-12-21 15:41:13.355278', '20', 'Multiplier_Data object (20)', 3, '', 133, 1),
(602, '2022-12-21 15:41:51.153634', '7', 'Foir_Data object (7)', 3, '', 137, 1),
(603, '2022-12-21 15:41:59.014437', '23', 'Foir_Info object (23)', 3, '', 136, 1),
(604, '2022-12-21 15:42:11.554066', '21', 'RateOfInterest_Info object (21)', 3, '', 139, 1),
(605, '2022-12-21 15:42:25.318900', '143', 'PerTenure_Multiplier_Data object (143)', 3, '', 134, 1),
(606, '2022-12-21 15:42:25.320257', '142', 'PerTenure_Multiplier_Data object (142)', 3, '', 134, 1),
(607, '2022-12-21 15:42:25.321338', '141', 'PerTenure_Multiplier_Data object (141)', 3, '', 134, 1),
(608, '2022-12-21 15:42:25.321999', '140', 'PerTenure_Multiplier_Data object (140)', 3, '', 134, 1),
(609, '2022-12-21 15:42:25.322964', '139', 'PerTenure_Multiplier_Data object (139)', 3, '', 134, 1),
(610, '2022-12-21 15:42:25.322964', '138', 'PerTenure_Multiplier_Data object (138)', 3, '', 134, 1),
(611, '2022-12-21 15:42:35.907045', '41', 'PerTenure_Foir_Data object (41)', 3, '', 135, 1),
(612, '2022-12-21 15:42:35.909413', '40', 'PerTenure_Foir_Data object (40)', 3, '', 135, 1),
(613, '2022-12-21 15:42:35.910413', '39', 'PerTenure_Foir_Data object (39)', 3, '', 135, 1),
(614, '2022-12-21 15:42:35.911084', '38', 'PerTenure_Foir_Data object (38)', 3, '', 135, 1),
(615, '2022-12-21 15:42:35.912090', '37', 'PerTenure_Foir_Data object (37)', 3, '', 135, 1),
(616, '2022-12-21 15:42:35.912991', '36', 'PerTenure_Foir_Data object (36)', 3, '', 135, 1),
(617, '2022-12-21 15:42:53.489624', '37', 'KOTAPERSAL', 3, '', 91, 1),
(618, '2022-12-21 15:43:31.020435', '8', 'Foir_Data object (8)', 2, '[{\"changed\": {\"fields\": [\"Max salary\"]}}]', 137, 1),
(619, '2022-12-21 15:43:49.606507', '21', 'Multiplier_Data object (21)', 3, '', 133, 1),
(620, '2022-12-21 15:43:57.359068', '31', 'Multiplier_Info object (31)', 3, '', 132, 1),
(621, '2022-12-21 15:44:08.082135', '47', 'PerTenure_Foir_Data object (47)', 3, '', 135, 1),
(622, '2022-12-21 15:44:08.083986', '46', 'PerTenure_Foir_Data object (46)', 3, '', 135, 1),
(623, '2022-12-21 15:44:08.084621', '45', 'PerTenure_Foir_Data object (45)', 3, '', 135, 1),
(624, '2022-12-21 15:44:08.085514', '44', 'PerTenure_Foir_Data object (44)', 3, '', 135, 1),
(625, '2022-12-21 15:44:08.086148', '43', 'PerTenure_Foir_Data object (43)', 3, '', 135, 1),
(626, '2022-12-21 15:44:08.087144', '42', 'PerTenure_Foir_Data object (42)', 3, '', 135, 1),
(627, '2022-12-21 15:45:20.859574', '149', 'PerTenure_Multiplier_Data object (149)', 3, '', 134, 1),
(628, '2022-12-21 15:45:20.861045', '148', 'PerTenure_Multiplier_Data object (148)', 3, '', 134, 1),
(629, '2022-12-21 15:45:20.861652', '147', 'PerTenure_Multiplier_Data object (147)', 3, '', 134, 1),
(630, '2022-12-21 15:45:20.862360', '146', 'PerTenure_Multiplier_Data object (146)', 3, '', 134, 1),
(631, '2022-12-21 15:45:20.863349', '145', 'PerTenure_Multiplier_Data object (145)', 3, '', 134, 1),
(632, '2022-12-21 15:45:20.864486', '144', 'PerTenure_Multiplier_Data object (144)', 3, '', 134, 1),
(633, '2022-12-21 15:45:32.623903', '22', 'RateOfInterest_Info object (22)', 3, '', 139, 1),
(634, '2022-12-21 15:45:43.398516', '38', 'KOTAPERSAL', 3, '', 91, 1),
(635, '2022-12-21 15:46:09.678458', '8', 'Foir_Data object (8)', 3, '', 137, 1),
(636, '2022-12-21 15:46:20.358922', '24', 'Foir_Info object (24)', 3, '', 136, 1),
(637, '2022-12-21 15:46:40.594081', '19', 'AdditionalRate_Info object (19)', 3, '', 138, 1),
(638, '2022-12-23 08:15:18.270155', '1', 'Raj', 2, '[{\"changed\": {\"fields\": [\"Phone\", \"Address\", \"City\", \"Pincode\", \"Mapped to dept\", \"Reporting head\"]}}]', 36, 1),
(639, '2022-12-24 13:39:07.020710', '1', 'SalPersonalDetails object (1)', 1, '[{\"added\": {}}]', 26, 1),
(640, '2022-12-24 13:41:26.164816', '1', 'SalCompanyDetails object (1)', 1, '[{\"added\": {}}]', 11, 1),
(641, '2022-12-24 13:42:30.027730', '1', 'SalIncomeDetails object (1)', 1, '[{\"added\": {}}]', 30, 1),
(642, '2022-12-24 13:43:20.724022', '1', 'SalExistingCreditCard object (1)', 1, '[{\"added\": {}}]', 10, 1),
(643, '2022-12-24 13:44:45.977644', '1', 'SalExistingLoanDetails object (1)', 1, '[{\"added\": {}}]', 31, 1),
(644, '2022-12-24 13:45:49.788717', '1', 'SalResidenceDetails object (1)', 1, '[{\"added\": {}}]', 8, 1),
(645, '2022-12-24 13:47:35.224608', '1', 'SalExistingLoanDetails object (1)', 2, '[]', 31, 1),
(646, '2022-12-24 13:58:53.211953', '1', 'SalExistingLoanDetails object (1)', 2, '[{\"changed\": {\"fields\": [\"Emi\"]}}]', 31, 1),
(647, '2022-12-24 13:59:15.287022', '1', 'SalExistingLoanDetails object (1)', 2, '[{\"changed\": {\"fields\": [\"Emi\"]}}]', 31, 1),
(648, '2022-12-25 17:31:34.610243', '22', 'AdditionalRate_Info object (22)', 1, '[{\"added\": {}}]', 138, 1),
(649, '2022-12-25 18:08:52.432787', '23', 'RateOfInterest_Info object (23)', 2, '[{\"changed\": {\"fields\": [\"Additional rate info\"]}}]', 139, 1),
(650, '2022-12-25 18:09:25.304945', '23', 'RateOfInterest_Info object (23)', 2, '[{\"changed\": {\"fields\": [\"Additional rate info\"]}}]', 139, 1),
(651, '2022-12-25 18:18:59.605231', '23', 'RateOfInterest_Info object (23)', 2, '[{\"changed\": {\"fields\": [\"Additional rate info\"]}}]', 139, 1),
(652, '2022-12-26 05:57:59.910420', '2', 'Spouse', 1, '[{\"added\": {}}]', 83, 1),
(653, '2022-12-26 05:59:54.336673', '5', '1st Co-Applicant_Rohan Shetty', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'account', 'additionaldetails'),
(2, 'account', 'contactperson'),
(36, 'account', 'customuser'),
(35, 'account', 'housewifedetails'),
(34, 'account', 'housewifeexistingcarddetails'),
(33, 'account', 'housewifeexistingloandetails'),
(32, 'account', 'housewifeinvestmentdetails'),
(28, 'account', 'housewifepersonaldetails'),
(3, 'account', 'leads'),
(24, 'account', 'loanapplication'),
(25, 'account', 'loandocuments'),
(4, 'account', 'propertydetails'),
(27, 'account', 'proptype1'),
(23, 'account', 'proptype2'),
(22, 'account', 'proptype3'),
(21, 'account', 'proptype4'),
(129, 'account', 'referralprofile'),
(20, 'account', 'retireddetails'),
(19, 'account', 'retiredexistingcarddetails'),
(18, 'account', 'retiredexistingloandetails'),
(17, 'account', 'retiredinvestmentdetails'),
(16, 'account', 'retiredotherdetails'),
(15, 'account', 'retiredpensiondetails'),
(14, 'account', 'retiredresidencedetails'),
(13, 'account', 'saladditionaldetails'),
(12, 'account', 'saladditionalotherincomes'),
(11, 'account', 'salcompanydetails'),
(10, 'account', 'salexistingcreditcard'),
(31, 'account', 'salexistingloandetails'),
(30, 'account', 'salincomedetails'),
(9, 'account', 'salinvestments'),
(29, 'account', 'salotherincomes'),
(26, 'account', 'salpersonaldetails'),
(8, 'account', 'salresidencedetails'),
(7, 'account', 'studentdetails'),
(6, 'account', 'studentexistingcarddetails'),
(5, 'account', 'studentexistingloandetails'),
(140, 'account', 'userdocuments'),
(126, 'admin', 'logentry'),
(123, 'auth', 'group'),
(122, 'auth', 'permission'),
(124, 'contenttypes', 'contenttype'),
(121, 'HomeLoan', 'age'),
(93, 'HomeLoan', 'bank'),
(119, 'HomeLoan', 'bankcodes'),
(120, 'HomeLoan', 'cibil'),
(118, 'HomeLoan', 'company'),
(94, 'HomeLoan', 'costsheet'),
(117, 'HomeLoan', 'customer'),
(116, 'HomeLoan', 'customerdesignation'),
(115, 'HomeLoan', 'customernationality'),
(114, 'HomeLoan', 'fees'),
(95, 'HomeLoan', 'hlbasicdetails'),
(113, 'HomeLoan', 'hlincome'),
(112, 'HomeLoan', 'hlincomefoir'),
(111, 'HomeLoan', 'hlloan_to_value_type_1'),
(110, 'HomeLoan', 'hlloan_to_value_type_2'),
(109, 'HomeLoan', 'hlobligation'),
(108, 'HomeLoan', 'hlotherdetails'),
(107, 'HomeLoan', 'hlproperty'),
(106, 'HomeLoan', 'income'),
(105, 'HomeLoan', 'incomefoir'),
(104, 'HomeLoan', 'loantowardsvaluation'),
(103, 'HomeLoan', 'ltvresale'),
(102, 'HomeLoan', 'negativeemployerprofile'),
(101, 'HomeLoan', 'obligation'),
(100, 'HomeLoan', 'otherdetails'),
(99, 'HomeLoan', 'otherdetailsroi'),
(96, 'HomeLoan', 'productsandpolicy'),
(98, 'HomeLoan', 'property'),
(97, 'HomeLoan', 'remarks'),
(138, 'master', 'additionalrate_info'),
(37, 'master', 'agreementtype'),
(38, 'master', 'applicanttype'),
(39, 'master', 'areain'),
(40, 'master', 'areatype'),
(41, 'master', 'ayyear'),
(92, 'master', 'bankcategory'),
(42, 'master', 'bankname'),
(43, 'master', 'bonustype'),
(48, 'master', 'cibil'),
(44, 'master', 'cibilloantype'),
(45, 'master', 'cibiltype'),
(90, 'master', 'city'),
(127, 'master', 'comissionrates'),
(128, 'master', 'commission'),
(49, 'master', 'companycategory'),
(54, 'master', 'companycatergorytypes'),
(46, 'master', 'companyname'),
(47, 'master', 'companytype'),
(55, 'master', 'country'),
(56, 'master', 'customertype'),
(57, 'master', 'deductiontype'),
(58, 'master', 'defaultyear'),
(59, 'master', 'degree'),
(60, 'master', 'designationtype'),
(61, 'master', 'employmenttype'),
(50, 'master', 'foir'),
(131, 'master', 'foircategory'),
(137, 'master', 'foir_data'),
(136, 'master', 'foir_info'),
(62, 'master', 'gender'),
(63, 'master', 'incentivestype'),
(64, 'master', 'investmenttype'),
(65, 'master', 'lawyertype'),
(66, 'master', 'leadsource'),
(67, 'master', 'lessetype'),
(68, 'master', 'loanamount'),
(69, 'master', 'maritalstatus'),
(130, 'master', 'multipliercategory'),
(133, 'master', 'multiplier_data'),
(132, 'master', 'multiplier_info'),
(71, 'master', 'nationality'),
(72, 'master', 'natureofbusiness'),
(73, 'master', 'negativearea'),
(74, 'master', 'paymentdelayyear'),
(135, 'master', 'pertenure_foir_data'),
(134, 'master', 'pertenure_multiplier_data'),
(75, 'master', 'prefix'),
(76, 'master', 'product'),
(70, 'master', 'productsorservices'),
(91, 'master', 'product_and_policy_master'),
(77, 'master', 'profession'),
(78, 'master', 'propertyin'),
(80, 'master', 'propertytype'),
(79, 'master', 'qualification'),
(81, 'master', 'rateofinterest'),
(139, 'master', 'rateofinterest_info'),
(82, 'master', 'rejectiontype'),
(83, 'master', 'relation'),
(51, 'master', 'residencetype'),
(84, 'master', 'role'),
(85, 'master', 'roomtype'),
(52, 'master', 'salarytype'),
(86, 'master', 'stageofconstruction'),
(87, 'master', 'state'),
(88, 'master', 'status'),
(89, 'master', 'subproduct'),
(53, 'master', 'tenure'),
(125, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'master', '0001_initial', '2022-11-05 05:53:35.341317'),
(2, 'HomeLoan', '0001_initial', '2022-11-05 05:53:52.134984'),
(3, 'contenttypes', '0001_initial', '2022-11-05 05:54:02.178526'),
(4, 'contenttypes', '0002_remove_content_type_name', '2022-11-05 05:54:02.269294'),
(5, 'auth', '0001_initial', '2022-11-05 05:54:02.432014'),
(6, 'auth', '0002_alter_permission_name_max_length', '2022-11-05 05:54:02.468338'),
(7, 'auth', '0003_alter_user_email_max_length', '2022-11-05 05:54:02.527614'),
(8, 'auth', '0004_alter_user_username_opts', '2022-11-05 05:54:02.540563'),
(9, 'auth', '0005_alter_user_last_login_null', '2022-11-05 05:54:02.555523'),
(10, 'auth', '0006_require_contenttypes_0002', '2022-11-05 05:54:02.566495'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2022-11-05 05:54:02.582485'),
(12, 'auth', '0008_alter_user_username_max_length', '2022-11-05 05:54:02.596984'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2022-11-05 05:54:02.614158'),
(14, 'auth', '0010_alter_group_name_max_length', '2022-11-05 05:54:02.649063'),
(15, 'auth', '0011_update_proxy_permissions', '2022-11-05 05:54:02.711933'),
(16, 'auth', '0012_alter_user_first_name_max_length', '2022-11-05 05:54:02.723804'),
(17, 'account', '0001_initial', '2022-11-05 05:54:07.854497'),
(18, 'sessions', '0001_initial', '2022-11-05 05:54:43.273794'),
(19, 'admin', '0001_initial', '2022-11-05 05:55:11.704184'),
(20, 'admin', '0002_logentry_remove_auto_add', '2022-11-05 05:55:11.722826'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-05 05:55:11.744473'),
(22, 'master', '0003_commission_comissionrates', '2022-11-09 15:42:33.197896'),
(23, 'master', '0004_alter_product_and_policy_master_customer_type', '2022-11-09 15:49:45.813518'),
(24, 'account', '0002_alter_salpersonaldetails_cibil_score_and_more', '2022-11-09 15:49:46.339657'),
(25, 'account', '0002_customuser_alter_salpersonaldetails_cibil_score_and_more', '2022-11-14 15:13:16.096389'),
(26, 'account', '0003_alter_customuser_address_alter_customuser_city_and_more', '2022-11-14 15:51:47.579252'),
(27, 'account', '0004_alter_customuser_address_alter_customuser_city_and_more', '2022-11-14 15:54:36.674456'),
(28, 'account', '0005_referralprofile_full_name_and_more', '2022-11-14 17:27:22.003027'),
(29, 'account', '0006_alter_referralprofile_profession', '2022-11-14 18:13:13.525576'),
(30, 'master', '0002_remove_foircategory_gross_salary_and_more', '2022-11-17 13:59:34.937202'),
(31, 'master', '0003_companycatergorytypes_banks', '2022-12-05 06:49:42.145038'),
(32, 'master', '0004_multiplier_data_pertenure_multiplier_data_and_more', '2022-12-08 07:23:31.544237'),
(33, 'master', '0005_rename_multipier_info_product_and_policy_master_multiplier_info_and_more', '2022-12-08 08:09:26.863863'),
(34, 'master', '0006_remove_foir_info_multiplier_data_foir_info_foir_data_and_more', '2022-12-10 06:18:07.091516'),
(35, 'master', '0007_additionalrate_info_rateofinterest_info_and_more', '2022-12-15 04:50:50.701423'),
(36, 'master', '0008_remove_rateofinterest_info_max_salary_and_more', '2022-12-19 05:48:43.099416'),
(37, 'master', '0009_remove_product_and_policy_master_tenure', '2022-12-19 13:59:42.609143'),
(38, 'master', '0011_remove_product_and_policy_master_processing_fee_and_more', '2022-12-21 14:38:55.279148'),
(39, 'master', '0002_rename_processing_fee_additionalrate_info_processing_fees', '2022-12-21 14:46:33.525355'),
(40, 'account', '0002_salpersonaldetails_retirement_proof_userdocuments', '2022-12-24 13:11:52.918686'),
(41, 'account', '0003_salpersonaldetails_lawyer_type', '2022-12-24 13:13:41.503422'),
(42, 'account', '0002_userdocuments_salpersonaldetails', '2022-12-24 13:21:12.452981'),
(43, 'account', '0002_salresidencedetails_salpersonaldetails_and_more', '2022-12-24 13:35:04.644619'),
(44, 'master', '0002_product_and_policy_master_co_applicant_allowed', '2022-12-26 04:20:42.781771'),
(45, 'master', '0003_alter_product_and_policy_master_co_applicant_allowed', '2022-12-26 04:26:21.767711');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4imv6k78lwfp0dj5hqblmam8senhqvyp', 'e30:1ourre:ytHbwKfvWlW-YZ9lLJaKcZUaS2l1LTlQ0-NmmV8T5bk', '2022-11-29 09:04:18.641580'),
('4rd1ow1uy7vwxujjtdzo9raknj02kpol', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p1TCA:nHrh4sr2j8-sr-O161GDZobbahUtdxn6J-y4q8RoEls', '2022-12-17 14:08:46.529590'),
('d8ludl9jnimpiavl2dwcfrljuxea57e3', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p1p5C:aGLSkLFtlcEsrmQWziT3WnwlOrtyJ7E00zRvA1mK39c', '2022-12-18 13:31:02.127137'),
('da5jocswbb2z97m8lsjejef1qey9xdb2', '.eJxVjMEOwiAQRP-FsyELCwU9evcbyMJupGpoUtqT8d9tkx70MJd5b-atEq1LTWuXOY2sLsqo02-XqTyl7YAf1O6TLlNb5jHrXdEH7fo2sbyuh_t3UKnXbS0ckGBgsBgjWFsgA4IZ0BVrihUxIcO5ZOeEWQJgwC2eonfeOkL1-QK_kDa1:1orCvM:hQ19OO2XFpGG7hV1oD3ZEq8vDyhM-a-HhgKUzZuNgiQ', '2022-11-19 06:45:00.190470'),
('dad10o775crdzlgorfhmy2s5zpxtkkgg', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p7bnN:gdAoRidx1iA3T_PCXnEszE6FhF1aj_myAKKJzexpt_c', '2023-01-03 12:32:33.262183'),
('ejl60ltnjjjb453iim9lslfx90tjpvh2', '.eJxVjMEOwiAQRP-FsyELCwU9evcbyMJupGpoUtqT8d9tkx70MJd5b-atEq1LTWuXOY2sLsqo02-XqTyl7YAf1O6TLlNb5jHrXdEH7fo2sbyuh_t3UKnXbS0ckGBgsBgjWFsgA4IZ0BVrihUxIcO5ZOeEWQJgwC2eonfeOkL1-QK_kDa1:1oswwi:-CmZ3auFTQeQRbrvsrCKtWA_3CXG4YmRjq-E82ZTHnY', '2022-11-24 02:05:36.759181'),
('f8uyufbj7mh97sp0d0o070hkcmtxhlw3', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p1nby:PP6dKLPE1HWUMwA3und1VQOpA2OchbjgLdAJyiNrhug', '2022-12-18 11:56:46.696437'),
('g2nopdbote1mwke4g2j0kmrr05vpipvm', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p8u96:JO4QL28KVquDSL3zAPGrTuNXDIr8iFjgXsF-nMLYx5U', '2023-01-07 02:20:20.201029'),
('lh9qaczqgo0ndz8pnr4wn4uoy647f1nl', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p7oRS:e3F0w0-XGZDJr_cIuKHW0G0FkbNhhy2Xtqi3md6qiuE', '2023-01-04 02:02:46.680936'),
('nvqcda78667fjfc9cmt9jqq4g3tteuhc', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p6uL6:w8fmq1nglgzB5JXerCxyJzoqbwbcKlUEdNUHkMrsOTs', '2023-01-01 14:08:28.079687'),
('o5ixcxl2sk3ujmwj40riie0vx7u1xukh', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p2n7c:NMzYWCRVjLejbVRwPoY3Np5PykXCkYd_y-P63KKHl3A', '2022-12-21 05:37:32.302501'),
('qthpiuzorekmhc2slrukdk4mtn78klm5', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p1T1L:cap_WgQDmMEOKCInslZBQDef1mMlKa9luvlAqgcbES0', '2022-12-17 13:57:35.108831'),
('xp6n1a1lonzqlm5d5imyduulk6xf9t89', '.eJxVjEEOwiAQRe_C2hAozggu3XuGZmAGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uzsurwu0VKD6kb4DvVW9Op1WWeot4UvdOur43ledndv4NCvXxrYeQcHCSGIycBipCNSwSZWACCd-aEyWSL7KxDGyhSHgAHL94Ej-r9AQ_wOD0:1p8tvf:lpqCSVg4DFlE2PabZKlvgNcYmCCgzH1m6fUJhMZb4Rc', '2023-01-07 02:06:27.033628');

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_age`
--

CREATE TABLE `homeloan_age` (
  `age_id` int(11) NOT NULL,
  `min_age` int(11) NOT NULL,
  `retire_age` int(11) NOT NULL,
  `max_age_consi_others` int(11) NOT NULL,
  `max_age_consi_gov` int(11) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_bank`
--

CREATE TABLE `homeloan_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(25) NOT NULL,
  `cust_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_bankcodes`
--

CREATE TABLE `homeloan_bankcodes` (
  `id` bigint(20) NOT NULL,
  `code` varchar(25) NOT NULL,
  `name_of_company` varchar(50) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_cibil`
--

CREATE TABLE `homeloan_cibil` (
  `cibil_id` int(11) NOT NULL,
  `min_amount` bigint(20) NOT NULL,
  `max_amount` bigint(20) NOT NULL,
  `min_cibil` int(11) NOT NULL,
  `max_cibil` int(11) NOT NULL,
  `min_rate` double NOT NULL,
  `max_rate` double NOT NULL,
  `processing_fees` double NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `cibil_loan_type_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_company`
--

CREATE TABLE `homeloan_company` (
  `comp_id` int(11) NOT NULL,
  `comp_type` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_costsheet`
--

CREATE TABLE `homeloan_costsheet` (
  `cost_particular_id` int(11) NOT NULL,
  `particulars` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_customer`
--

CREATE TABLE `homeloan_customer` (
  `cust_id` int(11) NOT NULL,
  `min_age` int(11) NOT NULL,
  `total_Exp` int(11) NOT NULL,
  `form16` varchar(3) NOT NULL,
  `salary_type` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_customerdesignation`
--

CREATE TABLE `homeloan_customerdesignation` (
  `cust_desig_id` int(11) NOT NULL,
  `cust_desig` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_customernationality`
--

CREATE TABLE `homeloan_customernationality` (
  `cust_nat_id` int(11) NOT NULL,
  `cust_nat` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_fees`
--

CREATE TABLE `homeloan_fees` (
  `fee_id` int(11) NOT NULL,
  `login_fees` varchar(25) NOT NULL,
  `proc_fee_app` varchar(25) NOT NULL,
  `proc_fee_type` varchar(25) NOT NULL,
  `proc_fee_flat_loan_amtwise` varchar(25) NOT NULL,
  `proc_fee_percent_loan_amtwise` varchar(25) NOT NULL,
  `offers` varchar(25) NOT NULL,
  `offline_or_online` varchar(7) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlbasicdetails`
--

CREATE TABLE `homeloan_hlbasicdetails` (
  `id` bigint(20) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `minimum_age` int(11) NOT NULL,
  `retirement_age` int(11) NOT NULL,
  `maximum_age_consider_govt` int(11) NOT NULL,
  `maximum_age_consider_others` int(11) NOT NULL,
  `minimum_loan_amount` double NOT NULL,
  `maximum_loan_amount` double NOT NULL,
  `total_experience` int(11) NOT NULL,
  `company_profitability` tinyint(1) NOT NULL,
  `form_16` tinyint(1) NOT NULL,
  `profession_tax_deduction` tinyint(1) NOT NULL,
  `negative_employer_profile` tinyint(1) NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `customer_type_id` bigint(20) NOT NULL,
  `pid_id` int(11) NOT NULL,
  `salary_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlbasicdetails_company_type`
--

CREATE TABLE `homeloan_hlbasicdetails_company_type` (
  `id` bigint(20) NOT NULL,
  `hlbasicdetails_id` bigint(20) NOT NULL,
  `companytype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlbasicdetails_designation`
--

CREATE TABLE `homeloan_hlbasicdetails_designation` (
  `id` bigint(20) NOT NULL,
  `hlbasicdetails_id` bigint(20) NOT NULL,
  `designationtype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlincome`
--

CREATE TABLE `homeloan_hlincome` (
  `id` bigint(20) NOT NULL,
  `gross_salary` tinyint(1) NOT NULL,
  `net_salary` tinyint(1) NOT NULL,
  `bonus` tinyint(1) NOT NULL,
  `min_bonus_avg_monthly` int(11) NOT NULL,
  `max_bonus_avg_monthly` int(11) NOT NULL,
  `bonus_avg_monthly_percentage` double NOT NULL,
  `income_foir_monthly` tinyint(1) NOT NULL,
  `min_bonus_avg_quarterly` int(11) NOT NULL,
  `max_bonus_avg_quarterly` int(11) NOT NULL,
  `bonus_avg_quarterly_percentage` double NOT NULL,
  `income_foir_quarterly` tinyint(1) NOT NULL,
  `min_bonus_avg_half_yearly` int(11) NOT NULL,
  `max_bonus_avg_half_yearly` int(11) NOT NULL,
  `bonus_avg_half_yearly_percentage` double NOT NULL,
  `income_foir_half_yearly` tinyint(1) NOT NULL,
  `min_bonus_avg_yearly` int(11) NOT NULL,
  `max_bonus_avg_yearly` int(11) NOT NULL,
  `bonus_avg_yearly_percentage` double NOT NULL,
  `income_foir_yearly` tinyint(1) NOT NULL,
  `rent_income` tinyint(1) NOT NULL,
  `bank_reflection` tinyint(1) NOT NULL,
  `min_rent_reflection_in_bank` int(11) NOT NULL,
  `max_rent_reflection_in_bank` int(11) NOT NULL,
  `rent_income_percentage` int(11) NOT NULL,
  `co_applicant_no_income_only_rent_income` tinyint(1) NOT NULL,
  `co_applicant_mandatory` tinyint(1) NOT NULL,
  `future_rent` tinyint(1) NOT NULL,
  `future_rent_percentage` int(11) NOT NULL,
  `income_foir_future_rent` int(11) NOT NULL,
  `incentive` tinyint(1) NOT NULL,
  `min_incentive_avg_monthly` int(11) NOT NULL,
  `max_incentive_avg_monthly` int(11) NOT NULL,
  `incentive_avg_monthly_percentage` double NOT NULL,
  `min_incentive_avg_quarterly` int(11) NOT NULL,
  `max_incentive_avg_quarterly` int(11) NOT NULL,
  `incentive_avg_quarterly_percentage` double NOT NULL,
  `min_incentive_avg_half_yearly` int(11) NOT NULL,
  `max_incentive_avg_half_yearly` int(11) NOT NULL,
  `incentive_avg_half_yearly_percentage` double NOT NULL,
  `min_incentive_avg_yearly` int(11) NOT NULL,
  `max_incentive_avg_yearly` int(11) NOT NULL,
  `incentive_avg_yearly_percentage` double NOT NULL,
  `income_foir_incentive` tinyint(1) NOT NULL,
  `income_foir` int(11) NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL,
  `rent_agreement_type_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlincomefoir`
--

CREATE TABLE `homeloan_hlincomefoir` (
  `id` bigint(20) NOT NULL,
  `min_income_foir` int(11) NOT NULL,
  `max_income_foir` int(11) NOT NULL,
  `income_foir_percentage` double NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlloan_to_value_type_1`
--

CREATE TABLE `homeloan_hlloan_to_value_type_1` (
  `id` bigint(20) NOT NULL,
  `rbi_guidelines` int(11) NOT NULL,
  `amenity` int(11) NOT NULL,
  `car_parking` tinyint(1) NOT NULL,
  `car_parking_amount` int(11) DEFAULT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `loan_amount_id` bigint(20) NOT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlloan_to_value_type_2`
--

CREATE TABLE `homeloan_hlloan_to_value_type_2` (
  `id` bigint(20) NOT NULL,
  `building_age` int(11) NOT NULL,
  `ltv_percent_for_fresh` int(11) NOT NULL,
  `ltv_percent_for_balance_transfer` int(11) NOT NULL,
  `tenure_for_fresh` int(11) NOT NULL,
  `tenure_for_balance_transfer` int(11) NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlobligation`
--

CREATE TABLE `homeloan_hlobligation` (
  `id` bigint(20) NOT NULL,
  `emi_obligation` tinyint(1) NOT NULL,
  `emi_obligation_not_consider` int(11) NOT NULL,
  `credit_card` tinyint(1) NOT NULL,
  `credit_card_obligation_percent` int(11) NOT NULL,
  `gold_loan` tinyint(1) NOT NULL,
  `gold_loan_percent` int(11) NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlotherdetails`
--

CREATE TABLE `homeloan_hlotherdetails` (
  `id` bigint(20) NOT NULL,
  `rate_of_interest` int(11) NOT NULL,
  `prevailing_rate` int(11) NOT NULL,
  `tenure` int(11) NOT NULL,
  `inward_cheque_return` tinyint(1) NOT NULL,
  `multiple_inquiry` tinyint(1) NOT NULL,
  `relation_eligible` varchar(25) NOT NULL,
  `relation_not_eligible` varchar(25) NOT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlproperty`
--

CREATE TABLE `homeloan_hlproperty` (
  `id` bigint(20) NOT NULL,
  `builder_category` tinyint(1) NOT NULL,
  `apf` tinyint(1) NOT NULL,
  `occupation_certificate` tinyint(1) NOT NULL,
  `cc_municipal_plan_tax_receipt` tinyint(1) NOT NULL,
  `previous_aggrement_available` tinyint(1) NOT NULL,
  `subvention_scheme` tinyint(1) NOT NULL,
  `percent_of_completion` double NOT NULL,
  `property_age` int(11) DEFAULT NULL,
  `effective_date` datetime(6) DEFAULT NULL,
  `ineffective_date` datetime(6) DEFAULT NULL,
  `basic_details_id_id` bigint(20) DEFAULT NULL,
  `pid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlproperty_negative_area`
--

CREATE TABLE `homeloan_hlproperty_negative_area` (
  `id` bigint(20) NOT NULL,
  `hlproperty_id` bigint(20) NOT NULL,
  `negativearea_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlproperty_property_type`
--

CREATE TABLE `homeloan_hlproperty_property_type` (
  `id` bigint(20) NOT NULL,
  `hlproperty_id` bigint(20) NOT NULL,
  `propertytype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlproperty_room_type`
--

CREATE TABLE `homeloan_hlproperty_room_type` (
  `id` bigint(20) NOT NULL,
  `hlproperty_id` bigint(20) NOT NULL,
  `roomtype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_hlproperty_stage_of_construction`
--

CREATE TABLE `homeloan_hlproperty_stage_of_construction` (
  `id` bigint(20) NOT NULL,
  `hlproperty_id` bigint(20) NOT NULL,
  `stageofconstruction_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_income`
--

CREATE TABLE `homeloan_income` (
  `income_id` int(11) NOT NULL,
  `gross_sal` varchar(25) NOT NULL,
  `net_sal` varchar(25) NOT NULL,
  `bonus` varchar(25) NOT NULL,
  `bonus_avg_yearly` varchar(25) NOT NULL,
  `bonus_avg_yearly_percent` varchar(25) NOT NULL,
  `bonus_avg_qtr` varchar(25) NOT NULL,
  `bonus_avg_qtr_percent` varchar(25) NOT NULL,
  `bonus_avg_half_yearly` varchar(25) NOT NULL,
  `bonus_avg_half_yearly_percent` varchar(25) NOT NULL,
  `rent_income` varchar(25) NOT NULL,
  `rent_agreement_type` varchar(25) NOT NULL,
  `bank_ref` varchar(25) NOT NULL,
  `rent_ref_in_bank` varchar(25) NOT NULL,
  `rent_inc_percent` varchar(25) NOT NULL,
  `fut_rent` varchar(25) NOT NULL,
  `fut_rent_percent` varchar(25) NOT NULL,
  `incentive` varchar(25) NOT NULL,
  `incen_avg_months` varchar(25) NOT NULL,
  `incen_percent` varchar(25) NOT NULL,
  `coApplicant_No_Income_only_Rent_income` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_incomefoir`
--

CREATE TABLE `homeloan_incomefoir` (
  `inc_foir_id` int(11) NOT NULL,
  `min_amt` int(11) NOT NULL,
  `max_amt` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_loantowardsvaluation`
--

CREATE TABLE `homeloan_loantowardsvaluation` (
  `loan_tow_val_id` int(11) NOT NULL,
  `cost_sheet` varchar(90) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `rbi_guidelines` varchar(25) NOT NULL,
  `ammenity` varchar(25) NOT NULL,
  `additional` varchar(25) NOT NULL,
  `car_parking` varchar(25) NOT NULL,
  `car_parking_percent` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_ltvresale`
--

CREATE TABLE `homeloan_ltvresale` (
  `ltv_id` int(11) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `rbi_guidelines` int(11) NOT NULL,
  `doccument_cost` int(11) NOT NULL,
  `additional` int(11) NOT NULL,
  `car_parking` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `market_value` int(11) NOT NULL,
  `av_capping` int(11) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_negativeemployerprofile`
--

CREATE TABLE `homeloan_negativeemployerprofile` (
  `neg_emp_pro_id` int(11) NOT NULL,
  `neg_emp_pro` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_obligation`
--

CREATE TABLE `homeloan_obligation` (
  `obligation_id` int(11) NOT NULL,
  `emi_oblig` varchar(25) NOT NULL,
  `emi_oblig_not_consi` varchar(25) NOT NULL,
  `credit_card` varchar(25) NOT NULL,
  `credit_card_oblig_percent` int(11) NOT NULL,
  `gold_loan` varchar(25) NOT NULL,
  `gold_loan_percent` int(11) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_otherdetails`
--

CREATE TABLE `homeloan_otherdetails` (
  `oth_det_id` int(11) NOT NULL,
  `prevailing_rate` int(11) NOT NULL,
  `tenure` varchar(25) NOT NULL,
  `inward_cheque_return` varchar(25) NOT NULL,
  `multiple_inquiry` varchar(25) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_otherdetailsroi`
--

CREATE TABLE `homeloan_otherdetailsroi` (
  `oth_det_roi_id` int(11) NOT NULL,
  `min_loan_amt` int(11) NOT NULL,
  `max_loan_amt` int(11) NOT NULL,
  `min_val` int(11) NOT NULL,
  `max_val` int(11) NOT NULL,
  `roi_women` varchar(5) NOT NULL,
  `roi_men` varchar(5) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_productsandpolicy`
--

CREATE TABLE `homeloan_productsandpolicy` (
  `prod_id` int(11) NOT NULL,
  `productandpolicy_name` varchar(50) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL,
  `lock` tinyint(1) NOT NULL,
  `bank_name_id` bigint(20) DEFAULT NULL,
  `prod_name_id` bigint(20) DEFAULT NULL,
  `sub_product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_property`
--

CREATE TABLE `homeloan_property` (
  `prop_id` int(11) NOT NULL,
  `builder_cat` varchar(25) NOT NULL,
  `occupation_certi` varchar(25) NOT NULL,
  `prev_agreement` varchar(25) NOT NULL,
  `sub_scheme` varchar(25) NOT NULL,
  `perc_completion` int(11) NOT NULL,
  `bank_id_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homeloan_remarks`
--

CREATE TABLE `homeloan_remarks` (
  `remark_id` int(11) NOT NULL,
  `remark` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_additionalrate_info`
--

CREATE TABLE `master_additionalrate_info` (
  `id` bigint(20) NOT NULL,
  `loan_min_amount` bigint(20) NOT NULL,
  `loan_max_amount` bigint(20) NOT NULL,
  `rate_of_interest` bigint(20) NOT NULL,
  `max_salary` bigint(20) DEFAULT NULL,
  `min_salary` bigint(20) DEFAULT NULL,
  `processing_fee` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_additionalrate_info`
--

INSERT INTO `master_additionalrate_info` (`id`, `loan_min_amount`, `loan_max_amount`, `rate_of_interest`, `max_salary`, `min_salary`, `processing_fee`) VALUES
(20, 90000, 120000, 11, 89999, 80000, 3999),
(21, 90000, 120000, 12, 100000, 90000, 4999),
(22, 1000000, 1500000, 15, 89999, 80000, 4500);

-- --------------------------------------------------------

--
-- Table structure for table `master_agreementtype`
--

CREATE TABLE `master_agreementtype` (
  `id` bigint(20) NOT NULL,
  `agreement_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_applicanttype`
--

CREATE TABLE `master_applicanttype` (
  `id` bigint(20) NOT NULL,
  `applicant_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_applicanttype`
--

INSERT INTO `master_applicanttype` (`id`, `applicant_type`, `effective_date`, `ineffective_date`) VALUES
(1, 'Applicant', '2022-11-09', NULL),
(2, '1st Co-Applicant', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_areain`
--

CREATE TABLE `master_areain` (
  `id` bigint(20) NOT NULL,
  `area_in` varchar(50) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_areatype`
--

CREATE TABLE `master_areatype` (
  `id` bigint(20) NOT NULL,
  `area_type` varchar(50) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_ayyear`
--

CREATE TABLE `master_ayyear` (
  `id` bigint(20) NOT NULL,
  `ay_year` varchar(7) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_bankcategory`
--

CREATE TABLE `master_bankcategory` (
  `id` bigint(20) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `bank_name_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `company_name_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_bankcategory`
--

INSERT INTO `master_bankcategory` (`id`, `effective_date`, `bank_name_id`, `category_id`, `company_name_id`) VALUES
(3, '2022-11-10', 2, 1, 1),
(4, '2022-12-16', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_bankname`
--

CREATE TABLE `master_bankname` (
  `id` bigint(20) NOT NULL,
  `bank_name` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_bankname`
--

INSERT INTO `master_bankname` (`id`, `bank_name`, `effective_date`, `ineffective_date`) VALUES
(1, 'Canara Bank', '2022-11-09', NULL),
(2, 'HDFC', '2022-11-10', NULL),
(3, 'ICICI', '2022-11-10', NULL),
(4, 'Kotak', '2022-11-10', NULL),
(5, 'test', '2022-12-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_bonustype`
--

CREATE TABLE `master_bonustype` (
  `id` bigint(20) NOT NULL,
  `bonus_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_cibil`
--

CREATE TABLE `master_cibil` (
  `id` bigint(20) NOT NULL,
  `cibil_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_cibilloantype`
--

CREATE TABLE `master_cibilloantype` (
  `id` bigint(20) NOT NULL,
  `cibil_loan_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_cibiltype`
--

CREATE TABLE `master_cibiltype` (
  `id` bigint(20) NOT NULL,
  `cibil_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_city`
--

CREATE TABLE `master_city` (
  `id` bigint(20) NOT NULL,
  `city_name` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_city`
--

INSERT INTO `master_city` (`id`, `city_name`, `effective_date`, `ineffective_date`, `state_id`) VALUES
(1, 'Mumbai', '2022-11-09', NULL, 1),
(2, 'Pune', '2022-11-09', NULL, 1),
(3, 'Nagpur', '2022-11-09', NULL, 1),
(4, 'Thane', '2022-11-09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_comissionrates`
--

CREATE TABLE `master_comissionrates` (
  `id` bigint(20) NOT NULL,
  `Commissionrate` int(11) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL,
  `Commissiontype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_commission`
--

CREATE TABLE `master_commission` (
  `id` bigint(20) NOT NULL,
  `Commissiontype` varchar(100) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_companycatergorytypes`
--

CREATE TABLE `master_companycatergorytypes` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_companycatergorytypes`
--

INSERT INTO `master_companycatergorytypes` (`id`, `cocat_type`) VALUES
(1, 'SUPER CAT A'),
(2, 'CAT A'),
(3, 'CAT B'),
(4, 'CAT C'),
(5, 'CAT D'),
(6, 'CAT GA'),
(7, 'CAT GB'),
(8, 'CAT GD'),
(9, 'CAT RA');

-- --------------------------------------------------------

--
-- Table structure for table `master_companycatergorytypes_banks`
--

CREATE TABLE `master_companycatergorytypes_banks` (
  `id` bigint(20) NOT NULL,
  `companycatergorytypes_id` bigint(20) NOT NULL,
  `bankname_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_companycatergorytypes_banks`
--

INSERT INTO `master_companycatergorytypes_banks` (`id`, `companycatergorytypes_id`, `bankname_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(8, 1, 4),
(3, 2, 2),
(4, 2, 3),
(5, 3, 1),
(6, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `master_companyname`
--

CREATE TABLE `master_companyname` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_companyname`
--

INSERT INTO `master_companyname` (`id`, `company_name`, `effective_date`, `ineffective_date`) VALUES
(1, 'TCS', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_companytype`
--

CREATE TABLE `master_companytype` (
  `id` bigint(20) NOT NULL,
  `company_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_companytype`
--

INSERT INTO `master_companytype` (`id`, `company_type`, `effective_date`, `ineffective_date`) VALUES
(1, 'Proprietorship', '2022-01-19', '2022-01-19'),
(2, 'Partnership', '2022-01-19', '2022-01-19'),
(3, 'Limited Liability Partnership', '2022-01-19', '2022-01-19'),
(4, 'Pvt Ltd', '2022-01-19', '2022-01-19'),
(5, 'Public Ltd', '2022-01-19', '2022-01-19'),
(6, 'Govt.', '2022-01-19', '2022-01-19'),
(7, 'Trust', '2022-01-19', '2022-01-19'),
(8, 'HUF', '2022-01-19', '2022-01-19'),
(9, 'MNC\'S', '2022-01-19', '2022-01-19'),
(10, 'test', '2022-11-13', '2022-06-08'),
(11, 'test2', '2022-11-13', NULL),
(12, 'test4', '2022-11-13', NULL),
(13, 'test3', '2022-11-13', NULL),
(14, 'test5', '2022-11-13', NULL),
(15, 'test_last', '2022-11-13', '2022-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `master_country`
--

CREATE TABLE `master_country` (
  `id` bigint(20) NOT NULL,
  `country` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_country`
--

INSERT INTO `master_country` (`id`, `country`, `effective_date`, `ineffective_date`) VALUES
(1, 'India', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_customertype`
--

CREATE TABLE `master_customertype` (
  `id` bigint(20) NOT NULL,
  `cust_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_customertype`
--

INSERT INTO `master_customertype` (`id`, `cust_type`, `effective_date`, `ineffective_date`) VALUES
(1, 'Salaried', '2022-01-19', '2022-01-19'),
(2, 'Self Employed', '2022-01-19', '2022-01-19'),
(3, 'Salaried Professional', '2022-01-19', '2022-01-19'),
(4, 'Business Professional', '2022-01-19', '2022-01-19'),
(5, 'Housewife', '2022-01-19', '2022-01-19'),
(6, 'Student', '2022-01-19', '2022-01-19'),
(7, 'Retired Pensioner', '2022-01-19', '2022-01-19'),
(8, 'Retired', '2022-01-19', '2022-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `master_deductiontype`
--

CREATE TABLE `master_deductiontype` (
  `id` bigint(20) NOT NULL,
  `deduction_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_defaultyear`
--

CREATE TABLE `master_defaultyear` (
  `id` bigint(20) NOT NULL,
  `default_year` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_defaultyear`
--

INSERT INTO `master_defaultyear` (`id`, `default_year`, `effective_date`, `ineffective_date`) VALUES
(1, '2022', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_degree`
--

CREATE TABLE `master_degree` (
  `id` bigint(20) NOT NULL,
  `degree` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_degree`
--

INSERT INTO `master_degree` (`id`, `degree`, `effective_date`, `ineffective_date`) VALUES
(1, 'BE/BTech', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_designationtype`
--

CREATE TABLE `master_designationtype` (
  `id` bigint(20) NOT NULL,
  `desg_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_designationtype`
--

INSERT INTO `master_designationtype` (`id`, `desg_type`, `effective_date`, `ineffective_date`) VALUES
(1, 'Below Officer Level', '2022-01-19', '2022-01-19'),
(2, 'Above Officer Level', '2022-01-19', '2022-01-19'),
(3, 'Junior Management Level', '2022-01-19', '2022-01-19'),
(4, 'Middle Management Level', '2022-01-19', '2022-01-19'),
(5, 'Senior Management Level', '2022-01-19', '2022-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `master_employmenttype`
--

CREATE TABLE `master_employmenttype` (
  `id` bigint(20) NOT NULL,
  `employment_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_employmenttype`
--

INSERT INTO `master_employmenttype` (`id`, `employment_type`, `effective_date`, `ineffective_date`) VALUES
(1, 'Manager', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_foircategory`
--

CREATE TABLE `master_foircategory` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(200) NOT NULL,
  `cutoff` int(11) NOT NULL,
  `roi` double NOT NULL,
  `min_loan_amt` bigint(20) NOT NULL,
  `max_loan_amt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_foir_data`
--

CREATE TABLE `master_foir_data` (
  `id` bigint(20) NOT NULL,
  `min_salary` bigint(20) NOT NULL,
  `max_salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_foir_data`
--

INSERT INTO `master_foir_data` (`id`, `min_salary`, `max_salary`) VALUES
(9, 80000, 89999),
(10, 90000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `master_foir_data_tenure_foirs`
--

CREATE TABLE `master_foir_data_tenure_foirs` (
  `id` bigint(20) NOT NULL,
  `foir_data_id` bigint(20) NOT NULL,
  `pertenure_foir_data_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_foir_data_tenure_foirs`
--

INSERT INTO `master_foir_data_tenure_foirs` (`id`, `foir_data_id`, `pertenure_foir_data_id`) VALUES
(47, 9, 48),
(48, 9, 49),
(49, 9, 50),
(50, 9, 51),
(51, 9, 52),
(52, 9, 53),
(53, 10, 54),
(54, 10, 55),
(55, 10, 56),
(56, 10, 57),
(57, 10, 58),
(58, 10, 59);

-- --------------------------------------------------------

--
-- Table structure for table `master_foir_info`
--

CREATE TABLE `master_foir_info` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_foir_info`
--

INSERT INTO `master_foir_info` (`id`, `cocat_type`) VALUES
(25, 'SUPER CAT A'),
(26, 'SUPER CAT A'),
(27, 'CAT B');

-- --------------------------------------------------------

--
-- Table structure for table `master_foir_info_foir_data`
--

CREATE TABLE `master_foir_info_foir_data` (
  `id` bigint(20) NOT NULL,
  `foir_info_id` bigint(20) NOT NULL,
  `foir_data_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_foir_info_foir_data`
--

INSERT INTO `master_foir_info_foir_data` (`id`, `foir_info_id`, `foir_data_id`) VALUES
(9, 25, 9),
(10, 25, 10);

-- --------------------------------------------------------

--
-- Table structure for table `master_gender`
--

CREATE TABLE `master_gender` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_gender`
--

INSERT INTO `master_gender` (`id`, `gender`, `effective_date`, `ineffective_date`) VALUES
(1, 'Male', '2022-11-09', NULL),
(2, 'Female', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_incentivestype`
--

CREATE TABLE `master_incentivestype` (
  `id` bigint(20) NOT NULL,
  `incentives_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_investmenttype`
--

CREATE TABLE `master_investmenttype` (
  `id` bigint(20) NOT NULL,
  `investment_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_lawyertype`
--

CREATE TABLE `master_lawyertype` (
  `id` bigint(20) NOT NULL,
  `lawyer_type` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_leadsource`
--

CREATE TABLE `master_leadsource` (
  `id` bigint(20) NOT NULL,
  `lead_source` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_leadsource`
--

INSERT INTO `master_leadsource` (`id`, `lead_source`, `effective_date`, `ineffective_date`) VALUES
(1, 'test1', '2022-12-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_lessetype`
--

CREATE TABLE `master_lessetype` (
  `id` bigint(20) NOT NULL,
  `lesse_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_loanamount`
--

CREATE TABLE `master_loanamount` (
  `id` bigint(20) NOT NULL,
  `loan_amount` varchar(30) NOT NULL,
  `min_loan_amount` int(11) NOT NULL,
  `max_loan_amount` int(11) NOT NULL,
  `total_exp` int(11) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_maritalstatus`
--

CREATE TABLE `master_maritalstatus` (
  `id` bigint(20) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_maritalstatus`
--

INSERT INTO `master_maritalstatus` (`id`, `marital_status`, `effective_date`, `ineffective_date`) VALUES
(1, 'Single', '2022-11-09', NULL),
(2, 'Married', '2022-11-09', NULL),
(3, 'Divorced', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_multipliercategory`
--

CREATE TABLE `master_multipliercategory` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(200) NOT NULL,
  `multiplier_number` int(11) NOT NULL,
  `roi` double NOT NULL,
  `min_loan_amt` bigint(20) NOT NULL,
  `max_loan_amt` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_multiplier_data`
--

CREATE TABLE `master_multiplier_data` (
  `id` bigint(20) NOT NULL,
  `min_salary` bigint(20) NOT NULL,
  `max_salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_multiplier_data`
--

INSERT INTO `master_multiplier_data` (`id`, `min_salary`, `max_salary`) VALUES
(22, 80000, 89999),
(23, 90000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `master_multiplier_data_tenure_multipliers`
--

CREATE TABLE `master_multiplier_data_tenure_multipliers` (
  `id` bigint(20) NOT NULL,
  `multiplier_data_id` bigint(20) NOT NULL,
  `pertenure_multiplier_data_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_multiplier_data_tenure_multipliers`
--

INSERT INTO `master_multiplier_data_tenure_multipliers` (`id`, `multiplier_data_id`, `pertenure_multiplier_data_id`) VALUES
(149, 22, 150),
(150, 22, 151),
(151, 22, 152),
(152, 22, 153),
(153, 22, 154),
(154, 22, 155),
(155, 23, 156),
(156, 23, 157),
(157, 23, 158),
(158, 23, 159),
(159, 23, 160),
(160, 23, 161);

-- --------------------------------------------------------

--
-- Table structure for table `master_multiplier_info`
--

CREATE TABLE `master_multiplier_info` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_multiplier_info`
--

INSERT INTO `master_multiplier_info` (`id`, `cocat_type`) VALUES
(32, 'SUPER CAT A'),
(33, 'SUPER CAT A'),
(34, 'CAT B');

-- --------------------------------------------------------

--
-- Table structure for table `master_multiplier_info_multiplier_data`
--

CREATE TABLE `master_multiplier_info_multiplier_data` (
  `id` bigint(20) NOT NULL,
  `multiplier_info_id` bigint(20) NOT NULL,
  `multiplier_data_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_multiplier_info_multiplier_data`
--

INSERT INTO `master_multiplier_info_multiplier_data` (`id`, `multiplier_info_id`, `multiplier_data_id`) VALUES
(15, 32, 22),
(16, 32, 23);

-- --------------------------------------------------------

--
-- Table structure for table `master_nationality`
--

CREATE TABLE `master_nationality` (
  `id` bigint(20) NOT NULL,
  `nationality` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_nationality`
--

INSERT INTO `master_nationality` (`id`, `nationality`, `effective_date`, `ineffective_date`) VALUES
(1, 'Indian', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_natureofbusiness`
--

CREATE TABLE `master_natureofbusiness` (
  `id` bigint(20) NOT NULL,
  `nature_business` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_negativearea`
--

CREATE TABLE `master_negativearea` (
  `id` bigint(20) NOT NULL,
  `negative_area` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_paymentdelayyear`
--

CREATE TABLE `master_paymentdelayyear` (
  `id` bigint(20) NOT NULL,
  `payment_delay_year` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_paymentdelayyear`
--

INSERT INTO `master_paymentdelayyear` (`id`, `payment_delay_year`, `effective_date`, `ineffective_date`) VALUES
(1, '2022', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_pertenure_foir_data`
--

CREATE TABLE `master_pertenure_foir_data` (
  `id` bigint(20) NOT NULL,
  `foir` int(11) NOT NULL,
  `associated_tenure_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_pertenure_foir_data`
--

INSERT INTO `master_pertenure_foir_data` (`id`, `foir`, `associated_tenure_id`) VALUES
(48, 60, 1),
(49, 60, 2),
(50, 60, 3),
(51, 60, 4),
(52, 60, 5),
(53, 60, 6),
(54, 62, 1),
(55, 62, 2),
(56, 62, 3),
(57, 62, 4),
(58, 62, 5),
(59, 62, 6);

-- --------------------------------------------------------

--
-- Table structure for table `master_pertenure_multiplier_data`
--

CREATE TABLE `master_pertenure_multiplier_data` (
  `id` bigint(20) NOT NULL,
  `multiplier` int(11) NOT NULL,
  `associated_tenure_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_pertenure_multiplier_data`
--

INSERT INTO `master_pertenure_multiplier_data` (`id`, `multiplier`, `associated_tenure_id`) VALUES
(150, 21, 1),
(151, 21, 2),
(152, 21, 3),
(153, 21, 4),
(154, 21, 5),
(155, 21, 6),
(156, 23, 1),
(157, 23, 2),
(158, 23, 3),
(159, 23, 4),
(160, 23, 5),
(161, 23, 6);

-- --------------------------------------------------------

--
-- Table structure for table `master_prefix`
--

CREATE TABLE `master_prefix` (
  `id` bigint(20) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_prefix`
--

INSERT INTO `master_prefix` (`id`, `prefix`, `effective_date`, `ineffective_date`) VALUES
(1, 'Mr.', '2022-11-09', NULL),
(2, 'Ms', '2022-11-09', NULL),
(3, 'Mrs.', '2022-11-09', NULL),
(4, 'Dr.', '2022-11-09', NULL),
(5, 'M/s.', '2022-11-09', NULL),
(6, 'test', '2022-12-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_product`
--

CREATE TABLE `master_product` (
  `id` bigint(20) NOT NULL,
  `product` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product`
--

INSERT INTO `master_product` (`id`, `product`, `effective_date`, `ineffective_date`) VALUES
(1, 'Personal Loan', '2022-11-09', NULL),
(2, 'Home Loan', '2022-11-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_productsorservices`
--

CREATE TABLE `master_productsorservices` (
  `id` bigint(20) NOT NULL,
  `products_or_services` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master`
--

CREATE TABLE `master_product_and_policy_master` (
  `id` bigint(20) NOT NULL,
  `is_salary_account` tinyint(1) NOT NULL,
  `min_age` int(11) NOT NULL,
  `max_age` int(11) NOT NULL,
  `internal_customer` bigint(20) NOT NULL,
  `external_customer` bigint(20) NOT NULL,
  `current_experience` int(11) NOT NULL,
  `total_experience` int(11) NOT NULL,
  `cibil_score` bigint(20) NOT NULL,
  `months_for_foir` bigint(20) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL,
  `gross_min` bigint(20) NOT NULL,
  `gross_max` bigint(20) NOT NULL,
  `net_min` bigint(20) NOT NULL,
  `net_max` bigint(20) NOT NULL,
  `multiple_enquiry` int(11) NOT NULL,
  `emi_bounces` int(11) NOT NULL,
  `credit_card_dpd` int(11) NOT NULL,
  `credit_card_obligation` int(11) NOT NULL,
  `emi_obligation` int(11) NOT NULL,
  `bank_names_id` bigint(20) NOT NULL,
  `customer_type_id` bigint(20) NOT NULL,
  `designation_id` bigint(20) NOT NULL,
  `product_name_id` bigint(20) NOT NULL,
  `co_applicant_allowed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master`
--

INSERT INTO `master_product_and_policy_master` (`id`, `is_salary_account`, `min_age`, `max_age`, `internal_customer`, `external_customer`, `current_experience`, `total_experience`, `cibil_score`, `months_for_foir`, `effective_date`, `ineffective_date`, `gross_min`, `gross_max`, `net_min`, `net_max`, `multiple_enquiry`, `emi_bounces`, `credit_card_dpd`, `credit_card_obligation`, `emi_obligation`, `bank_names_id`, `customer_type_id`, `designation_id`, `product_name_id`, `co_applicant_allowed`) VALUES
(39, 1, -1, -1, 0, 0, -1, -1, 0, 0, '2022-12-21', NULL, 0, 0, 0, 0, -1, -1, -1, -1, -1, 4, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_company_type`
--

CREATE TABLE `master_product_and_policy_master_company_type` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `companytype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_company_type`
--

INSERT INTO `master_product_and_policy_master_company_type` (`id`, `product_and_policy_master_id`, `companytype_id`) VALUES
(19, 39, 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_foir_info`
--

CREATE TABLE `master_product_and_policy_master_foir_info` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `foir_info_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_foir_info`
--

INSERT INTO `master_product_and_policy_master_foir_info` (`id`, `product_and_policy_master_id`, `foir_info_id`) VALUES
(25, 39, 25);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_multiplier_info`
--

CREATE TABLE `master_product_and_policy_master_multiplier_info` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `multiplier_info_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_multiplier_info`
--

INSERT INTO `master_product_and_policy_master_multiplier_info` (`id`, `product_and_policy_master_id`, `multiplier_info_id`) VALUES
(30, 39, 32);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_rate_of_interest`
--

CREATE TABLE `master_product_and_policy_master_rate_of_interest` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `rateofinterest_info_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_rate_of_interest`
--

INSERT INTO `master_product_and_policy_master_rate_of_interest` (`id`, `product_and_policy_master_id`, `rateofinterest_info_id`) VALUES
(22, 39, 23);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_residence_type`
--

CREATE TABLE `master_product_and_policy_master_residence_type` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `residencetype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_residence_type`
--

INSERT INTO `master_product_and_policy_master_residence_type` (`id`, `product_and_policy_master_id`, `residencetype_id`) VALUES
(17, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_product_and_policy_master_salary_type`
--

CREATE TABLE `master_product_and_policy_master_salary_type` (
  `id` bigint(20) NOT NULL,
  `product_and_policy_master_id` bigint(20) NOT NULL,
  `salarytype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_product_and_policy_master_salary_type`
--

INSERT INTO `master_product_and_policy_master_salary_type` (`id`, `product_and_policy_master_id`, `salarytype_id`) VALUES
(15, 39, 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_profession`
--

CREATE TABLE `master_profession` (
  `id` bigint(20) NOT NULL,
  `profession` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_profession`
--

INSERT INTO `master_profession` (`id`, `profession`, `effective_date`, `ineffective_date`) VALUES
(1, 'Employee', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_propertyin`
--

CREATE TABLE `master_propertyin` (
  `id` bigint(20) NOT NULL,
  `property_in` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_propertytype`
--

CREATE TABLE `master_propertytype` (
  `id` bigint(20) NOT NULL,
  `property_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_qualification`
--

CREATE TABLE `master_qualification` (
  `id` bigint(20) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `degree` tinyint(1) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_qualification`
--

INSERT INTO `master_qualification` (`id`, `qualification`, `degree`, `effective_date`, `ineffective_date`) VALUES
(1, 'SSC & Below', 0, '2022-11-09', NULL),
(2, 'Undergraduate', 1, '2022-11-09', NULL),
(3, 'Graduate', 1, '2022-11-09', NULL),
(4, 'Post Graduate', 1, '2022-11-09', NULL),
(5, 'test_qualification', 0, '2022-11-13', NULL),
(6, 'test_qualification2', 0, '2022-11-13', '2022-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `master_rateofinterest`
--

CREATE TABLE `master_rateofinterest` (
  `id` bigint(20) NOT NULL,
  `rate_of_interest` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_rateofinterest_info`
--

CREATE TABLE `master_rateofinterest_info` (
  `id` bigint(20) NOT NULL,
  `cocat_type` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_rateofinterest_info`
--

INSERT INTO `master_rateofinterest_info` (`id`, `cocat_type`) VALUES
(23, 'SUPER CAT A'),
(24, 'SUPER CAT A'),
(25, 'CAT B');

-- --------------------------------------------------------

--
-- Table structure for table `master_rateofinterest_info_additional_rate_info`
--

CREATE TABLE `master_rateofinterest_info_additional_rate_info` (
  `id` bigint(20) NOT NULL,
  `rateofinterest_info_id` bigint(20) NOT NULL,
  `additionalrate_info_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_rateofinterest_info_additional_rate_info`
--

INSERT INTO `master_rateofinterest_info_additional_rate_info` (`id`, `rateofinterest_info_id`, `additionalrate_info_id`) VALUES
(20, 23, 20),
(21, 23, 21),
(23, 23, 22);

-- --------------------------------------------------------

--
-- Table structure for table `master_rejectiontype`
--

CREATE TABLE `master_rejectiontype` (
  `id` bigint(20) NOT NULL,
  `rejection_type` varchar(45) NOT NULL,
  `rejection_reason` varchar(60) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_relation`
--

CREATE TABLE `master_relation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_relation`
--

INSERT INTO `master_relation` (`id`, `name`, `effective_date`, `ineffective_date`) VALUES
(1, 'Self', '2022-11-09', NULL),
(2, 'Spouse', '2022-12-26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_residencetype`
--

CREATE TABLE `master_residencetype` (
  `id` bigint(20) NOT NULL,
  `residence_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_residencetype`
--

INSERT INTO `master_residencetype` (`id`, `residence_type`) VALUES
(1, 'Rowhouse'),
(2, 'Bungalow'),
(3, 'Chawl'),
(4, 'Flat');

-- --------------------------------------------------------

--
-- Table structure for table `master_role`
--

CREATE TABLE `master_role` (
  `id` bigint(20) NOT NULL,
  `role` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_role`
--

INSERT INTO `master_role` (`id`, `role`, `effective_date`, `ineffective_date`) VALUES
(1, 'Business Head', '2022-11-14', NULL),
(2, 'Vertical Head', '2022-11-14', NULL),
(3, 'Referral Partner', '2022-11-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_roomtype`
--

CREATE TABLE `master_roomtype` (
  `id` bigint(20) NOT NULL,
  `room_type` varchar(30) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_salarytype`
--

CREATE TABLE `master_salarytype` (
  `id` bigint(20) NOT NULL,
  `salary_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_salarytype`
--

INSERT INTO `master_salarytype` (`id`, `salary_type`) VALUES
(1, 'Cash'),
(2, 'Bank Transfer'),
(3, 'Cheque');

-- --------------------------------------------------------

--
-- Table structure for table `master_stageofconstruction`
--

CREATE TABLE `master_stageofconstruction` (
  `id` bigint(20) NOT NULL,
  `stage` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_state`
--

CREATE TABLE `master_state` (
  `id` bigint(20) NOT NULL,
  `state` varchar(25) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_state`
--

INSERT INTO `master_state` (`id`, `state`, `effective_date`, `ineffective_date`) VALUES
(1, 'Maharashtra', '2022-11-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_status`
--

CREATE TABLE `master_status` (
  `id` bigint(20) NOT NULL,
  `status` varchar(55) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_subproduct`
--

CREATE TABLE `master_subproduct` (
  `id` bigint(20) NOT NULL,
  `sub_product` varchar(50) NOT NULL,
  `effective_date` date DEFAULT NULL,
  `ineffective_date` date DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_subproduct`
--

INSERT INTO `master_subproduct` (`id`, `sub_product`, `effective_date`, `ineffective_date`, `product_id`) VALUES
(1, 'Fresh', '2022-11-09', NULL, 1),
(2, 'Balanced Transfer', '2022-11-09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_tenure`
--

CREATE TABLE `master_tenure` (
  `id` bigint(20) NOT NULL,
  `ten_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_tenure`
--

INSERT INTO `master_tenure` (`id`, `ten_type`) VALUES
(1, 12),
(2, 24),
(3, 36),
(4, 48),
(5, 60),
(6, 72),
(7, 84),
(8, 96);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_additionaldetails`
--
ALTER TABLE `account_additionaldetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_additionalde_lead_id_id_2321c4ee_fk_account_l` (`lead_id_id`),
  ADD KEY `account_additionalde_relation_id_1d06a3c0_fk_master_re` (`relation_id`),
  ADD KEY `account_additionalde_applicant_type_id_42307b31_fk_master_ap` (`applicant_type_id`),
  ADD KEY `account_additionalde_cust_type_id_893b2a84_fk_master_cu` (`cust_type_id`);

--
-- Indexes for table `account_contactperson`
--
ALTER TABLE `account_contactperson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_customuser`
--
ALTER TABLE `account_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `account_customuser_city_id_fa3dc6ce_fk_master_city_id` (`city_id`),
  ADD KEY `account_customuser_system_role_id_443d0528_fk_master_role_id` (`system_role_id`);

--
-- Indexes for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_groups_customuser_id_group_id_7e51db7b_uniq` (`customuser_id`,`group_id`),
  ADD KEY `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_user__customuser_id_permission_650e378f_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `account_customuser_u_permission_id_f4aec423_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `account_housewifedetails`
--
ALTER TABLE `account_housewifedetails`
  ADD PRIMARY KEY (`hw_id`),
  ADD KEY `account_housewifedet_add_det_id_id_77b888a1_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_housewifeexistingcarddetails`
--
ALTER TABLE `account_housewifeexistingcarddetails`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `account_housewifeexi_add_det_id_id_f21e9d2b_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_housewifeexistingloandetails`
--
ALTER TABLE `account_housewifeexistingloandetails`
  ADD PRIMARY KEY (`loan_det_id`),
  ADD KEY `account_housewifeexi_add_det_id_id_aea32c89_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_housewifeinvestmentdetails`
--
ALTER TABLE `account_housewifeinvestmentdetails`
  ADD PRIMARY KEY (`invest_id`),
  ADD KEY `account_housewifeinv_add_det_id_id_7fac3a66_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_housewifepersonaldetails`
--
ALTER TABLE `account_housewifepersonaldetails`
  ADD PRIMARY KEY (`hw_per_det_id`),
  ADD KEY `account_housewifeper_add_det_id_id_92416a77_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_leads`
--
ALTER TABLE `account_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_leads_city_id_b7e02aaf_fk_master_city_id` (`city_id`),
  ADD KEY `account_leads_prefix_id_8cb4fd19_fk_master_prefix_id` (`prefix_id`),
  ADD KEY `account_leads_product_id_6ccb56c9_fk_master_product_id` (`product_id`),
  ADD KEY `account_leads_state_id_06ba6d4e_fk_master_state_id` (`state_id`),
  ADD KEY `account_leads_sub_product_id_e76f18bd_fk_master_subproduct_id` (`sub_product_id`);

--
-- Indexes for table `account_loanapplication`
--
ALTER TABLE `account_loanapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_loanapplication_lead_id_id_060fa395_fk_account_leads_id` (`lead_id_id`);

--
-- Indexes for table `account_loandocuments`
--
ALTER TABLE `account_loandocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_loandocument_loanApplication_id_73d765a6_fk_account_l` (`loanApplication_id`);

--
-- Indexes for table `account_propertydetails`
--
ALTER TABLE `account_propertydetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_proptype1`
--
ALTER TABLE `account_proptype1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_proptype1_agreement_type_id_db2ca8f2_fk_master_ag` (`agreement_type_id`),
  ADD KEY `account_proptype1_area_in_id_c9c5d7c4_fk_master_areain_id` (`area_in_id`),
  ADD KEY `account_proptype1_area_type_id_89b0bbb6_fk_master_areatype_id` (`area_type_id`),
  ADD KEY `account_proptype1_lead_id_id_8ff6af65_fk_account_leads_id` (`lead_id_id`),
  ADD KEY `account_proptype1_prop_city_id_238fea1a_fk_master_city_id` (`prop_city_id`),
  ADD KEY `account_proptype1_prop_in_id_e5e82c4c_fk_master_propertyin_id` (`prop_in_id`),
  ADD KEY `account_proptype1_prop_state_id_d6823349_fk_master_state_id` (`prop_state_id`),
  ADD KEY `account_proptype1_room_type_id_b073a95f_fk_master_roomtype_id` (`room_type_id`);

--
-- Indexes for table `account_proptype1_apf_approved_lender`
--
ALTER TABLE `account_proptype1_apf_approved_lender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_proptype1_apf_ap_proptype1_id_bankname_id_d3cec2ac_uniq` (`proptype1_id`,`bankname_id`),
  ADD KEY `account_proptype1_ap_bankname_id_18fbdcb0_fk_master_ba` (`bankname_id`);

--
-- Indexes for table `account_proptype2`
--
ALTER TABLE `account_proptype2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_proptype2_agreement_type_id_f40a71d8_fk_master_ag` (`agreement_type_id`),
  ADD KEY `account_proptype2_area_in_id_eeb08a37_fk_master_areain_id` (`area_in_id`),
  ADD KEY `account_proptype2_area_type_id_6e0eb797_fk_master_areatype_id` (`area_type_id`),
  ADD KEY `account_proptype2_lead_id_id_e81260d7_fk_account_leads_id` (`lead_id_id`),
  ADD KEY `account_proptype2_prop_city_id_d3212c93_fk_master_city_id` (`prop_city_id`),
  ADD KEY `account_proptype2_prop_in_id_69beea15_fk_master_propertyin_id` (`prop_in_id`),
  ADD KEY `account_proptype2_prop_state_id_44939f18_fk_master_state_id` (`prop_state_id`),
  ADD KEY `account_proptype2_room_type_id_ae70fe8e_fk_master_roomtype_id` (`room_type_id`),
  ADD KEY `account_proptype2_seller_status_id_4bf47444_fk_master_status_id` (`seller_status_id`);

--
-- Indexes for table `account_proptype2_apf_approved_lender`
--
ALTER TABLE `account_proptype2_apf_approved_lender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_proptype2_apf_ap_proptype2_id_bankname_id_03d2bf1c_uniq` (`proptype2_id`,`bankname_id`),
  ADD KEY `account_proptype2_ap_bankname_id_fbeb3325_fk_master_ba` (`bankname_id`);

--
-- Indexes for table `account_proptype3`
--
ALTER TABLE `account_proptype3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_proptype3_agreement_type_id_c582c5e6_fk_master_ag` (`agreement_type_id`),
  ADD KEY `account_proptype3_area_in_id_1b0ca928_fk_master_areain_id` (`area_in_id`),
  ADD KEY `account_proptype3_area_type_id_019bf2cd_fk_master_areatype_id` (`area_type_id`),
  ADD KEY `account_proptype3_lead_id_id_6b13d3a5_fk_account_leads_id` (`lead_id_id`),
  ADD KEY `account_proptype3_prop_city_id_cc9c12d5_fk_master_city_id` (`prop_city_id`),
  ADD KEY `account_proptype3_prop_in_id_1cb67cb6_fk_master_propertyin_id` (`prop_in_id`),
  ADD KEY `account_proptype3_prop_state_id_d96b278e_fk_master_state_id` (`prop_state_id`),
  ADD KEY `account_proptype3_room_type_id_75362494_fk_master_roomtype_id` (`room_type_id`);

--
-- Indexes for table `account_proptype3_apf_approved_lender`
--
ALTER TABLE `account_proptype3_apf_approved_lender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_proptype3_apf_ap_proptype3_id_bankname_id_4090a480_uniq` (`proptype3_id`,`bankname_id`),
  ADD KEY `account_proptype3_ap_bankname_id_7cd2dcdb_fk_master_ba` (`bankname_id`);

--
-- Indexes for table `account_proptype4`
--
ALTER TABLE `account_proptype4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_proptype4_agreement_type_id_f5db3995_fk_master_ag` (`agreement_type_id`),
  ADD KEY `account_proptype4_area_in_id_501fae59_fk_master_areain_id` (`area_in_id`),
  ADD KEY `account_proptype4_area_type_id_42bf4b4a_fk_master_areatype_id` (`area_type_id`),
  ADD KEY `account_proptype4_lead_id_id_dbde56bd_fk_account_leads_id` (`lead_id_id`),
  ADD KEY `account_proptype4_prop_city_id_bf71b4b4_fk_master_city_id` (`prop_city_id`),
  ADD KEY `account_proptype4_prop_in_id_3e6e03a2_fk_master_propertyin_id` (`prop_in_id`),
  ADD KEY `account_proptype4_prop_state_id_3442c83a_fk_master_state_id` (`prop_state_id`),
  ADD KEY `account_proptype4_room_type_id_54e131de_fk_master_roomtype_id` (`room_type_id`),
  ADD KEY `account_proptype4_seller_status_id_84f0705b_fk_master_status_id` (`seller_status_id`);

--
-- Indexes for table `account_proptype4_apf_approved_lender`
--
ALTER TABLE `account_proptype4_apf_approved_lender`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_proptype4_apf_ap_proptype4_id_bankname_id_d11a1e4d_uniq` (`proptype4_id`,`bankname_id`),
  ADD KEY `account_proptype4_ap_bankname_id_6d7563ea_fk_master_ba` (`bankname_id`);

--
-- Indexes for table `account_referralprofile`
--
ALTER TABLE `account_referralprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `account_retireddetails`
--
ALTER TABLE `account_retireddetails`
  ADD PRIMARY KEY (`retired_id`),
  ADD KEY `account_retireddetai_add_det_id_id_001e182a_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredexistingcarddetails`
--
ALTER TABLE `account_retiredexistingcarddetails`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `account_retiredexist_add_det_id_id_0c38da91_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredexistingloandetails`
--
ALTER TABLE `account_retiredexistingloandetails`
  ADD PRIMARY KEY (`loan_det_id`),
  ADD KEY `account_retiredexist_add_det_id_id_2bd9ccac_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredinvestmentdetails`
--
ALTER TABLE `account_retiredinvestmentdetails`
  ADD PRIMARY KEY (`invest_id`),
  ADD KEY `account_retiredinves_add_det_id_id_553cd230_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredotherdetails`
--
ALTER TABLE `account_retiredotherdetails`
  ADD PRIMARY KEY (`other_det_id`),
  ADD KEY `account_retiredother_add_det_id_id_899e8262_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredpensiondetails`
--
ALTER TABLE `account_retiredpensiondetails`
  ADD PRIMARY KEY (`pension_id`),
  ADD KEY `account_retiredpensi_add_det_id_id_965e7c5b_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_retiredresidencedetails`
--
ALTER TABLE `account_retiredresidencedetails`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `account_retiredresid_add_det_id_id_2fbd1f2e_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_saladditionaldetails`
--
ALTER TABLE `account_saladditionaldetails`
  ADD PRIMARY KEY (`sal_add_det_id`),
  ADD KEY `account_saladditiona_addi_details_id_id_d0d5c016_fk_account_a` (`addi_details_id_id`);

--
-- Indexes for table `account_saladditionalotherincomes`
--
ALTER TABLE `account_saladditionalotherincomes`
  ADD PRIMARY KEY (`add_oth_inc_id`),
  ADD KEY `account_saladditiona_addi_details_id_id_4821aee4_fk_account_a` (`addi_details_id_id`);

--
-- Indexes for table `account_salcompanydetails`
--
ALTER TABLE `account_salcompanydetails`
  ADD PRIMARY KEY (`comp_det_id`),
  ADD KEY `account_salcompanyde_addi_details_id_id_bcf2f507_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salcompanyde_company_name_id_8bc4e621_fk_master_co` (`company_name_id`),
  ADD KEY `account_salcompanyde_company_type_id_2ac222b4_fk_master_co` (`company_type_id`),
  ADD KEY `account_salcompanyde_designation_type_id_fd0d4180_fk_master_de` (`designation_type_id`),
  ADD KEY `account_salcompanyde_employment_type_id_ac531a42_fk_master_em` (`employment_type_id`),
  ADD KEY `account_salcompanydetails_location_id_2868d6c2_fk_master_city_id` (`location_id`);

--
-- Indexes for table `account_salexistingcreditcard`
--
ALTER TABLE `account_salexistingcreditcard`
  ADD PRIMARY KEY (`existing_credit_card_id`),
  ADD KEY `account_salexistingc_addi_details_id_id_160e253e_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salexistingc_bank_name_id_d9ff6275_fk_master_ba` (`bank_name_id`),
  ADD KEY `account_salexistingc_payment_delay_year_i_a71f1eaf_fk_master_pa` (`payment_delay_year_id`);

--
-- Indexes for table `account_salexistingloandetails`
--
ALTER TABLE `account_salexistingloandetails`
  ADD PRIMARY KEY (`existing_loan_det_id`),
  ADD KEY `account_salexistingl_addi_details_id_id_5359a687_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salexistingl_applicant_type_id_339c1c70_fk_master_ap` (`applicant_type_id`),
  ADD KEY `account_salexistingl_bank_name_id_06d03c03_fk_master_ba` (`bank_name_id`),
  ADD KEY `account_salexistingl_products_or_services_a7b8cde1_fk_master_pr` (`products_or_services_id`);

--
-- Indexes for table `account_salincomedetails`
--
ALTER TABLE `account_salincomedetails`
  ADD PRIMARY KEY (`inc_det_id`),
  ADD KEY `account_salincomedet_addi_details_id_id_d5acf27d_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salincomedet_bank_name_id_42b02e53_fk_master_ba` (`bank_name_id`),
  ADD KEY `account_salincomedet_salary_type_id_0684d663_fk_master_sa` (`salary_type_id`);

--
-- Indexes for table `account_salinvestments`
--
ALTER TABLE `account_salinvestments`
  ADD PRIMARY KEY (`sal_inv_id`),
  ADD KEY `account_salinvestmen_addi_details_id_id_b37f614a_fk_account_a` (`addi_details_id_id`);

--
-- Indexes for table `account_salotherincomes`
--
ALTER TABLE `account_salotherincomes`
  ADD PRIMARY KEY (`other_inc_id`),
  ADD KEY `account_salotherinco_addi_details_id_id_28e91a21_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salotherinco_agreement_type_id_7b789daa_fk_master_ag` (`agreement_type_id`),
  ADD KEY `account_salotherinco_lessee_type_id_a8bbb9fe_fk_master_le` (`lessee_type_id`);

--
-- Indexes for table `account_salpersonaldetails`
--
ALTER TABLE `account_salpersonaldetails`
  ADD PRIMARY KEY (`per_det_id`),
  ADD KEY `account_salpersonald_Lawyer_Type_id_2d09dd44_fk_master_la` (`Lawyer_Type_id`),
  ADD KEY `account_salpersonald_additional_details_i_2de33808_fk_account_a` (`additional_details_id_id`),
  ADD KEY `account_salpersonald_country_id_61f478d5_fk_master_co` (`country_id`),
  ADD KEY `account_salpersonald_default_year_id_fccc812b_fk_master_de` (`default_year_id`),
  ADD KEY `account_salpersonald_degree_id_eeb59408_fk_master_de` (`degree_id`),
  ADD KEY `account_salpersonald_gender_id_021a22de_fk_master_ge` (`gender_id`),
  ADD KEY `account_salpersonald_marital_status_id_8fec521c_fk_master_ma` (`marital_status_id`),
  ADD KEY `account_salpersonald_nationality_id_0f3be925_fk_master_na` (`nationality_id`),
  ADD KEY `account_salpersonald_product_id_id_f2d5e8cc_fk_master_pr` (`product_id_id`),
  ADD KEY `account_salpersonald_profession_id_504e0807_fk_master_pr` (`profession_id`),
  ADD KEY `account_salpersonald_qualification_id_fe298f85_fk_master_qu` (`qualification_id`),
  ADD KEY `account_salpersonald_tenure_id_e9f2e7c4_fk_master_te` (`tenure_id`);

--
-- Indexes for table `account_salresidencedetails`
--
ALTER TABLE `account_salresidencedetails`
  ADD PRIMARY KEY (`sal_res_det_id`),
  ADD KEY `account_salresidence_addi_details_id_id_6b3e3460_fk_account_a` (`addi_details_id_id`),
  ADD KEY `account_salresidence_current_location_cit_01cfd5aa_fk_master_ci` (`current_location_city_id`),
  ADD KEY `account_salresidence_current_residence_ty_eb7f8a82_fk_master_re` (`current_residence_type_id`),
  ADD KEY `account_salresidencedetails_state_id_9f472d48_fk_master_state_id` (`state_id`);

--
-- Indexes for table `account_studentdetails`
--
ALTER TABLE `account_studentdetails`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `account_studentdetai_add_det_id_id_c1788fb1_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_studentexistingcarddetails`
--
ALTER TABLE `account_studentexistingcarddetails`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `account_studentexist_add_det_id_id_8237b9f9_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_studentexistingloandetails`
--
ALTER TABLE `account_studentexistingloandetails`
  ADD PRIMARY KEY (`loan_det_id`),
  ADD KEY `account_studentexist_add_det_id_id_ee96c8f2_fk_account_a` (`add_det_id_id`);

--
-- Indexes for table `account_userdocuments`
--
ALTER TABLE `account_userdocuments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_userdocuments_user_id_51d4c82d_fk_account_customuser_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_account_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `homeloan_age`
--
ALTER TABLE `homeloan_age`
  ADD PRIMARY KEY (`age_id`),
  ADD KEY `HomeLoan_age_bank_id_id_51026cd1_fk_HomeLoan_bank_bank_id` (`bank_id_id`);

--
-- Indexes for table `homeloan_bank`
--
ALTER TABLE `homeloan_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `homeloan_bankcodes`
--
ALTER TABLE `homeloan_bankcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_bankcodes_bank_id_dd5ed6d5_fk_HomeLoan_bank_bank_id` (`bank_id`),
  ADD KEY `HomeLoan_bankcodes_product_id_fa378f3c_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_cibil`
--
ALTER TABLE `homeloan_cibil`
  ADD PRIMARY KEY (`cibil_id`),
  ADD KEY `HomeLoan_cibil_cibil_loan_type_id_i_bd3acb69_fk_master_ci` (`cibil_loan_type_id_id`),
  ADD KEY `HomeLoan_cibil_pid_id_ef103485_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_company`
--
ALTER TABLE `homeloan_company`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `HomeLoan_company_bank_id_id_38b474f0_fk_HomeLoan_bank_bank_id` (`bank_id_id`);

--
-- Indexes for table `homeloan_costsheet`
--
ALTER TABLE `homeloan_costsheet`
  ADD PRIMARY KEY (`cost_particular_id`);

--
-- Indexes for table `homeloan_customer`
--
ALTER TABLE `homeloan_customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `HomeLoan_customer_bank_id_id_34401960_fk_HomeLoan_bank_bank_id` (`bank_id_id`);

--
-- Indexes for table `homeloan_customerdesignation`
--
ALTER TABLE `homeloan_customerdesignation`
  ADD PRIMARY KEY (`cust_desig_id`),
  ADD KEY `HomeLoan_customerdes_bank_id_id_766f2acb_fk_HomeLoan_` (`bank_id_id`),
  ADD KEY `HomeLoan_customerdes_product_id_50b26e16_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_customernationality`
--
ALTER TABLE `homeloan_customernationality`
  ADD PRIMARY KEY (`cust_nat_id`),
  ADD KEY `HomeLoan_customernat_bank_id_id_03247710_fk_HomeLoan_` (`bank_id_id`);

--
-- Indexes for table `homeloan_fees`
--
ALTER TABLE `homeloan_fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `HomeLoan_fees_bank_id_id_d4521f23_fk_HomeLoan_bank_bank_id` (`bank_id_id`),
  ADD KEY `HomeLoan_fees_product_id_046e29ad_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_hlbasicdetails`
--
ALTER TABLE `homeloan_hlbasicdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlbasicdeta_pid_id_a676221a_fk_HomeLoan_` (`pid_id`),
  ADD KEY `HomeLoan_hlbasicdeta_salary_type_id_df4da58d_fk_master_sa` (`salary_type_id`),
  ADD KEY `HomeLoan_hlbasicdeta_customer_type_id_5bc12c0f_fk_master_cu` (`customer_type_id`);

--
-- Indexes for table `homeloan_hlbasicdetails_company_type`
--
ALTER TABLE `homeloan_hlbasicdetails_company_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlbasicdetails__hlbasicdetails_id_compan_761b6103_uniq` (`hlbasicdetails_id`,`companytype_id`),
  ADD KEY `HomeLoan_hlbasicdeta_companytype_id_6fe365be_fk_master_co` (`companytype_id`);

--
-- Indexes for table `homeloan_hlbasicdetails_designation`
--
ALTER TABLE `homeloan_hlbasicdetails_designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlbasicdetails__hlbasicdetails_id_design_ea1dfe3a_uniq` (`hlbasicdetails_id`,`designationtype_id`),
  ADD KEY `HomeLoan_hlbasicdeta_designationtype_id_20754a6f_fk_master_de` (`designationtype_id`);

--
-- Indexes for table `homeloan_hlincome`
--
ALTER TABLE `homeloan_hlincome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlincome_basic_details_id_id_20cf0b6a_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlincome_pid_id_97cb067d_fk_HomeLoan_` (`pid_id`),
  ADD KEY `HomeLoan_hlincome_rent_agreement_type__c415a7ee_fk_master_ag` (`rent_agreement_type_id`);

--
-- Indexes for table `homeloan_hlincomefoir`
--
ALTER TABLE `homeloan_hlincomefoir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlincomefoi_basic_details_id_id_c8e5fce8_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlincomefoi_pid_id_ac9f3d13_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlloan_to_value_type_1`
--
ALTER TABLE `homeloan_hlloan_to_value_type_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlloan_to_v_basic_details_id_id_06cd64b5_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlloan_to_v_loan_amount_id_6ed47656_fk_master_lo` (`loan_amount_id`),
  ADD KEY `HomeLoan_hlloan_to_v_pid_id_04615147_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlloan_to_value_type_2`
--
ALTER TABLE `homeloan_hlloan_to_value_type_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlloan_to_v_basic_details_id_id_73441ae5_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlloan_to_v_pid_id_90eaec89_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlobligation`
--
ALTER TABLE `homeloan_hlobligation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlobligatio_basic_details_id_id_38dd07a0_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlobligatio_pid_id_49b9c0c5_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlotherdetails`
--
ALTER TABLE `homeloan_hlotherdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlotherdeta_basic_details_id_id_e734e0d0_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlotherdeta_pid_id_4eccca89_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlproperty`
--
ALTER TABLE `homeloan_hlproperty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeLoan_hlproperty_basic_details_id_id_79a81fea_fk_HomeLoan_` (`basic_details_id_id`),
  ADD KEY `HomeLoan_hlproperty_pid_id_0dc32d38_fk_HomeLoan_` (`pid_id`);

--
-- Indexes for table `homeloan_hlproperty_negative_area`
--
ALTER TABLE `homeloan_hlproperty_negative_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlproperty_nega_hlproperty_id_negativear_4fabfe3e_uniq` (`hlproperty_id`,`negativearea_id`),
  ADD KEY `HomeLoan_hlproperty__negativearea_id_6e9c475d_fk_master_ne` (`negativearea_id`);

--
-- Indexes for table `homeloan_hlproperty_property_type`
--
ALTER TABLE `homeloan_hlproperty_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlproperty_prop_hlproperty_id_propertyty_50b9dc3d_uniq` (`hlproperty_id`,`propertytype_id`),
  ADD KEY `HomeLoan_hlproperty__propertytype_id_269330d7_fk_master_pr` (`propertytype_id`);

--
-- Indexes for table `homeloan_hlproperty_room_type`
--
ALTER TABLE `homeloan_hlproperty_room_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlproperty_room_hlproperty_id_roomtype_i_77642f14_uniq` (`hlproperty_id`,`roomtype_id`),
  ADD KEY `HomeLoan_hlproperty__roomtype_id_71b79e71_fk_master_ro` (`roomtype_id`);

--
-- Indexes for table `homeloan_hlproperty_stage_of_construction`
--
ALTER TABLE `homeloan_hlproperty_stage_of_construction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `HomeLoan_hlproperty_stag_hlproperty_id_stageofcon_bc9f91f0_uniq` (`hlproperty_id`,`stageofconstruction_id`),
  ADD KEY `HomeLoan_hlproperty__stageofconstruction__d0075ae0_fk_master_st` (`stageofconstruction_id`);

--
-- Indexes for table `homeloan_income`
--
ALTER TABLE `homeloan_income`
  ADD PRIMARY KEY (`income_id`),
  ADD KEY `HomeLoan_income_bank_id_id_cb549c07_fk_HomeLoan_bank_bank_id` (`bank_id_id`),
  ADD KEY `HomeLoan_income_product_id_e3d02522_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_incomefoir`
--
ALTER TABLE `homeloan_incomefoir`
  ADD PRIMARY KEY (`inc_foir_id`),
  ADD KEY `HomeLoan_incomefoir_bank_id_id_74b3dd86_fk_HomeLoan_bank_bank_id` (`bank_id_id`);

--
-- Indexes for table `homeloan_loantowardsvaluation`
--
ALTER TABLE `homeloan_loantowardsvaluation`
  ADD PRIMARY KEY (`loan_tow_val_id`),
  ADD KEY `HomeLoan_loantowards_bank_id_id_66e8e6c6_fk_HomeLoan_` (`bank_id_id`),
  ADD KEY `HomeLoan_loantowards_product_id_ff6a24b0_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_ltvresale`
--
ALTER TABLE `homeloan_ltvresale`
  ADD PRIMARY KEY (`ltv_id`),
  ADD KEY `HomeLoan_ltvresale_bank_id_id_d43026b7_fk_HomeLoan_bank_bank_id` (`bank_id_id`);

--
-- Indexes for table `homeloan_negativeemployerprofile`
--
ALTER TABLE `homeloan_negativeemployerprofile`
  ADD PRIMARY KEY (`neg_emp_pro_id`),
  ADD KEY `HomeLoan_negativeemp_bank_id_id_61e798e0_fk_HomeLoan_` (`bank_id_id`);

--
-- Indexes for table `homeloan_obligation`
--
ALTER TABLE `homeloan_obligation`
  ADD PRIMARY KEY (`obligation_id`),
  ADD KEY `HomeLoan_obligation_bank_id_id_a4610be2_fk_HomeLoan_bank_bank_id` (`bank_id_id`),
  ADD KEY `HomeLoan_obligation_product_id_813b4df3_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_otherdetails`
--
ALTER TABLE `homeloan_otherdetails`
  ADD PRIMARY KEY (`oth_det_id`),
  ADD KEY `HomeLoan_otherdetail_bank_id_id_f04796d2_fk_HomeLoan_` (`bank_id_id`),
  ADD KEY `HomeLoan_otherdetail_product_id_d6bad9a9_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_otherdetailsroi`
--
ALTER TABLE `homeloan_otherdetailsroi`
  ADD PRIMARY KEY (`oth_det_roi_id`),
  ADD KEY `HomeLoan_otherdetail_bank_id_id_2c28cb46_fk_HomeLoan_` (`bank_id_id`);

--
-- Indexes for table `homeloan_productsandpolicy`
--
ALTER TABLE `homeloan_productsandpolicy`
  ADD PRIMARY KEY (`prod_id`),
  ADD UNIQUE KEY `productandpolicy_name` (`productandpolicy_name`),
  ADD KEY `HomeLoan_productsand_bank_name_id_4a1a65bc_fk_master_ba` (`bank_name_id`),
  ADD KEY `HomeLoan_productsand_prod_name_id_da8fd49d_fk_master_pr` (`prod_name_id`),
  ADD KEY `HomeLoan_productsand_sub_product_id_a8058803_fk_master_su` (`sub_product_id`);

--
-- Indexes for table `homeloan_property`
--
ALTER TABLE `homeloan_property`
  ADD PRIMARY KEY (`prop_id`),
  ADD KEY `HomeLoan_property_bank_id_id_a6305af2_fk_HomeLoan_bank_bank_id` (`bank_id_id`),
  ADD KEY `HomeLoan_property_product_id_872ddea3_fk_HomeLoan_` (`product_id`);

--
-- Indexes for table `homeloan_remarks`
--
ALTER TABLE `homeloan_remarks`
  ADD PRIMARY KEY (`remark_id`);

--
-- Indexes for table `master_additionalrate_info`
--
ALTER TABLE `master_additionalrate_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_agreementtype`
--
ALTER TABLE `master_agreementtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_applicanttype`
--
ALTER TABLE `master_applicanttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_areain`
--
ALTER TABLE `master_areain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_areatype`
--
ALTER TABLE `master_areatype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_ayyear`
--
ALTER TABLE `master_ayyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bankcategory`
--
ALTER TABLE `master_bankcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_bankcategory_bank_name_id_f92580d6_fk_master_bankname_id` (`bank_name_id`),
  ADD KEY `master_bankcategory_category_id_927c0c1a_fk_master_co` (`category_id`),
  ADD KEY `master_bankcategory_company_name_id_7383aa40_fk_master_co` (`company_name_id`);

--
-- Indexes for table `master_bankname`
--
ALTER TABLE `master_bankname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bonustype`
--
ALTER TABLE `master_bonustype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_cibil`
--
ALTER TABLE `master_cibil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_cibilloantype`
--
ALTER TABLE `master_cibilloantype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_cibiltype`
--
ALTER TABLE `master_cibiltype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_city`
--
ALTER TABLE `master_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_city_state_id_5e69920c_fk_master_state_id` (`state_id`);

--
-- Indexes for table `master_comissionrates`
--
ALTER TABLE `master_comissionrates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_comissionrate_Commissiontype_id_439ebdd3_fk_master_co` (`Commissiontype_id`);

--
-- Indexes for table `master_commission`
--
ALTER TABLE `master_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_companycatergorytypes`
--
ALTER TABLE `master_companycatergorytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_companycatergorytypes_banks`
--
ALTER TABLE `master_companycatergorytypes_banks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_companycatergoryt_companycatergorytypes_id_4b39e3d5_uniq` (`companycatergorytypes_id`,`bankname_id`),
  ADD KEY `master_companycaterg_bankname_id_9d0b105f_fk_master_ba` (`bankname_id`);

--
-- Indexes for table `master_companyname`
--
ALTER TABLE `master_companyname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_companytype`
--
ALTER TABLE `master_companytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_country`
--
ALTER TABLE `master_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_customertype`
--
ALTER TABLE `master_customertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_deductiontype`
--
ALTER TABLE `master_deductiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_defaultyear`
--
ALTER TABLE `master_defaultyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_degree`
--
ALTER TABLE `master_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_designationtype`
--
ALTER TABLE `master_designationtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_employmenttype`
--
ALTER TABLE `master_employmenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_foircategory`
--
ALTER TABLE `master_foircategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_foir_data`
--
ALTER TABLE `master_foir_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_foir_data_tenure_foirs`
--
ALTER TABLE `master_foir_data_tenure_foirs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_foir_data_tenure__foir_data_id_pertenure_m_b88630f9_uniq` (`foir_data_id`,`pertenure_foir_data_id`),
  ADD KEY `master_foir_data_ten_pertenure_foir_data__be182c54_fk_master_pe` (`pertenure_foir_data_id`);

--
-- Indexes for table `master_foir_info`
--
ALTER TABLE `master_foir_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_foir_info_foir_data`
--
ALTER TABLE `master_foir_info_foir_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_foir_info_foir_da_foir_info_id_foir_data_i_de8668dc_uniq` (`foir_info_id`,`foir_data_id`),
  ADD KEY `master_foir_info_foi_foir_data_id_987b1dd1_fk_master_fo` (`foir_data_id`);

--
-- Indexes for table `master_gender`
--
ALTER TABLE `master_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_incentivestype`
--
ALTER TABLE `master_incentivestype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_investmenttype`
--
ALTER TABLE `master_investmenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_lawyertype`
--
ALTER TABLE `master_lawyertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_leadsource`
--
ALTER TABLE `master_leadsource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_lessetype`
--
ALTER TABLE `master_lessetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_loanamount`
--
ALTER TABLE `master_loanamount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_maritalstatus`
--
ALTER TABLE `master_maritalstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_multipliercategory`
--
ALTER TABLE `master_multipliercategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_multiplier_data`
--
ALTER TABLE `master_multiplier_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_multiplier_data_tenure_multipliers`
--
ALTER TABLE `master_multiplier_data_tenure_multipliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_multiplier_data_t_multiplier_data_id_perte_32c67615_uniq` (`multiplier_data_id`,`pertenure_multiplier_data_id`),
  ADD KEY `master_multiplier_da_pertenure_multiplier_aab7aaa6_fk_master_pe` (`pertenure_multiplier_data_id`);

--
-- Indexes for table `master_multiplier_info`
--
ALTER TABLE `master_multiplier_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_multiplier_info_multiplier_data`
--
ALTER TABLE `master_multiplier_info_multiplier_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_multiplier_info_m_multiplier_info_id_multi_7002b71e_uniq` (`multiplier_info_id`,`multiplier_data_id`),
  ADD KEY `master_multiplier_in_multiplier_data_id_26d81a8b_fk_master_mu` (`multiplier_data_id`);

--
-- Indexes for table `master_nationality`
--
ALTER TABLE `master_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_natureofbusiness`
--
ALTER TABLE `master_natureofbusiness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_negativearea`
--
ALTER TABLE `master_negativearea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_paymentdelayyear`
--
ALTER TABLE `master_paymentdelayyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_pertenure_foir_data`
--
ALTER TABLE `master_pertenure_foir_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_pertenure_foi_associated_tenure_id_3dc29007_fk_master_te` (`associated_tenure_id`);

--
-- Indexes for table `master_pertenure_multiplier_data`
--
ALTER TABLE `master_pertenure_multiplier_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_pertenure_mul_associated_tenure_id_c7a1e5bb_fk_master_te` (`associated_tenure_id`);

--
-- Indexes for table `master_prefix`
--
ALTER TABLE `master_prefix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_product`
--
ALTER TABLE `master_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_productsorservices`
--
ALTER TABLE `master_productsorservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_product_and_policy_master`
--
ALTER TABLE `master_product_and_policy_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_product_and_policy_master_company_type`
--
ALTER TABLE `master_product_and_policy_master_company_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_product_and_policy_master_foir_info`
--
ALTER TABLE `master_product_and_policy_master_foir_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_product_and_polic_product_and_policy_maste_14e54c0c_uniq` (`product_and_policy_master_id`,`foir_info_id`),
  ADD KEY `master_product_and_p_foir_info_id_e974df4f_fk_master_fo` (`foir_info_id`);

--
-- Indexes for table `master_product_and_policy_master_multiplier_info`
--
ALTER TABLE `master_product_and_policy_master_multiplier_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_product_and_polic_product_and_policy_maste_9cab967b_uniq` (`product_and_policy_master_id`,`multiplier_info_id`),
  ADD KEY `master_product_and_p_multiplier_info_id_ac87e8ed_fk_master_mu` (`multiplier_info_id`);

--
-- Indexes for table `master_product_and_policy_master_rate_of_interest`
--
ALTER TABLE `master_product_and_policy_master_rate_of_interest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_product_and_polic_product_and_policy_maste_2d78982b_uniq` (`product_and_policy_master_id`,`rateofinterest_info_id`),
  ADD KEY `master_product_and_p_rateofinterest_info__4064f9f8_fk_master_ra` (`rateofinterest_info_id`);

--
-- Indexes for table `master_product_and_policy_master_residence_type`
--
ALTER TABLE `master_product_and_policy_master_residence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_product_and_policy_master_salary_type`
--
ALTER TABLE `master_product_and_policy_master_salary_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_profession`
--
ALTER TABLE `master_profession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_propertyin`
--
ALTER TABLE `master_propertyin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_propertytype`
--
ALTER TABLE `master_propertytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_qualification`
--
ALTER TABLE `master_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_rateofinterest`
--
ALTER TABLE `master_rateofinterest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_rateofinterest_info`
--
ALTER TABLE `master_rateofinterest_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_rateofinterest_info_additional_rate_info`
--
ALTER TABLE `master_rateofinterest_info_additional_rate_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `master_rateofinterest_in_rateofinterest_info_id_a_d3710d48_uniq` (`rateofinterest_info_id`,`additionalrate_info_id`),
  ADD KEY `master_rateofinteres_additionalrate_info__d67d6b79_fk_master_ad` (`additionalrate_info_id`);

--
-- Indexes for table `master_rejectiontype`
--
ALTER TABLE `master_rejectiontype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_relation`
--
ALTER TABLE `master_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_residencetype`
--
ALTER TABLE `master_residencetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_role`
--
ALTER TABLE `master_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_roomtype`
--
ALTER TABLE `master_roomtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_salarytype`
--
ALTER TABLE `master_salarytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_stageofconstruction`
--
ALTER TABLE `master_stageofconstruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_state`
--
ALTER TABLE `master_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_subproduct`
--
ALTER TABLE `master_subproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_subproduct_product_id_c0fc3401_fk_master_product_id` (`product_id`);

--
-- Indexes for table `master_tenure`
--
ALTER TABLE `master_tenure`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_additionaldetails`
--
ALTER TABLE `account_additionaldetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_contactperson`
--
ALTER TABLE `account_contactperson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_customuser`
--
ALTER TABLE `account_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_housewifedetails`
--
ALTER TABLE `account_housewifedetails`
  MODIFY `hw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_housewifeexistingcarddetails`
--
ALTER TABLE `account_housewifeexistingcarddetails`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_housewifeexistingloandetails`
--
ALTER TABLE `account_housewifeexistingloandetails`
  MODIFY `loan_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_housewifeinvestmentdetails`
--
ALTER TABLE `account_housewifeinvestmentdetails`
  MODIFY `invest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_housewifepersonaldetails`
--
ALTER TABLE `account_housewifepersonaldetails`
  MODIFY `hw_per_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_leads`
--
ALTER TABLE `account_leads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_loanapplication`
--
ALTER TABLE `account_loanapplication`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_loandocuments`
--
ALTER TABLE `account_loandocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_propertydetails`
--
ALTER TABLE `account_propertydetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype1`
--
ALTER TABLE `account_proptype1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype1_apf_approved_lender`
--
ALTER TABLE `account_proptype1_apf_approved_lender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype2`
--
ALTER TABLE `account_proptype2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype2_apf_approved_lender`
--
ALTER TABLE `account_proptype2_apf_approved_lender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype3`
--
ALTER TABLE `account_proptype3`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype3_apf_approved_lender`
--
ALTER TABLE `account_proptype3_apf_approved_lender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype4`
--
ALTER TABLE `account_proptype4`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_proptype4_apf_approved_lender`
--
ALTER TABLE `account_proptype4_apf_approved_lender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_referralprofile`
--
ALTER TABLE `account_referralprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `account_retireddetails`
--
ALTER TABLE `account_retireddetails`
  MODIFY `retired_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredexistingcarddetails`
--
ALTER TABLE `account_retiredexistingcarddetails`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredexistingloandetails`
--
ALTER TABLE `account_retiredexistingloandetails`
  MODIFY `loan_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredinvestmentdetails`
--
ALTER TABLE `account_retiredinvestmentdetails`
  MODIFY `invest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredotherdetails`
--
ALTER TABLE `account_retiredotherdetails`
  MODIFY `other_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredpensiondetails`
--
ALTER TABLE `account_retiredpensiondetails`
  MODIFY `pension_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_retiredresidencedetails`
--
ALTER TABLE `account_retiredresidencedetails`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_saladditionaldetails`
--
ALTER TABLE `account_saladditionaldetails`
  MODIFY `sal_add_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_saladditionalotherincomes`
--
ALTER TABLE `account_saladditionalotherincomes`
  MODIFY `add_oth_inc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_salcompanydetails`
--
ALTER TABLE `account_salcompanydetails`
  MODIFY `comp_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_salexistingcreditcard`
--
ALTER TABLE `account_salexistingcreditcard`
  MODIFY `existing_credit_card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_salexistingloandetails`
--
ALTER TABLE `account_salexistingloandetails`
  MODIFY `existing_loan_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_salincomedetails`
--
ALTER TABLE `account_salincomedetails`
  MODIFY `inc_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_salinvestments`
--
ALTER TABLE `account_salinvestments`
  MODIFY `sal_inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_salotherincomes`
--
ALTER TABLE `account_salotherincomes`
  MODIFY `other_inc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_salpersonaldetails`
--
ALTER TABLE `account_salpersonaldetails`
  MODIFY `per_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_salresidencedetails`
--
ALTER TABLE `account_salresidencedetails`
  MODIFY `sal_res_det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_studentdetails`
--
ALTER TABLE `account_studentdetails`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_studentexistingcarddetails`
--
ALTER TABLE `account_studentexistingcarddetails`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_studentexistingloandetails`
--
ALTER TABLE `account_studentexistingloandetails`
  MODIFY `loan_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_userdocuments`
--
ALTER TABLE `account_userdocuments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `homeloan_age`
--
ALTER TABLE `homeloan_age`
  MODIFY `age_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_bank`
--
ALTER TABLE `homeloan_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_bankcodes`
--
ALTER TABLE `homeloan_bankcodes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_cibil`
--
ALTER TABLE `homeloan_cibil`
  MODIFY `cibil_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_company`
--
ALTER TABLE `homeloan_company`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_costsheet`
--
ALTER TABLE `homeloan_costsheet`
  MODIFY `cost_particular_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_customer`
--
ALTER TABLE `homeloan_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_customerdesignation`
--
ALTER TABLE `homeloan_customerdesignation`
  MODIFY `cust_desig_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_customernationality`
--
ALTER TABLE `homeloan_customernationality`
  MODIFY `cust_nat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_fees`
--
ALTER TABLE `homeloan_fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlbasicdetails`
--
ALTER TABLE `homeloan_hlbasicdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlbasicdetails_company_type`
--
ALTER TABLE `homeloan_hlbasicdetails_company_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlbasicdetails_designation`
--
ALTER TABLE `homeloan_hlbasicdetails_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlincome`
--
ALTER TABLE `homeloan_hlincome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlincomefoir`
--
ALTER TABLE `homeloan_hlincomefoir`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlloan_to_value_type_1`
--
ALTER TABLE `homeloan_hlloan_to_value_type_1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlloan_to_value_type_2`
--
ALTER TABLE `homeloan_hlloan_to_value_type_2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlobligation`
--
ALTER TABLE `homeloan_hlobligation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlotherdetails`
--
ALTER TABLE `homeloan_hlotherdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlproperty`
--
ALTER TABLE `homeloan_hlproperty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlproperty_negative_area`
--
ALTER TABLE `homeloan_hlproperty_negative_area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlproperty_property_type`
--
ALTER TABLE `homeloan_hlproperty_property_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlproperty_room_type`
--
ALTER TABLE `homeloan_hlproperty_room_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_hlproperty_stage_of_construction`
--
ALTER TABLE `homeloan_hlproperty_stage_of_construction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_income`
--
ALTER TABLE `homeloan_income`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_incomefoir`
--
ALTER TABLE `homeloan_incomefoir`
  MODIFY `inc_foir_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_loantowardsvaluation`
--
ALTER TABLE `homeloan_loantowardsvaluation`
  MODIFY `loan_tow_val_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_ltvresale`
--
ALTER TABLE `homeloan_ltvresale`
  MODIFY `ltv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_negativeemployerprofile`
--
ALTER TABLE `homeloan_negativeemployerprofile`
  MODIFY `neg_emp_pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_obligation`
--
ALTER TABLE `homeloan_obligation`
  MODIFY `obligation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_otherdetails`
--
ALTER TABLE `homeloan_otherdetails`
  MODIFY `oth_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_otherdetailsroi`
--
ALTER TABLE `homeloan_otherdetailsroi`
  MODIFY `oth_det_roi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_productsandpolicy`
--
ALTER TABLE `homeloan_productsandpolicy`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_property`
--
ALTER TABLE `homeloan_property`
  MODIFY `prop_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeloan_remarks`
--
ALTER TABLE `homeloan_remarks`
  MODIFY `remark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_additionalrate_info`
--
ALTER TABLE `master_additionalrate_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `master_agreementtype`
--
ALTER TABLE `master_agreementtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_applicanttype`
--
ALTER TABLE `master_applicanttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_areain`
--
ALTER TABLE `master_areain`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_areatype`
--
ALTER TABLE `master_areatype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_ayyear`
--
ALTER TABLE `master_ayyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_bankcategory`
--
ALTER TABLE `master_bankcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_bankname`
--
ALTER TABLE `master_bankname`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_bonustype`
--
ALTER TABLE `master_bonustype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_cibil`
--
ALTER TABLE `master_cibil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_cibilloantype`
--
ALTER TABLE `master_cibilloantype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_cibiltype`
--
ALTER TABLE `master_cibiltype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_city`
--
ALTER TABLE `master_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_comissionrates`
--
ALTER TABLE `master_comissionrates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_commission`
--
ALTER TABLE `master_commission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_companycatergorytypes`
--
ALTER TABLE `master_companycatergorytypes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_companycatergorytypes_banks`
--
ALTER TABLE `master_companycatergorytypes_banks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_companyname`
--
ALTER TABLE `master_companyname`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_companytype`
--
ALTER TABLE `master_companytype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `master_country`
--
ALTER TABLE `master_country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_customertype`
--
ALTER TABLE `master_customertype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_deductiontype`
--
ALTER TABLE `master_deductiontype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_defaultyear`
--
ALTER TABLE `master_defaultyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_degree`
--
ALTER TABLE `master_degree`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_designationtype`
--
ALTER TABLE `master_designationtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_employmenttype`
--
ALTER TABLE `master_employmenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_foircategory`
--
ALTER TABLE `master_foircategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_foir_data`
--
ALTER TABLE `master_foir_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_foir_data_tenure_foirs`
--
ALTER TABLE `master_foir_data_tenure_foirs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `master_foir_info`
--
ALTER TABLE `master_foir_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `master_foir_info_foir_data`
--
ALTER TABLE `master_foir_info_foir_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_gender`
--
ALTER TABLE `master_gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_incentivestype`
--
ALTER TABLE `master_incentivestype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_investmenttype`
--
ALTER TABLE `master_investmenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_lawyertype`
--
ALTER TABLE `master_lawyertype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_leadsource`
--
ALTER TABLE `master_leadsource`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_lessetype`
--
ALTER TABLE `master_lessetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_loanamount`
--
ALTER TABLE `master_loanamount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_maritalstatus`
--
ALTER TABLE `master_maritalstatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_multipliercategory`
--
ALTER TABLE `master_multipliercategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_multiplier_data`
--
ALTER TABLE `master_multiplier_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `master_multiplier_data_tenure_multipliers`
--
ALTER TABLE `master_multiplier_data_tenure_multipliers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `master_multiplier_info`
--
ALTER TABLE `master_multiplier_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `master_multiplier_info_multiplier_data`
--
ALTER TABLE `master_multiplier_info_multiplier_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `master_nationality`
--
ALTER TABLE `master_nationality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_natureofbusiness`
--
ALTER TABLE `master_natureofbusiness`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_negativearea`
--
ALTER TABLE `master_negativearea`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_paymentdelayyear`
--
ALTER TABLE `master_paymentdelayyear`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_pertenure_foir_data`
--
ALTER TABLE `master_pertenure_foir_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `master_pertenure_multiplier_data`
--
ALTER TABLE `master_pertenure_multiplier_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `master_prefix`
--
ALTER TABLE `master_prefix`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_product`
--
ALTER TABLE `master_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_productsorservices`
--
ALTER TABLE `master_productsorservices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master`
--
ALTER TABLE `master_product_and_policy_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_company_type`
--
ALTER TABLE `master_product_and_policy_master_company_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_foir_info`
--
ALTER TABLE `master_product_and_policy_master_foir_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_multiplier_info`
--
ALTER TABLE `master_product_and_policy_master_multiplier_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_rate_of_interest`
--
ALTER TABLE `master_product_and_policy_master_rate_of_interest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_residence_type`
--
ALTER TABLE `master_product_and_policy_master_residence_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master_product_and_policy_master_salary_type`
--
ALTER TABLE `master_product_and_policy_master_salary_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `master_profession`
--
ALTER TABLE `master_profession`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_propertyin`
--
ALTER TABLE `master_propertyin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_propertytype`
--
ALTER TABLE `master_propertytype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_qualification`
--
ALTER TABLE `master_qualification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_rateofinterest`
--
ALTER TABLE `master_rateofinterest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_rateofinterest_info`
--
ALTER TABLE `master_rateofinterest_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `master_rateofinterest_info_additional_rate_info`
--
ALTER TABLE `master_rateofinterest_info_additional_rate_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `master_rejectiontype`
--
ALTER TABLE `master_rejectiontype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_relation`
--
ALTER TABLE `master_relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_residencetype`
--
ALTER TABLE `master_residencetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_role`
--
ALTER TABLE `master_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_roomtype`
--
ALTER TABLE `master_roomtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_salarytype`
--
ALTER TABLE `master_salarytype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_stageofconstruction`
--
ALTER TABLE `master_stageofconstruction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_state`
--
ALTER TABLE `master_state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_status`
--
ALTER TABLE `master_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_subproduct`
--
ALTER TABLE `master_subproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_tenure`
--
ALTER TABLE `master_tenure`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_additionaldetails`
--
ALTER TABLE `account_additionaldetails`
  ADD CONSTRAINT `account_additionalde_applicant_type_id_42307b31_fk_master_ap` FOREIGN KEY (`applicant_type_id`) REFERENCES `master_applicanttype` (`id`),
  ADD CONSTRAINT `account_additionalde_cust_type_id_893b2a84_fk_master_cu` FOREIGN KEY (`cust_type_id`) REFERENCES `master_customertype` (`id`),
  ADD CONSTRAINT `account_additionalde_lead_id_id_2321c4ee_fk_account_l` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`),
  ADD CONSTRAINT `account_additionalde_relation_id_1d06a3c0_fk_master_re` FOREIGN KEY (`relation_id`) REFERENCES `master_relation` (`id`);

--
-- Constraints for table `account_customuser`
--
ALTER TABLE `account_customuser`
  ADD CONSTRAINT `account_customuser_city_id_fa3dc6ce_fk_master_city_id` FOREIGN KEY (`city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_customuser_system_role_id_443d0528_fk_master_role_id` FOREIGN KEY (`system_role_id`) REFERENCES `master_role` (`id`);

--
-- Constraints for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD CONSTRAINT `account_customuser_g_customuser_id_b6c60904_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD CONSTRAINT `account_customuser_u_customuser_id_03bcc114_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_u_permission_id_f4aec423_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `account_housewifedetails`
--
ALTER TABLE `account_housewifedetails`
  ADD CONSTRAINT `account_housewifedet_add_det_id_id_77b888a1_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_housewifeexistingcarddetails`
--
ALTER TABLE `account_housewifeexistingcarddetails`
  ADD CONSTRAINT `account_housewifeexi_add_det_id_id_f21e9d2b_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_housewifeexistingloandetails`
--
ALTER TABLE `account_housewifeexistingloandetails`
  ADD CONSTRAINT `account_housewifeexi_add_det_id_id_aea32c89_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_housewifeinvestmentdetails`
--
ALTER TABLE `account_housewifeinvestmentdetails`
  ADD CONSTRAINT `account_housewifeinv_add_det_id_id_7fac3a66_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_housewifepersonaldetails`
--
ALTER TABLE `account_housewifepersonaldetails`
  ADD CONSTRAINT `account_housewifeper_add_det_id_id_92416a77_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_leads`
--
ALTER TABLE `account_leads`
  ADD CONSTRAINT `account_leads_city_id_b7e02aaf_fk_master_city_id` FOREIGN KEY (`city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_leads_prefix_id_8cb4fd19_fk_master_prefix_id` FOREIGN KEY (`prefix_id`) REFERENCES `master_prefix` (`id`),
  ADD CONSTRAINT `account_leads_product_id_6ccb56c9_fk_master_product_id` FOREIGN KEY (`product_id`) REFERENCES `master_product` (`id`),
  ADD CONSTRAINT `account_leads_state_id_06ba6d4e_fk_master_state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `account_leads_sub_product_id_e76f18bd_fk_master_subproduct_id` FOREIGN KEY (`sub_product_id`) REFERENCES `master_subproduct` (`id`);

--
-- Constraints for table `account_loanapplication`
--
ALTER TABLE `account_loanapplication`
  ADD CONSTRAINT `account_loanapplication_lead_id_id_060fa395_fk_account_leads_id` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`);

--
-- Constraints for table `account_loandocuments`
--
ALTER TABLE `account_loandocuments`
  ADD CONSTRAINT `account_loandocument_loanApplication_id_73d765a6_fk_account_l` FOREIGN KEY (`loanApplication_id`) REFERENCES `account_loanapplication` (`id`);

--
-- Constraints for table `account_proptype1`
--
ALTER TABLE `account_proptype1`
  ADD CONSTRAINT `account_proptype1_agreement_type_id_db2ca8f2_fk_master_ag` FOREIGN KEY (`agreement_type_id`) REFERENCES `master_agreementtype` (`id`),
  ADD CONSTRAINT `account_proptype1_area_in_id_c9c5d7c4_fk_master_areain_id` FOREIGN KEY (`area_in_id`) REFERENCES `master_areain` (`id`),
  ADD CONSTRAINT `account_proptype1_area_type_id_89b0bbb6_fk_master_areatype_id` FOREIGN KEY (`area_type_id`) REFERENCES `master_areatype` (`id`),
  ADD CONSTRAINT `account_proptype1_lead_id_id_8ff6af65_fk_account_leads_id` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`),
  ADD CONSTRAINT `account_proptype1_prop_city_id_238fea1a_fk_master_city_id` FOREIGN KEY (`prop_city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_proptype1_prop_in_id_e5e82c4c_fk_master_propertyin_id` FOREIGN KEY (`prop_in_id`) REFERENCES `master_propertyin` (`id`),
  ADD CONSTRAINT `account_proptype1_prop_state_id_d6823349_fk_master_state_id` FOREIGN KEY (`prop_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `account_proptype1_room_type_id_b073a95f_fk_master_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `master_roomtype` (`id`);

--
-- Constraints for table `account_proptype1_apf_approved_lender`
--
ALTER TABLE `account_proptype1_apf_approved_lender`
  ADD CONSTRAINT `account_proptype1_ap_bankname_id_18fbdcb0_fk_master_ba` FOREIGN KEY (`bankname_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_proptype1_ap_proptype1_id_6b05d90b_fk_account_p` FOREIGN KEY (`proptype1_id`) REFERENCES `account_proptype1` (`id`);

--
-- Constraints for table `account_proptype2`
--
ALTER TABLE `account_proptype2`
  ADD CONSTRAINT `account_proptype2_agreement_type_id_f40a71d8_fk_master_ag` FOREIGN KEY (`agreement_type_id`) REFERENCES `master_agreementtype` (`id`),
  ADD CONSTRAINT `account_proptype2_area_in_id_eeb08a37_fk_master_areain_id` FOREIGN KEY (`area_in_id`) REFERENCES `master_areain` (`id`),
  ADD CONSTRAINT `account_proptype2_area_type_id_6e0eb797_fk_master_areatype_id` FOREIGN KEY (`area_type_id`) REFERENCES `master_areatype` (`id`),
  ADD CONSTRAINT `account_proptype2_lead_id_id_e81260d7_fk_account_leads_id` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`),
  ADD CONSTRAINT `account_proptype2_prop_city_id_d3212c93_fk_master_city_id` FOREIGN KEY (`prop_city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_proptype2_prop_in_id_69beea15_fk_master_propertyin_id` FOREIGN KEY (`prop_in_id`) REFERENCES `master_propertyin` (`id`),
  ADD CONSTRAINT `account_proptype2_prop_state_id_44939f18_fk_master_state_id` FOREIGN KEY (`prop_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `account_proptype2_room_type_id_ae70fe8e_fk_master_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `master_roomtype` (`id`),
  ADD CONSTRAINT `account_proptype2_seller_status_id_4bf47444_fk_master_status_id` FOREIGN KEY (`seller_status_id`) REFERENCES `master_status` (`id`);

--
-- Constraints for table `account_proptype2_apf_approved_lender`
--
ALTER TABLE `account_proptype2_apf_approved_lender`
  ADD CONSTRAINT `account_proptype2_ap_bankname_id_fbeb3325_fk_master_ba` FOREIGN KEY (`bankname_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_proptype2_ap_proptype2_id_490e760b_fk_account_p` FOREIGN KEY (`proptype2_id`) REFERENCES `account_proptype2` (`id`);

--
-- Constraints for table `account_proptype3`
--
ALTER TABLE `account_proptype3`
  ADD CONSTRAINT `account_proptype3_agreement_type_id_c582c5e6_fk_master_ag` FOREIGN KEY (`agreement_type_id`) REFERENCES `master_agreementtype` (`id`),
  ADD CONSTRAINT `account_proptype3_area_in_id_1b0ca928_fk_master_areain_id` FOREIGN KEY (`area_in_id`) REFERENCES `master_areain` (`id`),
  ADD CONSTRAINT `account_proptype3_area_type_id_019bf2cd_fk_master_areatype_id` FOREIGN KEY (`area_type_id`) REFERENCES `master_areatype` (`id`),
  ADD CONSTRAINT `account_proptype3_lead_id_id_6b13d3a5_fk_account_leads_id` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`),
  ADD CONSTRAINT `account_proptype3_prop_city_id_cc9c12d5_fk_master_city_id` FOREIGN KEY (`prop_city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_proptype3_prop_in_id_1cb67cb6_fk_master_propertyin_id` FOREIGN KEY (`prop_in_id`) REFERENCES `master_propertyin` (`id`),
  ADD CONSTRAINT `account_proptype3_prop_state_id_d96b278e_fk_master_state_id` FOREIGN KEY (`prop_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `account_proptype3_room_type_id_75362494_fk_master_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `master_roomtype` (`id`);

--
-- Constraints for table `account_proptype3_apf_approved_lender`
--
ALTER TABLE `account_proptype3_apf_approved_lender`
  ADD CONSTRAINT `account_proptype3_ap_bankname_id_7cd2dcdb_fk_master_ba` FOREIGN KEY (`bankname_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_proptype3_ap_proptype3_id_a5a851b3_fk_account_p` FOREIGN KEY (`proptype3_id`) REFERENCES `account_proptype3` (`id`);

--
-- Constraints for table `account_proptype4`
--
ALTER TABLE `account_proptype4`
  ADD CONSTRAINT `account_proptype4_agreement_type_id_f5db3995_fk_master_ag` FOREIGN KEY (`agreement_type_id`) REFERENCES `master_agreementtype` (`id`),
  ADD CONSTRAINT `account_proptype4_area_in_id_501fae59_fk_master_areain_id` FOREIGN KEY (`area_in_id`) REFERENCES `master_areain` (`id`),
  ADD CONSTRAINT `account_proptype4_area_type_id_42bf4b4a_fk_master_areatype_id` FOREIGN KEY (`area_type_id`) REFERENCES `master_areatype` (`id`),
  ADD CONSTRAINT `account_proptype4_lead_id_id_dbde56bd_fk_account_leads_id` FOREIGN KEY (`lead_id_id`) REFERENCES `account_leads` (`id`),
  ADD CONSTRAINT `account_proptype4_prop_city_id_bf71b4b4_fk_master_city_id` FOREIGN KEY (`prop_city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_proptype4_prop_in_id_3e6e03a2_fk_master_propertyin_id` FOREIGN KEY (`prop_in_id`) REFERENCES `master_propertyin` (`id`),
  ADD CONSTRAINT `account_proptype4_prop_state_id_3442c83a_fk_master_state_id` FOREIGN KEY (`prop_state_id`) REFERENCES `master_state` (`id`),
  ADD CONSTRAINT `account_proptype4_room_type_id_54e131de_fk_master_roomtype_id` FOREIGN KEY (`room_type_id`) REFERENCES `master_roomtype` (`id`),
  ADD CONSTRAINT `account_proptype4_seller_status_id_84f0705b_fk_master_status_id` FOREIGN KEY (`seller_status_id`) REFERENCES `master_status` (`id`);

--
-- Constraints for table `account_proptype4_apf_approved_lender`
--
ALTER TABLE `account_proptype4_apf_approved_lender`
  ADD CONSTRAINT `account_proptype4_ap_bankname_id_6d7563ea_fk_master_ba` FOREIGN KEY (`bankname_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_proptype4_ap_proptype4_id_71cb121f_fk_account_p` FOREIGN KEY (`proptype4_id`) REFERENCES `account_proptype4` (`id`);

--
-- Constraints for table `account_referralprofile`
--
ALTER TABLE `account_referralprofile`
  ADD CONSTRAINT `account_referralprof_user_id_e96e6730_fk_account_c` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `account_retireddetails`
--
ALTER TABLE `account_retireddetails`
  ADD CONSTRAINT `account_retireddetai_add_det_id_id_001e182a_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredexistingcarddetails`
--
ALTER TABLE `account_retiredexistingcarddetails`
  ADD CONSTRAINT `account_retiredexist_add_det_id_id_0c38da91_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredexistingloandetails`
--
ALTER TABLE `account_retiredexistingloandetails`
  ADD CONSTRAINT `account_retiredexist_add_det_id_id_2bd9ccac_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredinvestmentdetails`
--
ALTER TABLE `account_retiredinvestmentdetails`
  ADD CONSTRAINT `account_retiredinves_add_det_id_id_553cd230_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredotherdetails`
--
ALTER TABLE `account_retiredotherdetails`
  ADD CONSTRAINT `account_retiredother_add_det_id_id_899e8262_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredpensiondetails`
--
ALTER TABLE `account_retiredpensiondetails`
  ADD CONSTRAINT `account_retiredpensi_add_det_id_id_965e7c5b_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_retiredresidencedetails`
--
ALTER TABLE `account_retiredresidencedetails`
  ADD CONSTRAINT `account_retiredresid_add_det_id_id_2fbd1f2e_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_saladditionaldetails`
--
ALTER TABLE `account_saladditionaldetails`
  ADD CONSTRAINT `account_saladditiona_addi_details_id_id_d0d5c016_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_saladditionalotherincomes`
--
ALTER TABLE `account_saladditionalotherincomes`
  ADD CONSTRAINT `account_saladditiona_addi_details_id_id_4821aee4_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_salcompanydetails`
--
ALTER TABLE `account_salcompanydetails`
  ADD CONSTRAINT `account_salcompanyde_addi_details_id_id_bcf2f507_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salcompanyde_company_name_id_8bc4e621_fk_master_co` FOREIGN KEY (`company_name_id`) REFERENCES `master_companyname` (`id`),
  ADD CONSTRAINT `account_salcompanyde_company_type_id_2ac222b4_fk_master_co` FOREIGN KEY (`company_type_id`) REFERENCES `master_companytype` (`id`),
  ADD CONSTRAINT `account_salcompanyde_designation_type_id_fd0d4180_fk_master_de` FOREIGN KEY (`designation_type_id`) REFERENCES `master_designationtype` (`id`),
  ADD CONSTRAINT `account_salcompanyde_employment_type_id_ac531a42_fk_master_em` FOREIGN KEY (`employment_type_id`) REFERENCES `master_employmenttype` (`id`),
  ADD CONSTRAINT `account_salcompanydetails_location_id_2868d6c2_fk_master_city_id` FOREIGN KEY (`location_id`) REFERENCES `master_city` (`id`);

--
-- Constraints for table `account_salexistingcreditcard`
--
ALTER TABLE `account_salexistingcreditcard`
  ADD CONSTRAINT `account_salexistingc_addi_details_id_id_160e253e_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salexistingc_bank_name_id_d9ff6275_fk_master_ba` FOREIGN KEY (`bank_name_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_salexistingc_payment_delay_year_i_a71f1eaf_fk_master_pa` FOREIGN KEY (`payment_delay_year_id`) REFERENCES `master_paymentdelayyear` (`id`);

--
-- Constraints for table `account_salexistingloandetails`
--
ALTER TABLE `account_salexistingloandetails`
  ADD CONSTRAINT `account_salexistingl_addi_details_id_id_5359a687_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salexistingl_applicant_type_id_339c1c70_fk_master_ap` FOREIGN KEY (`applicant_type_id`) REFERENCES `master_applicanttype` (`id`),
  ADD CONSTRAINT `account_salexistingl_bank_name_id_06d03c03_fk_master_ba` FOREIGN KEY (`bank_name_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_salexistingl_products_or_services_a7b8cde1_fk_master_pr` FOREIGN KEY (`products_or_services_id`) REFERENCES `master_product` (`id`);

--
-- Constraints for table `account_salincomedetails`
--
ALTER TABLE `account_salincomedetails`
  ADD CONSTRAINT `account_salincomedet_addi_details_id_id_d5acf27d_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salincomedet_bank_name_id_42b02e53_fk_master_ba` FOREIGN KEY (`bank_name_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `account_salincomedet_salary_type_id_0684d663_fk_master_sa` FOREIGN KEY (`salary_type_id`) REFERENCES `master_salarytype` (`id`);

--
-- Constraints for table `account_salinvestments`
--
ALTER TABLE `account_salinvestments`
  ADD CONSTRAINT `account_salinvestmen_addi_details_id_id_b37f614a_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_salotherincomes`
--
ALTER TABLE `account_salotherincomes`
  ADD CONSTRAINT `account_salotherinco_addi_details_id_id_28e91a21_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salotherinco_agreement_type_id_7b789daa_fk_master_ag` FOREIGN KEY (`agreement_type_id`) REFERENCES `master_agreementtype` (`id`),
  ADD CONSTRAINT `account_salotherinco_lessee_type_id_a8bbb9fe_fk_master_le` FOREIGN KEY (`lessee_type_id`) REFERENCES `master_lessetype` (`id`);

--
-- Constraints for table `account_salpersonaldetails`
--
ALTER TABLE `account_salpersonaldetails`
  ADD CONSTRAINT `account_salpersonald_Lawyer_Type_id_2d09dd44_fk_master_la` FOREIGN KEY (`Lawyer_Type_id`) REFERENCES `master_lawyertype` (`id`),
  ADD CONSTRAINT `account_salpersonald_additional_details_i_2de33808_fk_account_a` FOREIGN KEY (`additional_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salpersonald_country_id_61f478d5_fk_master_co` FOREIGN KEY (`country_id`) REFERENCES `master_country` (`id`),
  ADD CONSTRAINT `account_salpersonald_default_year_id_fccc812b_fk_master_de` FOREIGN KEY (`default_year_id`) REFERENCES `master_defaultyear` (`id`),
  ADD CONSTRAINT `account_salpersonald_degree_id_eeb59408_fk_master_de` FOREIGN KEY (`degree_id`) REFERENCES `master_degree` (`id`),
  ADD CONSTRAINT `account_salpersonald_gender_id_021a22de_fk_master_ge` FOREIGN KEY (`gender_id`) REFERENCES `master_gender` (`id`),
  ADD CONSTRAINT `account_salpersonald_marital_status_id_8fec521c_fk_master_ma` FOREIGN KEY (`marital_status_id`) REFERENCES `master_maritalstatus` (`id`),
  ADD CONSTRAINT `account_salpersonald_nationality_id_0f3be925_fk_master_na` FOREIGN KEY (`nationality_id`) REFERENCES `master_nationality` (`id`),
  ADD CONSTRAINT `account_salpersonald_product_id_id_f2d5e8cc_fk_master_pr` FOREIGN KEY (`product_id_id`) REFERENCES `master_product` (`id`),
  ADD CONSTRAINT `account_salpersonald_profession_id_504e0807_fk_master_pr` FOREIGN KEY (`profession_id`) REFERENCES `master_profession` (`id`),
  ADD CONSTRAINT `account_salpersonald_qualification_id_fe298f85_fk_master_qu` FOREIGN KEY (`qualification_id`) REFERENCES `master_qualification` (`id`),
  ADD CONSTRAINT `account_salpersonald_tenure_id_e9f2e7c4_fk_master_te` FOREIGN KEY (`tenure_id`) REFERENCES `master_tenure` (`id`);

--
-- Constraints for table `account_salresidencedetails`
--
ALTER TABLE `account_salresidencedetails`
  ADD CONSTRAINT `account_salresidence_addi_details_id_id_6b3e3460_fk_account_a` FOREIGN KEY (`addi_details_id_id`) REFERENCES `account_additionaldetails` (`id`),
  ADD CONSTRAINT `account_salresidence_current_location_cit_01cfd5aa_fk_master_ci` FOREIGN KEY (`current_location_city_id`) REFERENCES `master_city` (`id`),
  ADD CONSTRAINT `account_salresidence_current_residence_ty_eb7f8a82_fk_master_re` FOREIGN KEY (`current_residence_type_id`) REFERENCES `master_residencetype` (`id`),
  ADD CONSTRAINT `account_salresidencedetails_state_id_9f472d48_fk_master_state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`id`);

--
-- Constraints for table `account_studentdetails`
--
ALTER TABLE `account_studentdetails`
  ADD CONSTRAINT `account_studentdetai_add_det_id_id_c1788fb1_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_studentexistingcarddetails`
--
ALTER TABLE `account_studentexistingcarddetails`
  ADD CONSTRAINT `account_studentexist_add_det_id_id_8237b9f9_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_studentexistingloandetails`
--
ALTER TABLE `account_studentexistingloandetails`
  ADD CONSTRAINT `account_studentexist_add_det_id_id_ee96c8f2_fk_account_a` FOREIGN KEY (`add_det_id_id`) REFERENCES `account_additionaldetails` (`id`);

--
-- Constraints for table `account_userdocuments`
--
ALTER TABLE `account_userdocuments`
  ADD CONSTRAINT `account_userdocuments_user_id_51d4c82d_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `homeloan_age`
--
ALTER TABLE `homeloan_age`
  ADD CONSTRAINT `HomeLoan_age_bank_id_id_51026cd1_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_bankcodes`
--
ALTER TABLE `homeloan_bankcodes`
  ADD CONSTRAINT `HomeLoan_bankcodes_bank_id_dd5ed6d5_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_bankcodes_product_id_fa378f3c_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_cibil`
--
ALTER TABLE `homeloan_cibil`
  ADD CONSTRAINT `HomeLoan_cibil_cibil_loan_type_id_i_bd3acb69_fk_master_ci` FOREIGN KEY (`cibil_loan_type_id_id`) REFERENCES `master_cibilloantype` (`id`),
  ADD CONSTRAINT `HomeLoan_cibil_pid_id_ef103485_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_company`
--
ALTER TABLE `homeloan_company`
  ADD CONSTRAINT `HomeLoan_company_bank_id_id_38b474f0_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_customer`
--
ALTER TABLE `homeloan_customer`
  ADD CONSTRAINT `HomeLoan_customer_bank_id_id_34401960_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_customerdesignation`
--
ALTER TABLE `homeloan_customerdesignation`
  ADD CONSTRAINT `HomeLoan_customerdes_bank_id_id_766f2acb_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_customerdes_product_id_50b26e16_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_customernationality`
--
ALTER TABLE `homeloan_customernationality`
  ADD CONSTRAINT `HomeLoan_customernat_bank_id_id_03247710_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_fees`
--
ALTER TABLE `homeloan_fees`
  ADD CONSTRAINT `HomeLoan_fees_bank_id_id_d4521f23_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_fees_product_id_046e29ad_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlbasicdetails`
--
ALTER TABLE `homeloan_hlbasicdetails`
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_customer_type_id_5bc12c0f_fk_master_cu` FOREIGN KEY (`customer_type_id`) REFERENCES `master_customertype` (`id`),
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_pid_id_a676221a_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`),
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_salary_type_id_df4da58d_fk_master_sa` FOREIGN KEY (`salary_type_id`) REFERENCES `master_salarytype` (`id`);

--
-- Constraints for table `homeloan_hlbasicdetails_company_type`
--
ALTER TABLE `homeloan_hlbasicdetails_company_type`
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_companytype_id_6fe365be_fk_master_co` FOREIGN KEY (`companytype_id`) REFERENCES `master_companytype` (`id`),
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_hlbasicdetails_id_1fca052d_fk_HomeLoan_` FOREIGN KEY (`hlbasicdetails_id`) REFERENCES `homeloan_hlbasicdetails` (`id`);

--
-- Constraints for table `homeloan_hlbasicdetails_designation`
--
ALTER TABLE `homeloan_hlbasicdetails_designation`
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_designationtype_id_20754a6f_fk_master_de` FOREIGN KEY (`designationtype_id`) REFERENCES `master_designationtype` (`id`),
  ADD CONSTRAINT `HomeLoan_hlbasicdeta_hlbasicdetails_id_8358bcc8_fk_HomeLoan_` FOREIGN KEY (`hlbasicdetails_id`) REFERENCES `homeloan_hlbasicdetails` (`id`);

--
-- Constraints for table `homeloan_hlincome`
--
ALTER TABLE `homeloan_hlincome`
  ADD CONSTRAINT `HomeLoan_hlincome_basic_details_id_id_20cf0b6a_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlincome_pid_id_97cb067d_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`),
  ADD CONSTRAINT `HomeLoan_hlincome_rent_agreement_type__c415a7ee_fk_master_ag` FOREIGN KEY (`rent_agreement_type_id`) REFERENCES `master_agreementtype` (`id`);

--
-- Constraints for table `homeloan_hlincomefoir`
--
ALTER TABLE `homeloan_hlincomefoir`
  ADD CONSTRAINT `HomeLoan_hlincomefoi_basic_details_id_id_c8e5fce8_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlincomefoi_pid_id_ac9f3d13_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlloan_to_value_type_1`
--
ALTER TABLE `homeloan_hlloan_to_value_type_1`
  ADD CONSTRAINT `HomeLoan_hlloan_to_v_basic_details_id_id_06cd64b5_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlloan_to_v_loan_amount_id_6ed47656_fk_master_lo` FOREIGN KEY (`loan_amount_id`) REFERENCES `master_loanamount` (`id`),
  ADD CONSTRAINT `HomeLoan_hlloan_to_v_pid_id_04615147_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlloan_to_value_type_2`
--
ALTER TABLE `homeloan_hlloan_to_value_type_2`
  ADD CONSTRAINT `HomeLoan_hlloan_to_v_basic_details_id_id_73441ae5_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlloan_to_v_pid_id_90eaec89_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlobligation`
--
ALTER TABLE `homeloan_hlobligation`
  ADD CONSTRAINT `HomeLoan_hlobligatio_basic_details_id_id_38dd07a0_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlobligatio_pid_id_49b9c0c5_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlotherdetails`
--
ALTER TABLE `homeloan_hlotherdetails`
  ADD CONSTRAINT `HomeLoan_hlotherdeta_basic_details_id_id_e734e0d0_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlotherdeta_pid_id_4eccca89_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlproperty`
--
ALTER TABLE `homeloan_hlproperty`
  ADD CONSTRAINT `HomeLoan_hlproperty_basic_details_id_id_79a81fea_fk_HomeLoan_` FOREIGN KEY (`basic_details_id_id`) REFERENCES `homeloan_hlbasicdetails` (`id`),
  ADD CONSTRAINT `HomeLoan_hlproperty_pid_id_0dc32d38_fk_HomeLoan_` FOREIGN KEY (`pid_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_hlproperty_negative_area`
--
ALTER TABLE `homeloan_hlproperty_negative_area`
  ADD CONSTRAINT `HomeLoan_hlproperty__hlproperty_id_1486b2f1_fk_HomeLoan_` FOREIGN KEY (`hlproperty_id`) REFERENCES `homeloan_hlproperty` (`id`),
  ADD CONSTRAINT `HomeLoan_hlproperty__negativearea_id_6e9c475d_fk_master_ne` FOREIGN KEY (`negativearea_id`) REFERENCES `master_negativearea` (`id`);

--
-- Constraints for table `homeloan_hlproperty_property_type`
--
ALTER TABLE `homeloan_hlproperty_property_type`
  ADD CONSTRAINT `HomeLoan_hlproperty__hlproperty_id_711f0bae_fk_HomeLoan_` FOREIGN KEY (`hlproperty_id`) REFERENCES `homeloan_hlproperty` (`id`),
  ADD CONSTRAINT `HomeLoan_hlproperty__propertytype_id_269330d7_fk_master_pr` FOREIGN KEY (`propertytype_id`) REFERENCES `master_propertytype` (`id`);

--
-- Constraints for table `homeloan_hlproperty_room_type`
--
ALTER TABLE `homeloan_hlproperty_room_type`
  ADD CONSTRAINT `HomeLoan_hlproperty__hlproperty_id_ad386985_fk_HomeLoan_` FOREIGN KEY (`hlproperty_id`) REFERENCES `homeloan_hlproperty` (`id`),
  ADD CONSTRAINT `HomeLoan_hlproperty__roomtype_id_71b79e71_fk_master_ro` FOREIGN KEY (`roomtype_id`) REFERENCES `master_roomtype` (`id`);

--
-- Constraints for table `homeloan_hlproperty_stage_of_construction`
--
ALTER TABLE `homeloan_hlproperty_stage_of_construction`
  ADD CONSTRAINT `HomeLoan_hlproperty__hlproperty_id_d07da0a5_fk_HomeLoan_` FOREIGN KEY (`hlproperty_id`) REFERENCES `homeloan_hlproperty` (`id`),
  ADD CONSTRAINT `HomeLoan_hlproperty__stageofconstruction__d0075ae0_fk_master_st` FOREIGN KEY (`stageofconstruction_id`) REFERENCES `master_stageofconstruction` (`id`);

--
-- Constraints for table `homeloan_income`
--
ALTER TABLE `homeloan_income`
  ADD CONSTRAINT `HomeLoan_income_bank_id_id_cb549c07_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_income_product_id_e3d02522_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_incomefoir`
--
ALTER TABLE `homeloan_incomefoir`
  ADD CONSTRAINT `HomeLoan_incomefoir_bank_id_id_74b3dd86_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_loantowardsvaluation`
--
ALTER TABLE `homeloan_loantowardsvaluation`
  ADD CONSTRAINT `HomeLoan_loantowards_bank_id_id_66e8e6c6_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_loantowards_product_id_ff6a24b0_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_ltvresale`
--
ALTER TABLE `homeloan_ltvresale`
  ADD CONSTRAINT `HomeLoan_ltvresale_bank_id_id_d43026b7_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_negativeemployerprofile`
--
ALTER TABLE `homeloan_negativeemployerprofile`
  ADD CONSTRAINT `HomeLoan_negativeemp_bank_id_id_61e798e0_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_obligation`
--
ALTER TABLE `homeloan_obligation`
  ADD CONSTRAINT `HomeLoan_obligation_bank_id_id_a4610be2_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_obligation_product_id_813b4df3_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_otherdetails`
--
ALTER TABLE `homeloan_otherdetails`
  ADD CONSTRAINT `HomeLoan_otherdetail_bank_id_id_f04796d2_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_otherdetail_product_id_d6bad9a9_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `homeloan_otherdetailsroi`
--
ALTER TABLE `homeloan_otherdetailsroi`
  ADD CONSTRAINT `HomeLoan_otherdetail_bank_id_id_2c28cb46_fk_HomeLoan_` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`);

--
-- Constraints for table `homeloan_productsandpolicy`
--
ALTER TABLE `homeloan_productsandpolicy`
  ADD CONSTRAINT `HomeLoan_productsand_bank_name_id_4a1a65bc_fk_master_ba` FOREIGN KEY (`bank_name_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `HomeLoan_productsand_prod_name_id_da8fd49d_fk_master_pr` FOREIGN KEY (`prod_name_id`) REFERENCES `master_product` (`id`),
  ADD CONSTRAINT `HomeLoan_productsand_sub_product_id_a8058803_fk_master_su` FOREIGN KEY (`sub_product_id`) REFERENCES `master_subproduct` (`id`);

--
-- Constraints for table `homeloan_property`
--
ALTER TABLE `homeloan_property`
  ADD CONSTRAINT `HomeLoan_property_bank_id_id_a6305af2_fk_HomeLoan_bank_bank_id` FOREIGN KEY (`bank_id_id`) REFERENCES `homeloan_bank` (`bank_id`),
  ADD CONSTRAINT `HomeLoan_property_product_id_872ddea3_fk_HomeLoan_` FOREIGN KEY (`product_id`) REFERENCES `homeloan_productsandpolicy` (`prod_id`);

--
-- Constraints for table `master_bankcategory`
--
ALTER TABLE `master_bankcategory`
  ADD CONSTRAINT `master_bankcategory_bank_name_id_f92580d6_fk_master_bankname_id` FOREIGN KEY (`bank_name_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `master_bankcategory_category_id_927c0c1a_fk_master_co` FOREIGN KEY (`category_id`) REFERENCES `master_companycatergorytypes` (`id`),
  ADD CONSTRAINT `master_bankcategory_company_name_id_7383aa40_fk_master_co` FOREIGN KEY (`company_name_id`) REFERENCES `master_companyname` (`id`);

--
-- Constraints for table `master_city`
--
ALTER TABLE `master_city`
  ADD CONSTRAINT `master_city_state_id_5e69920c_fk_master_state_id` FOREIGN KEY (`state_id`) REFERENCES `master_state` (`id`);

--
-- Constraints for table `master_comissionrates`
--
ALTER TABLE `master_comissionrates`
  ADD CONSTRAINT `master_comissionrate_Commissiontype_id_439ebdd3_fk_master_co` FOREIGN KEY (`Commissiontype_id`) REFERENCES `master_commission` (`id`);

--
-- Constraints for table `master_companycatergorytypes_banks`
--
ALTER TABLE `master_companycatergorytypes_banks`
  ADD CONSTRAINT `master_companycaterg_bankname_id_9d0b105f_fk_master_ba` FOREIGN KEY (`bankname_id`) REFERENCES `master_bankname` (`id`),
  ADD CONSTRAINT `master_companycaterg_companycatergorytype_d6dea14b_fk_master_co` FOREIGN KEY (`companycatergorytypes_id`) REFERENCES `master_companycatergorytypes` (`id`);

--
-- Constraints for table `master_foir_data_tenure_foirs`
--
ALTER TABLE `master_foir_data_tenure_foirs`
  ADD CONSTRAINT `master_foir_data_ten_foir_data_id_3599a6fb_fk_master_fo` FOREIGN KEY (`foir_data_id`) REFERENCES `master_foir_data` (`id`),
  ADD CONSTRAINT `master_foir_data_ten_pertenure_foir_data__be182c54_fk_master_pe` FOREIGN KEY (`pertenure_foir_data_id`) REFERENCES `master_pertenure_foir_data` (`id`);

--
-- Constraints for table `master_foir_info_foir_data`
--
ALTER TABLE `master_foir_info_foir_data`
  ADD CONSTRAINT `master_foir_info_foi_foir_data_id_987b1dd1_fk_master_fo` FOREIGN KEY (`foir_data_id`) REFERENCES `master_foir_data` (`id`),
  ADD CONSTRAINT `master_foir_info_foi_foir_info_id_d2d687dd_fk_master_fo` FOREIGN KEY (`foir_info_id`) REFERENCES `master_foir_info` (`id`);

--
-- Constraints for table `master_multiplier_data_tenure_multipliers`
--
ALTER TABLE `master_multiplier_data_tenure_multipliers`
  ADD CONSTRAINT `master_multiplier_da_multiplier_data_id_35651a8c_fk_master_mu` FOREIGN KEY (`multiplier_data_id`) REFERENCES `master_multiplier_data` (`id`),
  ADD CONSTRAINT `master_multiplier_da_pertenure_multiplier_aab7aaa6_fk_master_pe` FOREIGN KEY (`pertenure_multiplier_data_id`) REFERENCES `master_pertenure_multiplier_data` (`id`);

--
-- Constraints for table `master_multiplier_info_multiplier_data`
--
ALTER TABLE `master_multiplier_info_multiplier_data`
  ADD CONSTRAINT `master_multiplier_in_multiplier_data_id_26d81a8b_fk_master_mu` FOREIGN KEY (`multiplier_data_id`) REFERENCES `master_multiplier_data` (`id`),
  ADD CONSTRAINT `master_multiplier_in_multiplier_info_id_652be233_fk_master_mu` FOREIGN KEY (`multiplier_info_id`) REFERENCES `master_multiplier_info` (`id`);

--
-- Constraints for table `master_pertenure_foir_data`
--
ALTER TABLE `master_pertenure_foir_data`
  ADD CONSTRAINT `master_pertenure_foi_associated_tenure_id_3dc29007_fk_master_te` FOREIGN KEY (`associated_tenure_id`) REFERENCES `master_tenure` (`id`);

--
-- Constraints for table `master_pertenure_multiplier_data`
--
ALTER TABLE `master_pertenure_multiplier_data`
  ADD CONSTRAINT `master_pertenure_mul_associated_tenure_id_c7a1e5bb_fk_master_te` FOREIGN KEY (`associated_tenure_id`) REFERENCES `master_tenure` (`id`);

--
-- Constraints for table `master_product_and_policy_master_foir_info`
--
ALTER TABLE `master_product_and_policy_master_foir_info`
  ADD CONSTRAINT `master_product_and_p_foir_info_id_e974df4f_fk_master_fo` FOREIGN KEY (`foir_info_id`) REFERENCES `master_foir_info` (`id`),
  ADD CONSTRAINT `master_product_and_p_product_and_policy_m_ea4d7cdf_fk_master_pr` FOREIGN KEY (`product_and_policy_master_id`) REFERENCES `master_product_and_policy_master` (`id`);

--
-- Constraints for table `master_product_and_policy_master_multiplier_info`
--
ALTER TABLE `master_product_and_policy_master_multiplier_info`
  ADD CONSTRAINT `master_product_and_p_multiplier_info_id_ac87e8ed_fk_master_mu` FOREIGN KEY (`multiplier_info_id`) REFERENCES `master_multiplier_info` (`id`),
  ADD CONSTRAINT `master_product_and_p_product_and_policy_m_a7d6ebe0_fk_master_pr` FOREIGN KEY (`product_and_policy_master_id`) REFERENCES `master_product_and_policy_master` (`id`);

--
-- Constraints for table `master_product_and_policy_master_rate_of_interest`
--
ALTER TABLE `master_product_and_policy_master_rate_of_interest`
  ADD CONSTRAINT `master_product_and_p_product_and_policy_m_18d8ab72_fk_master_pr` FOREIGN KEY (`product_and_policy_master_id`) REFERENCES `master_product_and_policy_master` (`id`),
  ADD CONSTRAINT `master_product_and_p_rateofinterest_info__4064f9f8_fk_master_ra` FOREIGN KEY (`rateofinterest_info_id`) REFERENCES `master_rateofinterest_info` (`id`);

--
-- Constraints for table `master_rateofinterest_info_additional_rate_info`
--
ALTER TABLE `master_rateofinterest_info_additional_rate_info`
  ADD CONSTRAINT `master_rateofinteres_additionalrate_info__d67d6b79_fk_master_ad` FOREIGN KEY (`additionalrate_info_id`) REFERENCES `master_additionalrate_info` (`id`),
  ADD CONSTRAINT `master_rateofinteres_rateofinterest_info__569f3eda_fk_master_ra` FOREIGN KEY (`rateofinterest_info_id`) REFERENCES `master_rateofinterest_info` (`id`);

--
-- Constraints for table `master_subproduct`
--
ALTER TABLE `master_subproduct`
  ADD CONSTRAINT `master_subproduct_product_id_c0fc3401_fk_master_product_id` FOREIGN KEY (`product_id`) REFERENCES `master_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
