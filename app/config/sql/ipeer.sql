-- phpMyAdmin SQL Dump
-- version 2.6.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 27, 2006 at 10:51 AM
-- Server version: 4.1.11
-- PHP Version: 4.3.10-16
--
-- Database: `ipeer2`
--

SET foreign_key_checks = 0;

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=365 ;

--
-- Dumping data for table `acos`
--

INSERT INTO acos (id, parent_id, model, foreign_key, alias, lft, rght) VALUES
(1, NULL, NULL, NULL, 'adminpage', 1, 2),
(2, NULL, NULL, NULL, 'controllers', 3, 672),
(3, 2, NULL, NULL, 'Pages', 4, 17),
(4, 3, NULL, NULL, 'display', 5, 6),
(5, 3, NULL, NULL, 'add', 7, 8),
(6, 3, NULL, NULL, 'edit', 9, 10),
(7, 3, NULL, NULL, 'index', 11, 12),
(8, 3, NULL, NULL, 'view', 13, 14),
(9, 3, NULL, NULL, 'delete', 15, 16),
(10, 2, NULL, NULL, 'Courses', 18, 43),
(11, 10, NULL, NULL, 'daysLate', 19, 20),
(12, 10, NULL, NULL, 'index', 21, 22),
(13, 10, NULL, NULL, 'ajaxList', 23, 24),
(14, 10, NULL, NULL, 'view', 25, 26),
(15, 10, NULL, NULL, 'home', 27, 28),
(16, 10, NULL, NULL, 'add', 29, 30),
(17, 10, NULL, NULL, 'edit', 31, 32),
(18, 10, NULL, NULL, 'delete', 33, 34),
(19, 10, NULL, NULL, 'addInstructor', 35, 36),
(20, 10, NULL, NULL, 'deleteInstructor', 37, 38),
(21, 10, NULL, NULL, 'checkDuplicateName', 39, 40),
(22, 10, NULL, NULL, 'update', 41, 42),
(23, 2, NULL, NULL, 'Departments', 44, 55),
(24, 23, NULL, NULL, 'index', 45, 46),
(25, 23, NULL, NULL, 'view', 47, 48),
(26, 23, NULL, NULL, 'add', 49, 50),
(27, 23, NULL, NULL, 'edit', 51, 52),
(28, 23, NULL, NULL, 'delete', 53, 54),
(29, 2, NULL, NULL, 'Emailer', 56, 87),
(30, 29, NULL, NULL, 'setUpAjaxList', 57, 58),
(31, 29, NULL, NULL, 'ajaxList', 59, 60),
(32, 29, NULL, NULL, 'index', 61, 62),
(33, 29, NULL, NULL, 'write', 63, 64),
(34, 29, NULL, NULL, 'cancel', 65, 66),
(35, 29, NULL, NULL, 'view', 67, 68),
(36, 29, NULL, NULL, 'addRecipient', 69, 70),
(37, 29, NULL, NULL, 'deleteRecipient', 71, 72),
(38, 29, NULL, NULL, 'getRecipient', 73, 74),
(39, 29, NULL, NULL, 'searchByUserId', 75, 76),
(40, 29, NULL, NULL, 'doMerge', 77, 78),
(41, 29, NULL, NULL, 'send', 79, 80),
(42, 29, NULL, NULL, 'add', 81, 82),
(43, 29, NULL, NULL, 'edit', 83, 84),
(44, 29, NULL, NULL, 'delete', 85, 86),
(45, 2, NULL, NULL, 'Emailtemplates', 88, 107),
(46, 45, NULL, NULL, 'setUpAjaxList', 89, 90),
(47, 45, NULL, NULL, 'ajaxList', 91, 92),
(48, 45, NULL, NULL, 'index', 93, 94),
(49, 45, NULL, NULL, 'add', 95, 96),
(50, 45, NULL, NULL, 'edit', 97, 98),
(51, 45, NULL, NULL, 'delete', 99, 100),
(52, 45, NULL, NULL, 'view', 101, 102),
(53, 45, NULL, NULL, 'displayTemplateContent', 103, 104),
(54, 45, NULL, NULL, 'displayTemplateSubject', 105, 106),
(55, 2, NULL, NULL, 'Evaltools', 108, 121),
(56, 55, NULL, NULL, 'index', 109, 110),
(57, 55, NULL, NULL, 'showAll', 111, 112),
(58, 55, NULL, NULL, 'add', 113, 114),
(59, 55, NULL, NULL, 'edit', 115, 116),
(60, 55, NULL, NULL, 'view', 117, 118),
(61, 55, NULL, NULL, 'delete', 119, 120),
(62, 2, NULL, NULL, 'Evaluations', 122, 189),
(63, 62, NULL, NULL, 'postProcess', 123, 124),
(64, 62, NULL, NULL, 'setUpAjaxList', 125, 126),
(65, 62, NULL, NULL, 'ajaxList', 127, 128),
(66, 62, NULL, NULL, 'view', 129, 130),
(67, 62, NULL, NULL, 'index', 131, 132),
(68, 62, NULL, NULL, 'update', 133, 134),
(69, 62, NULL, NULL, 'export', 135, 136),
(70, 62, NULL, NULL, 'makeSimpleEvaluation', 137, 138),
(71, 62, NULL, NULL, 'validSimpleEvalComplete', 139, 140),
(72, 62, NULL, NULL, 'makeSurveyEvaluation', 141, 142),
(73, 62, NULL, NULL, 'validSurveyEvalComplete', 143, 144),
(74, 62, NULL, NULL, 'makeRubricEvaluation', 145, 146),
(75, 62, NULL, NULL, 'validRubricEvalComplete', 147, 148),
(76, 62, NULL, NULL, 'completeEvaluationRubric', 149, 150),
(77, 62, NULL, NULL, 'makeMixevalEvaluation', 151, 152),
(78, 62, NULL, NULL, 'validMixevalEvalComplete', 153, 154),
(79, 62, NULL, NULL, 'completeEvaluationMixeval', 155, 156),
(80, 62, NULL, NULL, 'viewEvaluationResults', 157, 158),
(81, 62, NULL, NULL, 'viewSurveyGroupEvaluationResults', 159, 160),
(82, 62, NULL, NULL, 'studentViewEvaluationResult', 161, 162),
(83, 62, NULL, NULL, 'markEventReviewed', 163, 164),
(84, 62, NULL, NULL, 'markGradeRelease', 165, 166),
(85, 62, NULL, NULL, 'markCommentRelease', 167, 168),
(86, 62, NULL, NULL, 'changeAllCommentRelease', 169, 170),
(87, 62, NULL, NULL, 'changeAllGradeRelease', 171, 172),
(88, 62, NULL, NULL, 'viewGroupSubmissionDetails', 173, 174),
(89, 62, NULL, NULL, 'viewSurveySummary', 175, 176),
(90, 62, NULL, NULL, 'export_rubic', 177, 178),
(91, 62, NULL, NULL, 'export_test', 179, 180),
(92, 62, NULL, NULL, 'pre', 181, 182),
(93, 62, NULL, NULL, 'add', 183, 184),
(94, 62, NULL, NULL, 'edit', 185, 186),
(95, 62, NULL, NULL, 'delete', 187, 188),
(96, 2, NULL, NULL, 'Events', 190, 221),
(97, 96, NULL, NULL, 'postProcessData', 191, 192),
(98, 96, NULL, NULL, 'setUpAjaxList', 193, 194),
(99, 96, NULL, NULL, 'index', 195, 196),
(100, 96, NULL, NULL, 'ajaxList', 197, 198),
(101, 96, NULL, NULL, 'view', 199, 200),
(102, 96, NULL, NULL, 'eventTemplatesList', 201, 202),
(103, 96, NULL, NULL, 'add', 203, 204),
(104, 96, NULL, NULL, 'edit', 205, 206),
(105, 96, NULL, NULL, 'delete', 207, 208),
(106, 96, NULL, NULL, 'search', 209, 210),
(107, 96, NULL, NULL, 'checkDuplicateTitle', 211, 212),
(108, 96, NULL, NULL, 'viewGroups', 213, 214),
(109, 96, NULL, NULL, 'editGroup', 215, 216),
(110, 96, NULL, NULL, 'getAssignedGroups', 217, 218),
(111, 96, NULL, NULL, 'update', 219, 220),
(112, 2, NULL, NULL, 'Faculties', 222, 233),
(113, 112, NULL, NULL, 'index', 223, 224),
(114, 112, NULL, NULL, 'view', 225, 226),
(115, 112, NULL, NULL, 'add', 227, 228),
(116, 112, NULL, NULL, 'edit', 229, 230),
(117, 112, NULL, NULL, 'delete', 231, 232),
(118, 2, NULL, NULL, 'Framework', 234, 251),
(119, 118, NULL, NULL, 'calendarDisplay', 235, 236),
(120, 118, NULL, NULL, 'userInfoDisplay', 237, 238),
(121, 118, NULL, NULL, 'tutIndex', 239, 240),
(122, 118, NULL, NULL, 'add', 241, 242),
(123, 118, NULL, NULL, 'edit', 243, 244),
(124, 118, NULL, NULL, 'index', 245, 246),
(125, 118, NULL, NULL, 'view', 247, 248),
(126, 118, NULL, NULL, 'delete', 249, 250),
(127, 2, NULL, NULL, 'Groups', 252, 285),
(128, 127, NULL, NULL, 'postProcess', 253, 254),
(129, 127, NULL, NULL, 'setUpAjaxList', 255, 256),
(130, 127, NULL, NULL, 'index', 257, 258),
(131, 127, NULL, NULL, 'ajaxList', 259, 260),
(132, 127, NULL, NULL, 'goToClassList', 261, 262),
(133, 127, NULL, NULL, 'view', 263, 264),
(134, 127, NULL, NULL, 'add', 265, 266),
(135, 127, NULL, NULL, 'edit', 267, 268),
(136, 127, NULL, NULL, 'delete', 269, 270),
(137, 127, NULL, NULL, 'checkDuplicateName', 271, 272),
(138, 127, NULL, NULL, 'getQueryAttribute', 273, 274),
(139, 127, NULL, NULL, 'import', 275, 276),
(140, 127, NULL, NULL, 'addGroupByImport', 277, 278),
(141, 127, NULL, NULL, 'update', 279, 280),
(142, 127, NULL, NULL, 'export', 281, 282),
(143, 127, NULL, NULL, 'sendGroupEmail', 283, 284),
(144, 2, NULL, NULL, 'Home', 286, 299),
(145, 144, NULL, NULL, 'index', 287, 288),
(146, 144, NULL, NULL, 'studentIndex', 289, 290),
(147, 144, NULL, NULL, 'add', 291, 292),
(148, 144, NULL, NULL, 'edit', 293, 294),
(149, 144, NULL, NULL, 'view', 295, 296),
(150, 144, NULL, NULL, 'delete', 297, 298),
(151, 2, NULL, NULL, 'Install', 300, 321),
(152, 151, NULL, NULL, 'index', 301, 302),
(153, 151, NULL, NULL, 'install2', 303, 304),
(154, 151, NULL, NULL, 'install3', 305, 306),
(155, 151, NULL, NULL, 'install4', 307, 308),
(156, 151, NULL, NULL, 'install5', 309, 310),
(157, 151, NULL, NULL, 'gpl', 311, 312),
(158, 151, NULL, NULL, 'add', 313, 314),
(159, 151, NULL, NULL, 'edit', 315, 316),
(160, 151, NULL, NULL, 'view', 317, 318),
(161, 151, NULL, NULL, 'delete', 319, 320),
(162, 2, NULL, NULL, 'Lti', 322, 333),
(163, 162, NULL, NULL, 'index', 323, 324),
(164, 162, NULL, NULL, 'add', 325, 326),
(165, 162, NULL, NULL, 'edit', 327, 328),
(166, 162, NULL, NULL, 'view', 329, 330),
(167, 162, NULL, NULL, 'delete', 331, 332),
(168, 2, NULL, NULL, 'Mixevals', 334, 363),
(169, 168, NULL, NULL, 'postProcess', 335, 336),
(170, 168, NULL, NULL, 'setUpAjaxList', 337, 338),
(171, 168, NULL, NULL, 'index', 339, 340),
(172, 168, NULL, NULL, 'ajaxList', 341, 342),
(173, 168, NULL, NULL, 'view', 343, 344),
(174, 168, NULL, NULL, 'add', 345, 346),
(175, 168, NULL, NULL, 'deleteQuestion', 347, 348),
(176, 168, NULL, NULL, 'deleteDescriptor', 349, 350),
(177, 168, NULL, NULL, 'edit', 351, 352),
(178, 168, NULL, NULL, 'copy', 353, 354),
(179, 168, NULL, NULL, 'delete', 355, 356),
(180, 168, NULL, NULL, 'previewMixeval', 357, 358),
(181, 168, NULL, NULL, 'renderRows', 359, 360),
(182, 168, NULL, NULL, 'update', 361, 362),
(183, 2, NULL, NULL, 'OauthClients', 364, 375),
(184, 183, NULL, NULL, 'index', 365, 366),
(185, 183, NULL, NULL, 'add', 367, 368),
(186, 183, NULL, NULL, 'edit', 369, 370),
(187, 183, NULL, NULL, 'delete', 371, 372),
(188, 183, NULL, NULL, 'view', 373, 374),
(189, 2, NULL, NULL, 'OauthTokens', 376, 387),
(190, 189, NULL, NULL, 'index', 377, 378),
(191, 189, NULL, NULL, 'add', 379, 380),
(192, 189, NULL, NULL, 'edit', 381, 382),
(193, 189, NULL, NULL, 'delete', 383, 384),
(194, 189, NULL, NULL, 'view', 385, 386),
(195, 2, NULL, NULL, 'Penalty', 388, 401),
(196, 195, NULL, NULL, 'save', 389, 390),
(197, 195, NULL, NULL, 'add', 391, 392),
(198, 195, NULL, NULL, 'edit', 393, 394),
(199, 195, NULL, NULL, 'index', 395, 396),
(200, 195, NULL, NULL, 'view', 397, 398),
(201, 195, NULL, NULL, 'delete', 399, 400),
(202, 2, NULL, NULL, 'Rubrics', 402, 423),
(203, 202, NULL, NULL, 'postProcess', 403, 404),
(204, 202, NULL, NULL, 'setUpAjaxList', 405, 406),
(205, 202, NULL, NULL, 'index', 407, 408),
(206, 202, NULL, NULL, 'ajaxList', 409, 410),
(207, 202, NULL, NULL, 'view', 411, 412),
(208, 202, NULL, NULL, 'add', 413, 414),
(209, 202, NULL, NULL, 'edit', 415, 416),
(210, 202, NULL, NULL, 'copy', 417, 418),
(211, 202, NULL, NULL, 'delete', 419, 420),
(212, 202, NULL, NULL, 'setForm_RubricName', 421, 422),
(213, 2, NULL, NULL, 'Searchs', 424, 451),
(214, 213, NULL, NULL, 'update', 425, 426),
(215, 213, NULL, NULL, 'index', 427, 428),
(216, 213, NULL, NULL, 'searchEvaluation', 429, 430),
(217, 213, NULL, NULL, 'searchResult', 431, 432),
(218, 213, NULL, NULL, 'searchInstructor', 433, 434),
(219, 213, NULL, NULL, 'eventBoxSearch', 435, 436),
(220, 213, NULL, NULL, 'formatSearchEvaluation', 437, 438),
(221, 213, NULL, NULL, 'formatSearchInstructor', 439, 440),
(222, 213, NULL, NULL, 'formatSearchEvaluationResult', 441, 442),
(223, 213, NULL, NULL, 'add', 443, 444),
(224, 213, NULL, NULL, 'edit', 445, 446),
(225, 213, NULL, NULL, 'view', 447, 448),
(226, 213, NULL, NULL, 'delete', 449, 450),
(227, 2, NULL, NULL, 'Simpleevaluations', 452, 471),
(228, 227, NULL, NULL, 'postProcess', 453, 454),
(229, 227, NULL, NULL, 'setUpAjaxList', 455, 456),
(230, 227, NULL, NULL, 'index', 457, 458),
(231, 227, NULL, NULL, 'ajaxList', 459, 460),
(232, 227, NULL, NULL, 'view', 461, 462),
(233, 227, NULL, NULL, 'add', 463, 464),
(234, 227, NULL, NULL, 'edit', 465, 466),
(235, 227, NULL, NULL, 'copy', 467, 468),
(236, 227, NULL, NULL, 'delete', 469, 470),
(237, 2, NULL, NULL, 'Surveygroups', 472, 503),
(238, 237, NULL, NULL, 'postProcess', 473, 474),
(239, 237, NULL, NULL, 'setUpAjaxList', 475, 476),
(240, 237, NULL, NULL, 'index', 477, 478),
(241, 237, NULL, NULL, 'ajaxList', 479, 480),
(242, 237, NULL, NULL, 'viewresult', 481, 482),
(243, 237, NULL, NULL, 'makegroups', 483, 484),
(244, 237, NULL, NULL, 'makegroupssearch', 485, 486),
(245, 237, NULL, NULL, 'maketmgroups', 487, 488),
(246, 237, NULL, NULL, 'savegroups', 489, 490),
(247, 237, NULL, NULL, 'release', 491, 492),
(248, 237, NULL, NULL, 'delete', 493, 494),
(249, 237, NULL, NULL, 'edit', 495, 496),
(250, 237, NULL, NULL, 'changegroupset', 497, 498),
(251, 237, NULL, NULL, 'add', 499, 500),
(252, 237, NULL, NULL, 'view', 501, 502),
(253, 2, NULL, NULL, 'Surveys', 504, 537),
(254, 253, NULL, NULL, 'setUpAjaxList', 505, 506),
(255, 253, NULL, NULL, 'index', 507, 508),
(256, 253, NULL, NULL, 'ajaxList', 509, 510),
(257, 253, NULL, NULL, 'view', 511, 512),
(258, 253, NULL, NULL, 'add', 513, 514),
(259, 253, NULL, NULL, 'edit', 515, 516),
(260, 253, NULL, NULL, 'copy', 517, 518),
(261, 253, NULL, NULL, 'delete', 519, 520),
(262, 253, NULL, NULL, 'checkDuplicateName', 521, 522),
(263, 253, NULL, NULL, 'releaseSurvey', 523, 524),
(264, 253, NULL, NULL, 'questionsSummary', 525, 526),
(265, 253, NULL, NULL, 'moveQuestion', 527, 528),
(266, 253, NULL, NULL, 'removeQuestion', 529, 530),
(267, 253, NULL, NULL, 'addQuestion', 531, 532),
(268, 253, NULL, NULL, 'editQuestion', 533, 534),
(269, 253, NULL, NULL, 'update', 535, 536),
(270, 2, NULL, NULL, 'Sysfunctions', 538, 555),
(271, 270, NULL, NULL, 'setUpAjaxList', 539, 540),
(272, 270, NULL, NULL, 'index', 541, 542),
(273, 270, NULL, NULL, 'ajaxList', 543, 544),
(274, 270, NULL, NULL, 'view', 545, 546),
(275, 270, NULL, NULL, 'edit', 547, 548),
(276, 270, NULL, NULL, 'delete', 549, 550),
(277, 270, NULL, NULL, 'update', 551, 552),
(278, 270, NULL, NULL, 'add', 553, 554),
(279, 2, NULL, NULL, 'Sysparameters', 556, 571),
(280, 279, NULL, NULL, 'setUpAjaxList', 557, 558),
(281, 279, NULL, NULL, 'index', 559, 560),
(282, 279, NULL, NULL, 'ajaxList', 561, 562),
(283, 279, NULL, NULL, 'view', 563, 564),
(284, 279, NULL, NULL, 'add', 565, 566),
(285, 279, NULL, NULL, 'edit', 567, 568),
(286, 279, NULL, NULL, 'delete', 569, 570),
(287, 2, NULL, NULL, 'Upgrade', 572, 587),
(288, 287, NULL, NULL, 'index', 573, 574),
(289, 287, NULL, NULL, 'step2', 575, 576),
(290, 287, NULL, NULL, 'checkPermission', 577, 578),
(291, 287, NULL, NULL, 'add', 579, 580),
(292, 287, NULL, NULL, 'edit', 581, 582),
(293, 287, NULL, NULL, 'view', 583, 584),
(294, 287, NULL, NULL, 'delete', 585, 586),
(295, 2, NULL, NULL, 'Users', 588, 617),
(296, 295, NULL, NULL, 'ajaxList', 589, 590),
(297, 295, NULL, NULL, 'index', 591, 592),
(298, 295, NULL, NULL, 'goToClassList', 593, 594),
(299, 295, NULL, NULL, 'determineIfStudentFromThisData', 595, 596),
(300, 295, NULL, NULL, 'getSimpleEntrollmentLists', 597, 598),
(301, 295, NULL, NULL, 'view', 599, 600),
(302, 295, NULL, NULL, 'add', 601, 602),
(303, 295, NULL, NULL, 'edit', 603, 604),
(304, 295, NULL, NULL, 'editProfile', 605, 606),
(305, 295, NULL, NULL, 'delete', 607, 608),
(306, 295, NULL, NULL, 'checkDuplicateName', 609, 610),
(307, 295, NULL, NULL, 'resetPassword', 611, 612),
(308, 295, NULL, NULL, 'import', 613, 614),
(309, 295, NULL, NULL, 'update', 615, 616),
(310, 2, NULL, NULL, 'V1', 618, 653),
(311, 310, NULL, NULL, 'oauth', 619, 620),
(312, 310, NULL, NULL, 'oauth_error', 621, 622),
(313, 310, NULL, NULL, 'users', 623, 624),
(314, 310, NULL, NULL, 'courses', 625, 626),
(315, 310, NULL, NULL, 'groups', 627, 628),
(316, 310, NULL, NULL, 'groupMembers', 629, 630),
(317, 310, NULL, NULL, 'events', 631, 632),
(318, 310, NULL, NULL, 'grades', 633, 634),
(319, 310, NULL, NULL, 'departments', 635, 636),
(320, 310, NULL, NULL, 'courseDepartments', 637, 638),
(321, 310, NULL, NULL, 'userEvents', 639, 640),
(322, 310, NULL, NULL, 'enrolment', 641, 642),
(323, 310, NULL, NULL, 'add', 643, 644),
(324, 310, NULL, NULL, 'edit', 645, 646),
(325, 310, NULL, NULL, 'index', 647, 648),
(326, 310, NULL, NULL, 'view', 649, 650),
(327, 310, NULL, NULL, 'delete', 651, 652),
(328, 2, NULL, NULL, 'Guard', 654, 671),
(329, 328, NULL, NULL, 'Guard', 655, 670),
(330, 329, NULL, NULL, 'login', 656, 657),
(331, 329, NULL, NULL, 'logout', 658, 659),
(332, 329, NULL, NULL, 'add', 660, 661),
(333, 329, NULL, NULL, 'edit', 662, 663),
(334, 329, NULL, NULL, 'index', 664, 665),
(335, 329, NULL, NULL, 'view', 666, 667),
(336, 329, NULL, NULL, 'delete', 668, 669),
(337, NULL, NULL, NULL, 'functions', 673, 736),
(338, 337, NULL, NULL, 'user', 674, 701),
(339, 338, NULL, NULL, 'superadmin', 675, 676),
(340, 338, NULL, NULL, 'admin', 677, 678),
(341, 338, NULL, NULL, 'instructor', 679, 680),
(342, 338, NULL, NULL, 'tutor', 681, 682),
(343, 338, NULL, NULL, 'student', 683, 684),
(344, 338, NULL, NULL, 'import', 685, 686),
(345, 338, NULL, NULL, 'password_reset', 687, 698),
(346, 345, NULL, NULL, 'superadmin', 688, 689),
(347, 345, NULL, NULL, 'admin', 690, 691),
(348, 345, NULL, NULL, 'instructor', 692, 693),
(349, 345, NULL, NULL, 'tutor', 694, 695),
(350, 345, NULL, NULL, 'student', 696, 697),
(351, 338, NULL, NULL, 'index', 699, 700),
(352, 337, NULL, NULL, 'role', 702, 713),
(353, 352, NULL, NULL, 'superadmin', 703, 704),
(354, 352, NULL, NULL, 'admin', 705, 706),
(355, 352, NULL, NULL, 'instructor', 707, 708),
(356, 352, NULL, NULL, 'tutor', 709, 710),
(357, 352, NULL, NULL, 'student', 711, 712),
(358, 337, NULL, NULL, 'evaluation', 714, 717),
(359, 358, NULL, NULL, 'export', 715, 716),
(360, 337, NULL, NULL, 'email', 718, 725),
(361, 360, NULL, NULL, 'allUsers', 719, 720),
(362, 360, NULL, NULL, 'allGroups', 721, 722),
(363, 360, NULL, NULL, 'allCourses', 723, 724),
(364, 337, NULL, NULL, 'emailtemplate', 726, 727),
(365, 337, NULL, NULL, 'viewstudentresults', 728, 729),
(366, 337, NULL, NULL, 'viewemailaddresses', 730, 731),
(367, 337, NULL, NULL, 'superadmin', 732, 733),
(368, 337, NULL, NULL, 'onlytakeeval', 734, 735);




-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, NULL, 1, 2),
(2, NULL, 'Role', 2, NULL, 3, 4),
(3, NULL, 'Role', 3, NULL, 5, 6),
(4, NULL, 'Role', 4, NULL, 7, 8),
(5, NULL, 'Role', 5, NULL, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO aros_acos (id, aro_id, aco_id, _create, _read, _update, _delete) VALUES
(1, 1, 2, '1', '1', '1', '1'),
(2, 1, 337, '1', '1', '1', '1'),
(3, 1, 55, '1', '1', '1', '1'),
(4, 1, 227, '1', '1', '1', '1'),
(5, 1, 202, '1', '1', '1', '1'),
(6, 1, 168, '1', '1', '1', '1'),
(7, 1, 253, '1', '1', '1', '1'),
(8, 1, 29, '1', '1', '1', '1'),
(9, 1, 45, '1', '1', '1', '1'),
(10, 1, 96, '1', '1', '1', '1'),
(11, 1, 112, '1', '1', '1', '1'),
(12, 1, 23, '1', '1', '1', '1'),
(13, 1, 127, '1', '1', '1', '1'),
(14, 1, 1, '1', '1', '1', '1'),
(15, 1, 366, '1', '1', '1', '1'),
(16, 1, 367, '1', '1', '1', '1'),
(17, 2, 2, '-1', '-1', '-1', '-1'),
(18, 2, 144, '1', '1', '1', '1'),
(19, 2, 10, '1', '1', '1', '1'),
(20, 2, 23, '1', '1', '1', '1'),
(21, 2, 29, '1', '1', '1', '1'),
(22, 2, 45, '1', '1', '1', '1'),
(23, 2, 55, '1', '1', '1', '1'),
(24, 2, 96, '1', '1', '1', '1'),
(25, 2, 127, '1', '1', '1', '1'),
(26, 2, 168, '1', '1', '1', '1'),
(27, 2, 202, '1', '1', '1', '1'),
(28, 2, 227, '1', '1', '1', '1'),
(29, 2, 253, '1', '1', '1', '1'),
(30, 2, 295, '1', '1', '1', '1'),
(31, 2, 62, '1', '1', '1', '1'),
(32, 2, 337, '-1', '-1', '-1', '-1'),
(33, 2, 364, '1', '1', '1', '1'),
(34, 2, 358, '1', '1', '1', '1'),
(35, 2, 361, '1', '1', '1', '1'),
(36, 2, 338, '1', '1', '1', '1'),
(37, 2, 340, '-1', '1', '-1', '-1'),
(38, 2, 339, '-1', '-1', '-1', '-1'),
(39, 2, 1, '1', '1', '1', '1'),
(40, 2, 366, '1', '1', '1', '1'),
(41, 2, 367, '-1', '-1', '-1', '-1'),
(42, 3, 2, '-1', '-1', '-1', '-1'),
(43, 3, 144, '1', '1', '1', '1'),
(44, 3, 10, '1', '1', '1', '1'),
(45, 3, 16, '-1', '-1', '-1', '-1'),
(46, 3, 17, '-1', '-1', '-1', '-1'),
(47, 3, 29, '1', '1', '1', '1'),
(48, 3, 45, '1', '1', '1', '1'),
(49, 3, 55, '1', '1', '1', '1'),
(50, 3, 96, '1', '1', '1', '1'),
(51, 3, 127, '1', '1', '1', '1'),
(52, 3, 168, '1', '1', '1', '1'),
(53, 3, 202, '1', '1', '1', '1'),
(54, 3, 227, '1', '1', '1', '1'),
(55, 3, 253, '1', '1', '1', '1'),
(56, 3, 295, '1', '1', '1', '1'),
(57, 3, 337, '-1', '-1', '-1', '-1'),
(58, 3, 358, '1', '1', '-1', '-1'),
(59, 3, 338, '1', '1', '1', '1'),
(60, 3, 340, '-1', '-1', '-1', '-1'),
(61, 3, 339, '-1', '-1', '-1', '-1'),
(62, 3, 341, '-1', '1', '-1', '-1'),
(63, 3, 351, '-1', '-1', '-1', '-1'),
(64, 3, 366, '-1', '-1', '-1', '-1'),
(65, 3, 367, '-1', '-1', '-1', '-1'),
(66, 3, 368, '-1', '-1', '-1', '-1'),
(67, 4, 2, '-1', '-1', '-1', '-1'),
(68, 4, 144, '1', '1', '1', '1'),
(69, 4, 10, '-1', '-1', '-1', '-1'),
(70, 4, 29, '-1', '-1', '-1', '-1'),
(71, 4, 45, '-1', '-1', '-1', '-1'),
(72, 4, 55, '-1', '-1', '-1', '-1'),
(73, 4, 96, '-1', '-1', '-1', '-1'),
(74, 4, 127, '-1', '-1', '-1', '-1'),
(75, 4, 168, '-1', '-1', '-1', '-1'),
(76, 4, 202, '-1', '-1', '-1', '-1'),
(77, 4, 227, '-1', '-1', '-1', '-1'),
(78, 4, 253, '-1', '-1', '-1', '-1'),
(79, 4, 295, '-1', '-1', '-1', '-1'),
(80, 4, 337, '-1', '-1', '-1', '-1'),
(81, 4, 366, '-1', '-1', '-1', '-1'),
(82, 4, 367, '-1', '-1', '-1', '-1'),
(83, 4, 368, '1', '1', '1', '1'),
(84, 5, 2, '-1', '-1', '-1', '-1'),
(85, 5, 144, '1', '1', '1', '1'),
(86, 5, 10, '-1', '-1', '-1', '-1'),
(87, 5, 29, '-1', '-1', '-1', '-1'),
(88, 5, 45, '-1', '-1', '-1', '-1'),
(89, 5, 55, '-1', '-1', '-1', '-1'),
(90, 5, 96, '-1', '-1', '-1', '-1'),
(91, 5, 127, '-1', '-1', '-1', '-1'),
(92, 5, 168, '-1', '-1', '-1', '-1'),
(93, 5, 202, '-1', '-1', '-1', '-1'),
(94, 5, 227, '-1', '-1', '-1', '-1'),
(95, 5, 253, '-1', '-1', '-1', '-1'),
(96, 5, 295, '-1', '-1', '-1', '-1'),
(97, 5, 337, '-1', '-1', '-1', '-1'),
(98, 5, 365, '1', '1', '1', '1'),
(99, 5, 366, '-1', '-1', '-1', '-1'),
(100, 5, 367, '-1', '-1', '-1', '-1'),
(101, 5, 368, '1', '1', '1', '1');


-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `course` varchar(80) NOT NULL default '',
  `title` varchar(80) default NULL,
  `homepage` varchar(100) default NULL,
  `self_enroll` varchar(3) default 'off',
  `password` varchar(25) default NULL,
  `record_status` varchar(1) NOT NULL default 'A',
  `creator_id` int(11) NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `updater_id` int(11) default NULL,
  `modified` datetime default NULL,
  `instructor_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `course` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `student_no` varchar(30) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `last_accessed` varchar(10) DEFAULT NULL,
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `lti_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE (`lti_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `student_no`, `title`, `email`, `last_login`, `last_logout`, `last_accessed`, `record_status`, `creator_id`, `created`, `updater_id`, `modified`, `lti_id`) VALUES
(1, 'root', '', 'Super', 'Admin', NULL, NULL, '', NULL, NULL, NULL, 'A', 1, NOW(), NULL, NOW(), NULL);


-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `faculty_id` int NOT NULL,
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  PRIMARY KEY (`id`),
  UNIQUE (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `course_departments`
--

DROP TABLE IF EXISTS `course_departments`;
CREATE TABLE `course_departments` (
  `id` int NOT NULL auto_increment,
  `course_id` int NOT NULL,
  `department_id` int NOT NULL,
  FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_merges`
--

DROP TABLE IF EXISTS `email_merges`;
CREATE TABLE IF NOT EXISTS `email_merges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(80) NOT NULL,
  `value` varchar(80) NOT NULL,
  `table_name` varchar(80) NOT NULL,
  `field_name` varchar(80) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `email_merges`
--

INSERT INTO `email_merges` (`id`, `key`, `value`, `table_name`, `field_name`, `created`, `modified`) VALUES
(1, 'Username', '{{{USERNAME}}}', 'User', 'username', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'First Name', '{{{FIRSTNAME}}}', 'User', 'first_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Last Name', '{{{LASTNAME}}}', 'User', 'last_name', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Email Address', '{{{Email}}}', 'User', 'email', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_schedules`
--

DROP TABLE IF EXISTS `email_schedules`;
CREATE TABLE IF NOT EXISTS `email_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  `from` varchar(80) NOT NULL,
  `to` varchar(600) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `grp_id` int(11) DEFAULT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `subject` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `availability` tinyint(4) NOT NULL,
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00',
  `updater_id` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_mixeval_details`
--

DROP TABLE IF EXISTS `evaluation_mixeval_details`;
CREATE TABLE IF NOT EXISTS `evaluation_mixeval_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluation_mixeval_id` int(11) NOT NULL DEFAULT '0',
  `question_number` int(11) NOT NULL DEFAULT '0',
  `question_comment` text,
  `selected_lom` int(11) NOT NULL DEFAULT '0',
  `grade` double(12,2) NOT NULL DEFAULT '0.00',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `evaluation_mixeval_id` (`evaluation_mixeval_id`,`question_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_mixevals`
--

DROP TABLE IF EXISTS `evaluation_mixevals`;
CREATE TABLE IF NOT EXISTS `evaluation_mixevals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluator` int(11) NOT NULL DEFAULT '0',
  `evaluatee` int(11) NOT NULL DEFAULT '0',
  `score` double(12,2) NOT NULL DEFAULT '0.00',
  `comment_release` int(1) NOT NULL DEFAULT '0',
  `grade_release` int(1) NOT NULL DEFAULT '0',
  `grp_event_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


-- --------------------------------------------------------

--
-- Table structure for table `evaluation_rubric_details`
--

DROP TABLE IF EXISTS `evaluation_rubric_details`;
CREATE TABLE IF NOT EXISTS `evaluation_rubric_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluation_rubric_id` int(11) NOT NULL DEFAULT '0',
  `criteria_number` int(11) NOT NULL DEFAULT '0',
  `criteria_comment` varchar(255) DEFAULT NULL,
  `selected_lom` int(11) NOT NULL DEFAULT '0',
  `grade` double(12,2) NOT NULL DEFAULT '0.00',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `evaluation_rubric_id` (`evaluation_rubric_id`,`criteria_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_rubrics`
--

DROP TABLE IF EXISTS `evaluation_rubrics`;
CREATE TABLE IF NOT EXISTS `evaluation_rubrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluator` int(11) NOT NULL DEFAULT '0',
  `evaluatee` int(11) NOT NULL DEFAULT '0',
  `general_comment` text,
  `score` double(12,2) NOT NULL DEFAULT '0.00',
  `comment_release` int(1) NOT NULL DEFAULT '0',
  `grade_release` int(1) NOT NULL DEFAULT '0',
  `grp_event_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `rubric_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_simples`
--

DROP TABLE IF EXISTS `evaluation_simples`;
CREATE TABLE IF NOT EXISTS `evaluation_simples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluator` int(11) NOT NULL DEFAULT '0',
  `evaluatee` int(11) NOT NULL DEFAULT '0',
  `score` int(5) NOT NULL DEFAULT '0',
  `eval_comment` text,
  `release_status` int(1) NOT NULL DEFAULT '0',
  `grp_event_id` int(11) NOT NULL DEFAULT '0',
  `event_id` bigint(11) NOT NULL DEFAULT '0',
  `date_submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `grade_release` int(1) DEFAULT NULL,
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_submissions`
--

DROP TABLE IF EXISTS `evaluation_submissions`;
CREATE TABLE IF NOT EXISTS `evaluation_submissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` bigint(20) NOT NULL DEFAULT '0',
  `grp_event_id` int(11) DEFAULT NULL,
  `submitter_id` int(11) NOT NULL DEFAULT '0',
  `submitted` tinyint(1) NOT NULL DEFAULT '0',
  `date_submitted` datetime DEFAULT NULL,
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grp_event_id` (`grp_event_id`,`submitter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_template_types`
--

DROP TABLE IF EXISTS `event_template_types`;
CREATE TABLE IF NOT EXISTS `event_template_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '',
  `table_name` varchar(50) NOT NULL DEFAULT '',
  `model_name` varchar(80) NOT NULL DEFAULT '',
  `display_for_selection` tinyint(1) NOT NULL DEFAULT '1',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name` (`type_name`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `event_template_types`
--

INSERT INTO `event_template_types` (`id`, `type_name`, `table_name`, `model_name`, `display_for_selection`, `record_status`, `creator_id`, `created`, `updater_id`, `modified`) VALUES
(1, 'SIMPLE', 'simple_evaluations', 'SimpleEvaluation', 1, 'A', 0, '0000-00-00 00:00:00', NULL, NULL),
(2, 'RUBRIC', 'rubrics', 'Rubric', 1, 'A', 0, '0000-00-00 00:00:00', NULL, NULL),
(3, 'SURVEY', 'surveys', '', 0, 'A', 0, '0000-00-00 00:00:00', NULL, NULL),
(4, 'MIX EVALUATION', 'mixevals', 'Mixeval', 1, 'A', 0, '2006-04-03 11:51:02', 0, '2006-04-06 15:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `event_template_type_id` int(20) NOT NULL DEFAULT '0',
  `template_id` int(11) NOT NULL DEFAULT '2',
  `self_eval` varchar(11) NOT NULL DEFAULT '',
  `com_req` int(11) NOT NULL DEFAULT '0',
  `due_date` datetime DEFAULT NULL,
  `release_date_begin` datetime DEFAULT NULL,
  `release_date_end` datetime DEFAULT NULL,
  `result_release_date_begin` datetime DEFAULT NULL,
  `result_release_date_end` datetime DEFAULT NULL,
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group_events`
--

DROP TABLE IF EXISTS `group_events`;
CREATE TABLE IF NOT EXISTS `group_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `marked` varchar(20) NOT NULL DEFAULT 'not reviewed',
  `grade` double(12,2) DEFAULT NULL,
  `grade_release_status` varchar(20) NOT NULL DEFAULT 'None',
  `comment_release_status` varchar(20) NOT NULL DEFAULT 'None',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`event_id`,`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_num` int(4) NOT NULL DEFAULT '0',
  `group_name` varchar(80) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `record_status` varchar(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups_members`
--

DROP TABLE IF EXISTS `groups_members`;
CREATE TABLE IF NOT EXISTS `groups_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mixevals`
--

DROP TABLE IF EXISTS `mixevals`;
CREATE TABLE IF NOT EXISTS `mixevals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `zero_mark` tinyint(1) NOT NULL DEFAULT '0',
  `total_question` int(11) NOT NULL DEFAULT '0',
  `lickert_question_max` int(11) NOT NULL DEFAULT '0',
  `scale_max` int(11) NOT NULL DEFAULT '0',
  `prefill_question_max` int(11) DEFAULT NULL,
  `availability` varchar(10) NOT NULL DEFAULT 'public',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mixevals`
--

INSERT INTO `mixevals` (`id`, `name`, `zero_mark`, `total_question`, `lickert_question_max`, `scale_max`, `prefill_question_max`, `availability`, `creator_id`, `created`, `updater_id`, `modified`) VALUES
(1, 'Default Mix Evalution', 0, 7, 3, 5, 3, 'public', 1, '2006-09-12 13:34:30', 1, '2006-09-12 13:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `mixevals_question_descs`
--

DROP TABLE IF EXISTS `mixevals_question_descs`;
CREATE TABLE IF NOT EXISTS `mixevals_question_descs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0',
  `scale_level` int(11) NOT NULL DEFAULT '0',
  `descriptor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_num` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mixevals_question_descs`
--

INSERT INTO `mixevals_question_descs` (`id`, `question_id`, `scale_level`, `descriptor`) VALUES
(1, 1, 1, 'Lowest'),
(2, 1, 2, NULL),
(3, 1, 3, 'Middle'),
(4, 1, 4, NULL),
(5, 1, 5, 'Highest'),
(6, 2, 1, 'Lowest'),
(7, 2, 2, NULL),
(8, 2, 3, 'Middle'),
(9, 2, 4, NULL),
(10, 2, 5, 'Highest'),
(11, 3, 1, 'Lowest'),
(12, 3, 2, NULL),
(13, 3, 3, 'Middle'),
(14, 3, 4, NULL),
(15, 3, 5, 'Highest');

-- --------------------------------------------------------

--
-- Table structure for table `mixevals_questions`
--

DROP TABLE IF EXISTS `mixevals_questions`;
CREATE TABLE IF NOT EXISTS `mixevals_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mixeval_id` int(11) NOT NULL DEFAULT '0',
  `question_num` int(11) NOT NULL DEFAULT '0',
  `title` text,
  `instructions` text,
  `question_type` char(1) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '1',
  `multiplier` int(11) NOT NULL DEFAULT '0',
  `scale_level` int(11) NOT NULL DEFAULT '0',
  `response_type` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;


-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
-- This stores OAuth client credentials (AKA: consumer key and secret).
-- Client credentails are used to identify client software.
--
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `comment` text DEFAULT '',
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonces`
-- Stores nonces to defeat replay attacks.
--
DROP TABLE IF EXISTS `oauth_nonces`;
CREATE TABLE IF NOT EXISTS `oauth_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nonce` varchar(255) NOT NULL,
  `expires` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
--
-- Table structure for table `oauth_tokens`
-- This stores OAuth token credentials (AKA: access token and secret).
-- Token credentials are used to identify a user.
--

DROP TABLE IF EXISTS `oauth_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `expires` date NOT NULL,
  `comment` text DEFAULT '',
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

DROP TABLE IF EXISTS `penalties`;
CREATE TABLE IF NOT EXISTS `penalties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `days_late` int(11) NOT NULL,
  `percent_penalty` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Table structure for table `personalizes`
--

DROP TABLE IF EXISTS `personalizes`;
CREATE TABLE IF NOT EXISTS `personalizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `attribute_code` varchar(80) DEFAULT NULL,
  `attribute_value` varchar(80) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`attribute_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prompt` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(1) DEFAULT NULL,
  `master` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
CREATE TABLE IF NOT EXISTS `responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0',
  `response` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'superadmin', '2010-10-27 16:17:29', '2010-10-27 16:17:29'),
(2, 'admin', '2010-10-27 16:17:29', '2010-10-27 16:17:29'),
(3, 'instructor', '2010-10-27 16:17:29', '2010-10-27 16:17:29'),
(4, 'tutor', '2010-10-27 16:17:29', '2010-10-27 16:17:29'),
(5, 'student', '2010-10-27 16:17:29', '2010-10-27 16:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`role_id`, `user_id`, `created`, `modified`) VALUES
(1, 1, NOW(), NOW());

-- --------------------------------------------------------

--
-- Table structure for table `rubrics`
--

DROP TABLE IF EXISTS `rubrics`;
CREATE TABLE IF NOT EXISTS `rubrics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `zero_mark` tinyint(1) NOT NULL DEFAULT '0',
  `lom_max` int(11) DEFAULT NULL,
  `criteria` int(11) DEFAULT NULL,
  `availability` varchar(10) NOT NULL DEFAULT 'public',
  `template` varchar(20) NOT NULL DEFAULT 'horizontal',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rubrics_criteria_comments`
--

DROP TABLE IF EXISTS `rubrics_criteria_comments`;
CREATE TABLE IF NOT EXISTS `rubrics_criteria_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criteria_id` int(11) NOT NULL,
  `rubrics_loms_id` int(11) NOT NULL,
  `criteria_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `criteria_id` (`criteria_id`),
  KEY `rubrics_loms_id` (`rubrics_loms_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rubrics_criterias`
--

DROP TABLE IF EXISTS `rubrics_criterias`;
CREATE TABLE IF NOT EXISTS `rubrics_criterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rubric_id` int(11) NOT NULL DEFAULT '0',
  `criteria_num` int(11) NOT NULL DEFAULT '999',
  `criteria` varchar(255) DEFAULT NULL,
  `multiplier` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rubrics_loms`
--

DROP TABLE IF EXISTS `rubrics_loms`;
CREATE TABLE IF NOT EXISTS `rubrics_loms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rubric_id` int(11) NOT NULL DEFAULT '0',
  `lom_num` int(11) NOT NULL DEFAULT '999',
  `lom_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_evaluations`
--

DROP TABLE IF EXISTS `simple_evaluations`;
CREATE TABLE IF NOT EXISTS `simple_evaluations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `point_per_member` int(10) NOT NULL DEFAULT '0',
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `availability` varchar(10) NOT NULL DEFAULT 'public',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_group_members`
--

DROP TABLE IF EXISTS `survey_group_members`;
CREATE TABLE IF NOT EXISTS `survey_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_set_id` int(11) DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_group_sets`
--

DROP TABLE IF EXISTS `survey_group_sets`;
CREATE TABLE IF NOT EXISTS `survey_group_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL DEFAULT '0',
  `set_description` text NOT NULL,
  `num_groups` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `released` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `survey_id` (`survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_groups`
--

DROP TABLE IF EXISTS `survey_groups`;
CREATE TABLE IF NOT EXISTS `survey_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_set_id` int(11) NOT NULL DEFAULT '0',
  `group_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_inputs`
--

DROP TABLE IF EXISTS `survey_inputs`;
CREATE TABLE IF NOT EXISTS `survey_inputs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `question_id` int(11) NOT NULL DEFAULT '0',
  `sub_id` int(11) DEFAULT NULL,
  `chkbx_id` int(11) DEFAULT NULL,
  `response_text` text,
  `response_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
CREATE TABLE IF NOT EXISTS `survey_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL DEFAULT '9999',
  `question_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `survey_id` (`survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
CREATE TABLE IF NOT EXISTS `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `release_date_begin` datetime DEFAULT NULL,
  `release_date_end` datetime DEFAULT NULL,
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sys_parameters`
--

DROP TABLE IF EXISTS `sys_parameters`;
CREATE TABLE IF NOT EXISTS `sys_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameter_code` varchar(80) NOT NULL DEFAULT '',
  `parameter_value` text,
  `parameter_type` char(1) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `record_status` char(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parameter_code` (`parameter_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `sys_parameters`
--

INSERT INTO `sys_parameters` (`id`, `parameter_code`, `parameter_value`, `parameter_type`, `description`, `record_status`, `creator_id`, `created`, `updater_id`, `modified`) VALUES
(1, 'system.soft_delete_enable', 'true', 'B', 'Whether soft deletion of records is enabled.', 'A', 0, NOW(), 0, NOW()),
(2, 'system.debug_mode', '0', 'I', 'Debug Mode of the system', 'A', 0, NOW(), NULL, NOW()),
(3, 'system.debug_verbosity', '1', 'I', NULL, 'A', 0, NOW(), NULL, NOW()),
(6, 'system.super_admin', 'root', 'S', NULL, 'A', 0, NOW(), NULL, NOW()),
(7, 'system.upload_dir', 'uploads/', 'S', NULL, 'A', 0, NOW(), NULL, NOW()),
(9, 'display.page_title', 'iPeer v2 with TeamMaker', 'S', 'Page title show in HTML.', 'A', 0, NOW(), 0, NOW()),
(10, 'display.logo_file', 'LayoutLogoDefault.gif', 'S', 'Logo image name.', 'A', 0, NOW(), 0, NOW()),
(11, 'display.login_logo_file', 'LayoutLoginLogoDefault.gif', 'S', 'Login Image File Name.', 'A', 0, NOW(), 0, NOW()),
(13, 'custom.login_control', 'ipeer', 'S', 'The login control for iPeer: ipeer; CWL: UBC_CWL', 'A', 0, NOW(), NULL, NOW()),
(14, 'custom.login_page_pathname', 'custom_ubc_cwl_login', 'S', 'The file pathname for the custom login page; CWL:custom_ubc_cwl_login', 'A', 0, NOW(), NULL, NOW()),
(15, 'system.admin_email', 'Please enter the iPeer administrator\\''s email address.', 'S', NULL, 'A', 0, NOW(), NULL, NOW()),
(16, 'system.password_reset_mail', 'Dear <user>,<br> Your password has been reset to <newpassword>. Please use this to log in from now on. <br><br>iPeer Administrator', 'S', NULL, 'A', 0, NOW(), NULL, NOW()),
(17, 'system.password_reset_emailsubject', 'iPeer Password Reset Notification', 'S', NULL, 'A', 0, NOW(), NULL, NOW()),
(18, 'display.date_format', 'D, M j, Y g:i a', 'S', 'date format preference', 'A', 0, NOW(), NULL, NOW()),
(20, 'database.version', '4', 'I', 'database version', 'A', 0, NOW(), NULL, NOW()),
(21, 'email.port', '465', 'S', 'port number for email smtp option', 'A', '0', NOW(), NULL , NOW()),
(22, 'email.host', 'email_host', 'S', 'host address for email smtp option', 'A', '0', NOW(), NULL , NOW()),
(23 , 'email.username', 'your_email_address', 'S', 'username for email smtp option', 'A', '0', NOW(), NULL , NOW()),
(24 , 'email.password', 'your_email_password', 'S', 'password for email smtp option', 'A', '0', NOW(), NULL , NOW());

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

DROP TABLE IF EXISTS `user_courses`;
CREATE TABLE IF NOT EXISTS `user_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `access_right` varchar(1) NOT NULL DEFAULT 'O',
  `record_status` varchar(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE no_duplicates (`course_id`,`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_enrols`
--

DROP TABLE IF EXISTS `user_enrols`;
CREATE TABLE IF NOT EXISTS `user_enrols` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `record_status` varchar(1) NOT NULL DEFAULT 'A',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE no_duplicates (`course_id`,`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_faculties`
--

DROP TABLE IF EXISTS `user_faculties`;
CREATE TABLE `user_faculties` (
  `id` int NOT NULL auto_increment,
  `user_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_tutors`
--

DROP TABLE IF EXISTS `user_tutors`;
CREATE TABLE IF NOT EXISTS `user_tutors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updater_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE no_duplicates (`course_id`,`user_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


SET foreign_key_checks = 1;
