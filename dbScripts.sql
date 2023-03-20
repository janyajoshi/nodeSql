use sys

CREATE TABLE `sys`.`infrastructure_snapshot` (
  `id` INT NOT NULL,
  `name` VARCHAR(250) NOT NULL,
  `alarms` INT NOT NULL,
  `devices` INT NOT NULL,
  `problematicdevices` INT NOT NULL,
  PRIMARY KEY (`id`));


INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('1', 'Server', '57', '55', '56');
INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('2', 'Router', '5', '3', '3');
INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('3', 'Switch', '0', '11', '2');
INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('4', 'Desktop', '0', '0', '0');
INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('5', 'Firewall', '0', '3', '0');
INSERT INTO `sys`.`infrastructure_snapshot` (`id`, `name`, `alarms`, `devices`, `problematicdevices`) VALUES ('6', 'DomainController', '2', '1', '1');


alter user 'root'@'localhost' identified by 'password';
grant all privileges on node.* to root@localhost;
ALTER USER 'root'@localhost IDENTIFIED WITH mysql_native_password BY 'password';


CREATE TABLE `sys`.`devices_by_availability` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `availability` INT NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('1', 'device1', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('2', 'device2', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('3', 'device3', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('4', 'device4', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('5', 'device5', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('6', 'device6', '100');
INSERT INTO `sys`.`devices_by_availability` (`id`, `name`, `availability`) VALUES ('7', 'device7', '100');


CREATE TABLE `sys`.`tree_view` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `count` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL DEFAULT 'neutral',
  PRIMARY KEY (`id`));
