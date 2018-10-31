
--
-- Structure for table appcenter_demand_type
--

DROP TABLE IF EXISTS appcenter_demand_type;
CREATE TABLE appcenter_demand_type (
id int AUTO_INCREMENT,
id_demand_type varchar(255) default '' NOT NULL,
id_workflow int default -1,
java_class long varchar NOT NULL,
label long varchar NOT NULL,
description long varchar,
question long varchar,
id_category_demand_type int default '0',
n_order int default 0,
PRIMARY KEY (id)
);

--
-- Structure for table appcenter_category_demand_type
--

DROP TABLE IF EXISTS appcenter_category_demand_type;
CREATE TABLE appcenter_category_demand_type (
id int AUTO_INCREMENT,
label long varchar,
question long varchar,
is_depending_of_environment SMALLINT,
n_order int default 0,
PRIMARY KEY (id)
);


--
-- Structure for table appcenter_application
--

DROP TABLE IF EXISTS appcenter_application;
CREATE TABLE appcenter_application (
id_application int(6) NOT NULL,
code varchar(50) default NULL,
name varchar(50) default '' NOT NULL,
description varchar(255) default '',
application_data long varchar,
PRIMARY KEY (id_application)
);

--
-- Structure for table appcenter_
--
DROP TABLE IF EXISTS appcenter_application_environment;
CREATE TABLE appcenter_application_environment (
id_application_environment int(6) AUTO_INCREMENT,
id_application int(6),
environment_code varchar(255) default '' NOT NULL,
PRIMARY KEY (id_application_environment)
);

--
-- Structure for table appcenter_user_application
--

DROP TABLE IF EXISTS appcenter_user_application;
CREATE TABLE appcenter_user_application (
id_application int(6) NOT NULL,
user_id varchar(50) default '' NOT NULL,
user_role int(11) default '0' NOT NULL,
PRIMARY KEY ( id_application , user_id )
);

--
-- Structure for table appcenter_demand
--

DROP TABLE IF EXISTS appcenter_demand;
CREATE TABLE appcenter_demand  (
id_demand int(6) AUTO_INCREMENT,
id_user_front varchar(255) NOT NULL,
status_text long varchar,
id_demand_type varchar(255) NOT NULL,
demand_type long varchar NOT NULL,
id_application int(11) default '0' NOT NULL,
demand_content TEXT,
creation_date datetime NOT NULL,
is_closed SMALLINT NOT NULL DEFAULT '0',
environment varchar(255) NOT NULL,
PRIMARY KEY (id_demand) 
);

--
-- Structure for table appcenter_workflow_resource_history_demand
--

DROP TABLE IF EXISTS appcenter_workflow_resource_history_demand;
CREATE TABLE appcenter_workflow_resource_history_demand (
id_history int(6) NOT NULL,
id_user_front int(11) default '0',
PRIMARY KEY ( id_history )
);

--
-- Structure for table appcenter_workflow_resource_history_demand
--

DROP TABLE IF EXISTS appcenter_task_custom_demand_status_config;
CREATE TABLE appcenter_task_custom_demand_status_config (
id_task int(6) NOT NULL,
custom_demand_status varchar(1000) default '' NOT NULL,
PRIMARY KEY ( id_task )
);

--
-- Structure for table appcenter_task_notify_config
--

DROP TABLE IF EXISTS appcenter_task_notify_config;
CREATE TABLE appcenter_task_notify_config (
id_task int(6) NOT NULL,
recipients varchar(10000) NULL,
notification_type varchar(255) NOT NULL DEFAULT '',
id_mailing_list int(6) NOT NULL DEFAULT -1,
subject varchar(1000) NOT NULL DEFAULT '',
message long varchar,
sender_name varchar(255) NOT NULL DEFAULT '',
PRIMARY KEY ( id_task )
);

--
-- Structure for table appcenter_attribute
--

DROP TABLE IF EXISTS appcenter_attribute;
CREATE TABLE appcenter_attribute (
id_attribute int AUTO_INCREMENT,
key_name varchar(255) default '' NOT NULL,
label varchar(255) default '' NOT NULL,
description varchar(255) default '',
PRIMARY KEY (id_attribute)
);

DROP TABLE IF EXISTS appcenter_documentation;
CREATE TABLE appcenter_documentation (
id_documentation int AUTO_INCREMENT,
id_demand_type int default '0',
label long varchar,
url long varchar,
category varchar(255) default '',
PRIMARY KEY (id_documentation)
);


--
-- Structure for table appcenter_demand_type_category
--

DROP TABLE IF EXISTS appcenter_demand_type_category;
CREATE TABLE appcenter_demand_type_category (
id_demand_type_category int AUTO_INCREMENT,
name varchar(50) default '' NOT NULL,
description varchar(255) default '',
PRIMARY KEY (id_demand_type_category)
);


--
-- Structure for table appcenter_action_role
--

DROP TABLE IF EXISTS appcenter_action_role;
CREATE TABLE appcenter_action_role (
id_action int AUTO_INCREMENT,
code varchar(50) default '' NOT NULL,
label varchar(255) default '' NOT NULL,
resource_type varchar(50) default '' NOT NULL,
PRIMARY KEY (id_action),
  UNIQUE KEY `IDX_ACTION_ROLE` (`code`)
);

--
-- Structure for table appcenter_user_application_profile
--

DROP TABLE IF EXISTS appcenter_user_application_profile;
CREATE TABLE appcenter_user_application_profile (
id_profile int default '0' NOT NULL,
id_application int default '0' NOT NULL,
id_user varchar(60) default '' NOT NULL,
PRIMARY KEY (id_user, id_profile, id_application)
);

--
-- Structure for table appcenter_action_role_profile
--

DROP TABLE IF EXISTS appcenter_action_role_profile;
CREATE TABLE appcenter_action_role_profile (
code_action_role varchar(50) NOT NULL,
code_profile varchar(50) default '' NOT NULL,
code_resource varchar(50) default '' NOT NULL,
PRIMARY KEY (code_profile, code_action_role, code_resource)
);

--
-- Structure for table appcenter_profile
--

DROP TABLE IF EXISTS appcenter_profile;
CREATE TABLE appcenter_profile (
id_profile int AUTO_INCREMENT,
code varchar(50) NOT NULL,
label varchar(255) default '' NOT NULL,
PRIMARY KEY (id_profile),
  UNIQUE KEY `IDX_PROFILE` (`code`)
);

--
-- Structure for table appcenter_resource
--

DROP TABLE IF EXISTS appcenter_resource;
CREATE TABLE appcenter_resource (
id_resource int AUTO_INCREMENT,
code varchar(50) NOT NULL,
label varchar(255) NOT NULL,
resource_type varchar(50) default '' NOT NULL,
PRIMARY KEY (id_resource),
  UNIQUE KEY `IDX_RESOURCE` (`code`)
);
