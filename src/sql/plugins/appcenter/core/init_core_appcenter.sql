    
--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_MANAGEMENT','appcenter.adminFeature.ManageAppCenter.name',1,'jsp/admin/plugins/appcenter/ManageDemands.jsp','appcenter.adminFeature.ManageAppCenter.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_MANAGEMENT',1);
--
-- Data for table DataStrore
--
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.BILD','BILD');
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.BSIS','BSIS');
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.BGO','BGO');
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.BSUN','BSUN');
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.MTSI','MTSI');
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('appcenter.fastdeployServices.BSIRH','BSIRH');


--
-- Roles creation
--
INSERT INTO core_admin_role ( role_key, role_description ) VALUES
    ( 'BILD','Role définissant les droits des administrateurs BILD'),
    ( 'BIAD','Role définissant les droits des administrateurs BIAD');

--
-- Roles resources
--
--BILD
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','identitystore','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','sources','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','jobs','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','openam','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','moncomptesettings','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','notificationgru','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','guichetpro','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','fastdeployapplication','VIEW' FROM core_admin_role_resource;
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BILD','demand_type','support','VIEW' FROM core_admin_role_resource;

--BIAD
INSERT INTO core_admin_role_resource ( rbac_id, role_key, resource_type, resource_id, permission ) SELECT COALESCE(MAX(rbac_id+1),1),'BIAD','demand_type','appcode','VIEW' FROM core_admin_role_resource;

--
-- Roles assignment
--
INSERT INTO core_user_role (role_key, id_user) VALUES ('BIAD', 1);
INSERT INTO core_user_role (role_key, id_user) VALUES ('BILD', 1);

UPDATE core_admin_user SET password_max_valid_date = NULL;


--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_RESOURCE_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_RESOURCE_MANAGEMENT','appcenter.adminFeature.ManageResource.name',1,'jsp/admin/plugins/appcenter/ManageResources.jsp','appcenter.adminFeature.ManageResource.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_RESOURCE_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_RESOURCE_MANAGEMENT',1);


--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_ACTION_ROLES_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_ACTION_ROLES_MANAGEMENT','appcenter.adminFeature.ManageActionRoles.name',1,'jsp/admin/plugins/appcenter/ManageActionRoles.jsp','appcenter.adminFeature.ManageActionRoles.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_ACTION_ROLES_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_ACTION_ROLES_MANAGEMENT',1);


--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_PROFILE_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_PROFILE_MANAGEMENT','appcenter.adminFeature.ManageProfile.name',1,'jsp/admin/plugins/appcenter/ManageProfiles.jsp','appcenter.adminFeature.ManageProfile.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_PROFILE_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_PROFILE_MANAGEMENT',1);


--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_USER_APPLICATION_PROFILE_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_USER_APPLICATION_PROFILE_MANAGEMENT','appcenter.adminFeature.ManageUserApplicationProfile.name',1,'jsp/admin/plugins/appcenter/ManageUserApplicationProfiles.jsp','appcenter.adminFeature.ManageUserApplicationProfile.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_USER_APPLICATION_PROFILE_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_USER_APPLICATION_PROFILE_MANAGEMENT',1);


--
-- Data for table core_admin_right
--
DELETE FROM core_admin_right WHERE id_right = 'APPCENTER_ACTION_ROLES_PROFILE_MANAGEMENT';
INSERT INTO core_admin_right (id_right,name,level_right,admin_url,description,is_updatable,plugin_name,id_feature_group,icon_url,documentation_url, id_order ) VALUES 
('APPCENTER_ACTION_ROLES_PROFILE_MANAGEMENT','appcenter.adminFeature.ManageActionRolesProfile.name',1,'jsp/admin/plugins/appcenter/ManageActionRoleProfiles.jsp','appcenter.adminFeature.ManageActionRolesProfile.description',0,'appcenter',NULL,NULL,NULL,4);


--
-- Data for table core_user_right
--
DELETE FROM core_user_right WHERE id_right = 'APPCENTER_ACTION_ROLES_PROFILE_MANAGEMENT';
INSERT INTO core_user_right (id_right,id_user) VALUES ('APPCENTER_ACTION_ROLES_PROFILE_MANAGEMENT',1);

