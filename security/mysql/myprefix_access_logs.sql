CREATE TABLE IF NOT EXISTS `myprefix_access_logs` (
  `ac_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ac_date_time_local` datetime NOT NULL COMMENT 'Timestamp in local timezone',
  `ac_date_time_utc` datetime DEFAULT NULL COMMENT 'Timestamp in UTC',
  `ac_actor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'User id in application. Can be null in cases where an action is performed programmatically.',
  `ac_actor_global_uid` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'User id if using a single sign on facility',
  `ac_actor_username` varchar(100) DEFAULT NULL COMMENT 'Username in application',
  `ac_actor_group` varchar(100) DEFAULT NULL COMMENT 'User role/group in application',
  `ac_ip_addr` varbinary(16) DEFAULT NULL COMMENT 'User IP address',
  `ac_device_id` varchar(200) DEFAULT NULL COMMENT 'Device identifier',
  `ac_event_name` varchar(100) NOT NULL COMMENT 'Common name for the event that can be used to filter down to similar events. Example: user.login.success, user.login.failure, user.logout ',
  `ac_server` varchar(100) DEFAULT NULL COMMENT 'Server ids or names, server location. Example: uat, production, testing, 192.168.2.10 ',
  `ac_version` varchar(10) DEFAULT NULL COMMENT 'Version of the code/release that is sending the events',
  PRIMARY KEY (`ac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;