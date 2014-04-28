/*
MySQL Data Transfer
Source Host: localhost
Source Database: sm
Target Host: localhost
Target Database: sm
Date: 4/25/2014 5:10:05 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for authassignment
-- ----------------------------
DROP TABLE IF EXISTS `authassignment`;
CREATE TABLE `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authitem
-- ----------------------------
DROP TABLE IF EXISTS `authitem`;
CREATE TABLE `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for authitemchild
-- ----------------------------
DROP TABLE IF EXISTS `authitemchild`;
CREATE TABLE `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rights
-- ----------------------------
DROP TABLE IF EXISTS `rights`;
CREATE TABLE `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`),
  CONSTRAINT `rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_users
-- ----------------------------
DROP TABLE IF EXISTS `sd_users`;
CREATE TABLE `sd_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activkey` varchar(128) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `superuser` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `authassignment` VALUES ('Admin', '1', null, null);
INSERT INTO `authassignment` VALUES ('Author', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Banners.ManageBanners.Admin', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('DeletleGroup', '5', null, 'N;');
INSERT INTO `authassignment` VALUES ('group 1', '2', null, 'N;');
INSERT INTO `authassignment` VALUES ('Manage', '4', null, 'N;');
INSERT INTO `authitem` VALUES ('Admin', '2', null, null, null);
INSERT INTO `authitem` VALUES ('Author', '2', 'Author', 'Author', 'N;');
INSERT INTO `authitem` VALUES ('Banners.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Banners.ManageBanners.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contact.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Contacts.ManageContacts.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Countries.ManageCountries.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.UpdateTarget', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleries.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageGalleryImages.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageImagesByGallery.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.ManageUpload.Upload', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.MultiUpload.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Galleries.MultiUpload.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Manage', '2', 'Manage', 'Manage', 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('ManageTeam.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.NewsInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.ManageNews.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsACategory.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('News.manageNewsCategories.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Operation 1', '0', 'Operation 1', 'Operation 1', 'N;');
INSERT INTO `authitem` VALUES ('Products.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageColorForAProduct.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.FetchTree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.ManageByTree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Tree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductCategories.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProductColor.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.ProductsInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.ManageProducts.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.Dynamiccities', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Products.Test.Khuong', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Tree', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServiceCategory.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.ServicesInCategory', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Services.ManageServices.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.About', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Contact', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Error', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Partial', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Site.Project', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Ajaxactive', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Ajaxupdate', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Test', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.TestWidget', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Staticpages.Staticpage.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Teams.ManageTeam.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Buy', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Cancel', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Confirm', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.DirectPayment', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('Test.Paypal.Test', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Activation.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Activation.Activation', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.AjaxEdit', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.TestNewView', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Admin.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Default.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Default.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Login.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Login.Login', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Logout.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Logout.Logout', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Changepassword', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Edit', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Profile.Profile', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Admin', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Create', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Delete', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.Update', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.ProfileField.View', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Recovery.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Recovery.Recovery', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Registration.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.Registration.Registration', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.*', '1', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.Index', '0', null, null, 'N;');
INSERT INTO `authitem` VALUES ('User.User.View', '0', null, null, 'N;');
INSERT INTO `authitemchild` VALUES ('Author', 'Manage');
INSERT INTO `authitemchild` VALUES ('DeletleGroup', 'Banners.Default.*');
INSERT INTO `authitemchild` VALUES ('Manage', 'Contact.Create');
INSERT INTO `sd_users` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '21232f297a57a5a743894a0e4a801fc3', '2013-10-04 21:17:56', '2014-04-25 09:43:14', '1', '1');
INSERT INTO `sd_users` VALUES ('2', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', '2013-10-04 21:17:56', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `sd_users` VALUES ('4', 'Mobi', 'e10adc3949ba59abbe56e057f20f883e', 'modi.bixa0@gmail.com', '7e3322831ed94481effd9052798999a7', '2013-10-07 00:07:30', '0000-00-00 00:00:00', '0', '1');
INSERT INTO `sd_users` VALUES ('5', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin2@gmail.com', 'bb2c04555a60ea5282fa377e3c2c2abc', '2014-04-24 10:53:19', '0000-00-00 00:00:00', '0', '1');
