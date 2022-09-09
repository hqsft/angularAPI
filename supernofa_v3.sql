-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 07:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supernofa_v3`
--

-- --------------------------------------------------------

--
-- Table structure for table `48hr_report`
--

CREATE TABLE `48hr_report` (
  `id` int(11) NOT NULL,
  `project_name` varchar(45) DEFAULT NULL,
  `project_address` varchar(45) DEFAULT NULL,
  `project_city` varchar(45) DEFAULT NULL,
  `project_county` varchar(45) DEFAULT NULL,
  `development_type` varchar(45) DEFAULT NULL,
  `sponsor_1` varchar(45) DEFAULT NULL,
  `entity_type_1` varchar(45) DEFAULT NULL,
  `sponsor_2` varchar(45) DEFAULT NULL,
  `entity_type_2` varchar(45) DEFAULT NULL,
  `lead_service_provider_name` varchar(45) DEFAULT NULL,
  `community_based_developer` varchar(45) DEFAULT NULL,
  `emerging_developer` varchar(45) DEFAULT NULL,
  `tribal` varchar(45) DEFAULT NULL,
  `non_tax_credit` varchar(45) DEFAULT NULL,
  `tax_credits` varchar(45) DEFAULT NULL,
  `operating_subsidy_1` varchar(45) DEFAULT NULL,
  `operating_subsidy_2` varchar(45) DEFAULT NULL,
  `geographic_area` varchar(45) DEFAULT NULL,
  `large_family` varchar(45) DEFAULT NULL,
  `senior` varchar(45) DEFAULT NULL,
  `special_needs` varchar(45) DEFAULT NULL,
  `farmworker` varchar(45) DEFAULT NULL,
  `at_high_risk` varchar(45) DEFAULT NULL,
  `iig_capital_improvement_project_type` varchar(45) DEFAULT NULL,
  `universal_points_self_score` varchar(45) DEFAULT NULL,
  `program_specific_points_self_score` varchar(45) DEFAULT NULL,
  `tiebreaker` varchar(45) DEFAULT NULL,
  `total_restricted_units` varchar(45) DEFAULT NULL,
  `total_units` varchar(45) DEFAULT NULL,
  `mhp_loan_amount` varchar(45) DEFAULT NULL,
  `fwhg_loan_amount` varchar(45) DEFAULT NULL,
  `iig_loan_amount` varchar(45) DEFAULT NULL,
  `vhhp_loan_amount` varchar(45) DEFAULT NULL,
  `total_project_cost` varchar(45) DEFAULT NULL,
  `pre_app_bool3` varchar(255) DEFAULT NULL,
  `pre_app_bool4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `48hr_report`
--

INSERT INTO `48hr_report` (`id`, `project_name`, `project_address`, `project_city`, `project_county`, `development_type`, `sponsor_1`, `entity_type_1`, `sponsor_2`, `entity_type_2`, `lead_service_provider_name`, `community_based_developer`, `emerging_developer`, `tribal`, `non_tax_credit`, `tax_credits`, `operating_subsidy_1`, `operating_subsidy_2`, `geographic_area`, `large_family`, `senior`, `special_needs`, `farmworker`, `at_high_risk`, `iig_capital_improvement_project_type`, `universal_points_self_score`, `program_specific_points_self_score`, `tiebreaker`, `total_restricted_units`, `total_units`, `mhp_loan_amount`, `fwhg_loan_amount`, `iig_loan_amount`, `vhhp_loan_amount`, `total_project_cost`, `pre_app_bool3`, `pre_app_bool4`) VALUES
(33, 'Project Overview, Line 100', 'Project Overview, Line 100', 'Project Overview, Line 101', 'Project Overview, Line 101', 'Project Overview, Line 102', 'Project Overview, Line 149', 'Project Overview, Line 150', 'Project Overview, Line 149', 'Project Overview, Line 150', 'S1- Supportive Service Plan, line 65', 'Project Overview, Line 54-75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'project_dev_type.type', 'organizations.name', 'organization_types.type', 'Project Overview, Line 149', 'Project Overview, Line 150', 'lsp.name', 'submission_questions_answers.answer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'New Construction', '', '', '', 'Project Overview, Line 150', 'lsp.name', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'Rehabilitation', '', '', '', 'Project Overview, Line 150', 'lsp.name', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'Acquisition & Rehabilitation', '', '', '', 'Project Overview, Line 150', 'lsp.name', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'New Construction & Acq/Rehab', '', '', '', 'Project Overview, Line 150', 'lsp.name', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'Conversion/Adaptive Reuse', '', '', '', 'Project Overview, Line 150', 'lsp.name', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'projects.project_name', 'postal_addresses.street_1', 'cities.city_name', 'counties.county_name', 'Conversion/Adaptive Reuse', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `excel_fields`
--

CREATE TABLE `excel_fields` (
  `id` bigint(20) NOT NULL,
  `cell_name` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) NOT NULL,
  `tab_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `excel_fields`
--

INSERT INTO `excel_fields` (`id`, `cell_name`, `field_name`, `tab_name`) VALUES
(1, 'B10', 'mhp_bool', 'project_overview'),
(2, 'AL10', 'iig_bool', 'project_overview'),
(3, 'B12', 'tran_orient', 'project_overview'),
(4, 'AL12', 'housing_cali', 'project_overview'),
(5, 'B14', 'fwhg_bool', 'project_overview'),
(6, 'AL14', 'vhhp_bool', 'project_overview'),
(7, 'B18', 'capital_improvement_project_bool', 'project_overview'),
(8, 'W19', 'program_guidelines', 'project_overview'),
(9, 'S20', 'is_cip', 'project_overview'),
(10, 'AL21', 'cip_integral_to_qip_file', 'project_overview'),
(11, 'AL22', 'gov_code_65585', 'project_overview'),
(12, 'AL24', 'gov_code_65400', 'project_overview'),
(13, 'V25', 'is_qip', 'project_overview'),
(14, 'B26', 'qip_desc', 'project_overview'),
(15, 'AL27', 'urban_area', 'project_overview'),
(16, 'B29', 'blank_2', 'project_overview'),
(17, 'AD30', 'requirements', 'project_overview'),
(18, 'X31', 'agr_households', 'project_overview'),
(19, 'AG32', 'lowe_inc_agr_households', 'project_overview'),
(20, 'AF33', 'non_assisted_units_agr_households', 'project_overview'),
(21, 'AL34', 'eligible_project_type_sponsor_ack', 'project_overview'),
(22, 'B36', 'mhp_high_risk_bool', 'project_overview'),
(23, 'V38', '7302_e_5_bool', 'project_overview'),
(24, 'B40', 'mhp_large_fam_bool', 'project_overview'),
(25, 'V41', '7302_e_1_bool', 'project_overview'),
(26, 'B43', 'mhp_senior_bool', 'project_overview'),
(27, 'V44', '7302_e_3_bool', 'project_overview'),
(28, 'B46', 'mhp_special_needs_bool', 'project_overview'),
(29, 'Y48', '7302_e_2_f_g', 'project_overview'),
(30, 'AL49', 'integration_plan', 'project_overview'),
(31, 'B51', 'supportive_housing_bool', 'project_overview'),
(32, 'B53', 'transitional_housing_bool', 'project_overview'),
(33, 'AL54', 'transitional_housing', 'project_overview'),
(34, 'M57', 'tribal_bool', 'project_overview'),
(35, 'V58', 'proj_loc', 'project_overview'),
(36, 'AL59', 'home_prog', 'project_overview'),
(37, 'AL60', 'indian_country', 'project_overview'),
(38, 'AL61', 'fee_land', 'project_overview'),
(39, 'R63', 'new_community_bool', 'project_overview'),
(40, 'AL64', 'ncbd_exp', 'project_overview'),
(41, 'Q66', 'community_bool', 'project_overview'),
(42, 'AL67', 'experience_req', 'project_overview'),
(43, 'AL68', 'cdb_exp', 'project_overview'),
(44, 'O70', 'emerging_bool', 'project_overview'),
(45, 'AL71', 'experience_req_7301', 'project_overview'),
(46, 'AL72', 'ed_exp', 'project_overview'),
(47, 'AL74', 'contracting_exp_developer', 'project_overview'),
(48, 'AL75', 'spondev_cont_agree', 'project_overview'),
(49, 'AL78', 'app_eligible_costs', 'project_overview'),
(50, 'AL79', 'broadband_service_capability', 'project_overview'),
(51, 'AL80', 'capital_asset_rel_exp', 'project_overview'),
(52, 'AL81', 'assisted_unit_req_bool', 'project_overview'),
(53, 'AL82', '7302_b_bool', 'project_overview'),
(54, 'AL83', 'multi_dept_funding_sources', 'project_overview'),
(55, 'AL84', '7302_i_bool', 'project_overview'),
(56, 'AL85', '7302_c_bool', 'project_overview'),
(57, 'AL86', 'emergency_repairs', 'project_overview'),
(58, 'AL87', 'proj_timeline', 'project_overview'),
(59, 'AL88', 'leg_letter', 'project_overview'),
(60, 'B91', 'proj_desc', 'project_overview'),
(61, 'B94', 'iig_capital_imp_proj', 'project_overview'),
(62, 'F97', 'project_name', 'project_overview'),
(63, 'Y97', 'project_address', 'project_overview'),
(64, 'F98', 'project_county', 'project_overview'),
(65, 'O98', 'project_city', 'project_overview'),
(66, 'Y98', 'project_zip', 'project_overview'),
(67, 'I99', 'project_dev_type', 'project_overview'),
(68, 'AL101', 'rehab_desc', 'project_overview'),
(69, 'AL102', 'pna_cna', 'project_overview'),
(70, 'AL103', 'rent_roll', 'project_overview'),
(71, 'AL60', 'internet_bool', 'project_overview'),
(72, 'B105', 'apn1', 'project_overview'),
(73, 'H105', 'apn2', 'project_overview'),
(74, 'N105', 'apn3', 'project_overview'),
(75, 'U105', 'cens1', 'project_overview'),
(76, 'AB105', 'cens2', 'project_overview'),
(77, 'AH105', 'cens3', 'project_overview'),
(78, 'B106', 'apn4', 'project_overview'),
(79, 'H106', 'apn5', 'project_overview'),
(80, 'N106', 'apn6', 'project_overview'),
(81, 'U106', 'cens4', 'project_overview'),
(82, 'AB106', 'cens5', 'project_overview'),
(83, 'AH106', 'cens6', 'project_overview'),
(84, 'B107', 'apn7', 'project_overview'),
(85, 'H107', 'apn8', 'project_overview'),
(86, 'N107', 'apn9', 'project_overview'),
(87, 'U107', 'cens7', 'project_overview'),
(88, 'AB107', 'cens8', 'project_overview'),
(89, 'AH107', 'cens9', 'project_overview'),
(90, 'AL108', 'other_funds_bool', 'project_overview'),
(91, 'B110', 'past_proj_name', 'project_overview'),
(92, 'B112', 'otherhcdprog1', 'project_overview'),
(93, 'P112', 'otherhcdprogloanamt1', 'project_overview'),
(94, 'U112', 'otherhcdproggrantamt1', 'project_overview'),
(95, 'Z112', 'otherhcdprogawarded1', 'project_overview'),
(96, 'AC112', 'otherhcdprogdate1', 'project_overview'),
(97, 'B113', 'otherhcdprog2', 'project_overview'),
(98, 'P113', 'otherhcdprogloanamt2', 'project_overview'),
(99, 'U113', 'otherhcdproggrantamt2', 'project_overview'),
(100, 'Z113', 'otherhcdprogawarded2', 'project_overview'),
(101, 'AC113', 'otherhcdprogdate2', 'project_overview'),
(102, 'B114', 'otherhcdprog3', 'project_overview'),
(103, 'P114', 'otherhcdprogloanamt3', 'project_overview'),
(104, 'U114', 'otherhcdproggrantamt3', 'project_overview'),
(105, 'Z114', 'otherhcdprogawarded3', 'project_overview'),
(106, 'AC114', 'otherhcdprogdate3', 'project_overview'),
(107, 'H116', 'typeoftaxcredits', 'project_overview'),
(108, 'I117', 'creditequity', 'project_overview'),
(109, 'E118', 'federal_bool', 'project_overview'),
(110, 'T118', 'fedproposedcontribution', 'project_overview'),
(111, 'AL118', 'fedapprate', 'project_overview'),
(112, 'E119', 'proj_info_state_bool', 'project_overview'),
(113, 'T119', 'stproposedcontribution', 'project_overview'),
(114, 'AL119', 'stapprate', 'project_overview'),
(115, 'R120', 'proj_info_proposedmonth', 'project_overview'),
(116, 'AA120', 'proj_info_proposedyear', 'project_overview'),
(117, 'AK120', 'awardcreditreservation', 'project_overview'),
(118, 'R121', 'proj_info_proposedmonth2', 'project_overview'),
(119, 'AA121', 'proj_info_proposedyear2', 'project_overview'),
(120, 'AL122', 'tax_reserve', 'project_overview'),
(121, 'P124', 'umr8302_bool', 'project_overview'),
(122, 'AB124', 'demolished_ structures_bdrm', 'project_overview'),
(123, 'AL124', 'new_proj_bdrm', 'project_overview'),
(124, 'P125', 'proj_scattered_bool', 'project_overview'),
(125, 'V126', 'umr8303b_bool', 'project_overview'),
(126, 'B128', 'scatter_site_add1', 'project_overview'),
(127, 'U128', 'scatter_site_add2', 'project_overview'),
(128, 'B129', 'scatter_site_add3', 'project_overview'),
(129, 'U129', 'scatter_site_add4', 'project_overview'),
(130, 'F131', 'lihtc_units', 'project_overview'),
(131, 'H131', 'projectsitearea', 'project_overview'),
(132, 'Q131', 'proj_info_agerestriction', 'project_overview'),
(133, 'V131', 'proj_info_specialfacility', 'project_overview'),
(134, 'Z131', 'proj_info_tenuretype', 'project_overview'),
(135, 'AD131', 'proj_info_rentalsubsidy', 'project_overview'),
(136, 'AG131', 'proj_info_commercial_bool', 'project_overview'),
(137, 'AJ131', 'proj_info_relocation', 'project_overview'),
(138, 'I132', 'proj_info_operating_bool', 'project_overview'),
(139, 'Q132', 'proj_info_hud_project_bool', 'project_overview'),
(140, 'AD132', 'proj_info_demolition_required_bool', 'project_overview'),
(141, 'B134', 'proj_info_demolition_desc', 'project_overview'),
(142, 'AL135', 'hns_code_50199_21', 'project_overview'),
(143, 'AB136', 'rural_methodology', 'project_overview'),
(144, 'AL137', 'rural_status_det', 'project_overview'),
(145, 'AL138', 'proj_info_resource_area', 'project_overview'),
(146, 'Q140', 'proj_info_tractid', 'project_overview'),
(147, 'AE140', 'proj_info_opp_area_map_category', 'project_overview'),
(148, 'AL141', 'proj_info_opp_area_doc', 'project_overview'),
(149, 'P146', 'sp1_entity_name', 'project_overview'),
(150, 'I147', 'sp1sponsorshiptype', 'project_overview'),
(151, 'AE147', 'sp1organizationtype', 'project_overview'),
(152, 'AL148', 'sp1rental_housing_dev', 'project_overview'),
(153, 'AL149', 'sp1employ_exp_staff', 'project_overview'),
(154, 'AL150', 'sp1sufficient_fin_capacity', 'project_overview'),
(155, 'AL151', 'sp1dept_award', 'project_overview'),
(156, 'AL152', 'sp1sponsor_organization', 'project_overview'),
(157, 'B155', 'sp1staff_type1', 'project_overview'),
(158, 'F155', 'sp1emp_cons_name1', 'project_overview'),
(159, 'R155', 'sp1position_title1', 'project_overview'),
(160, 'Y155', 'sp1full_part_time1', 'project_overview'),
(161, 'AE155', 'sp1per_time_dedicated1', 'project_overview'),
(162, 'B156', 'sp1staff_type2', 'project_overview'),
(163, 'F156', 'sp1emp_cons_name2', 'project_overview'),
(164, 'R156', 'sp1position_title2', 'project_overview'),
(165, 'Y156', 'sp1full_part_time2', 'project_overview'),
(166, 'AE156', 'sp1per_time_dedicated2', 'project_overview'),
(167, 'B157', 'sp1staff_type3', 'project_overview'),
(168, 'F157', 'sp1emp_cons_name3', 'project_overview'),
(169, 'R157', 'sp1position_title3', 'project_overview'),
(170, 'Y157', 'sp1full_part_time3', 'project_overview'),
(171, 'AE157', 'sp1per_time_dedicated3', 'project_overview'),
(172, 'B158', 'sp1staff_type4', 'project_overview'),
(173, 'F158', 'sp1emp_cons_name4', 'project_overview'),
(174, 'R158', 'sp1position_title4', 'project_overview'),
(175, 'Y158', 'sp1full_part_time4', 'project_overview'),
(176, 'AE158', 'sp1per_time_dedicated4', 'project_overview'),
(177, 'B159', 'sp1staff_type5', 'project_overview'),
(178, 'F159', 'sp1emp_cons_name5', 'project_overview'),
(179, 'R159', 'sp1position_title5', 'project_overview'),
(180, 'Y159', 'sp1full_part_time5', 'project_overview'),
(181, 'AE159', 'sp1per_time_dedicated5', 'project_overview'),
(182, 'B160', 'sp1staff_type6', 'project_overview'),
(183, 'F160', 'sp1emp_cons_name6', 'project_overview'),
(184, 'R160', 'sp1position_title6', 'project_overview'),
(185, 'Y160', 'sp1full_part_time6', 'project_overview'),
(186, 'AE160', 'sp1per_time_dedicated6', 'project_overview'),
(187, 'AL161', 'spon1_cert_legal', 'project_overview'),
(188, 'AL162', 'spon1_auth_res', 'project_overview'),
(189, 'AL163', 'spon1_org_docs', 'project_overview'),
(190, 'AL164', 'spon1_org_chart', 'project_overview'),
(191, 'AL165', 'spon1_sig_block', 'project_overview'),
(192, 'AL166', 'spon1_cert_stand', 'project_overview'),
(193, 'AL167', 'spon1_tax_exempt', 'project_overview'),
(194, 'P169', 'sp2_entity_name', 'project_overview'),
(195, 'I170', 'sp2sponsorshiptype', 'project_overview'),
(196, 'AF170', 'sp2organizationtype', 'project_overview'),
(197, 'AL171', 'spon2_cert_legal', 'project_overview'),
(198, 'AL172', 'spon2_auth_res', 'project_overview'),
(199, 'AL173', 'spon2_org_docs', 'project_overview'),
(200, 'AL174', 'spon2_org_chart', 'project_overview'),
(201, 'AL175', 'spon2_sig_block', 'project_overview'),
(202, 'AL176', 'spon2_cert_stand', 'project_overview'),
(203, 'AL177', 'spon2_tax_exempt', 'project_overview'),
(204, 'P180', 'jv1_entity_name', 'project_overview'),
(205, 'AL181', 'joint_venture', 'project_overview'),
(206, 'AL182', 'jv1_cert_legal', 'project_overview'),
(207, 'AL183', 'jv1_auth_res', 'project_overview'),
(208, 'AL184', 'jv1_org_docs', 'project_overview'),
(209, 'AL185', 'jv1_org_chart', 'project_overview'),
(210, 'AL186', 'jv1_sig_block', 'project_overview'),
(211, 'AL187', 'jv1_cert_stand', 'project_overview'),
(212, 'AL188', 'jv1_tax_exempt', 'project_overview'),
(213, 'AL189', '7303_d_4_a_bool', 'project_overview'),
(214, 'AL190', '7303_d_4_b_bool', 'project_overview'),
(215, 'AL191', '7303_d_4_c_bool', 'project_overview'),
(216, 'AL192', '7303_d_4_d_bool', 'project_overview'),
(217, 'P197', 'jv2_entity_name', 'project_overview'),
(218, 'AL198', 'jv2_cert_legal', 'project_overview'),
(219, 'AL199', 'jv2_auth_res', 'project_overview'),
(220, 'AL200', 'jv2_org_docs', 'project_overview'),
(221, 'AL201', 'jv2_org_chart', 'project_overview'),
(222, 'AL202', 'jv2_sig_block', 'project_overview'),
(223, 'AL203', 'jv2_cert_stand', 'project_overview'),
(224, 'AL204', 'jv2_tax_exempt', 'project_overview'),
(225, 'G207', 'owner_borrower_legal_name', 'project_overview'),
(226, 'AL208', 'borrower_cert_legal', 'project_overview'),
(227, 'AL209', 'borrower_org_docs', 'project_overview'),
(228, 'AL210', 'borrower_org_chart', 'project_overview'),
(229, 'AL211', 'borrower_sig_block', 'project_overview'),
(230, 'AL212', 'borrower_payee_data', 'project_overview'),
(231, 'AL213', 'borrower_fiscal_tin', 'project_overview'),
(232, 'AL214', 'borrower_ein', 'project_overview'),
(233, 'AL215', 'borrower_cert_stand', 'project_overview'),
(234, 'AL216', 'borrower_tax_exempt', 'project_overview'),
(235, 'G219', 'mgplegal_name', 'project_overview'),
(236, 'AL220', 'mgp_cert_legal', 'project_overview'),
(237, 'AL221', 'mgp_org_docs', 'project_overview'),
(238, 'AL222', 'mgp_org_chart', 'project_overview'),
(239, 'AL223', 'mgp_sig_block', 'project_overview'),
(240, 'AL224', 'mgp_cert_stand', 'project_overview'),
(241, 'AL225', 'mgp_tax_exempt', 'project_overview'),
(242, 'G228', 'agp1legal_name', 'project_overview'),
(243, 'AL229', 'agp1_cert_legal', 'project_overview'),
(244, 'AL230', 'agp1_org_docs', 'project_overview'),
(245, 'AL231', 'agp1_org_chart', 'project_overview'),
(246, 'AL232', 'agp1_sig_block', 'project_overview'),
(247, 'AL233', 'agp1_cert_stand', 'project_overview'),
(248, 'AL234', 'agp1_tax_exempt', 'project_overview'),
(249, 'G237', 'agp2legal_name', 'project_overview'),
(250, 'AL238', 'agp2_cert_legal', 'project_overview'),
(251, 'AL239', 'agp2_org_docs', 'project_overview'),
(252, 'AL240', 'agp2_org_chart', 'project_overview'),
(253, 'AL241', 'agp2_sig_block', 'project_overview'),
(254, 'AL242', 'agp2_cert_stand', 'project_overview'),
(255, 'AL243', 'agp2_tax_exempt', 'project_overview'),
(256, 'AL249', 'umr_8303_bool', 'project_overview'),
(257, 'B251', 'site_control_type', 'project_overview'),
(258, 'Q251', 'site_control_date', 'project_overview'),
(259, 'T251', 'site_control_expires', 'project_overview'),
(260, 'W251', 'site_control_extension', 'project_overview'),
(261, 'AD251', 'site_control_purchase', 'project_overview'),
(262, 'B253', 'site_control_current_owner', 'project_overview'),
(263, 'Q253', 'site_control_owner_address', 'project_overview'),
(264, 'AB253', 'site_control_city', 'project_overview'),
(265, 'AH253', 'site_control_state', 'project_overview'),
(266, 'AK253', 'site_control_zip', 'project_overview'),
(267, 'B255', 'site_control_specialcircumstances', 'project_overview'),
(268, 'AL256', 'site_control_ground_bool', 'project_overview'),
(269, 'B258', 'site_control_lessor', 'project_overview'),
(270, 'U258', 'site_control_term', 'project_overview'),
(271, 'AI258', 'site_control_annualpayment', 'project_overview'),
(272, 'B260', 'site_control_prop_transfer_details', 'project_overview'),
(273, 'AL261', 'site_control', 'project_overview'),
(274, 'AL262', 'preliminary_title_report', 'project_overview'),
(275, 'AL263', 'appraisal', 'project_overview'),
(276, 'B267', 'site_unit_info_currentuse', 'project_overview'),
(277, 'N267', 'site_unit_info_proposed', 'project_overview'),
(278, 'AB267', 'site_unit_info_site_bool', 'project_overview'),
(279, 'AG267', 'site_unit_info_year_improvements', 'project_overview'),
(280, 'B269', 'site_unit_info_rent_control_bool', 'project_overview'),
(281, 'F269', 'site_unit_info_road_bool', 'project_overview'),
(282, 'P268', 'site_unit_info_sponsornotes', 'project_overview'),
(283, 'B271', 'site_unit_info_poor_drainage', 'project_overview'),
(284, 'K271', 'site_unit_info_erosion_problems', 'project_overview'),
(285, 'T271', 'site_unit_info_unstable_soil', 'project_overview'),
(286, 'AC271', 'site_unit_info_underground_tanks', 'project_overview'),
(287, 'B272', 'site_unit_info_possible_paint', 'project_overview'),
(288, 'K272', 'site_unit_info_possible_asbestos', 'project_overview'),
(289, 'T272', 'site_unit_info_wetlands_area', 'project_overview'),
(290, 'AC272', 'site_unit_info_site_stream', 'project_overview'),
(291, 'B273', 'site_unit_info_flood_plain', 'project_overview'),
(292, 'K273', 'site_unit_info_soil_pollution', 'project_overview'),
(293, 'T273', 'site_unit_info_grade5', 'project_overview'),
(294, 'AC273', 'site_unit_info_grade_over', 'project_overview'),
(295, 'B274', 'site_unit_info_airport_miles', 'project_overview'),
(296, 'K274', 'site_unit_info_possible_levels', 'project_overview'),
(297, 'T274', 'site_unit_info_abandoned_well', 'project_overview'),
(298, 'AC274', 'site_unit_info_railroad_tracks', 'project_overview'),
(299, 'B275', 'site_unit_info_unusual_ingress', 'project_overview'),
(300, 'K275', 'site_unit_info_high_table', 'project_overview'),
(301, 'T275', 'site_unit_info_retaining_wall', 'project_overview'),
(302, 'AC275', 'site_unit_info_ground_contamination', 'project_overview'),
(303, 'D277', 'site_unit_info_west', 'project_overview'),
(304, 'D278', 'site_unit_info_east', 'project_overview'),
(305, 'D279', 'site_unit_info_north', 'project_overview'),
(306, 'D280', 'site_unit_info_south', 'project_overview'),
(307, 'F281', 'site_unit_info_unique_features', 'project_overview'),
(308, 'E285', 'exbeds', 'project_overview'),
(309, 'H285', 'exbdrm0', 'project_overview'),
(310, 'J285', 'exbdrm1', 'project_overview'),
(311, 'M285', 'exbdrm2', 'project_overview'),
(312, 'P285', 'exbdrm3', 'project_overview'),
(313, 'S285', 'exbdrm4', 'project_overview'),
(314, 'V285', 'exbdrm5', 'project_overview'),
(315, 'AD285', 'extotalbuildings', 'project_overview'),
(316, 'AG285', 'extotalmgrunits', 'project_overview'),
(317, 'AJ285', 'extotalparkingspaces', 'project_overview'),
(318, 'E286', 'pbeds', 'project_overview'),
(319, 'H286', 'pbdrm0', 'project_overview'),
(320, 'J286', 'pbdrm1', 'project_overview'),
(321, 'M286', 'pbdrm2', 'project_overview'),
(322, 'P286', 'pbdrm3', 'project_overview'),
(323, 'S286', 'pbdrm4', 'project_overview'),
(324, 'V286', 'pbdrm5', 'project_overview'),
(325, 'AD286', 'ptotalbuildings', 'project_overview'),
(326, 'AG286', 'ptotalmgrunits', 'project_overview'),
(327, 'AJ286', 'ptotalparkingspaces', 'project_overview'),
(328, 'I290', 'newconsttownhouseunits', 'project_overview'),
(329, 'K290', 'newconsttownhousestories', 'project_overview'),
(330, 'M290', 'newconsttownhousebldgs', 'project_overview'),
(331, 'O290', 'rehabtownhouseunits', 'project_overview'),
(332, 'Q290', 'rehabtownhousestories', 'project_overview'),
(333, 'S290', 'rehabtownhousebldgs', 'project_overview'),
(334, 'I291', 'newconstwalkupunits', 'project_overview'),
(335, 'K291', 'newconstwalkupstories', 'project_overview'),
(336, 'M291', 'newconstwalkupbldgs', 'project_overview'),
(337, 'O291', 'rehabwalkupunits', 'project_overview'),
(338, 'Q291', 'rehabwalkupstories', 'project_overview'),
(339, 'S291', 'rehabwalkupbldgs', 'project_overview'),
(340, 'I292', 'newconstmidriseunits', 'project_overview'),
(341, 'K292', 'newconstmidrisestories', 'project_overview'),
(342, 'M292', 'newconstmidrisebldgs', 'project_overview'),
(343, 'O292', 'rehabmidriseunits', 'project_overview'),
(344, 'Q292', 'rehabmidrisestories', 'project_overview'),
(345, 'S292', 'rehabmidrisebldgs', 'project_overview'),
(346, 'I293', 'newconsthighriseunits', 'project_overview'),
(347, 'K293', 'newconsthighrisestories', 'project_overview'),
(348, 'M293', 'newconsthighrisebldgs', 'project_overview'),
(349, 'O293', 'rehabhighriseunits', 'project_overview'),
(350, 'Q293', 'rehabhighrisestories', 'project_overview'),
(351, 'S293', 'rehabhighrisebldgs', 'project_overview'),
(352, 'I294', 'newconstdetachedunits', 'project_overview'),
(353, 'K294', 'newconstdetachedstories', 'project_overview'),
(354, 'M294', 'newconstdetachedbldgs', 'project_overview'),
(355, 'O294', 'rehabdetachedunits', 'project_overview'),
(356, 'Q294', 'rehabdetachedstories', 'project_overview'),
(357, 'S294', 'rehabdetachedbldgs', 'project_overview'),
(358, 'I295', 'newconstduplexunits', 'project_overview'),
(359, 'K295', 'newconstduplexstories', 'project_overview'),
(360, 'M295', 'newconstduplexbldgs', 'project_overview'),
(361, 'O295', 'rehabduplexunits', 'project_overview'),
(362, 'Q295', 'rehabduplexstories', 'project_overview'),
(363, 'S295', 'rehabduplexbldgs', 'project_overview'),
(364, 'I296', 'newconstnonresunits', 'project_overview'),
(365, 'K296', 'newconstnonresstories', 'project_overview'),
(366, 'M296', 'newconstnonresbldgs', 'project_overview'),
(367, 'O296', 'rehabnonresunits', 'project_overview'),
(368, 'Q296', 'rehabnonresstories', 'project_overview'),
(369, 'S296', 'rehabnonresbldgs', 'project_overview'),
(370, 'Y289', '0bdrmbaths', 'project_overview'),
(371, 'AA289', '0bdrmlayout', 'project_overview'),
(372, 'AD289', '0bdrmsqft', 'project_overview'),
(373, 'Y290', '1bdrmbaths', 'project_overview'),
(374, 'AA290', '1bdrmlayout', 'project_overview'),
(375, 'AD290', '1bdrmsqft', 'project_overview'),
(376, 'Y291', '2bdrmbaths', 'project_overview'),
(377, 'AA291', '2bdrmlayout', 'project_overview'),
(378, 'AD291', '2bdrmsqft', 'project_overview'),
(379, 'Y292', '3bdrmbaths', 'project_overview'),
(380, 'AA292', '3bdrmlayout', 'project_overview'),
(381, 'AD292', '3bdrmsqft', 'project_overview'),
(382, 'Y293', '4bdrmbaths', 'project_overview'),
(383, 'AA293', '4bdrmlayout', 'project_overview'),
(384, 'AD293', '4bdrmsqft', 'project_overview'),
(385, 'Y294', '5bdrmbaths', 'project_overview'),
(386, 'AA294', '5bdrmlayout', 'project_overview'),
(387, 'AD294', '5bdrmsqft', 'project_overview'),
(388, 'Y295', '6bdrmbaths', 'project_overview'),
(389, 'AA295', '6bdrmlayout', 'project_overview'),
(390, 'AD295', '6bdrmsqft', 'project_overview'),
(391, 'Y296', '7bdrmbaths', 'project_overview'),
(392, 'AA296', '7bdrmlayout', 'project_overview'),
(393, 'AD296', '7bdrmsqft', 'project_overview'),
(394, 'Y297', '8bdrmbaths', 'project_overview'),
(395, 'AA297', '8bdrmlayout', 'project_overview'),
(396, 'AD297', '8bdrmsqft', 'project_overview'),
(397, 'Y298', '9bdrmbaths', 'project_overview'),
(398, 'AA298', '9bdrmlayout', 'project_overview'),
(399, 'AD298', '9bdrmsqft', 'project_overview'),
(400, 'B301', 'site_unit_info_sponsornotes_2', 'project_overview'),
(401, 'B305', 'amenities_airconditioning', 'project_overview'),
(402, 'J305', 'amenities_refrigerator', 'project_overview'),
(403, 'R305', 'amenities_range', 'project_overview'),
(404, 'Z305', 'amenities_microwave', 'project_overview'),
(405, 'AH305', 'amenities_disposal', 'project_overview'),
(406, 'B306', 'amenities_dishwasher', 'project_overview'),
(407, 'J306', 'amenities_walkincloset', 'project_overview'),
(408, 'R306', 'amenities_fencedrearyard', 'project_overview'),
(409, 'Z306', 'amenities_ceilingfans', 'project_overview'),
(410, 'AH306', 'amenities_curtains_blinds', 'project_overview'),
(411, 'B307', 'amenities_fireplace', 'project_overview'),
(412, 'J307', 'amenities_emergencycall', 'project_overview'),
(413, 'R307', 'amenities_freecabletv', 'project_overview'),
(414, 'Z307', 'amenities_storagearea', 'project_overview'),
(415, 'AH307', 'amenities_lofts', 'project_overview'),
(416, 'B308', 'amenities_balcony', 'project_overview'),
(417, 'J308', 'amenities_patio', 'project_overview'),
(418, 'R308', 'amenities_otheramen1', 'project_overview'),
(419, 'Z308', 'amenities_otheramen2', 'project_overview'),
(420, 'AH308', 'amenities_otheranem3', 'project_overview'),
(421, 'B311', 'proj_amenities_elevators', 'project_overview'),
(422, 'H311', 'proj_amenities_elevators_input', 'project_overview'),
(423, 'K311', 'proj_amenities_laundry_rms', 'project_overview'),
(424, 'Q311', 'proj_amenities_laundry_rms_input', 'project_overview'),
(425, 'T311', 'proj_amenities_washers', 'project_overview'),
(426, 'Z311', 'proj_amenities_washers_input', 'project_overview'),
(427, 'AC311', 'proj_amenities_dryers', 'project_overview'),
(428, 'AI311', 'proj_amenities_dryers_input', 'project_overview'),
(429, 'B314', 'proj_amenities_laundry_hookup', 'project_overview'),
(430, 'B316', 'proj_amenities_community_room', 'project_overview'),
(431, 'L316', 'proj_amenities_community_kitchen', 'project_overview'),
(432, 'V316', 'proj_amenities_computer_room', 'project_overview'),
(433, 'AF316', 'proj_amenities_highspeed_internet', 'project_overview'),
(434, 'B317', 'proj_amenities_fitness_room', 'project_overview'),
(435, 'L317', 'proj_amenities_picnic_bbqarea', 'project_overview'),
(436, 'V317', 'proj_amenities_totlot_playground', 'project_overview'),
(437, 'AF317', 'proj_amenities_sports_court', 'project_overview'),
(438, 'B318', 'proj_amenities_tennis_court', 'project_overview'),
(439, 'L318', 'proj_amenities_swimming_pool', 'project_overview'),
(440, 'V318', 'proj_amenities_jacuzzi_sauna', 'project_overview'),
(441, 'AF318', 'proj_amenities_bike_parking', 'project_overview'),
(442, 'B319', 'proj_amenities_other1', 'project_overview'),
(443, 'L319', 'proj_amenities_other2', 'project_overview'),
(444, 'V319', 'proj_amenities_other3', 'project_overview'),
(445, 'AF319', 'proj_amenities_other4', 'project_overview'),
(446, 'B322', 'sec_other_gate_entry', 'project_overview'),
(447, 'J322', 'sec_other_bldg_card_key', 'project_overview'),
(448, 'R322', 'sec_other_security_patrol', 'project_overview'),
(449, 'Z322', 'sec_other_security_camaras', 'project_overview'),
(450, 'B325', 'sec_other_describe_mandatory', 'project_overview'),
(451, 'B328', 'sec_other_services', 'project_overview'),
(452, 'G332', 'mis_info_residential_units', 'project_overview'),
(453, 'P332', 'mis_info_community_room', 'project_overview'),
(454, 'X332', 'mis_info_leasing_office', 'project_overview'),
(455, 'AH332', 'mis_info_additional_space', 'project_overview'),
(456, 'G335', 'mis_info_maintenance_shop', 'project_overview'),
(457, 'P335', 'mis_info_childcare_center', 'project_overview'),
(458, 'X335', 'mis_info_service_area', 'project_overview'),
(459, 'AH335', 'mis_info_service_office', 'project_overview'),
(460, 'G336', 'mis_info_maintenance_other', 'project_overview'),
(461, 'P336', 'mis_info_childcare_other', 'project_overview'),
(462, 'X336', 'mis_info_service_other', 'project_overview'),
(463, 'AH336', 'mis_info_office_other', 'project_overview'),
(464, 'I341', 'res_uncovered_parking', 'project_overview'),
(465, 'R341', 'covered_parking', 'project_overview'),
(466, 'AA341', 'enclosed_parking', 'project_overview'),
(467, 'AJ341', 'tenant_spaces', 'project_overview'),
(468, 'H345', 'uncovered_parking2', 'project_overview'),
(469, 'P345', 'covered_parking2', 'project_overview'),
(470, 'X345', 'enclosed_parking2', 'project_overview'),
(471, 'AJ345', 'total_handicap', 'project_overview'),
(472, 'G350', 'commercial_area', 'project_overview'),
(473, 'M350', 'comm_offices', 'project_overview'),
(474, 'U350', 'childcare_center2', 'project_overview'),
(475, 'AC350', 'storage_space', 'project_overview'),
(476, 'AK350', 'commercial_other', 'project_overview'),
(477, 'F354', 'uncovered', 'project_overview'),
(478, 'O354', 'covered_spaces', 'project_overview'),
(479, 'B357', 'commercial_patrons', 'project_overview'),
(480, 'K361', 'no_ofunit', 'project_overview'),
(481, 'K362', 'weekly_assume', 'project_overview'),
(482, 'K366', 'res_monthly_incom', 'project_overview'),
(483, 'K370', 'comm_monthly_incom', 'project_overview'),
(484, 'P362', 'resident_1', 'project_overview'),
(485, 'Y362', 'lease_terms_1', 'project_overview'),
(486, 'AC362', 'sq_feet_1', 'project_overview'),
(487, 'AF362', 'rent_sf_1', 'project_overview'),
(488, 'P363', 'resident_2', 'project_overview'),
(489, 'Y363', 'lease_terms_2', 'project_overview'),
(490, 'AC363', 'sq_feet_2', 'project_overview'),
(491, 'AF363', 'rent_sf_2', 'project_overview'),
(492, 'P364', 'resident_3', 'project_overview'),
(493, 'Y364', 'lease_terms_3', 'project_overview'),
(494, 'AC364', 'sq_feet_3', 'project_overview'),
(495, 'AF364', 'rent_sf_3', 'project_overview'),
(496, 'P365', 'resident_4', 'project_overview'),
(497, 'Y365', 'lease_terms_4', 'project_overview'),
(498, 'AC365', 'sq_feet_4', 'project_overview'),
(499, 'AF365', 'rent_sf_4', 'project_overview'),
(500, 'P367', 'commercial_1', 'project_overview'),
(501, 'Y367', 'comm_lease_terms_1', 'project_overview'),
(502, 'AC367', 'comm_sq_feet_1', 'project_overview'),
(503, 'AF367', 'comm_rent_sf_1', 'project_overview'),
(504, 'P368', 'commercial_2', 'project_overview'),
(505, 'Y368', 'comm_lease_terms_2', 'project_overview'),
(506, 'AC368', 'comm_sq_feet_2', 'project_overview'),
(507, 'AF368', 'comm_rent_sf_2', 'project_overview'),
(508, 'P369', 'commercial_3', 'project_overview'),
(509, 'Y369', 'comm_lease_terms_3', 'project_overview'),
(510, 'AC369', 'comm_sq_feet_3', 'project_overview'),
(511, 'AF369', 'comm_rent_sf_3', 'project_overview'),
(512, 'P370', 'commercial_4', 'project_overview'),
(513, 'Y370', 'comm_lease_terms_4', 'project_overview'),
(514, 'AC370', 'comm_sq_feet_4', 'project_overview'),
(515, 'AF370', 'comm_rent_sf_4', 'project_overview'),
(516, 'G376', 'u_type_heating', 'project_overview'),
(517, 'G377', 'u_type_cooking', 'project_overview'),
(518, 'G378', 'u_type_otherelectric', 'project_overview'),
(519, 'G379', 'u_type_airconditioning', 'project_overview'),
(520, 'G380', 'u_type_waterheating', 'project_overview'),
(521, 'G381', 'u_type_water', 'project_overview'),
(522, 'G382', 'u_type_sewer', 'project_overview'),
(523, 'G383', 'u_type_trash', 'project_overview'),
(524, 'G384', 'u_type_other_utility', 'project_overview'),
(525, 'M376', 'utility_allowance_heating', 'project_overview'),
(526, 'M377', 'utility_allowance_cooking', 'project_overview'),
(527, 'M378', 'utility_allowance_otherelectric', 'project_overview'),
(528, 'M379', 'utility_allowance_airconditioning', 'project_overview'),
(529, 'M380', 'utility_allowance_waterheating', 'project_overview'),
(530, 'M381', 'utility_allowance_water', 'project_overview'),
(531, 'M382', 'utility_allowance_sewer', 'project_overview'),
(532, 'M383', 'utility_allowance_trash', 'project_overview'),
(533, 'M384', 'utility_allowance_other_utility', 'project_overview'),
(534, 'S376', 'heating_0bdrm', 'project_overview'),
(535, 'V376', 'heating_1bdrm', 'project_overview'),
(536, 'Y376', 'heating_2bdrm', 'project_overview'),
(537, 'AB376', 'heating_3bdrm', 'project_overview'),
(538, 'AE376', 'heating_4bdrm', 'project_overview'),
(539, 'AH376', 'heating_5bdrm', 'project_overview'),
(540, 'S377', 'cooking_0bdrm', 'project_overview'),
(541, 'V377', 'cooking_1bdrm', 'project_overview'),
(542, 'Y377', 'cooking_2bdrm', 'project_overview'),
(543, 'AB377', 'cooking_3bdrm', 'project_overview'),
(544, 'AE377', 'cooking_4bdrm', 'project_overview'),
(545, 'AH377', 'cooking_5bdrm', 'project_overview'),
(546, 'S378', 'otherelectric_0bdrm', 'project_overview'),
(547, 'V378', 'otherelectric_1bdrm', 'project_overview'),
(548, 'Y378', 'otherelectric_2bdrm', 'project_overview'),
(549, 'AB378', 'otherelectric_3bdrm', 'project_overview'),
(550, 'AE378', 'otherelectric_4bdrm', 'project_overview'),
(551, 'AH378', 'otherelectric_5bdrm', 'project_overview'),
(552, 'S379', 'airconditioning_0bdrm', 'project_overview'),
(553, 'V379', 'airconditioning_1bdrm', 'project_overview'),
(554, 'Y379', 'airconditioning_2bdrm', 'project_overview'),
(555, 'AB379', 'airconditioning_3bdrm', 'project_overview'),
(556, 'AE379', 'airconditioning_4bdrm', 'project_overview'),
(557, 'AH379', 'airconditioning_5bdrm', 'project_overview'),
(558, 'S380', 'waterheating_0bdrm', 'project_overview'),
(559, 'V380', 'waterheating_1bdrm', 'project_overview'),
(560, 'Y380', 'waterheating_2bdrm', 'project_overview'),
(561, 'AB380', 'waterheating_3bdrm', 'project_overview'),
(562, 'AE380', 'waterheating_4bdrm', 'project_overview'),
(563, 'AH380', 'waterheating_5bdrm', 'project_overview'),
(564, 'S381', 'water_0bdrm', 'project_overview'),
(565, 'V381', 'water_1bdrm', 'project_overview'),
(566, 'Y381', 'water_2bdrm', 'project_overview'),
(567, 'AB381', 'water_3bdrm', 'project_overview'),
(568, 'AE381', 'water_4bdrm', 'project_overview'),
(569, 'AH381', 'water_5bdrm', 'project_overview'),
(570, 'S382', 'sewer_0bdrm', 'project_overview'),
(571, 'V382', 'sewer_1bdrm', 'project_overview'),
(572, 'Y382', 'sewer_2bdrm', 'project_overview'),
(573, 'AB382', 'sewer_3bdrm', 'project_overview'),
(574, 'AE382', 'sewer_4bdrm', 'project_overview'),
(575, 'AH382', 'sewer_5bdrm', 'project_overview'),
(576, 'S383', 'trash_0bdrm', 'project_overview'),
(577, 'V383', 'trash_1bdrm', 'project_overview'),
(578, 'Y383', 'trash_2bdrm', 'project_overview'),
(579, 'AB383', 'trash_3bdrm', 'project_overview'),
(580, 'AE383', 'trash_4bdrm', 'project_overview'),
(581, 'AH383', 'trash_5bdrm', 'project_overview'),
(582, 'S384', 'other_utility_0bdrm', 'project_overview'),
(583, 'V384', 'other_utility_1bdrm', 'project_overview'),
(584, 'Y384', 'other_utility_2bdrm', 'project_overview'),
(585, 'AB384', 'other_utility_3bdrm', 'project_overview'),
(586, 'AE384', 'other_utility_4bdrm', 'project_overview'),
(587, 'AH384', 'other_utility_5bdrm', 'project_overview'),
(588, 'B388', 'localpha', 'project_overview'),
(589, 'J388', 'utility_allowances_name', 'project_overview'),
(590, 'AJ388', 'utility_allowances_effective_date', 'project_overview'),
(591, 'B389', 'source_hud', 'project_overview'),
(592, 'G389', 'source_utilitycompany', 'project_overview'),
(593, 'Q389', 'source_other_bool', 'project_overview'),
(594, 'W389', 'source_otherutilityallowances', 'project_overview'),
(595, 'B391', 'source_utilityallowancesponsornotes', 'project_overview'),
(596, 'AL392', 'utility_allowance', 'project_overview'),
(597, 'B397', '7208fwhgapplicants', 'project_overview'),
(598, 'B402', '7224fwhgapplicants', 'project_overview'),
(599, 'B408', '7210fwhgapplicants', 'project_overview'),
(600, 'AL412', 'mhp7315', 'project_overview'),
(601, 'AL413', 'sufficient_cost', 'project_overview'),
(602, 'AL414', 'relocation_mhp7315', 'project_overview'),
(603, 'B416', 'narrative_explanation', 'project_overview'),
(604, 'AL419', '7302_1_g', 'project_overview'),
(605, 'AL420', 'sufficient_cost_env_mitigation', 'project_overview'),
(606, 'AL421', 'env_report_47', 'project_overview'),
(607, 'AL422', 'env_report_48', 'project_overview'),
(608, 'AL423', 'env_report_49', 'project_overview'),
(609, 'AL424', 'env_report_50', 'project_overview'),
(610, 'AL425', 'env_report_51', 'project_overview'),
(611, 'AL426', 'env_report_52', 'project_overview'),
(612, 'AL432', 'art_xxxiv_legal', 'project_overview'),
(613, 'AL433', 'art_xxxiv_auth', 'project_overview'),
(614, 'AL436', 'umr_8305_8306_8307', 'project_overview'),
(615, 'AL439', 'mhp_7315_a', 'project_overview'),
(616, 'AL440', 'occupancy_restriction', 'project_overview'),
(617, 'AL442', 'fair_housing_legal', 'project_overview'),
(618, 'AL445', 'mhp_7315_b', 'project_overview'),
(619, 'AL446', 'tcac_regulations_met', 'project_overview'),
(620, 'AL449', 'mhp_7315_c', 'project_overview'),
(621, 'AL452', 'mhp_7315_d', 'project_overview'),
(622, 'AL455', 'mhp_7315_e', 'project_overview'),
(623, 'AL459', 'explanations_loe', 'project_overview'),
(624, 'AF464', 'proj_milestones_binding_agreement', 'project_overview'),
(625, 'AJ464', 'proj_milestones_binding_agreement_date', 'project_overview'),
(626, 'AF465', 'proj_milestones_ultimatesitecontrol', 'project_overview'),
(627, 'AJ465', 'proj_milestones_ultimatesitecontrol_date', 'project_overview'),
(628, 'AF466', 'proj_milestones_environmental_clearances', 'project_overview'),
(629, 'AJ466', 'proj_milestones_environmental_clearances_date', 'project_overview'),
(630, 'AF467', 'proj_milestones_land_use_approvals', 'project_overview'),
(631, 'AJ467', 'proj_milestones_land_use_approvals_date', 'project_overview'),
(632, 'AF468', 'proj_milestones_funding_commitments', 'project_overview'),
(633, 'AJ468', 'proj_milestones_funding_commitments_date', 'project_overview'),
(634, 'AF469', 'proj_milestones_per_funding_commitments', 'project_overview'),
(635, 'AJ469', 'proj_milestones_per_funding_commitments_date', 'project_overview'),
(636, 'AF470', 'proj_milestones_submission', 'project_overview'),
(637, 'AJ470', 'proj_milestones_submission_date', 'project_overview'),
(638, 'AF471', 'proj_milestones_commencement', 'project_overview'),
(639, 'AJ471', 'proj_milestones_commencement_date', 'project_overview'),
(640, 'AF472', 'proj_milestones_notice_of_completion', 'project_overview'),
(641, 'AJ472', 'proj_milestones_notice_of_completion_date', 'project_overview'),
(642, 'AF473', 'proj_milestones_prog_funds', 'project_overview'),
(643, 'AJ473', 'proj_milestones_prog_funds_date', 'project_overview'),
(644, 'AF474', 'proj_milestones_otherspecify1', 'project_overview'),
(645, 'AJ474', 'proj_milestones_otherspecify1_date', 'project_overview'),
(646, 'AF475', 'proj_milestones_otherspecify2', 'project_overview'),
(647, 'AJ475', 'proj_milestones_otherspecify2_date', 'project_overview'),
(648, 'B477', 'proj_milestones_specialcomments', 'project_overview');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL,
  `directory_structure` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `tabs_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `directory_structure`, `field_name`, `tabs_id`) VALUES
(1, 'project_overview/cip_int_qip', 'cip_int_qip', 4),
(2, 'project_overview/urban_area', 'urban_area', 4),
(3, 'project_overview/Integration_plan', 'Integration_plan', 4),
(4, 'project_overview/transitional_housing', 'transitional_housing', 4),
(5, 'project_overview/indian_country', 'indian_country', 4),
(6, 'project_overview/fee_land', 'fee_land', 4),
(7, 'project_overview/ncbd_exp', 'ncbd_exp', 4),
(8, 'project_overview/cdb_exp', 'cdb_exp', 4),
(9, 'project_overview/ed_exp', 'ed_exp', 4),
(10, 'project_overview/spondev_cont_agree', 'spondev_cont_agree', 4),
(11, 'project_overview/proj_timeline', 'proj_timeline', 4),
(12, 'project_overview/leg_letter', 'leg_letter', 4),
(13, 'project_overview/rehab_desc', 'rehab_desc', 4),
(14, 'project_overview/pna_cna', 'pna_cna', 4),
(15, 'project_overview/rent_roll', 'rent_roll', 4),
(16, 'project_overview/tax_reserve', 'tax_reserve', 4),
(17, 'project_overview/rural_status_det', 'rural_status_det', 4),
(18, 'project_overview/opp_area_doc', 'opp_area_doc', 4),
(19, 'project_overview/spon1_cert_legal', 'spon1_cert_legal', 4),
(20, 'project_overview/spon1_auth_res', 'spon1_auth_res', 4),
(21, 'project_overview/spon1_org_docs', 'spon1_org_docs', 4),
(22, 'project_overview/spon1_org_chart', 'spon1_org_chart', 4),
(23, 'project_overview/spon1_sig_block', 'spon1_sig_block', 4),
(24, 'project_overview/spon1_cert_stand', 'spon1_cert_stand', 4),
(25, 'project_overview/spon1_tax_exempt', 'spon1_tax_exempt', 4),
(26, 'project_overview/spon2_cert_legal', 'spon2_cert_legal', 4),
(27, 'project_overview/spon2_auth_res', 'spon2_auth_res', 4),
(28, 'project_overview/spon2_org_docs', 'spon2_org_docs', 4),
(29, 'project_overview/spon2_org_chart', 'spon2_org_chart', 4),
(30, 'project_overview/spon2_sig_block', 'spon2_sig_block', 4),
(31, 'project_overview/spon2_cert_stand', 'spon2_cert_stand', 4),
(32, 'project_overview/spon2_tax_exempt', 'spon2_tax_exempt', 4),
(33, 'project_overview/joint_venture', 'joint_venture', 4),
(34, 'project_overview/jv1_cert_legal', 'jv1_cert_legal', 4),
(35, 'project_overview/jv1_auth_res', 'jv1_auth_res', 4),
(36, 'project_overview/jv1_org_docs', 'jv1_org_docs', 4),
(37, 'project_overview/jv1_org_chart', 'jv1_org_chart', 4),
(38, 'project_overview/jv1_sig_block', 'jv1_sig_block', 4),
(39, 'project_overview/jv1_cert_stand', 'jv1_cert_stand', 4),
(40, 'project_overview/jv1_tax_exempt', 'jv1_tax_exempt', 4),
(41, 'project_overview/jv2_cert_legal', 'jv2_cert_legal', 4),
(42, 'project_overview/jv2_auth_res', 'jv2_auth_res', 4),
(43, 'project_overview/jv2_org_docs', 'jv2_org_docs', 4),
(44, 'project_overview/jv2_org_chart', 'jv2_org_chart', 4),
(45, 'project_overview/jv2_sig_block', 'jv2_sig_block', 4),
(46, 'project_overview/jv2_cert_stand', 'jv2_cert_stand', 4),
(47, 'project_overview/jv2_tax_exempt', 'jv2_tax_exempt', 4),
(48, 'project_overview/borrower_cert_legal', 'borrower_cert_legal', 4),
(49, 'project_overview/borrower_org_docs', 'borrower_org_docs', 4),
(50, 'project_overview/borrower_org_chart', 'borrower_org_chart', 4),
(51, 'project_overview/borrower_sig_block', 'borrower_sig_block', 4),
(52, 'project_overview/borrower_payee_data', 'borrower_payee_data', 4),
(53, 'project_overview/borrower_fiscal_tin', 'borrower_fiscal_tin', 4),
(54, 'project_overview/borrower_ein', 'borrower_ein', 4),
(55, 'project_overview/borrower_cert_stand', 'borrower_cert_stand', 4),
(56, 'project_overview/borrower_tax_exempt', 'borrower_tax_exempt', 4),
(57, 'project_overview/mgp_cert_legal', 'mgp_cert_legal', 4),
(58, 'project_overview/mgp_org_docs', 'mgp_org_docs', 4),
(59, 'project_overview/mgp_org_chart', 'mgp_org_chart', 4),
(60, 'project_overview/mgp_sig_block', 'mgp_sig_block', 4),
(61, 'project_overview/mgp_cert_stand', 'mgp_cert_stand', 4),
(62, 'project_overview/mgp_tax_exempt', 'mgp_tax_exempt', 4),
(63, 'project_overview/agp1_cert_legal', 'agp1_cert_legal', 4),
(64, 'project_overview/agp1_org_docs', 'agp1_org_docs', 4),
(65, 'project_overview/agp1_org_chart', 'agp1_org_chart', 4),
(66, 'project_overview/agp1_sig_block', 'agp1_sig_block', 4),
(67, 'project_overview/agp1_cert_stand', 'agp1_cert_stand', 4),
(68, 'project_overview/agp1_tax_exempt', 'agp1_tax_exempt', 4),
(69, 'project_overview/agp2_cert_legal', 'agp2_cert_legal', 4),
(70, 'project_overview/agp2_org_docs', 'agp2_org_docs', 4),
(71, 'project_overview/agp2_org_chart', 'agp2_org_chart', 4),
(72, 'project_overview/agp2_sig_block', 'agp2_sig_block', 4),
(73, 'project_overview/agp2_cert_stand', 'agp2_cert_stand', 4),
(74, 'project_overview/agp2_tax_exempt', 'agp2_tax_exempt', 4),
(75, 'project_overview/utility_allowance', 'utility_allowance', 4),
(76, 'project_overview/env_report_47', 'env_report_47', 4),
(77, 'project_overview/env_report_48', 'env_report_48', 4),
(78, 'project_overview/env_report_49', 'env_report_49', 4),
(79, 'project_overview/env_report_50', 'env_report_50', 4),
(80, 'project_overview/env_report_51', 'env_report_51', 4),
(81, 'project_overview/env_report_52', 'env_report_52', 4),
(82, 'project_overview/art_xxxiv_legal', 'art_xxxiv_legal', 4),
(83, 'project_overview/art_xxxiv_auth', 'art_xxxiv_auth', 4),
(84, 'project_overview/bwr_fical_hcd', 'bwr_fical_hcd', 4),
(85, 'project_overview/site_control', 'site_control', 4),
(86, 'project_overview/prelim_title_report', 'prelim_title_report', 4),
(87, 'project_overview/appraisal', 'appraisal', 4),
(88, 'project_overview/relocation', 'relocation', 4),
(89, 'project_overview/fair_housing_legal', 'fair_housing_legal', 4),
(90, 'project_overview/loe', 'loe', 4),
(91, 'supportive-service/lsp_nonspon', 'lsp_nonspon', 5),
(92, 'supportive-service/lsp_list_proj', 'lsp_list_proj', 5),
(93, 'supportive-service/nonspon_ss_contract_enhanced', 'nonspon_ss_contract_enhanced', 5),
(94, 'supportive-service/duty_stmts', 'duty_stmts', 5),
(95, 'supportive-service/ss_fund_ltr', 'ss_fund_ltr', 5),
(96, 'supportive-housing/sponsor_soq', 'sponsor_soq', 6),
(97, 'supportive-housing/property_soq', 'property_soq', 6),
(98, 'supportive-housing/lsp_soq', 'lsp_soq', 6),
(99, 'supportive-housing/lsp_exp_soq', 'lsp_exp_soq', 6),
(100, 'sponsor-cert/spon_cert_loe', 'spon_cert_loe', 7),
(101, 'scoring/scoring_op_area_map', 'scoring_op_area_map', 8),
(102, 'scoring/ces_agree', 'ces_agree', 8),
(103, 'scoring/resume_principal', 'resume_principal', 8),
(104, 'scoring/soq_principal', 'soq_principal', 8),
(105, 'scoring/cert_employment', 'cert_employment', 8),
(106, 'scoring/ahd_cash_flow', 'ahd_cash_flow', 8),
(107, 'scoring/enforce_ma', 'enforce_ma', 8),
(108, 'scoring/bona_fide_ma', 'bona_fide_ma', 8),
(109, 'scoring/const_efcs', 'const_efcs', 8),
(110, 'scoring/perm_efcs', 'perm_efcs', 8),
(111, 'scoring/land_use_app', 'land_use_app', 8),
(112, 'scoring/aicp_letter', 'aicp_letter', 8),
(113, 'scoring/local_approvals', 'local_approvals', 8),
(114, 'scoring/op_sub_commit', 'op_sub_commit', 8),
(115, 'scoring/current_contract_rents', 'current_contract_rents', 8),
(116, 'scoring/excess_surplus_land', 'excess_surplus_land', 8),
(117, 'scoring/adapt_reuse_narr', 'adapt_reuse_narr', 8),
(118, 'scoring/amenities_list', 'amenities_list', 8),
(119, 'scoring/walk_location_map', 'walk_location_map', 8),
(120, 'scoring/amenities_dist_map', 'amenities_dist_map', 8),
(121, 'scoring/reducing_barriers_plan', 'reducing_barriers_plan', 8),
(122, 'scoring/sustain_strat', 'sustain_strat', 8),
(123, 'scoring/region_plan', 'region_plan', 8),
(124, 'scoring/transit_priority_area', 'transit_priority_area', 8),
(125, 'scoring/green_building_stat', 'green_building_stat', 8),
(126, 'scoring/near_electrification', 'near_electrification', 8),
(127, 'scoring/electric_design', 'electric_design', 8),
(128, 'scoring/farmworker_need', 'farmworker_need', 8),
(129, 'scoring/net_density', 'net_density', 8),
(130, 'scoring/walk_map', 'walk_map', 8),
(131, 'scoring/prohouse_designation', 'prohouse_designation', 8),
(132, 'scoring/prohouse_app', 'prohouse_app', 8),
(133, 'scoring/fema_dd', 'fema_dd', 8),
(134, 'scoring/disaster_housing_plan', 'disaster_housing_plan', 8),
(135, 'scoring/fema_dd_2', 'fema_dd_2', 8),
(136, 'scoring/disaster_housing_plan_2', 'disaster_housing_plan_2', 8),
(137, 'workbook/workbook', 'workbook', 9);

-- --------------------------------------------------------

--
-- Table structure for table `files_data`
--

CREATE TABLE `files_data` (
  `id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `files_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files_data`
--

INSERT INTO `files_data` (`id`, `file_name`, `files_id`, `submission_id`) VALUES
(3, '1.jpg', 1, 67),
(4, '2.jpg,3.jpg,5.jpg', 2, 67),
(5, '6.jpg', 3, 67),
(6, '7.jpg', 4, 67),
(7, '8.jpg', 5, 67),
(8, '9.jpg', 6, 67),
(9, '10.jpg', 7, 67),
(10, '11.jfif', 8, 67),
(11, '12.jfif', 9, 67),
(12, '13.jpg', 10, 67),
(13, '14.jpg', 11, 67),
(14, '15.png', 12, 67),
(15, '16.jfif', 13, 67),
(16, '17.png', 14, 67),
(17, '18.jpg', 15, 67),
(18, '19.jpg', 16, 67),
(19, '20.jfif', 17, 67),
(20, '21.jpg', 18, 67),
(21, '26.jpg', 24, 67),
(22, '10.jpg', 26, 67),
(23, '51.jpg', 27, 67),
(24, '80.jpg', 28, 67),
(25, '79.jpg', 29, 67),
(26, '52.jpg', 30, 67),
(27, '72.jfif', 31, 67),
(28, '37.jpg', 32, 67),
(29, '40.jfif', 33, 67),
(30, '46.jpg,47.jpg', 34, 67),
(31, '23.jpg', 40, 67),
(32, '22.jpg', 39, 67),
(33, 'Test1.pdf', 19, 67),
(34, '22.jpg', 20, 67),
(35, '23.jpg', 21, 67),
(36, '24.jpg', 22, 67),
(37, '25.jfif', 23, 67),
(38, '27.jpg', 25, 67),
(39, '11.jfif', 35, 67),
(40, '12.jfif', 36, 67),
(41, '33.jpg', 38, 67),
(42, '65.jpg', 37, 67),
(43, '9.jpg', 41, 67),
(44, '18.jpg', 42, 67),
(45, '12.jfif', 44, 67),
(46, '18.jpg', 46, 67),
(47, '23.jpg', 45, 67),
(48, '10.jpg', 47, 67),
(49, '11.jfif', 49, 67),
(50, '16.jfif', 48, 67),
(51, '10.jpg', 50, 67),
(52, '11.jfif', 51, 67),
(53, '11.jfif', 84, 67),
(54, '15.png', 52, 67),
(55, '12.jfif', 54, 67),
(56, '6.jpg', 55, 67),
(57, '26.jpg', 56, 67),
(58, '17.png', 58, 67),
(59, '17.png', 57, 67),
(60, '12.jfif', 60, 67),
(61, '16.jpg', 59, 67),
(62, '19.jpg', 62, 67),
(63, '18.jpg', 61, 67),
(64, '12.jfif', 64, 67),
(65, '16.jfif', 63, 67),
(66, '16.jfif', 65, 67),
(67, '18.jpg', 66, 67),
(68, '11.jfif', 68, 67),
(69, '16.jfif', 67, 67),
(70, '2.jpg', 69, 67),
(71, '12.jfif', 70, 67),
(72, '12.jfif', 72, 67),
(73, '11.jfif', 71, 67),
(74, '19.jpg', 74, 67),
(75, '18.jpg', 73, 67),
(76, '18.jpg', 86, 67),
(77, '24.jpg', 85, 67),
(78, '25.jfif', 87, 67),
(79, '17.png', 75, 67),
(80, '12.jfif', 88, 67),
(81, '16.jfif', 76, 67),
(82, '17.png', 77, 67),
(83, '16.jfif', 78, 67),
(84, '11.jfif', 79, 67),
(85, '18.jpg', 81, 67),
(86, '17.png', 83, 67),
(87, '16.jfif', 82, 67),
(88, '9.jpg', 80, 67),
(89, '16.jpg', 89, 67),
(90, '16.jfif', 90, 67),
(91, '13.jpg', 92, 67),
(92, '11.jfif', 91, 67),
(93, '16.jpg', 93, 67),
(94, '31.jpg', 94, 67),
(95, '16.jpg', 95, 67),
(96, '9.jpg', 96, 67),
(97, '19.jpg', 97, 67),
(98, '17.png', 99, 67),
(99, '16.jfif', 98, 67),
(100, '9.jpg', 100, 67),
(101, '10.jpg', 101, 67),
(102, '11.jfif', 102, 67),
(103, '12.jfif', 104, 67),
(104, '10.jpg', 103, 67),
(105, '11.jfif', 106, 67),
(106, '10.jpg', 105, 67),
(107, '10.jpg', 132, 67),
(108, '9.jpg', 129, 67),
(109, '10.jpg', 137, 67),
(110, '1_6_.pdf', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tabs_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `name`, `tabs_id`) VALUES
(1, 'mhp_bool', 1),
(2, 'iig_bool', 1),
(3, 'tran_orient', 1),
(4, 'housing_cali', 1),
(5, 'fwhg_bool', 1),
(6, 'vhhp_bool', 1),
(7, 'capital_improvement_project_bool', 1),
(8, 'program_guidelines', 1),
(9, 'is_cip', 1),
(10, 'cip_integral_to_qip_file', 1),
(11, 'gov_code_65585', 1),
(12, 'gov_code_65400', 1),
(13, 'is_qip', 1),
(14, 'qip_desc', 1),
(15, 'urban_area', 1),
(16, 'blank_2', 1),
(17, 'requirements', 1),
(18, 'agr_households', 1),
(19, 'lowe_inc_agr_households', 1),
(20, 'non_assisted_units_agr_households', 1),
(21, 'eligible_project_type_sponsor_ack', 1),
(22, 'mhp_high_risk_bool', 1),
(23, '7302_e_5_bool', 1),
(24, 'mhp_large_fam_bool', 1),
(25, '7302_e_1_bool', 1),
(26, 'mhp_senior_bool', 1),
(27, '7302_e_3_bool', 1),
(28, 'mhp_special_needs_bool', 1),
(29, '7302_e_2_f_g', 1),
(30, 'integration_plan', 1),
(31, 'supportive_housing_bool', 1),
(32, 'transitional_housing_bool', 1),
(33, 'transitional_housing', 1),
(34, 'tribal_bool', 1),
(35, 'proj_loc', 1),
(36, 'home_prog', 1),
(37, 'indian_country', 1),
(38, 'fee_land', 1),
(39, 'new_community_bool', 1),
(40, 'ncbd_exp', 1),
(41, 'community_bool', 1),
(42, 'experience_req', 1),
(43, 'cdb_exp', 1),
(44, 'emerging_bool', 1),
(45, 'experience_req_7301', 1),
(46, 'ed_exp', 1),
(47, 'contracting_exp_developer', 1),
(48, 'spondev_cont_agree', 1),
(49, 'app_eligible_costs', 1),
(50, 'broadband_service_capability', 1),
(51, 'capital_asset_rel_exp', 1),
(52, 'assisted_unit_req_bool', 1),
(53, '7302_b_bool', 1),
(54, 'multi_dept_funding_sources', 1),
(55, '7302_i_bool', 1),
(56, '7302_c_bool', 1),
(57, 'emergency_repairs', 1),
(58, 'proj_timeline', 1),
(59, 'leg_letter', 1),
(60, 'proj_desc', 1),
(61, 'iig_capital_imp_proj', 1),
(62, 'project_name', 1),
(63, 'project_address', 1),
(64, 'project_county', 1),
(65, 'project_city', 1),
(66, 'project_zip', 1),
(67, 'project_dev_type', 1),
(68, 'rehab_desc', 1),
(69, 'pna_cna', 1),
(70, 'rent_roll', 1),
(71, 'internet_bool', 1),
(72, 'apn1', 1),
(73, 'apn2', 1),
(74, 'apn3', 1),
(75, 'cens1', 1),
(76, 'cens2', 1),
(77, 'cens3', 1),
(78, 'apn4', 1),
(79, 'apn5', 1),
(80, 'apn6', 1),
(81, 'cens4', 1),
(82, 'cens5', 1),
(83, 'cens6', 1),
(84, 'apn7', 1),
(85, 'apn8', 1),
(86, 'apn9', 1),
(87, 'cens7', 1),
(88, 'cens8', 1),
(89, 'cens9', 1),
(90, 'other_funds_bool', 1),
(91, 'past_proj_name', 1),
(92, 'otherhcdprog1', 1),
(93, 'otherhcdprogloanamt1', 1),
(94, 'otherhcdproggrantamt1', 1),
(95, 'otherhcdprogawarded1', 1),
(96, 'otherhcdprogdate1', 1),
(97, 'otherhcdprog2', 1),
(98, 'otherhcdprogloanamt2', 1),
(99, 'otherhcdproggrantamt2', 1),
(100, 'otherhcdprogawarded2', 1),
(101, 'otherhcdprogdate2', 1),
(102, 'otherhcdprog3', 1),
(103, 'otherhcdprogloanamt3', 1),
(104, 'otherhcdproggrantamt3', 1),
(105, 'otherhcdprogawarded3', 1),
(106, 'otherhcdprogdate3', 1),
(107, 'typeoftaxcredits', 1),
(108, 'creditequity', 1),
(109, 'federal_bool', 1),
(110, 'fedproposedcontribution', 1),
(111, 'fedapprate', 1),
(112, 'proj_info_state_bool', 1),
(113, 'stproposedcontribution', 1),
(114, 'stapprate', 1),
(115, 'proj_info_proposedmonth', 1),
(116, 'proj_info_proposedyear', 1),
(117, 'awardcreditreservation', 1),
(118, 'proj_info_proposedmonth2', 1),
(119, 'proj_info_proposedyear2', 1),
(120, 'tax_reserve', 1),
(121, 'umr8302_bool', 1),
(122, 'demolished_ structures_bdrm', 1),
(123, 'new_proj_bdrm', 1),
(124, 'proj_scattered_bool', 1),
(125, 'umr8303b_bool', 1),
(126, 'scatter_site_add1', 1),
(127, 'scatter_site_add2', 1),
(128, 'scatter_site_add3', 1),
(129, 'scatter_site_add4', 1),
(130, 'lihtc_units', 1),
(131, 'projectsitearea', 1),
(132, 'proj_info_agerestriction', 1),
(133, 'proj_info_specialfacility', 1),
(134, 'proj_info_tenuretype', 1),
(135, 'proj_info_rentalsubsidy', 1),
(136, 'proj_info_commercial_bool', 1),
(137, 'proj_info_relocation', 1),
(138, 'proj_info_operating_bool', 1),
(139, 'proj_info_hud_project_bool', 1),
(140, 'proj_info_demolition_required_bool', 1),
(141, 'proj_info_demolition_desc', 1),
(142, 'hns_code_50199_21', 1),
(143, 'rural_methodology', 1),
(144, 'rural_status_det', 1),
(145, 'proj_info_resource_area', 1),
(146, 'proj_info_tractid', 1),
(147, 'proj_info_opp_area_map_category', 1),
(148, 'proj_info_opp_area_doc', 1),
(149, 'sp1_entity_name', 1),
(150, 'sp1sponsorshiptype', 1),
(151, 'sp1organizationtype', 1),
(152, 'sp1rental_housing_dev', 1),
(153, 'sp1employ_exp_staff', 1),
(154, 'sp1sufficient_fin_capacity', 1),
(155, 'sp1dept_award', 1),
(156, 'sp1sponsor_organization', 1),
(157, 'sp1staff_type1', 1),
(158, 'sp1emp_cons_name1', 1),
(159, 'sp1position_title1', 1),
(160, 'sp1full_part_time1', 1),
(161, 'sp1per_time_dedicated1', 1),
(162, 'sp1staff_type2', 1),
(163, 'sp1emp_cons_name2', 1),
(164, 'sp1position_title2', 1),
(165, 'sp1full_part_time2', 1),
(166, 'sp1per_time_dedicated2', 1),
(167, 'sp1staff_type3', 1),
(168, 'sp1emp_cons_name3', 1),
(169, 'sp1position_title3', 1),
(170, 'sp1full_part_time3', 1),
(171, 'sp1per_time_dedicated3', 1),
(172, 'sp1staff_type4', 1),
(173, 'sp1emp_cons_name4', 1),
(174, 'sp1position_title4', 1),
(175, 'sp1full_part_time4', 1),
(176, 'sp1per_time_dedicated4', 1),
(177, 'sp1staff_type5', 1),
(178, 'sp1emp_cons_name5', 1),
(179, 'sp1position_title5', 1),
(180, 'sp1full_part_time5', 1),
(181, 'sp1per_time_dedicated5', 1),
(182, 'sp1staff_type6', 1),
(183, 'sp1emp_cons_name6', 1),
(184, 'sp1position_title6', 1),
(185, 'sp1full_part_time6', 1),
(186, 'sp1per_time_dedicated6', 1),
(187, 'spon1_cert_legal', 1),
(188, 'spon1_auth_res', 1),
(189, 'spon1_org_docs', 1),
(190, 'spon1_org_chart', 1),
(191, 'spon1_sig_block', 1),
(192, 'spon1_cert_stand', 1),
(193, 'spon1_tax_exempt', 1),
(194, 'sp2_entity_name', 1),
(195, 'sp2sponsorshiptype', 1),
(196, 'sp2organizationtype', 1),
(197, 'spon2_cert_legal', 1),
(198, 'spon2_auth_res', 1),
(199, 'spon2_org_docs', 1),
(200, 'spon2_org_chart', 1),
(201, 'spon2_sig_block', 1),
(202, 'spon2_cert_stand', 1),
(203, 'spon2_tax_exempt', 1),
(204, 'jv1_entity_name', 1),
(205, 'joint_venture', 1),
(206, 'jv1_cert_legal', 1),
(207, 'jv1_auth_res', 1),
(208, 'jv1_org_docs', 1),
(209, 'jv1_org_chart', 1),
(210, 'jv1_sig_block', 1),
(211, 'jv1_cert_stand', 1),
(212, 'jv1_tax_exempt', 1),
(213, '7303_d_4_a_bool', 1),
(214, '7303_d_4_b_bool', 1),
(215, '7303_d_4_c_bool', 1),
(216, '7303_d_4_d_bool', 1),
(217, 'jv2_entity_name', 1),
(218, 'jv2_cert_legal', 1),
(219, 'jv2_auth_res', 1),
(220, 'jv2_org_docs', 1),
(221, 'jv2_org_chart', 1),
(222, 'jv2_sig_block', 1),
(223, 'jv2_cert_stand', 1),
(224, 'jv2_tax_exempt', 1),
(225, 'owner_borrower_legal_name', 1),
(226, 'borrower_cert_legal', 1),
(227, 'borrower_org_docs', 1),
(228, 'borrower_org_chart', 1),
(229, 'borrower_sig_block', 1),
(230, 'borrower_payee_data', 1),
(231, 'borrower_fiscal_tin', 1),
(232, 'borrower_ein', 1),
(233, 'borrower_cert_stand', 1),
(234, 'borrower_tax_exempt', 1),
(235, 'mgplegal_name', 1),
(236, 'mgp_cert_legal', 1),
(237, 'mgp_org_docs', 1),
(238, 'mgp_org_chart', 1),
(239, 'mgp_sig_block', 1),
(240, 'mgp_cert_stand', 1),
(241, 'mgp_tax_exempt', 1),
(242, 'agp1legal_name', 1),
(243, 'agp1_cert_legal', 1),
(244, 'agp1_org_docs', 1),
(245, 'agp1_org_chart', 1),
(246, 'agp1_sig_block', 1),
(247, 'agp1_cert_stand', 1),
(248, 'agp1_tax_exempt', 1),
(249, 'agp2legal_name', 1),
(250, 'agp2_cert_legal', 1),
(251, 'agp2_org_docs', 1),
(252, 'agp2_org_chart', 1),
(253, 'agp2_sig_block', 1),
(254, 'agp2_cert_stand', 1),
(255, 'agp2_tax_exempt', 1),
(256, 'umr_8303_bool', 1),
(257, 'site_control_type', 1),
(258, 'site_control_date', 1),
(259, 'site_control_expires', 1),
(260, 'site_control_extension', 1),
(261, 'site_control_purchase', 1),
(262, 'site_control_current_owner', 1),
(263, 'site_control_owner_address', 1),
(264, 'site_control_city', 1),
(265, 'site_control_state', 1),
(266, 'site_control_zip', 1),
(267, 'site_control_specialcircumstances', 1),
(268, 'site_control_ground_bool', 1),
(269, 'site_control_lessor', 1),
(270, 'site_control_term', 1),
(271, 'site_control_annualpayment', 1),
(272, 'site_control_prop_transfer_details', 1),
(273, 'site_control', 1),
(274, 'preliminary_title_report', 1),
(275, 'appraisal', 1),
(276, 'site_unit_info_currentuse', 1),
(277, 'site_unit_info_proposed', 1),
(278, 'site_unit_info_site_bool', 1),
(279, 'site_unit_info_year_improvements', 1),
(280, 'site_unit_info_rent_control_bool', 1),
(281, 'site_unit_info_road_bool', 1),
(282, 'site_unit_info_sponsornotes', 1),
(283, 'site_unit_info_poor_drainage', 1),
(284, 'site_unit_info_erosion_problems', 1),
(285, 'site_unit_info_unstable_soil', 1),
(286, 'site_unit_info_underground_tanks', 1),
(287, 'site_unit_info_possible_paint', 1),
(288, 'site_unit_info_possible_asbestos', 1),
(289, 'site_unit_info_wetlands_area', 1),
(290, 'site_unit_info_site_stream', 1),
(291, 'site_unit_info_flood_plain', 1),
(292, 'site_unit_info_soil_pollution', 1),
(293, 'site_unit_info_grade5', 1),
(294, 'site_unit_info_grade_over', 1),
(295, 'site_unit_info_airport_miles', 1),
(296, 'site_unit_info_possible_levels', 1),
(297, 'site_unit_info_abandoned_well', 1),
(298, 'site_unit_info_railroad_tracks', 1),
(299, 'site_unit_info_unusual_ingress', 1),
(300, 'site_unit_info_high_table', 1),
(301, 'site_unit_info_retaining_wall', 1),
(302, 'site_unit_info_ground_contamination', 1),
(303, 'site_unit_info_west', 1),
(304, 'site_unit_info_east', 1),
(305, 'site_unit_info_north', 1),
(306, 'site_unit_info_south', 1),
(307, 'site_unit_info_unique_features', 1),
(308, 'exbeds', 1),
(309, 'exbdrm0', 1),
(310, 'exbdrm1', 1),
(311, 'exbdrm2', 1),
(312, 'exbdrm3', 1),
(313, 'exbdrm4', 1),
(314, 'exbdrm5', 1),
(315, 'extotalbuildings', 1),
(316, 'extotalmgrunits', 1),
(317, 'extotalparkingspaces', 1),
(318, 'pbeds', 1),
(319, 'pbdrm0', 1),
(320, 'pbdrm1', 1),
(321, 'pbdrm2', 1),
(322, 'pbdrm3', 1),
(323, 'pbdrm4', 1),
(324, 'pbdrm5', 1),
(325, 'ptotalbuildings', 1),
(326, 'ptotalmgrunits', 1),
(327, 'ptotalparkingspaces', 1),
(328, 'newconsttownhouseunits', 1),
(329, 'newconsttownhousestories', 1),
(330, 'newconsttownhousebldgs', 1),
(331, 'rehabtownhouseunits', 1),
(332, 'rehabtownhousestories', 1),
(333, 'rehabtownhousebldgs', 1),
(334, 'newconstwalkupunits', 1),
(335, 'newconstwalkupstories', 1),
(336, 'newconstwalkupbldgs', 1),
(337, 'rehabwalkupunits', 1),
(338, 'rehabwalkupstories', 1),
(339, 'rehabwalkupbldgs', 1),
(340, 'newconstmidriseunits', 1),
(341, 'newconstmidrisestories', 1),
(342, 'newconstmidrisebldgs', 1),
(343, 'rehabmidriseunits', 1),
(344, 'rehabmidrisestories', 1),
(345, 'rehabmidrisebldgs', 1),
(346, 'newconsthighriseunits', 1),
(347, 'newconsthighrisestories', 1),
(348, 'newconsthighrisebldgs', 1),
(349, 'rehabhighriseunits', 1),
(350, 'rehabhighrisestories', 1),
(351, 'rehabhighrisebldgs', 1),
(352, 'newconstdetachedunits', 1),
(353, 'newconstdetachedstories', 1),
(354, 'newconstdetachedbldgs', 1),
(355, 'rehabdetachedunits', 1),
(356, 'rehabdetachedstories', 1),
(357, 'rehabdetachedbldgs', 1),
(358, 'newconstduplexunits', 1),
(359, 'newconstduplexstories', 1),
(360, 'newconstduplexbldgs', 1),
(361, 'rehabduplexunits', 1),
(362, 'rehabduplexstories', 1),
(363, 'rehabduplexbldgs', 1),
(364, 'newconstnonresunits', 1),
(365, 'newconstnonresstories', 1),
(366, 'newconstnonresbldgs', 1),
(367, 'rehabnonresunits', 1),
(368, 'rehabnonresstories', 1),
(369, 'rehabnonresbldgs', 1),
(370, '0bdrmbaths', 1),
(371, '0bdrmlayout', 1),
(372, '0bdrmsqft', 1),
(373, '1bdrmbaths', 1),
(374, '1bdrmlayout', 1),
(375, '1bdrmsqft', 1),
(376, '2bdrmbaths', 1),
(377, '2bdrmlayout', 1),
(378, '2bdrmsqft', 1),
(379, '3bdrmbaths', 1),
(380, '3bdrmlayout', 1),
(381, '3bdrmsqft', 1),
(382, '4bdrmbaths', 1),
(383, '4bdrmlayout', 1),
(384, '4bdrmsqft', 1),
(385, '5bdrmbaths', 1),
(386, '5bdrmlayout', 1),
(387, '5bdrmsqft', 1),
(388, '6bdrmbaths', 1),
(389, '6bdrmlayout', 1),
(390, '6bdrmsqft', 1),
(391, '7bdrmbaths', 1),
(392, '7bdrmlayout', 1),
(393, '7bdrmsqft', 1),
(394, '8bdrmbaths', 1),
(395, '8bdrmlayout', 1),
(396, '8bdrmsqft', 1),
(397, '9bdrmbaths', 1),
(398, '9bdrmlayout', 1),
(399, '9bdrmsqft', 1),
(400, 'site_unit_info_sponsornotes_2', 1),
(401, 'amenities_airconditioning', 1),
(402, 'amenities_refrigerator', 1),
(403, 'amenities_range', 1),
(404, 'amenities_microwave', 1),
(405, 'amenities_disposal', 1),
(406, 'amenities_dishwasher', 1),
(407, 'amenities_walkincloset', 1),
(408, 'amenities_fencedrearyard', 1),
(409, 'amenities_ceilingfans', 1),
(410, 'amenities_curtains_blinds', 1),
(411, 'amenities_fireplace', 1),
(412, 'amenities_emergencycall', 1),
(413, 'amenities_freecabletv', 1),
(414, 'amenities_storagearea', 1),
(415, 'amenities_lofts', 1),
(416, 'amenities_balcony', 1),
(417, 'amenities_patio', 1),
(418, 'amenities_otheramen1', 1),
(419, 'amenities_otheramen2', 1),
(420, 'amenities_otheranem3', 1),
(421, 'proj_amenities_elevators', 1),
(422, 'proj_amenities_elevators_input', 1),
(423, 'proj_amenities_laundry_rms', 1),
(424, 'proj_amenities_laundry_rms_input', 1),
(425, 'proj_amenities_washers', 1),
(426, 'proj_amenities_washers_input', 1),
(427, 'proj_amenities_dryers', 1),
(428, 'proj_amenities_dryers_input', 1),
(429, 'proj_amenities_laundry_hookup', 1),
(430, 'proj_amenities_community_room', 1),
(431, 'proj_amenities_community_kitchen', 1),
(432, 'proj_amenities_computer_room', 1),
(433, 'proj_amenities_highspeed_internet', 1),
(434, 'proj_amenities_fitness_room', 1),
(435, 'proj_amenities_picnic_bbqarea', 1),
(436, 'proj_amenities_totlot_playground', 1),
(437, 'proj_amenities_sports_court', 1),
(438, 'proj_amenities_tennis_court', 1),
(439, 'proj_amenities_swimming_pool', 1),
(440, 'proj_amenities_jacuzzi_sauna', 1),
(441, 'proj_amenities_bike_parking', 1),
(442, 'proj_amenities_other1', 1),
(443, 'proj_amenities_other2', 1),
(444, 'proj_amenities_other3', 1),
(445, 'proj_amenities_other4', 1),
(446, 'sec_other_gate_entry', 1),
(447, 'sec_other_bldg_card_key', 1),
(448, 'sec_other_security_patrol', 1),
(449, 'sec_other_security_camaras', 1),
(450, 'sec_other_describe_mandatory', 1),
(451, 'sec_other_services', 1),
(452, 'mis_info_residential_units', 1),
(453, 'mis_info_community_room', 1),
(454, 'mis_info_leasing_office', 1),
(455, 'mis_info_additional_space', 1),
(456, 'mis_info_maintenance_shop', 1),
(457, 'mis_info_childcare_center', 1),
(458, 'mis_info_service_area', 1),
(459, 'mis_info_service_office', 1),
(460, 'mis_info_maintenance_other', 1),
(461, 'mis_info_childcare_other', 1),
(462, 'mis_info_service_other', 1),
(463, 'mis_info_office_other', 1),
(464, 'res_uncovered_parking', 1),
(465, 'covered_parking', 1),
(466, 'enclosed_parking', 1),
(467, 'tenant_spaces', 1),
(468, 'uncovered_parking2', 1),
(469, 'covered_parking2', 1),
(470, 'enclosed_parking2', 1),
(471, 'total_handicap', 1),
(472, 'commercial_area', 1),
(473, 'comm_offices', 1),
(474, 'childcare_center2', 1),
(475, 'storage_space', 1),
(476, 'commercial_other', 1),
(477, 'uncovered', 1),
(478, 'covered_spaces', 1),
(479, 'commercial_patrons', 1),
(480, 'no_ofunit', 1),
(481, 'weekly_assume', 1),
(482, 'res_monthly_incom', 1),
(483, 'comm_monthly_incom', 1),
(484, 'resident_1', 1),
(485, 'lease_terms_1', 1),
(486, 'sq_feet_1', 1),
(487, 'rent_sf_1', 1),
(488, 'resident_2', 1),
(489, 'lease_terms_2', 1),
(490, 'sq_feet_2', 1),
(491, 'rent_sf_2', 1),
(492, 'resident_3', 1),
(493, 'lease_terms_3', 1),
(494, 'sq_feet_3', 1),
(495, 'rent_sf_3', 1),
(496, 'resident_4', 1),
(497, 'lease_terms_4', 1),
(498, 'sq_feet_4', 1),
(499, 'rent_sf_4', 1),
(500, 'commercial_1', 1),
(501, 'comm_lease_terms_1', 1),
(502, 'comm_sq_feet_1', 1),
(503, 'comm_rent_sf_1', 1),
(504, 'commercial_2', 1),
(505, 'comm_lease_terms_2', 1),
(506, 'comm_sq_feet_2', 1),
(507, 'comm_rent_sf_2', 1),
(508, 'commercial_3', 1),
(509, 'comm_lease_terms_3', 1),
(510, 'comm_sq_feet_3', 1),
(511, 'comm_rent_sf_3', 1),
(512, 'commercial_4', 1),
(513, 'comm_lease_terms_4', 1),
(514, 'comm_sq_feet_4', 1),
(515, 'comm_rent_sf_4', 1),
(516, 'u_type_heating', 1),
(517, 'u_type_cooking', 1),
(518, 'u_type_otherelectric', 1),
(519, 'u_type_airconditioning', 1),
(520, 'u_type_waterheating', 1),
(521, 'u_type_water', 1),
(522, 'u_type_sewer', 1),
(523, 'u_type_trash', 1),
(524, 'u_type_other_utility', 1),
(525, 'utility_allowance_heating', 1),
(526, 'utility_allowance_cooking', 1),
(527, 'utility_allowance_otherelectric', 1),
(528, 'utility_allowance_airconditioning', 1),
(529, 'utility_allowance_waterheating', 1),
(530, 'utility_allowance_water', 1),
(531, 'utility_allowance_sewer', 1),
(532, 'utility_allowance_trash', 1),
(533, 'utility_allowance_other_utility', 1),
(534, 'heating_0bdrm', 1),
(535, 'heating_1bdrm', 1),
(536, 'heating_2bdrm', 1),
(537, 'heating_3bdrm', 1),
(538, 'heating_4bdrm', 1),
(539, 'heating_5bdrm', 1),
(540, 'cooking_0bdrm', 1),
(541, 'cooking_1bdrm', 1),
(542, 'cooking_2bdrm', 1),
(543, 'cooking_3bdrm', 1),
(544, 'cooking_4bdrm', 1),
(545, 'cooking_5bdrm', 1),
(546, 'otherelectric_0bdrm', 1),
(547, 'otherelectric_1bdrm', 1),
(548, 'otherelectric_2bdrm', 1),
(549, 'otherelectric_3bdrm', 1),
(550, 'otherelectric_4bdrm', 1),
(551, 'otherelectric_5bdrm', 1),
(552, 'airconditioning_0bdrm', 1),
(553, 'airconditioning_1bdrm', 1),
(554, 'airconditioning_2bdrm', 1),
(555, 'airconditioning_3bdrm', 1),
(556, 'airconditioning_4bdrm', 1),
(557, 'airconditioning_5bdrm', 1),
(558, 'waterheating_0bdrm', 1),
(559, 'waterheating_1bdrm', 1),
(560, 'waterheating_2bdrm', 1),
(561, 'waterheating_3bdrm', 1),
(562, 'waterheating_4bdrm', 1),
(563, 'waterheating_5bdrm', 1),
(564, 'water_0bdrm', 1),
(565, 'water_1bdrm', 1),
(566, 'water_2bdrm', 1),
(567, 'water_3bdrm', 1),
(568, 'water_4bdrm', 1),
(569, 'water_5bdrm', 1),
(570, 'sewer_0bdrm', 1),
(571, 'sewer_1bdrm', 1),
(572, 'sewer_2bdrm', 1),
(573, 'sewer_3bdrm', 1),
(574, 'sewer_4bdrm', 1),
(575, 'sewer_5bdrm', 1),
(576, 'trash_0bdrm', 1),
(577, 'trash_1bdrm', 1),
(578, 'trash_2bdrm', 1),
(579, 'trash_3bdrm', 1),
(580, 'trash_4bdrm', 1),
(581, 'trash_5bdrm', 1),
(582, 'other_utility_0bdrm', 1),
(583, 'other_utility_1bdrm', 1),
(584, 'other_utility_2bdrm', 1),
(585, 'other_utility_3bdrm', 1),
(586, 'other_utility_4bdrm', 1),
(587, 'other_utility_5bdrm', 1),
(588, 'localpha', 1),
(589, 'utility_allowances_name', 1),
(590, 'utility_allowances_effective_date', 1),
(591, 'source_hud', 1),
(592, 'source_utilitycompany', 1),
(593, 'source_other_bool', 1),
(594, 'source_otherutilityallowances', 1),
(595, 'source_utilityallowancesponsornotes', 1),
(596, 'utility_allowance', 1),
(597, '7208fwhgapplicants', 1),
(598, '7224fwhgapplicants', 1),
(599, '7210fwhgapplicants', 1),
(600, 'mhp7315', 1),
(601, 'sufficient_cost', 1),
(602, 'relocation_mhp7315', 1),
(603, 'narrative_explanation', 1),
(604, '7302_1_g', 1),
(605, 'sufficient_cost_env_mitigation', 1),
(606, 'env_report_47', 1),
(607, 'env_report_48', 1),
(608, 'env_report_49', 1),
(609, 'env_report_50', 1),
(610, 'env_report_51', 1),
(611, 'env_report_52', 1),
(612, 'art_xxxiv_legal', 1),
(613, 'art_xxxiv_auth', 1),
(614, 'umr_8305_8306_8307', 1),
(615, 'mhp_7315_a', 1),
(616, 'occupancy_restriction', 1),
(617, 'fair_housing_legal', 1),
(618, 'mhp_7315_b', 1),
(619, 'tcac_regulations_met', 1),
(620, 'mhp_7315_c', 1),
(621, 'mhp_7315_d', 1),
(622, 'mhp_7315_e', 1),
(623, 'explanations_loe', 1),
(624, 'proj_milestones_binding_agreement', 1),
(625, 'proj_milestones_binding_agreement_date', 1),
(626, 'proj_milestones_ultimatesitecontrol', 1),
(627, 'proj_milestones_ultimatesitecontrol_date', 1),
(628, 'proj_milestones_environmental_clearances', 1),
(629, 'proj_milestones_environmental_clearances_date', 1),
(630, 'proj_milestones_land_use_approvals', 1),
(631, 'proj_milestones_land_use_approvals_date', 1),
(632, 'proj_milestones_funding_commitments', 1),
(633, 'proj_milestones_funding_commitments_date', 1),
(634, 'proj_milestones_per_funding_commitments', 1),
(635, 'proj_milestones_per_funding_commitments_date', 1),
(636, 'proj_milestones_submission', 1),
(637, 'proj_milestones_submission_date', 1),
(638, 'proj_milestones_commencement', 1),
(639, 'proj_milestones_commencement_date', 1),
(640, 'proj_milestones_notice_of_completion', 1),
(641, 'proj_milestones_notice_of_completion_date', 1),
(642, 'proj_milestones_prog_funds', 1),
(643, 'proj_milestones_prog_funds_date', 1),
(644, 'proj_milestones_otherspecify1', 1),
(645, 'proj_milestones_otherspecify1_date', 1),
(646, 'proj_milestones_otherspecify2', 1),
(647, 'proj_milestones_otherspecify2_date', 1),
(648, 'proj_milestones_specialcomments', 1),
(649, 'abc', 2),
(650, 'pre_app_bool1', 1),
(651, 'pre_app_bool2', 1),
(652, 'pre_app_bool3', 1),
(653, 'pre_app_bool4', 1),
(654, 'email', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sub` varchar(255) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `persons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`id`, `created_by`, `created_date`, `email`, `modified_by`, `modified_date`, `password`, `sub`, `token`, `user_id`, `persons_id`) VALUES
(5, NULL, '2022-01-07 11:06:42', 'santosh.sarkar@telecommand.com', NULL, NULL, NULL, '$2a$10$rY3V6UMlYvD/EXxHGbug5esyEnPxqB.K/JhKqIAhDq7J.qJ78J1sS', NULL, NULL, 5),
(6, NULL, '2022-01-07 13:32:09', 'anil.kumar@telecommand.com', NULL, NULL, NULL, '$2a$10$sCgk6W6J0Vlmyu8FY630rOEFLkg0ZUvsWKwbnofUNXaDxAMri2m6G', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parties_id` int(11) NOT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `alt_contact_email` varchar(255) DEFAULT NULL,
  `alt_contact_name` varchar(255) DEFAULT NULL,
  `alt_contact_phone` varchar(255) DEFAULT NULL,
  `alt_contact_title` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `alt_contact` tinyint(1) DEFAULT 0,
  `tribal_entity` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `name`, `parties_id`, `contact_email`, `contact_name`, `contact_phone`, `contact_title`, `county`, `region`, `type`, `address`, `alt_contact_email`, `alt_contact_name`, `alt_contact_phone`, `alt_contact_title`, `city`, `state`, `zip`, `alt_contact`, `tribal_entity`) VALUES
(11, 'Azure', '2022-01-07 11:06:42', NULL, NULL, 'Telecommand', 5, 'santosh.sarkar@telecommand.com', 'Santosh Sarkar', '9661765331', NULL, 'India', NULL, NULL, 'Nayatola', NULL, NULL, NULL, NULL, 'Katihar', 'Bihar', '854105', 0, 0),
(12, 'Azure', '2022-01-07 13:32:09', NULL, NULL, 'aa', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `organization_files`
--

CREATE TABLE `organization_files` (
  `id` int(11) NOT NULL,
  `directory_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `organizations_id` int(11) NOT NULL,
  `organization_file_fields_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization_files`
--

INSERT INTO `organization_files` (`id`, `directory_path`, `file_name`, `status`, `organizations_id`, `organization_file_fields_id`) VALUES
(2, NULL, '5.jpg,6.jpg,7.jpg', NULL, 11, 1),
(3, NULL, '1_2_.pdf', NULL, 12, 1),
(4, NULL, '30.png', NULL, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `organization_file_fields`
--

CREATE TABLE `organization_file_fields` (
  `id` int(11) NOT NULL,
  `directory_structure` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization_file_fields`
--

INSERT INTO `organization_file_fields` (`id`, `directory_structure`, `field_name`) VALUES
(1, 'cert_legal_disc', 'cert_legal_disc'),
(2, 'resolution', 'resolution');

-- --------------------------------------------------------

--
-- Table structure for table `organization_file_types`
--

CREATE TABLE `organization_file_types` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(5, 'Azure', '2022-01-07 11:06:42', NULL, NULL),
(6, 'Azure', '2022-01-07 13:32:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `party_roles`
--

CREATE TABLE `party_roles` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `parties_id` int(11) NOT NULL,
  `party_role_types_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `party_role_types`
--

CREATE TABLE `party_role_types` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` varchar(255) DEFAULT NULL,
  `parties_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `created_by`, `created_date`, `first_name`, `last_name`, `middle_initial`, `modified_by`, `modified_date`, `parties_id`) VALUES
(5, 'Azure', '2022-01-07 11:06:42', NULL, NULL, NULL, NULL, NULL, 5),
(6, 'Azure', '2022-01-07 13:32:09', NULL, NULL, NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `privilege_end_point` varchar(255) DEFAULT NULL,
  `privilege_categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `description`, `privilege_end_point`, `privilege_categories_id`) VALUES
(3, 'Add New Submissions', '/api/submissions', 1),
(4, 'Edit Submission', '/api/submissions/sid/joinDataResponse', 1),
(5, 'Delete Submissions', '/api/submissions/sid', 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege_categories`
--

CREATE TABLE `privilege_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privilege_categories`
--

INSERT INTO `privilege_categories` (`id`, `category`, `description`) VALUES
(1, 'Submission', 'Submission Related Access'),
(2, 'Users', 'Users Related Access');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `name`) VALUES
(1, NULL, '2022-01-25 06:40:46', NULL, NULL, 'admin'),
(2, NULL, '2022-01-25 06:40:46', NULL, NULL, 'editor'),
(3, NULL, '2022-01-25 06:41:26', NULL, NULL, 'deleter');

-- --------------------------------------------------------

--
-- Table structure for table `role_privileges`
--

CREATE TABLE `role_privileges` (
  `id` int(11) NOT NULL,
  `privileges_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_privileges`
--

INSERT INTO `role_privileges` (`id`, `privileges_id`, `roles_id`) VALUES
(1, 3, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `draft` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locked` bit(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `created_by`, `created_date`, `draft`, `email`, `locked`, `user_id`) VALUES
(3, 'Santosh', '2022-01-07 05:30:00', b'1', 'santosh.sarkar@telecommand.com', b'0', 5),
(4, 'Anil', '2022-01-07 05:30:00', b'1', 'anil.kumar@telecommand.com', b'0', 6),
(66, 'aa', '2022-01-07 11:06:07', b'1', 'a@a.com', b'0', NULL),
(67, 'Santosh', '2022-01-07 05:30:00', b'0', 'santosh.sarkar@telecommand.com', b'0', 5),
(68, 'Santosh', '2022-01-20 05:30:00', b'1', 'santosh.sarkar@telecommand.com', b'0', 5),
(69, 'Santosh', '2022-01-20 05:30:00', b'1', 'santosh.sarkar@telecommand.com', b'0', 5),
(70, 'Santosh', '2022-01-20 05:30:00', b'1', 'santosh.sarkar@telecommand.com', b'0', 5),
(71, 'xxxxxx', '2021-12-20 05:30:00', b'1', 'test@telecommand.com', b'0', 1),
(72, 'vvvvv', '2021-12-20 05:30:00', b'1', 'xxx@telecommand.com', b'0', 1),
(73, 'cccc', '2021-12-20 05:30:00', b'1', 'ccc@telecommand.com', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `submission_data`
--

CREATE TABLE `submission_data` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `data_value` varchar(255) DEFAULT NULL,
  `form_fields_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_data`
--

INSERT INTO `submission_data` (`id`, `created_by`, `data_value`, `form_fields_id`, `submission_id`) VALUES
(18, NULL, 'ddasasdsadssa@dsad.com', 654, 3),
(19, NULL, 'Telecommand', 62, 3),
(20, NULL, NULL, 60, 3),
(23, NULL, 'fsdfsadfdsfsdffdsffdssdff', 63, 3),
(24, NULL, 'fsdfdsfdsfsdfsdfsdfdf', 65, 3),
(25, NULL, 'Calaveras', 64, 3),
(26, NULL, '21231212124', 66, 3),
(27, NULL, 'sadasdsa@aa.com', 654, 4),
(29, NULL, 'sdsadsahgsad', 62, 4),
(30, NULL, 'dsadsadsdsa', 63, 4),
(31, NULL, 'dasdsadsa', 65, 4),
(34, NULL, 'Amador', 64, 4),
(35, NULL, '1212132', 66, 4),
(36, 'a', 'aaaaaaaa', 4, 66),
(38, NULL, 'true', 650, 67),
(39, NULL, 'true', 651, 67),
(40, NULL, 'true', 1, 67),
(41, NULL, 'true', 5, 67),
(42, NULL, 'sadasdsa@aa.com', 654, 67),
(43, NULL, 'Address', 63, 67),
(44, NULL, 'Katihar', 65, 67),
(45, NULL, 'Orange', 64, 67),
(46, NULL, '854105', 66, 67),
(47, NULL, NULL, 60, 67),
(48, NULL, 'Project Name', 62, 67),
(49, NULL, 'true', 650, 4),
(50, NULL, 'true', 650, 68),
(51, NULL, 'HQSFT', 62, 68),
(52, NULL, 'aaaa', 62, 69),
(53, NULL, ' ', 62, 71),
(54, NULL, 'NULL', 62, 72),
(55, NULL, 'NULL', 62, 73),
(56, NULL, 'NULL', 64, 73);

-- --------------------------------------------------------

--
-- Table structure for table `tabs`
--

CREATE TABLE `tabs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `webforms_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabs`
--

INSERT INTO `tabs` (`id`, `name`, `webforms_id`) VALUES
(1, 'Pre-Screening', 1),
(2, 'Programe-Selection', 1),
(3, 'Project-Information', 1),
(4, 'Project_Overview', 1),
(5, 'Supportive-Services-Plan', 1),
(6, 'Supportive-Housing-Experience', 1),
(7, 'Sponsor-Certification', 1),
(8, 'Scoring', 1),
(9, 'Workbook', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` varchar(255) DEFAULT NULL,
  `login_details_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `created_by`, `created_date`, `modified_by`, `modified_date`, `login_details_id`, `roles_id`) VALUES
(1, NULL, '2022-01-25 06:43:34', NULL, NULL, 5, 1),
(2, NULL, '2022-01-25 06:43:46', NULL, NULL, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `webforms`
--

CREATE TABLE `webforms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webforms`
--

INSERT INTO `webforms` (`id`, `name`) VALUES
(1, 'AB-434');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `48hr_report`
--
ALTER TABLE `48hr_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excel_fields`
--
ALTER TABLE `excel_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKj1nkvuy0rqdgjsw7i3e7m5tc5` (`tabs_id`);

--
-- Indexes for table `files_data`
--
ALTER TABLE `files_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhw4l6qq6vlogbuho7qjyliab8` (`files_id`),
  ADD KEY `FKfppydkxo9itu8h9gwagvqdtgp` (`submission_id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5xiprb869hmnj6s775jlm66oa` (`tabs_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_k8dnqfyqoj4s6c67p9rfo9jp6` (`email`),
  ADD KEY `FKt92jeyrbw1lw7tn0xt6gxxpes` (`persons_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc2blhk2r9l8i2oxrimw75wyh2` (`parties_id`);

--
-- Indexes for table `organization_files`
--
ALTER TABLE `organization_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeqnben1itxifif3rhm52ojfyv` (`organizations_id`),
  ADD KEY `FK7c286h0n5qirqmiwbh6cf3m0m` (`organization_file_fields_id`);

--
-- Indexes for table `organization_file_fields`
--
ALTER TABLE `organization_file_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_file_types`
--
ALTER TABLE `organization_file_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_roles`
--
ALTER TABLE `party_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4ps45sij4afbw8l9nu0ui57l2` (`parties_id`),
  ADD KEY `FK1gd7nhxr8jlhxp8a75ygpi6e2` (`party_role_types_id`);

--
-- Indexes for table `party_role_types`
--
ALTER TABLE `party_role_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5hc8b5h4y294rsyt96hs01jon` (`parties_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2qgeq6kl9ff6nfrve0r3krsp5` (`privilege_categories_id`);

--
-- Indexes for table `privilege_categories`
--
ALTER TABLE `privilege_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_privileges`
--
ALTER TABLE `role_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1ogn163i7q15fin6apx17xykc` (`privileges_id`),
  ADD KEY `FKpl1xcp6oi94ymjni0aqjfof0r` (`roles_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_data`
--
ALTER TABLE `submission_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK23yp3fx2bn7ldfvfk4wv6ty58` (`submission_id`,`form_fields_id`),
  ADD KEY `FKdv02m0n8eds8h2x7fi80bt7pd` (`form_fields_id`);

--
-- Indexes for table `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnchbdbktw145elgu8klnk7xf2` (`webforms_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp17rqkb4w7igyuicdc3amsahv` (`login_details_id`),
  ADD KEY `FKdbv8tdyltxa1qjmfnj9oboxse` (`roles_id`);

--
-- Indexes for table `webforms`
--
ALTER TABLE `webforms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `48hr_report`
--
ALTER TABLE `48hr_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `excel_fields`
--
ALTER TABLE `excel_fields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `files_data`
--
ALTER TABLE `files_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `organization_files`
--
ALTER TABLE `organization_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `organization_file_fields`
--
ALTER TABLE `organization_file_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `organization_file_types`
--
ALTER TABLE `organization_file_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `party_roles`
--
ALTER TABLE `party_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_role_types`
--
ALTER TABLE `party_role_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `privilege_categories`
--
ALTER TABLE `privilege_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_privileges`
--
ALTER TABLE `role_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `submission_data`
--
ALTER TABLE `submission_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FKj1nkvuy0rqdgjsw7i3e7m5tc5` FOREIGN KEY (`tabs_id`) REFERENCES `tabs` (`id`);

--
-- Constraints for table `files_data`
--
ALTER TABLE `files_data`
  ADD CONSTRAINT `FKfppydkxo9itu8h9gwagvqdtgp` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`),
  ADD CONSTRAINT `FKhw4l6qq6vlogbuho7qjyliab8` FOREIGN KEY (`files_id`) REFERENCES `files` (`id`);

--
-- Constraints for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD CONSTRAINT `FK5xiprb869hmnj6s775jlm66oa` FOREIGN KEY (`tabs_id`) REFERENCES `tabs` (`id`);

--
-- Constraints for table `login_details`
--
ALTER TABLE `login_details`
  ADD CONSTRAINT `FKt92jeyrbw1lw7tn0xt6gxxpes` FOREIGN KEY (`persons_id`) REFERENCES `persons` (`id`);

--
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `FKc2blhk2r9l8i2oxrimw75wyh2` FOREIGN KEY (`parties_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `organization_files`
--
ALTER TABLE `organization_files`
  ADD CONSTRAINT `FK7c286h0n5qirqmiwbh6cf3m0m` FOREIGN KEY (`organization_file_fields_id`) REFERENCES `organization_file_fields` (`id`),
  ADD CONSTRAINT `FKeqnben1itxifif3rhm52ojfyv` FOREIGN KEY (`organizations_id`) REFERENCES `organizations` (`id`);

--
-- Constraints for table `party_roles`
--
ALTER TABLE `party_roles`
  ADD CONSTRAINT `FK1gd7nhxr8jlhxp8a75ygpi6e2` FOREIGN KEY (`party_role_types_id`) REFERENCES `party_role_types` (`id`),
  ADD CONSTRAINT `FK4ps45sij4afbw8l9nu0ui57l2` FOREIGN KEY (`parties_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `FK5hc8b5h4y294rsyt96hs01jon` FOREIGN KEY (`parties_id`) REFERENCES `parties` (`id`);

--
-- Constraints for table `privileges`
--
ALTER TABLE `privileges`
  ADD CONSTRAINT `FK2qgeq6kl9ff6nfrve0r3krsp5` FOREIGN KEY (`privilege_categories_id`) REFERENCES `privilege_categories` (`id`);

--
-- Constraints for table `role_privileges`
--
ALTER TABLE `role_privileges`
  ADD CONSTRAINT `FK1ogn163i7q15fin6apx17xykc` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`),
  ADD CONSTRAINT `FKpl1xcp6oi94ymjni0aqjfof0r` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `submission_data`
--
ALTER TABLE `submission_data`
  ADD CONSTRAINT `FKdv02m0n8eds8h2x7fi80bt7pd` FOREIGN KEY (`form_fields_id`) REFERENCES `form_fields` (`id`),
  ADD CONSTRAINT `FKq2owl86bernay2ajl8aboc63v` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`id`);

--
-- Constraints for table `tabs`
--
ALTER TABLE `tabs`
  ADD CONSTRAINT `FKnchbdbktw145elgu8klnk7xf2` FOREIGN KEY (`webforms_id`) REFERENCES `webforms` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKdbv8tdyltxa1qjmfnj9oboxse` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKp17rqkb4w7igyuicdc3amsahv` FOREIGN KEY (`login_details_id`) REFERENCES `login_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
