/****** Object:  ForeignKey [LANGUAGE_COURSE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LANGUAGE_COURSE]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSE]'))
ALTER TABLE [dbo].[COURSE] DROP CONSTRAINT [LANGUAGE_COURSE]
GO
/****** Object:  ForeignKey [COURSEGROUP_ROOTCOURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_ROOTCOURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP] DROP CONSTRAINT [COURSEGROUP_ROOTCOURSEGROUP]
GO
/****** Object:  ForeignKey [CUSTOMER_COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_COURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP] DROP CONSTRAINT [CUSTOMER_COURSEGROUP]
GO
/****** Object:  ForeignKey [FK_COURSEGROUP_PARENTCOURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_COURSEGROUP_PARENTCOURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP] DROP CONSTRAINT [FK_COURSEGROUP_PARENTCOURSEGROUP]
GO
/****** Object:  ForeignKey [BILLINGADDRESS_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[BILLINGADDRESS_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [BILLINGADDRESS_CUSTOMER]
GO
/****** Object:  ForeignKey [CUSTOMER_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [CUSTOMER_BRAND]
GO
/****** Object:  ForeignKey [FK_DISTRIBUTOR_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DISTRIBUTOR_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [FK_DISTRIBUTOR_CUSTOMER]
GO
/****** Object:  ForeignKey [SHIPPINGADDRESS_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SHIPPINGADDRESS_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [SHIPPINGADDRESS_CUSTOMER]
GO
/****** Object:  ForeignKey [CUSTOMER_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_CUSTOMERENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT]'))
ALTER TABLE [dbo].[CUSTOMERENTITLEMENT] DROP CONSTRAINT [CUSTOMER_CUSTOMERENTITLEMENT]
GO
/****** Object:  ForeignKey [DISTRIBUTOR_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR]'))
ALTER TABLE [dbo].[DISTRIBUTOR] DROP CONSTRAINT [DISTRIBUTOR_BRAND]
GO
/****** Object:  ForeignKey [DISTRIBUTORGROUP_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP]'))
ALTER TABLE [dbo].[DISTRIBUTORGROUP] DROP CONSTRAINT [DISTRIBUTORGROUP_BRAND]
GO
/****** Object:  ForeignKey [LEARNER_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNER]'))
ALTER TABLE [dbo].[LEARNER] DROP CONSTRAINT [LEARNER_CUSTOMER]
GO
/****** Object:  ForeignKey [VU360USER_LEARNER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_LEARNER]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNER]'))
ALTER TABLE [dbo].[LEARNER] DROP CONSTRAINT [VU360USER_LEARNER]
GO
/****** Object:  ForeignKey [LEARNER_LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERCOURSESTATISTICS]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]'))
ALTER TABLE [dbo].[LEARNERCOURSESTATISTICS] DROP CONSTRAINT [LEARNER_LEARNERCOURSESTATISTICS]
GO
/****** Object:  ForeignKey [LEARNERENROLMENT_LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLMENT_LEARNERCOURSESTATISTICS]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]'))
ALTER TABLE [dbo].[LEARNERCOURSESTATISTICS] DROP CONSTRAINT [LEARNERENROLMENT_LEARNERCOURSESTATISTICS]
GO
/****** Object:  ForeignKey [COURSE_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT] DROP CONSTRAINT [COURSE_LEARNERENROLLMENT]
GO
/****** Object:  ForeignKey [CUSTOMERENROLLMENT_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENROLLMENT_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT] DROP CONSTRAINT [CUSTOMERENROLLMENT_LEARNERENROLLMENT]
GO
/****** Object:  ForeignKey [LEARNER_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT] DROP CONSTRAINT [LEARNER_LEARNERENROLLMENT]
GO
/****** Object:  ForeignKey [LEARNERENROLLMENT_ORGGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT_ORGGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT] DROP CONSTRAINT [LEARNERENROLLMENT_ORGGROUPENTITLEMENT]
GO
/****** Object:  ForeignKey [CUSTOMER_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_LEARNERGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]'))
ALTER TABLE [dbo].[LEARNERGROUP] DROP CONSTRAINT [CUSTOMER_LEARNERGROUP]
GO
/****** Object:  ForeignKey [ORGANIZATIONALGROUP_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP_LEARNERGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]'))
ALTER TABLE [dbo].[LEARNERGROUP] DROP CONSTRAINT [ORGANIZATIONALGROUP_LEARNERGROUP]
GO
/****** Object:  ForeignKey [ADDRESS_LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ADDRESS_LEARNERPROFILE]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]'))
ALTER TABLE [dbo].[LEARNERPROFILE] DROP CONSTRAINT [ADDRESS_LEARNERPROFILE]
GO
/****** Object:  ForeignKey [LEARNER_LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERPROFILE]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]'))
ALTER TABLE [dbo].[LEARNERPROFILE] DROP CONSTRAINT [LEARNER_LEARNERPROFILE]
GO
/****** Object:  ForeignKey [COURSE_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION] DROP CONSTRAINT [COURSE_LEARNINGSESSION]
GO
/****** Object:  ForeignKey [LEARNER_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION] DROP CONSTRAINT [LEARNER_LEARNINGSESSION]
GO
/****** Object:  ForeignKey [LEARNERENROLLMENT_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION] DROP CONSTRAINT [LEARNERENROLLMENT_LEARNINGSESSION]
GO
/****** Object:  ForeignKey [VU360USER_LMSADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_LMSADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR]'))
ALTER TABLE [dbo].[LMSADMINISTRATOR] DROP CONSTRAINT [VU360USER_LMSADMINISTRATOR]
GO
/****** Object:  ForeignKey [LMSFEATURE_LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LMSFEATURE_LMSPERMISSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]'))
ALTER TABLE [dbo].[LMSPERMISSION] DROP CONSTRAINT [LMSFEATURE_LMSPERMISSION]
GO
/****** Object:  ForeignKey [LMSROLE_LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LMSROLE_LMSPERMISSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]'))
ALTER TABLE [dbo].[LMSPERMISSION] DROP CONSTRAINT [LMSROLE_LMSPERMISSION]
GO
/****** Object:  ForeignKey [CUSTOMER_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_ORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP] DROP CONSTRAINT [CUSTOMER_ORGANIZATIONALGROUP]
GO
/****** Object:  ForeignKey [FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP] DROP CONSTRAINT [FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP]
GO
/****** Object:  ForeignKey [FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP] DROP CONSTRAINT [FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP]
GO
/****** Object:  ForeignKey [CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT] DROP CONSTRAINT [CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT]
GO
/****** Object:  ForeignKey [ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT] DROP CONSTRAINT [ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT]
GO
/****** Object:  ForeignKey [CUSTOMER_REGISTRATIONINVITATION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_REGISTRATIONINVITATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION]'))
ALTER TABLE [dbo].[REGISTRATIONINVITATION] DROP CONSTRAINT [CUSTOMER_REGISTRATIONINVITATION]
GO
/****** Object:  ForeignKey [FK_SURVEYANSWER_SURVEYQUESTION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SURVEYANSWER_SURVEYQUESTION]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYANSWER]'))
ALTER TABLE [dbo].[SURVEYANSWER] DROP CONSTRAINT [FK_SURVEYANSWER_SURVEYQUESTION]
GO
/****** Object:  ForeignKey [FK_SURVEYQUESTION_SURVEY]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SURVEYQUESTION_SURVEY]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
ALTER TABLE [dbo].[SURVEYQUESTION] DROP CONSTRAINT [FK_SURVEYQUESTION_SURVEY]
GO
/****** Object:  ForeignKey [SurveyResult_Survey]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult_Survey]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResult]'))
ALTER TABLE [dbo].[SurveyResult] DROP CONSTRAINT [SurveyResult_Survey]
GO
/****** Object:  ForeignKey [SurveyResult_VU360USER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult_VU360USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResult]'))
ALTER TABLE [dbo].[SurveyResult] DROP CONSTRAINT [SurveyResult_VU360USER]
GO
/****** Object:  ForeignKey [SurveyResultAnswer_SurveyAnswer]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer_SurveyAnswer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]'))
ALTER TABLE [dbo].[SurveyResultAnswer] DROP CONSTRAINT [SurveyResultAnswer_SurveyAnswer]
GO
/****** Object:  ForeignKey [SurveyResultAnswer_SurveyResult]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer_SurveyResult]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]'))
ALTER TABLE [dbo].[SurveyResultAnswer] DROP CONSTRAINT [SurveyResultAnswer_SurveyResult]
GO
/****** Object:  ForeignKey [CUSTOMER_TRAINIINGPLAN]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_TRAINIINGPLAN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN]'))
ALTER TABLE [dbo].[TRAINIINGPLAN] DROP CONSTRAINT [CUSTOMER_TRAINIINGPLAN]
GO
/****** Object:  ForeignKey [TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLANASSIGNMENT]'))
ALTER TABLE [dbo].[TRAINIINGPLANASSIGNMENT] DROP CONSTRAINT [TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT]
GO
/****** Object:  ForeignKey [CUSTOMER_TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_TRAININGADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]'))
ALTER TABLE [dbo].[TRAININGADMINISTRATOR] DROP CONSTRAINT [CUSTOMER_TRAININGADMINISTRATOR]
GO
/****** Object:  ForeignKey [VU360USER_TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_TRAININGADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]'))
ALTER TABLE [dbo].[TRAININGADMINISTRATOR] DROP CONSTRAINT [VU360USER_TRAININGADMINISTRATOR]
GO
/****** Object:  Default [DF_LEARNINGSESSION_STRINGCOURSEID]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_LEARNINGSESSION_STRINGCOURSEID]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
Begin
ALTER TABLE [dbo].[LEARNINGSESSION] DROP CONSTRAINT [DF_LEARNINGSESSION_STRINGCOURSEID]

End
GO
/****** Object:  Default [DF_SURVEYQUESTION_DROPDOWNTF]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SURVEYQUESTION_DROPDOWNTF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
Begin
ALTER TABLE [dbo].[SURVEYQUESTION] DROP CONSTRAINT [DF_SURVEYQUESTION_DROPDOWNTF]

End
GO
/****** Object:  Default [DF_SURVEYQUESTION_UNLIMITEDTF]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SURVEYQUESTION_UNLIMITEDTF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
Begin
ALTER TABLE [dbo].[SURVEYQUESTION] DROP CONSTRAINT [DF_SURVEYQUESTION_UNLIMITEDTF]

End
GO
/****** Object:  Table [dbo].[TRAINIINGPLANASSIGNMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLANASSIGNMENT]') AND type in (N'U'))
DROP TABLE [dbo].[TRAINIINGPLANASSIGNMENT]
GO
/****** Object:  Table [dbo].[LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNERPROFILE]
GO
/****** Object:  Table [dbo].[LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNERCOURSESTATISTICS]
GO
/****** Object:  Table [dbo].[LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNERGROUP]
GO
/****** Object:  Table [dbo].[REGISTRATIONINVITATION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION]') AND type in (N'U'))
DROP TABLE [dbo].[REGISTRATIONINVITATION]
GO
/****** Object:  Table [dbo].[TRAINIINGPLAN]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN]') AND type in (N'U'))
DROP TABLE [dbo].[TRAINIINGPLAN]
GO
/****** Object:  Table [dbo].[COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[COURSEGROUP]
GO
/****** Object:  Table [dbo].[LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNINGSESSION]
GO
/****** Object:  Table [dbo].[LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNERENROLLMENT]
GO
/****** Object:  Table [dbo].[ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT]
GO
/****** Object:  Table [dbo].[ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[ORGANIZATIONALGROUP]
GO
/****** Object:  Table [dbo].[CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMERENTITLEMENT]
GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE]') AND type in (N'U'))
DROP TABLE [dbo].[COURSE]
GO
/****** Object:  Table [dbo].[DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[DISTRIBUTORGROUP]
GO
/****** Object:  Table [dbo].[LEARNER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNER]
GO
/****** Object:  Table [dbo].[TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]') AND type in (N'U'))
DROP TABLE [dbo].[TRAININGADMINISTRATOR]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMER]
GO
/****** Object:  Table [dbo].[DISTRIBUTOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR]') AND type in (N'U'))
DROP TABLE [dbo].[DISTRIBUTOR]
GO
/****** Object:  Table [dbo].[LMSADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR]') AND type in (N'U'))
DROP TABLE [dbo].[LMSADMINISTRATOR]
GO
/****** Object:  Table [dbo].[LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]') AND type in (N'U'))
DROP TABLE [dbo].[LMSPERMISSION]
GO
/****** Object:  Table [dbo].[SurveyResultAnswer]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]') AND type in (N'U'))
DROP TABLE [dbo].[SurveyResultAnswer]
GO
/****** Object:  Table [dbo].[SurveyResult]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult]') AND type in (N'U'))
DROP TABLE [dbo].[SurveyResult]
GO
/****** Object:  Table [dbo].[SURVEYANSWER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEYANSWER]') AND type in (N'U'))
DROP TABLE [dbo].[SURVEYANSWER]
GO
/****** Object:  Table [dbo].[SURVEYQUESTION]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]') AND type in (N'U'))
DROP TABLE [dbo].[SURVEYQUESTION]
GO
/****** Object:  Table [dbo].[DISTRIBUTOR_DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR_DISTRIBUTORGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[DISTRIBUTOR_DISTRIBUTORGROUP]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADDRESS]') AND type in (N'U'))
DROP TABLE [dbo].[ADDRESS]
GO
/****** Object:  Table [dbo].[LANGUAGE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LANGUAGE]') AND type in (N'U'))
DROP TABLE [dbo].[LANGUAGE]
GO
/****** Object:  Table [dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT]
GO
/****** Object:  Table [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_CUSTOMERENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT]
GO
/****** Object:  Table [dbo].[LEARNER_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNER_LEARNERGROUP]
GO
/****** Object:  Table [dbo].[REGISTRATIONINVITATION_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION_LEARNERGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[REGISTRATIONINVITATION_LEARNERGROUP]
GO
/****** Object:  Table [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP]
GO
/****** Object:  Table [dbo].[LEARNER_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_ORGANIZATIONALGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LEARNER_ORGANIZATIONALGROUP]
GO
/****** Object:  Table [dbo].[VU360USER_ROLE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_ROLE]') AND type in (N'U'))
DROP TABLE [dbo].[VU360USER_ROLE]
GO
/****** Object:  Table [dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP]
GO
/****** Object:  Table [dbo].[COURSE_COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_COURSEGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[COURSE_COURSEGROUP]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BRAND]') AND type in (N'U'))
DROP TABLE [dbo].[BRAND]
GO
/****** Object:  Table [dbo].[AUDITEVENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUDITEVENT]') AND type in (N'U'))
DROP TABLE [dbo].[AUDITEVENT]
GO
/****** Object:  Table [dbo].[DISTRIBUTORENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[DISTRIBUTORENTITLEMENT]
GO
/****** Object:  Table [dbo].[VU360USER]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER]') AND type in (N'U'))
DROP TABLE [dbo].[VU360USER]
GO
/****** Object:  Table [dbo].[VU360_SEQ]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360_SEQ]') AND type in (N'U'))
DROP TABLE [dbo].[VU360_SEQ]
GO
/****** Object:  Table [dbo].[COURSE_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_CUSTOMERENTITLEMENT]') AND type in (N'U'))
DROP TABLE [dbo].[COURSE_CUSTOMERENTITLEMENT]
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNTRY]') AND type in (N'U'))
DROP TABLE [dbo].[COUNTRY]
GO
/****** Object:  Table [dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP]
GO
/****** Object:  Table [dbo].[STATE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STATE]') AND type in (N'U'))
DROP TABLE [dbo].[STATE]
GO
/****** Object:  Table [dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP]
GO
/****** Object:  Table [dbo].[SURVEY_COURSE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEY_COURSE]') AND type in (N'U'))
DROP TABLE [dbo].[SURVEY_COURSE]
GO
/****** Object:  Table [dbo].[SURVEY]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEY]') AND type in (N'U'))
DROP TABLE [dbo].[SURVEY]
GO
/****** Object:  Table [dbo].[LMSFEATURE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSFEATURE]') AND type in (N'U'))
DROP TABLE [dbo].[LMSFEATURE]
GO
/****** Object:  Table [dbo].[LMSROLE]    Script Date: 02/03/2009 20:12:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSROLE]') AND type in (N'U'))
DROP TABLE [dbo].[LMSROLE]
GO
/****** Object:  Table [dbo].[LMSROLE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LMSROLE](
	[ROLENAME] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ID] [bigint] NOT NULL,
	[ROLE_TYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'LEARNER', 1, N'ROLE_LEARNER')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'MANAGER', 2, N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'ADMIN', 3, N'ROLE_LMSADMINISTRATOR')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'Custom manager', 911, N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'Demo Role1', 963, N'ROLE_LEARNER')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'custom role 1', 1111, N'ROLE_LEARNER')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'Custom Manager dont''t delete', 1161, N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSROLE] ([ROLENAME], [ID], [ROLE_TYPE]) VALUES (N'Custom Manager dont''t delete1', 1162, N'ROLE_LEARNER')
/****** Object:  Table [dbo].[LMSFEATURE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSFEATURE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LMSFEATURE](
	[ID] [bigint] NOT NULL,
	[FEATURECODE] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FEATUREDESC] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FEATURENAME] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LMSMODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FEATUREGROUP] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ROLETYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_FEATURE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (1, N'UserGroupsAndPermission', N'UserGroupsAndPermission', N'User Groups & Permissions', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (2, N'ManageLearner', N'manageLearner', N'Manage Learner', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (3, N'ManageOrgGroup', N'ManageOrgGroup', N'Manage Organizational Groups', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (4, N'ManageLearnerGroups', N'manageLearnerGroups', N'Manage Learner Groups', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (5, N'ManageSecurityRoles', N'ManageSecurityRoles', N'Manage Security Roles', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (6, N'Entitlements', N'Entitlements', N'Entitlements', N'manager', N'Entitlements', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (7, N'ManageEntitlements', N'ManageEntitlements', N'Manage Entitlements', N'manager', N'Entitlements', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (8, N'ManageEnrollments', N'ManageEnrollments', N'Manage Enrollments', N'manager', N'Entitlements', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (9, N'CurriculumsCourses', N'Curriculums & Courses', N'Curriculums & Courses', N'manager', N'CurriculumsCourses', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (10, N'ManagerCourses', N'Manager Courses', N'Manager Courses', N'manager', N'CurriculumsCourses', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (11, N'ManageTrainingPlans', N'Manage Training Plans', N'Manage Training Plans', N'manager', N'CurriculumsCourses', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (12, N'ManageSurveys', N'Manage Surveys', N'Manage Surveys', N'manager', N'ManageSurveys', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (13, N'PerformanceReports', N'Performance Reports', N'Performance Reports', N'manager', N'PerformanceReports', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (14, N'Announcements', N'Announcements', N'Announcements', N'manager', N'Announcements', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (15, N'mProfileSettings', N'Profile & Settings', N'Profile & Settings', N'manager', N'mProfileSettings', N'ROLE_TRAININGADMINISTRATOR')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (16, N'lProfileSettings', N'Profile & Settings', N'Profile & Settings', N'learner', N'lProfileSettings', N'ROLE_LEARNER')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (17, N'Reports', N'Reports', N'Reports', N'learner', N'Reports', N'ROLE_LEARNER')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (18, N'ShopCatalog', N'Shop Catalog', N'Shop Catalog', N'learner', N'ShopCatalog', N'ROLE_LEARNER')
INSERT [dbo].[LMSFEATURE] ([ID], [FEATURECODE], [FEATUREDESC], [FEATURENAME], [LMSMODE], [FEATUREGROUP], [ROLETYPE]) VALUES (19, N'BatchImportUsers', N'Batch Import Users', N'Batch Import Users', N'manager', N'UserGroupsAndPermission', N'ROLE_TRAININGADMINISTRATOR')
/****** Object:  Table [dbo].[SURVEY]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SURVEY](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[STATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ISLOCKEDTF] [int] NOT NULL,
 CONSTRAINT [PK_SURVEY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (1, N'All Employees Survey', N'Published', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (2, N'All Managers Survey', N'published', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (251, N'MySurvey', N'OK', 1)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (401, N'My new Survey', N'unpublished', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (451, N'Job111', N'unpublished', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (501, N'How are you feeling', N'published', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (651, N'this is a retest', N'published', 0)
INSERT [dbo].[SURVEY] ([ID], [NAME], [STATUS], [ISLOCKEDTF]) VALUES (701, N'New Survey Test-1', N'unpublished', 0)
/****** Object:  Table [dbo].[SURVEY_COURSE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEY_COURSE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SURVEY_COURSE](
	[SURVEY_ID] [bigint] NOT NULL,
	[COURSE_ID] [bigint] NOT NULL
)
END
GO
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 1)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 2)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 3)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 4)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 5)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (251, 11)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (401, 1)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (451, 1)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (451, 2)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (451, 3)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (501, 1)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (501, 2)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (651, 3)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (651, 4)
INSERT [dbo].[SURVEY_COURSE] ([SURVEY_ID], [COURSE_ID]) VALUES (701, 2)
/****** Object:  Table [dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAININGADMINISTRATOR_ORGANIZATIONALGROUP](
	[TRAININGADMINISTRATOR_ID] [bigint] NOT NULL,
	[ORGANIZATIONALGROUP_ID] [bigint] NOT NULL
)
END
GO
/****** Object:  Table [dbo].[STATE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STATE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STATE](
	[STATEABBR] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LMSADMINISTRATOR_DISTRIBUTORGROUP](
	[LMSADMINISTRATOR_ID] [bigint] NOT NULL,
	[DISTRIBUTORGROUP_ID] [bigint] NOT NULL
)
END
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNTRY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COUNTRY](
	[COUNTRY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[COURSE_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_CUSTOMERENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSE_CUSTOMERENTITLEMENT](
	[COURSE_ID] [bigint] NOT NULL,
	[CUSTOMERENTITLEMENT_ID] [bigint] NOT NULL
)
END
GO
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (1, 1)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (2, 2)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (3, 3)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (4, 4)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (5, 5)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (11, 11)
INSERT [dbo].[COURSE_CUSTOMERENTITLEMENT] ([COURSE_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (12, 12)
/****** Object:  Table [dbo].[VU360_SEQ]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360_SEQ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VU360_SEQ](
	[NEXT_ID] [bigint] NOT NULL,
	[TABLE_NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
END
GO
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (6910, N'ADDRESS')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'AUDITEVENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'BRAND')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'COUNTRY')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'COURSE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'COURSEGROUP')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'CUSTOMER')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'CUSTOMERENTITLEMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'DISTRIBUTOR')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'DISTRIBUTORENTITLEMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'DISTRIBUTORGROUP')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'ENROLLMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'LANGUAGE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (6910, N'LEARNER')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1260, N'LEARNERCOURSESTATISTICS')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1110, N'LEARNERENROLLMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (660, N'LEARNERGROUP')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (6910, N'LEARNERPROFILE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10660, N'LEARNINGSESSION')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1960, N'LMSADMINISTRATOR')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (260, N'LMSFEATURE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1510, N'LMSPERMISSION')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1310, N'LMSROLE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (860, N'ORGANIZATIONALGROUP')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (760, N'ORGANIZATIONALGROUPENTITLEMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1760, N'REGISTRATIONINVITATION')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'STATE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'TRAINIINGPLAN')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'TRAINIINGPLANASSIGNMENT')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (3910, N'TRAININGADMINISTRATOR')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'VU360_SEQ')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (7710, N'VU360USER')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'VU360USER_ROLE')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (750, N'SURVEY')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (1100, N'SURVEYQUESTION')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (600, N'SURVEYANSWER')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'SurveyResult')
INSERT [dbo].[VU360_SEQ] ([NEXT_ID], [TABLE_NAME]) VALUES (10, N'SurveyResultAnswer')
/****** Object:  Table [dbo].[VU360USER]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VU360USER](
	[ID] [bigint] NOT NULL,
	[ACCEPTEDEULATF] [int] NOT NULL,
	[ACCOUNTNONEXPIREDTF] [int] NOT NULL,
	[ACCOUNTNONLOCKEDTF] [int] NOT NULL,
	[CHANGEPASSWORDONLOGINTF] [int] NOT NULL,
	[CREATEDDATE] [datetime] NOT NULL,
	[CREDENTIALSNONEXPIREDTF] [int] NOT NULL,
	[DOMAIN] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAILADDRESS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENABLEDTF] [int] NOT NULL,
	[FIRSTNAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LASTLOGONDATE] [datetime] NULL,
	[LASTNAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LASTUPDATEDDATE] [datetime] NULL,
	[NEWUSERTF] [int] NOT NULL,
	[NUMLOGONS] [int] NOT NULL,
	[PASSWORD] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USERNAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[USERGUID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MIDDLENAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXPIRATIONDATE] [datetime] NULL,
	[VISIBLEONREPORTTF] [int] NULL,
 CONSTRAINT [PK__VU360USER__07F6335A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (1, 1, 1, 1, 0, CAST(0x00009B7600EBEF0B AS DateTime), 1, NULL, N'jason', 1, N'Jason(Dont Delete)', CAST(0x00009B980103D40C AS DateTime), N'thikache', CAST(0x00009B7600EBEF0B AS DateTime), 0, 33, N'admin', N'jason', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', N'', NULL, NULL)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (2, 1, 1, 1, 0, CAST(0x00009B6E00000000 AS DateTime), 1, NULL, N'pabitra.chakraborty@tathya.com', 1, N'Ashis', CAST(0x00009BA50106A738 AS DateTime), N'Mukherjee', NULL, 0, 241, N'manager', N'manager', N'aqw33', N'Taru', CAST(0x00009B6800000000 AS DateTime), NULL)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4161, 1, 1, 1, 0, CAST(0x00009B900112FF0E AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Dey', CAST(0x00009B900112FF0E AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4211, 1, 1, 1, 0, CAST(0x00009B9001137A10 AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B9001137A10 AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4261, 1, 1, 1, 0, CAST(0x00009B900113FFA6 AS DateTime), 1, NULL, N'ajim@gmail.com', 1, N'ajim', NULL, N'premji', CAST(0x00009B900113FFA6 AS DateTime), 0, 0, N'ajimajim', N'ajim@gmail.com', N'4c50e93c-826d-4be3-a210-60dd9756f1a2', N'kumar', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4311, 1, 1, 1, 0, CAST(0x00009B900115B357 AS DateTime), 1, NULL, N'partha.adhikary@tathya.com', 1, N'Partha', NULL, N'Adhikary', CAST(0x00009B900115B357 AS DateTime), 0, 0, N'123456789', N'Partha@tathya.com', N'368d1338-6ca4-4c27-930c-b8386d219ed9', N'Sarathi', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4312, 1, 1, 1, 0, CAST(0x00009B90011785D1 AS DateTime), 1, NULL, N'koushik@tathya.com', 1, N'Koushik', NULL, N'Mondal', CAST(0x00009B90011785D1 AS DateTime), 0, 0, N'koushik', N'koushik@tathya.com', N'bc546b43-990e-475c-8e5f-326f59d96224', N'kumar', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4313, 1, 1, 1, 0, CAST(0x00009B9001190631 AS DateTime), 1, NULL, N'gere@rich.com', 1, N'Richard', NULL, N'Gere', CAST(0x00009B9001190631 AS DateTime), 0, 0, N'aijvftjm', N'gere@rich.com', N'8efed56e-eb79-4203-9dbf-523dcc7df631', N'Louse', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4314, 0, 0, 0, 0, CAST(0x00009B900119EAD2 AS DateTime), 0, NULL, N'dev@gmail.com', 0, N'Devdas', NULL, N'Mondal', CAST(0x00009B900119EAD2 AS DateTime), 0, 0, N'dev', N'dev@gmail.com', N'93cbdec1-2073-4bd4-aaf5-57c5c21dc709', N'', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4318, 1, 1, 1, 0, CAST(0x00009B90011D9A45 AS DateTime), 1, NULL, N'billu@mycrow.com', 1, N'Bill', NULL, N'Gates', CAST(0x00009B90011D9A45 AS DateTime), 0, 0, N'billu', N'billu@mycrow.com', N'69fcb742-5d5c-4e8c-8322-daadc2d41e35', N'', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4321, 1, 1, 1, 0, CAST(0x00009B9001223793 AS DateTime), 1, NULL, N'ranjan@gmail.com', 1, N'Ranjan', NULL, N'Mandal', CAST(0x00009B9001223793 AS DateTime), 0, 0, N'123456', N'ranjan@gmail.com', N'724d1baf-6e12-4013-b0b9-e4f5a1eb110b', N'Kumar', CAST(0x00009BA100000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4323, 0, 0, 1, 0, CAST(0x00009B9001230445 AS DateTime), 0, NULL, N'rahul@yahoo.com', 1, N'Rahul', NULL, N'Sarkar', CAST(0x00009B9001230445 AS DateTime), 0, 0, N'1234', N'rahul@yahoo.com', N'b5c0328a-06a9-432d-82f3-83b92d58c79e', N'Ranjan', CAST(0x00009BDD00000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4324, 1, 1, 1, 0, CAST(0x00009B90012398D2 AS DateTime), 1, NULL, N'amit@indiatimes.com', 1, N'Amit', NULL, N'Ghosh', CAST(0x00009B90012398D2 AS DateTime), 0, 0, N'456', N'amit@indiatimes.com', N'1880e790-cc72-450c-9c06-3cc9f3e9d9c2', N'Sundar', CAST(0x00009E7100000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4326, 1, 1, 1, 0, CAST(0x00009B900124A993 AS DateTime), 1, NULL, N'rakesh@in.com', 1, N'Rakesh', NULL, N'Pal', CAST(0x00009B900124A993 AS DateTime), 0, 0, N'abc12345678', N'rakesh@in.com', N'6bf813b5-742f-4112-b667-26f32601c47a', N'Ranjan', CAST(0x00009BA100000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4327, 1, 1, 1, 0, CAST(0x00009B90012CB368 AS DateTime), 1, NULL, N'bimal.roy@yahoo.co.in111', 1, N'Bimal1111', NULL, N'', CAST(0x00009B90012CB368 AS DateTime), 0, 0, N'bimalddddddddddddddddddddddddddddddddd', N'bimal.roy@yahoo.co.in', N'40a37fb9-4be5-4817-bb99-d44c0de63f49', N'Kumar1111', CAST(0x00009E7900000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4361, 1, 1, 1, 0, CAST(0x00009B90011703D0 AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B90011703D0 AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4411, 1, 1, 1, 0, CAST(0x00009B900117FFB1 AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B900117FFB1 AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4461, 1, 1, 1, 0, CAST(0x00009B900119B1B5 AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B900119B1B5 AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4511, 1, 1, 1, 0, CAST(0x00009B90011B1CBC AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B90011B1CBC AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4561, 1, 1, 1, 0, CAST(0x00009B90011C81F4 AS DateTime), 1, NULL, N'sandeepan@sify.com', 1, N'Sandeepan ', NULL, N'Debnath', CAST(0x00009B90011C81F4 AS DateTime), 0, 0, N'12345678', NULL, NULL, N'Kumar', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4611, 1, 1, 1, 0, CAST(0x00009B90011EC86E AS DateTime), 1, NULL, N'demasmita@sify.com', 1, N'Debasmita ', NULL, N'Ghosh', CAST(0x00009B90011EC86E AS DateTime), 0, 0, N'12345678', N'demasmita', NULL, N' ', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4661, 1, 1, 1, 0, CAST(0x00009B900121033E AS DateTime), 1, NULL, N'demasmita@sify.com', 1, N'Debasmita ', NULL, N'DuttaChowdhury', CAST(0x00009B900121033E AS DateTime), 0, 0, N'12345678', N'demasmita', NULL, N' ', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4711, 1, 1, 1, 0, CAST(0x00009B900149419E AS DateTime), 1, NULL, N'sriparna@sify.com', 1, N'Sriparna', NULL, N'Mukherjee', CAST(0x00009B900149419E AS DateTime), 0, 0, N'sriparna@sify.com', N'sriparna', NULL, N' ', CAST(0x00009BA200000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4761, 1, 1, 1, 0, CAST(0x00009B900152CAC8 AS DateTime), 1, NULL, N'ram@gmail.com', 1, N'ram', NULL, N'sharma', CAST(0x00009B900152CABE AS DateTime), 0, 0, N'ramramram', N'ram@gmail.com', N'78ef6681-f76e-4316-a264-2e0bb46c0c07', N'kumar', CAST(0x00009B9800000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4811, 1, 1, 1, 0, CAST(0x00009B9100C9D48E AS DateTime), 1, NULL, N'rajkumar@sify.com', 1, N'Rajkumar ', NULL, N'Mukherjee', CAST(0x00009B9100C9D48E AS DateTime), 0, 0, N'12345', N'rajkumar', NULL, N' Nath', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4911, 0, 0, 0, 0, CAST(0x00009B92011392BF AS DateTime), 0, NULL, N'testuser@test.com', 0, N'Test', NULL, N'Test', CAST(0x00009B9201136CDD AS DateTime), 0, 0, N'123456789', N'test@test.com', N'a2772dcb-220d-4224-a999-96c35253d28f', N'', CAST(0x00009B9E00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4961, 0, 0, 0, 0, CAST(0x00009B92011AEAA7 AS DateTime), 0, NULL, N'test1@test.com', 0, N'Test', NULL, N'Test', CAST(0x00009B92011AEAA3 AS DateTime), 0, 0, N'111111111', N'test1@test.com', N'74a4a8e9-1655-42a7-844d-dc21583fbb25', N'Test', CAST(0x00009B9F00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (4962, 0, 0, 0, 0, CAST(0x00009B92011D6681 AS DateTime), 0, NULL, N'newuser@test.com', 0, N'NewUser', NULL, N'NewUser', CAST(0x00009B92011D2FEC AS DateTime), 0, 0, N'123456789', N'newuser@test.com', N'9161bf14-8d3e-4850-b28b-e3fe49776932', N'', CAST(0x00009B9E00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5061, 1, 1, 1, 0, CAST(0x00009B9300A94447 AS DateTime), 1, NULL, N'sakuntala.bose@tathya.com', 1, N'ee', NULL, N'ee', CAST(0x00009B9300A9443D AS DateTime), 0, 0, N'wgbzlyrw', N'sakuntala.bose@tathya.com', N'1d1e6784-8962-4c50-a894-b55ae647436b', N'', CAST(0x00009BA000000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5111, 0, 0, 0, 0, CAST(0x00009B9300C54C58 AS DateTime), 0, NULL, N'somnath@tathya.com', 0, N'Somnath', NULL, N'Ghosh', CAST(0x00009B9300C54C4E AS DateTime), 0, 0, N'qqqqqqqqq', N'somnath@tathya.com', N'f756692a-df8e-41a5-bc8c-8ea07beee3c8', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5161, 0, 0, 0, 0, CAST(0x00009B9300D8FB4C AS DateTime), 0, NULL, N'arijit@tathya.com', 0, N'somnath', NULL, N'ghosh', CAST(0x00009B9300D8D840 AS DateTime), 0, 0, N'123456789', N'arijit@tathya.com', N'352590f0-4221-40fd-9c80-272b96bc1feb', N'', CAST(0x00009B9800000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5211, 1, 1, 1, 0, CAST(0x00009B9300E1373A AS DateTime), 1, NULL, N'a.m@test.com', 0, N'Achintya', NULL, N'Maiti', CAST(0x00009B9300E13735 AS DateTime), 0, 0, N'222222222', N'a.m@test.com', N'8e6e7fe1-e2a1-4051-8f97-14bbdc9981b9', N'', CAST(0x00009B9800000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5411, 1, 1, 1, 0, CAST(0x00009B9301494738 AS DateTime), 1, NULL, N'demo111@demo.in', 1, N'demo111', NULL, N'demo111', CAST(0x00009B930149472F AS DateTime), 0, 0, N'demo111@demo.in', N'demo111@demo.in', N'b2e9d2cd-27b1-4d74-99b3-02dfda0c00a7', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5461, 1, 1, 1, 0, CAST(0x00009B960127711B AS DateTime), 1, NULL, N'ashis.webel@gmail.com', 1, N'Rahul', NULL, N'Mukherjee', CAST(0x00009B960127710D AS DateTime), 0, 0, N'njlguwge', N'ashis.webel@gmail.com', N'd464e997-b225-4eec-96c2-3082fd976742', N'', CAST(0x00009B9A00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5511, 1, 1, 0, 0, CAST(0x00009B960131890D AS DateTime), 1, NULL, N'dyutiman.b@tathya.co.in', 1, N'dyutiman', NULL, N'Bhattacharya', CAST(0x00009B9601318909 AS DateTime), 0, 0, N'111111111', N'dyutiman.b@tathya.co.in', N'e80f76d2-ec3a-4c2d-9529-b0e95bb93a44', N'', CAST(0x00009BA100000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5561, 1, 1, 0, 0, CAST(0x00009B960135B2E9 AS DateTime), 1, NULL, N'pablo@picasso.com', 1, N'pablo', NULL, N'picasso', CAST(0x00009B960135B2DF AS DateTime), 0, 0, N'123456789', N'pablo@picasso.com', N'8fb5fa00-a74c-499a-8116-74092b9d5d46', N'', CAST(0x00009BA200000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5611, 1, 1, 1, 0, CAST(0x00009B9900A48700 AS DateTime), 1, NULL, N'sourav@sarkar.com', 1, N'Sourava', NULL, N'Sarkar', CAST(0x00009B9900A48700 AS DateTime), 0, 0, N'123456789', N'sourav@sarkar.com', NULL, N'Kumar', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5661, 1, 1, 0, 0, CAST(0x00009B96013C18D8 AS DateTime), 1, NULL, N'kaberi@hotmail.com', 1, N'kaberi', NULL, N'mall', CAST(0x00009B96013C18CA AS DateTime), 0, 0, N'111111111', N'kaberi@hotmail.com', N'8ac0cb11-9510-45ba-a642-0cafd766e2b1', N'', CAST(0x00009BA000000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5662, 1, 1, 0, 0, CAST(0x00009B96013E6DEE AS DateTime), 1, NULL, N'santanu@sify.com', 1, N'santanu', NULL, N'chakraborty', CAST(0x00009B96013E6DEE AS DateTime), 0, 0, N'123456789', N'santanu@sify.com', N'ed130881-4d10-4831-91a1-4a81fc3d0b66', N'', CAST(0x00009B9F00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5711, 1, 1, 0, 0, CAST(0x00009B9601404214 AS DateTime), 1, NULL, N'abir@ganguly.com', 1, N'abir', NULL, N'ganguly', CAST(0x00009B9601404206 AS DateTime), 0, 0, N'qqqqqqqqq', N'abir@ganguly.com', N'e5c04884-16ac-4f43-aafa-d17e4e826851', N'', CAST(0x00009B9E00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5761, 1, 1, 1, 0, CAST(0x00009B9700B5DFC9 AS DateTime), 1, NULL, N'pabitra.chakraborty@tathya.com', 1, N'Jony', NULL, N'Depp', CAST(0x00009B9700B5DFBF AS DateTime), 0, 0, N'zjepuhxn', N'Jony@depp.com', N'52be07e3-2897-4854-904e-63e6da77b010', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5762, 1, 1, 1, 0, CAST(0x00009B9700B904F4 AS DateTime), 1, NULL, N'jackcrow@depp.com', 1, N'Jack', NULL, N'Crow', CAST(0x00009B9700B904F4 AS DateTime), 0, 0, N'jackcrow1', N'jackcrow@depp.com', N'dcda5167-8af6-48d3-99cf-4337d19d378a', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5813, 1, 1, 1, 0, CAST(0x00009B9900A46993 AS DateTime), 1, NULL, N'anjan@tathya.com', 1, N'Anjar', NULL, N'Paul', CAST(0x00009B9900A46993 AS DateTime), 0, 0, N'123456789', N'anjan@tathya.com', NULL, N'Kumar', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5861, 1, 1, 1, 0, CAST(0x00009B9700CD2C56 AS DateTime), 1, NULL, N'ram@niranjan.com', 1, N'Ram', NULL, N'Niranjan', CAST(0x00009B9700CD2C51 AS DateTime), 0, 0, N'111111111', N'ram@niranjan.com', N'1615b0a7-fec5-4e30-9b1b-35e2c6dc53e4', N'', CAST(0x00009B9A00000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5911, 1, 1, 1, 0, CAST(0x00009B9700ED0F4E AS DateTime), 1, NULL, N'abc@zyx.com', 1, N'test', NULL, N'test', CAST(0x00009B9700ED0F3B AS DateTime), 0, 0, N'111111111', N'abc@zyx.com', N'c5126fdf-6c9a-4449-aab3-baae248da872', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5912, 1, 1, 1, 0, CAST(0x00009B9700F98D26 AS DateTime), 1, NULL, N'007@bond.com', 1, N'Dinel', NULL, N'Creg', CAST(0x00009B9700F98D26 AS DateTime), 0, 0, N'777777777', N'007@bond.com', N'9d8ccd43-fd18-4396-afde-67b346246c0f', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5961, 1, 1, 1, 0, CAST(0x00009B9900A46708 AS DateTime), 1, NULL, N'abhijeet@sify.com', 1, N'Abhijeet', NULL, N'Ghatak', CAST(0x00009B9900A46708 AS DateTime), 0, 0, N'123456789', N'abhijeet@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5962, 1, 1, 1, 0, CAST(0x00009B9900A46862 AS DateTime), 1, NULL, N'abhiroop@sify.com', 1, N'Abhiroop', NULL, N'Ghatak', CAST(0x00009B9900A46862 AS DateTime), 0, 0, N'123456789', N'abhiroop@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5963, 1, 1, 1, 0, CAST(0x00009B9900A46DD7 AS DateTime), 1, NULL, N'debanjan@sify.com', 1, N'Debanjan', NULL, N'Mukherjee', CAST(0x00009B9900A46DD7 AS DateTime), 0, 0, N'123456789', N'debanjan@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5964, 1, 1, 1, 0, CAST(0x00009B9900A476B9 AS DateTime), 1, NULL, N'amartya@sify.com', 1, N'Amartya', NULL, N'Mukherjee', CAST(0x00009B9900A476B9 AS DateTime), 0, 0, N'123456789', N'amartya@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (5965, 1, 1, 1, 0, CAST(0x00009B9900A47CF2 AS DateTime), 1, NULL, N'anindya@sify.com', 1, N'Anindya', NULL, N'Mukherjee', CAST(0x00009B9900A47CF2 AS DateTime), 0, 0, N'123456789', N'anindya@sify.com', NULL, N'Sundar', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6011, 1, 1, 1, 0, CAST(0x00009B9900A46BD4 AS DateTime), 1, NULL, N'chandan@sify.com', 1, N'Chandan', NULL, N'Chatterjee', CAST(0x00009B9900A46BD4 AS DateTime), 0, 0, N'123456789', N'chandan@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6012, 1, 1, 1, 0, CAST(0x00009B9900A46CD5 AS DateTime), 1, NULL, N'apu@sify.com', 1, N'Apu', NULL, N'Das', CAST(0x00009B9900A46CD5 AS DateTime), 0, 0, N'123456789', N'apu@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6013, 1, 1, 1, 0, CAST(0x00009B9900A46ED4 AS DateTime), 1, NULL, N'sougata@sify.com', 1, N'Sougata', NULL, N'Mukherjee', CAST(0x00009B9900A46ED4 AS DateTime), 0, 0, N'123456789', N'sougata@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6014, 1, 1, 1, 0, CAST(0x00009B9900A46FD6 AS DateTime), 1, NULL, N'soma@sify.com', 1, N'Soma', NULL, N'Mukherjee', CAST(0x00009B9900A46FD6 AS DateTime), 0, 0, N'', N'soma@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6015, 1, 1, 1, 0, CAST(0x00009B9900A470CF AS DateTime), 1, NULL, N'biplab@sify.com', 1, N'Biplab', NULL, N'Mukherjee', CAST(0x00009B9900A470CF AS DateTime), 0, 0, N'123456789', N'biplab@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6016, 1, 1, 1, 0, CAST(0x00009B9900A471D0 AS DateTime), 1, NULL, N'sawkat@sify.com', 1, N'Sk', NULL, N'Ali', CAST(0x00009B9900A471D0 AS DateTime), 0, 0, N'123456789', N'sawkat@sify.com', NULL, N'Sawkat', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6017, 1, 1, 1, 0, CAST(0x00009B9900A472CE AS DateTime), 1, NULL, N'tushar@sify.com', 1, N'Tushar', NULL, N'Paul', CAST(0x00009B9900A472CE AS DateTime), 0, 0, N'123456789', N'tushar@sify.com', NULL, N'Kanti', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6018, 1, 1, 1, 0, CAST(0x00009B9900A473C6 AS DateTime), 1, NULL, N'gopal@sify.com', 1, N'Gopal', NULL, N'Mukherjee', CAST(0x00009B9900A473C6 AS DateTime), 0, 0, N'123456789', N'gopal@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6019, 1, 1, 1, 0, CAST(0x00009B9900A475B7 AS DateTime), 1, NULL, N'sudeep@sify.com', 1, N'Sudeep', NULL, N'Mukherjee', CAST(0x00009B9900A475B7 AS DateTime), 0, 0, N'123456789', N'sudeep@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6020, 1, 1, 1, 0, CAST(0x00009B9900A47830 AS DateTime), 1, NULL, N'bishnu@sify.com', 1, N'Bishnu', NULL, N'Mukherjee', CAST(0x00009B9900A47830 AS DateTime), 0, 0, N'', N'bishnu@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6021, 1, 1, 1, 0, CAST(0x00009B9900A47923 AS DateTime), 1, NULL, N'jeeshnu@sify.com', 1, N'Jeeshnu', NULL, N'Mukherjee', CAST(0x00009B9900A47923 AS DateTime), 0, 0, N'123456789', N'jeeshnu@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6022, 1, 1, 1, 0, CAST(0x00009B9801346321 AS DateTime), 1, NULL, N'arpita@sify.com', 1, N'Arpita', NULL, N'Mukherjee', CAST(0x00009B9801346321 AS DateTime), 0, 0, N'123456789', N'arpita@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6023, 1, 1, 1, 0, CAST(0x00009B9900A47B0B AS DateTime), 1, NULL, N'rajdeep@sify.com', 1, N'Rajdeep', NULL, N'Das', CAST(0x00009B9900A47B0B AS DateTime), 0, 0, N'123456789', N'rajdeep@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6024, 1, 1, 1, 0, CAST(0x00009B9900A47BFA AS DateTime), 1, NULL, N'kunal@sify.com', 1, N'Kunal', NULL, N'Mukherjee', CAST(0x00009B9900A47BFA AS DateTime), 0, 0, N'123456789', N'kunal@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6061, 1, 1, 1, 0, CAST(0x00009B9701180A1D AS DateTime), 1, NULL, N'asaptarshi@sify.com', 1, N'Asaptarshi', NULL, N'Mukherjee', CAST(0x00009B9701180A1D AS DateTime), 0, 0, N'123456789', N'asaptarshi', NULL, N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6161, 1, 1, 1, 0, CAST(0x00009B97012DCCAD AS DateTime), 1, NULL, N'anjan@gmail.com', 1, N'Anjan', NULL, N'Sen', CAST(0x00009B97012DCC9F AS DateTime), 0, 0, N'123456789', N'anjan@yahoo.com', N'18d5cf0e-b38a-424a-b18a-898b4928b781', N'Kumar', CAST(0x00009D0500000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6162, 1, 1, 1, 0, CAST(0x00009B97012E56EB AS DateTime), 1, NULL, N'aa@ffgg.com', 1, N'sss', NULL, N'ssss', CAST(0x00009B97012E56EB AS DateTime), 0, 0, N'/////////', N'aa@ffgg.com', N'af1c658a-a6cc-431a-a22b-5759b67ddb62', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6163, 1, 1, 1, 0, CAST(0x00009B97012F1494 AS DateTime), 1, NULL, N'ee@ww.com', 1, N'parth', NULL, N'sart', CAST(0x00009B97012F1494 AS DateTime), 0, 0, N'111111111', N'ee@ww.com', N'9ebe44b1-078d-4a6f-8c83-31b9d24f7f4a', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6211, 1, 1, 1, 0, CAST(0x00009B9900A46ABF AS DateTime), 1, NULL, N'ashish@sify.com', 1, N'Ashish', NULL, N'Pande', CAST(0x00009B9900A46ABF AS DateTime), 0, 0, N'123456789', N'ashish@sify.com', NULL, N'Kumar', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6212, 1, 1, 1, 0, CAST(0x00009B9900A47DF4 AS DateTime), 1, NULL, N'avik@sify.com', 1, N'Avik', NULL, N'Mukherjee', CAST(0x00009B9900A47DF4 AS DateTime), 0, 0, N'123456789', N'avik@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6213, 1, 1, 1, 0, CAST(0x00009B9900A47EE8 AS DateTime), 1, NULL, N'khusnud@sify.com', 1, N'Khusnud', NULL, N'Ali', CAST(0x00009B9900A47EE8 AS DateTime), 0, 0, N'123456789', N'khusnud@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6214, 1, 1, 1, 0, CAST(0x00009B9900A47FD2 AS DateTime), 1, NULL, N'animesh@sify.com', 1, N'Animesh', NULL, N'Mukherjee', CAST(0x00009B9900A47FD2 AS DateTime), 0, 0, N'123456789', N'animesh@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6215, 1, 1, 1, 0, CAST(0x00009B9900A481F7 AS DateTime), 1, NULL, N'saptak@sify.com', 1, N'Saptak', NULL, N'Mukherjee', CAST(0x00009B9900A481F7 AS DateTime), 0, 0, N'123456789', N'saptak@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6216, 1, 1, 1, 0, CAST(0x00009B9900A482D8 AS DateTime), 1, NULL, N'soumik@sify.com', 1, N'Soumik', NULL, N'Mukherjee', CAST(0x00009B9900A482D8 AS DateTime), 0, 0, N'123456789', N'soumik@sify.com', NULL, N'Nath', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6217, 1, 1, 1, 0, CAST(0x00009B9900A483A1 AS DateTime), 1, NULL, N'samik@sify.com', 1, N'Samik', NULL, N'Dutta', CAST(0x00009B9900A483A1 AS DateTime), 0, 0, N'123456789', N'samik@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6218, 1, 1, 1, 0, CAST(0x00009B9900A48475 AS DateTime), 1, NULL, N'zaheer@sify.com', 1, N'Zaheer', NULL, N'Khan', CAST(0x00009B9900A48475 AS DateTime), 0, 0, N'123456789', N'zaheer@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6219, 1, 1, 1, 0, CAST(0x00009B9900A48551 AS DateTime), 1, NULL, N'pankaj@sify.com', 1, N'Pankaj', NULL, N'Dwibedi', CAST(0x00009B9900A48551 AS DateTime), 0, 0, N'123456789', N'pankaj@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6220, 1, 1, 1, 0, CAST(0x00009B9900A48632 AS DateTime), 1, NULL, N'sudangshu@sify.com', 1, N'Sudangshu', NULL, N'Mukherjee', CAST(0x00009B9900A48632 AS DateTime), 0, 0, N'123456789', N'sudangshu@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6261, 1, 1, 0, 0, CAST(0x00009B9800ABCC1A AS DateTime), 1, NULL, N'aaa@qqq.com', 0, N'Test 1', NULL, N'Test 1', CAST(0x00009B9800ABCBCF AS DateTime), 0, 0, N'111111111', N'aaa@qqq.com', N'd67bf9ee-083b-4562-8b83-a7e19ecc8138', N'', CAST(0x00009B9600000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6262, 1, 1, 0, 0, CAST(0x00009B9800AC2AAD AS DateTime), 1, NULL, N'testing@test.com', 0, N'Testing', NULL, N'Testing', CAST(0x00009B9800AC2AAD AS DateTime), 0, 0, N'111111111', N'testing@test.com', N'9ee6d679-6487-4351-951e-ca1df802f4e5', N'', CAST(0x00009B9900000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6312, 1, 1, 1, 0, CAST(0x00009B9800FBE9DB AS DateTime), 1, NULL, N'kou@kou.com', 1, N'koushik123', NULL, N'm', CAST(0x00009B9800FBE9DB AS DateTime), 0, 0, N'111111111', N'kou@kou.com', N'21a340b9-0f59-408f-ac31-b7ea6da98a70', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6313, 1, 1, 1, 0, CAST(0x00009B9800FC4ED2 AS DateTime), 1, NULL, N'ss1@ss1.in', 1, N'ssssssssss', NULL, N'ss1', CAST(0x00009B9800FC4ED2 AS DateTime), 0, 0, N'111111111', N'ss1@ss1.in', N'6ff900cd-f761-433f-ad5a-c8f7e8739ab5', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6314, 1, 1, 1, 0, CAST(0x00009B9800FDBA23 AS DateTime), 1, NULL, N'newtest@qqq.com', 1, N'New Test', NULL, N'New Test', CAST(0x00009B9800FDBA23 AS DateTime), 0, 0, N'111111111', N'newtest@qqq.com', N'2cb592ca-c94f-4a21-b150-9a9810916daa', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6315, 1, 1, 1, 0, CAST(0x00009B9800FE759A AS DateTime), 1, NULL, N'new1@new1.com', 1, N'New1', NULL, N'New1', CAST(0x00009B9800FE759A AS DateTime), 0, 0, N'111111111', N'new1@new1.com', N'f7f8d82e-1b1c-47a3-b845-c5cc24a7cb73', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6361, 0, 0, 0, 0, CAST(0x00009B9800CFB83A AS DateTime), 0, NULL, N'somnath1@tathya.com', 0, N'somnath', NULL, N'ghosh', CAST(0x00009B9800CFB822 AS DateTime), 0, 0, N'qqqqqqqqq', N'somnath1@tathya.com', N'2b20e04b-7162-43b6-86e6-892758797e0b', N'', NULL, 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6411, 1, 1, 1, 0, CAST(0x00009B980104317C AS DateTime), 1, NULL, N'bholu@gangaram.com', 1, N'bholu', NULL, N'gangaram', CAST(0x00009B9801043177 AS DateTime), 0, 0, N'111111111', N'bholu@gangaram.com', N'4fcdccff-5871-44f0-92b8-c1b755bf4f63', N'nath', CAST(0x00009B9A00000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6461, 1, 1, 0, 1, CAST(0x00009B98010438E2 AS DateTime), 1, NULL, N'abhijeet@sify.com', 0, N'abc11', NULL, N'33', CAST(0x00009B98010438C1 AS DateTime), 0, 0, N'111111111', N'sd@wewe.com', N'e9a75a92-9262-4154-b001-41f813b174d7', N'', CAST(0x00009B9900000000 AS DateTime), 0)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6511, 1, 1, 1, 0, CAST(0x00009B98010C41D5 AS DateTime), 1, NULL, N'subha@tmail.in', 1, N'Subharanshu', NULL, N'Banerjee', CAST(0x00009B98010C41D1 AS DateTime), 0, 0, N'12345678', N'subha@tmail.in', N'a55c0985-afb7-470a-934d-5a869719cf83', N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6512, 1, 1, 1, 1, CAST(0x00009B9801135092 AS DateTime), 1, NULL, N'satyajit@abc.co.in', 1, N'Satyajit', NULL, N'Roy', CAST(0x00009B9801135092 AS DateTime), 0, 0, N'11111111', N'satyajit@abc.co.in', N'dc62fa3c-9a06-4eec-8cb1-2dbed2ec4bac', N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6513, 1, 1, 1, 0, CAST(0x00009B98011479A9 AS DateTime), 1, NULL, N'che@abc.co.au', 1, N'Che', NULL, N'Guevara', CAST(0x00009B98011479A9 AS DateTime), 0, 0, N'11111111', N'che@abc.co.au', N'45b4fe72-2bf0-467c-a737-d169c2de1894', N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6561, 1, 1, 1, 0, CAST(0x00009B980130E1A4 AS DateTime), 1, NULL, N'abhijit@sify.com', 1, N'Abhijit', NULL, N'Ghatak', CAST(0x00009B980130E1A4 AS DateTime), 0, 0, N'123456789', N'abhijit@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6562, 1, 1, 1, 0, CAST(0x00009B980130E2CB AS DateTime), 1, NULL, N'abhirup@sify.com', 1, N'Abhirup', NULL, N'Ghatak', CAST(0x00009B980130E2CB AS DateTime), 0, 0, N'123456789', N'abhirup@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6611, 1, 1, 1, 0, CAST(0x00009B98013456D8 AS DateTime), 1, NULL, N'abhijita@sify.com', 1, N'Abhijita', NULL, N'Ghatak', CAST(0x00009B98013456D8 AS DateTime), 0, 0, N'123456789', N'abhijita@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6612, 1, 1, 1, 0, CAST(0x00009B9801345781 AS DateTime), 1, NULL, N'abhirupa@sify.com', 1, N'Abhirupa', NULL, N'Ghatak', CAST(0x00009B9801345781 AS DateTime), 0, 0, N'123456789', N'abhirupa@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6613, 1, 1, 1, 0, CAST(0x00009B98013458F3 AS DateTime), 1, NULL, N'chandana@sify.com', 1, N'Chandana', NULL, N'Chatterjee', CAST(0x00009B98013458F3 AS DateTime), 0, 0, N'123456789', N'chandana@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6661, 1, 1, 1, 0, CAST(0x00009B9801371680 AS DateTime), 1, NULL, N'p@p.com', 1, N'fvcv', NULL, N'xczvzxv', CAST(0x00009B980137167B AS DateTime), 0, 0, N'123456789', N'p@p.com', N'59591fa5-c7a9-4ea5-9374-ac5c0d814ead', N'', CAST(0x00009BA000000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6711, 1, 1, 1, 0, CAST(0x00009B98014F4234 AS DateTime), 1, NULL, N'abhijitam@sify.com', 1, N'Abhijitam', NULL, N'Ghatak', CAST(0x00009B98014F4234 AS DateTime), 0, 0, N'123456789', N'abhijitam@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6761, 1, 1, 1, 0, CAST(0x00009B9801675F62 AS DateTime), 1, NULL, N'prasenjit@sify.com', 1, N'Prasenjit', NULL, N'Mukherjee', CAST(0x00009B9801675F62 AS DateTime), 0, 0, N'123456789', N'prasenjit@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6762, 1, 1, 1, 0, CAST(0x00009B9900A48108 AS DateTime), 1, NULL, N'monimoy@sify.com', 1, N'Monimoy', NULL, N'Mukherjee', CAST(0x00009B9900A48108 AS DateTime), 0, 0, N'123456789', N'monimoy@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6763, 1, 1, 1, 0, CAST(0x00009B9900A474BE AS DateTime), 1, NULL, N'prasenjIT:ITES@sify.com', 1, N'PrasenjIT:ITES', NULL, N'Mukherjee', CAST(0x00009B9900A474BE AS DateTime), 0, 0, N'123456789', N'prasenjIT:ITES@sify.com', NULL, N'', NULL, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (6764, 1, 1, 1, 0, CAST(0x00009B9900A47A21 AS DateTime), 1, NULL, N'arpIT:ITESa@sify.com', 1, N'ArpIT:ITESa', NULL, N'Mukherjee', CAST(0x00009B9900A47A21 AS DateTime), 0, 0, N'123456789', N'arpIT:ITESa@sify.com', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7061, 0, 1, 1, 0, CAST(0x00009B9901498592 AS DateTime), 1, NULL, N'partha.@yahoo.com', 1, N'Parthasarathi', NULL, N'Adhikary', CAST(0x00009B9901498592 AS DateTime), 0, 0, N'123456789', N'partha', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7062, 0, 1, 1, 0, CAST(0x00009B99014FCFDF AS DateTime), 1, NULL, N'partha@yahoo.co.in', 1, N'Parthasarathi', NULL, N'Adhikary', CAST(0x00009B99014FCFDF AS DateTime), 0, 0, N'123456789', N'partha', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7063, 1, 1, 1, 0, CAST(0x00009B990151D96E AS DateTime), 1, NULL, N'partha@yahoo.co.in', 1, N'Parthasarathi123', NULL, N'Adhikary123', CAST(0x00009B990151D96E AS DateTime), 0, 0, N'11111111', N'partha123', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7111, 0, 1, 1, 0, CAST(0x00009B9A00A9F21D AS DateTime), 1, NULL, N'patha.adhikary311@yahoo.com', 1, N'Parthasarathi311', NULL, N'Adhikary311', CAST(0x00009B9A00A9F21D AS DateTime), 0, 0, N'12345678', N'partha311', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7161, 0, 1, 1, 0, CAST(0x00009B9A00AF93F1 AS DateTime), 1, NULL, N'avi@yahoo.com', 1, N'avi', NULL, N'barman', CAST(0x00009B9A00AF93F1 AS DateTime), 0, 0, N'11111111', N'avi123', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7212, 0, 1, 1, 0, CAST(0x00009B9A00BD78E0 AS DateTime), 1, NULL, N'partha.adhikary@tathya.com', 1, N'Parthasarathi11', NULL, N'Adhikary11', CAST(0x00009B9A00BD78E0 AS DateTime), 0, 0, N'123456789', N'partha11', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7261, 0, 1, 1, 0, CAST(0x00009B9A00BF5A84 AS DateTime), 1, NULL, N'partha.adhikary@tathya.com', 1, N'Parthasarathi11', NULL, N'Adhikary311', CAST(0x00009B9A00BF5A84 AS DateTime), 0, 0, N'123456789', N'partha311', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7311, 0, 1, 1, 0, CAST(0x00009B9A00C2D92C AS DateTime), 1, NULL, N'pabitra@tathya.com', 1, N'Pabitra311', NULL, N'Chakraborty311', CAST(0x00009B9A00C2D92C AS DateTime), 0, 0, N'123456789', N'tathya', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7312, 0, 1, 1, 0, CAST(0x00009B9A00C44D5A AS DateTime), 1, NULL, N'pabitra@tathya.com', 1, N'Pabitra611', NULL, N'Chakraborty611', CAST(0x00009B9A00C44D5A AS DateTime), 0, 0, N'123456789', N'partha', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7313, 0, 1, 1, 0, CAST(0x00009B9A00C986C1 AS DateTime), 1, NULL, N'arijit611@tathya.com', 1, N'Arijit611', NULL, N'Chak611', CAST(0x00009B9A00C986C1 AS DateTime), 0, 0, N'123456789', N'arijit', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7361, 0, 1, 1, 0, CAST(0x00009B9A00D026B2 AS DateTime), 1, NULL, N'pabitra@tathya.com', 1, N'Pabitra611', NULL, N'Chak611', CAST(0x00009B9A00D026B2 AS DateTime), 0, 0, N'123456789', N'partha', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7362, 0, 1, 1, 0, CAST(0x00009B9A00D11514 AS DateTime), 1, NULL, N'jems@bond.com', 1, N'Dinel', NULL, N'Creg', CAST(0x00009B9A00D11514 AS DateTime), 0, 0, N'11111111', N'jems', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7363, 0, 1, 1, 0, CAST(0x00009B9A00D9E50C AS DateTime), 1, NULL, N'LastOne@tathya.com', 1, N'LastOne', NULL, N'LastOne', CAST(0x00009B9A00D9E50C AS DateTime), 0, 0, N'123456789', N'LastOne', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7364, 0, 1, 1, 0, CAST(0x00009B9A00DC9537 AS DateTime), 1, NULL, N'LastOne@tathya.com', 1, N'LastOne', NULL, N'LastOne', CAST(0x00009B9A00DC9537 AS DateTime), 0, 0, N'123456789', N'LastOne', NULL, N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7411, 0, 1, 1, 0, CAST(0x00009B9E00CDEDBB AS DateTime), 1, NULL, N'aaa@aa.com', 1, N'', NULL, N'', CAST(0x00009B9E00CDEDBB AS DateTime), 0, 0, N'11111111', N'aaa@aa.com', NULL, N'sss', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7461, 1, 1, 1, 0, CAST(0x00009B9E0154C56A AS DateTime), 1, NULL, N'adfd@ga.com', 1, N'fas', NULL, N'dasf', CAST(0x00009B9E0154C565 AS DateTime), 0, 0, N'11111111', N'adfd@ga.com', N'3018c06c-feff-4df0-800f-fd56f21ff54e', N'', NULL, 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7511, 1, 1, 1, 0, CAST(0x00009BA500ADA722 AS DateTime), 1, NULL, N'ashis.tathya@gmail.com', 1, N'Kevin', NULL, N'kisuki', CAST(0x00009BA500ADA714 AS DateTime), 0, 0, N'vsat1s23nl', N'ashis.tathya@gmail.com', N'9bcc4bd0-d8f7-4d64-a99e-3f6d47bb4d71', N'c', CAST(0x00009C3100000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7561, 1, 1, 1, 0, CAST(0x00009BA500D2794F AS DateTime), 1, NULL, N'ajanta@tathya.com', 1, N'Ajanta', NULL, N'Ghosh', CAST(0x00009BA500D27941 AS DateTime), 0, 0, N'vsat1s23nl', N'ajanta@tathya.com', N'9dc47d27-b570-4efa-be71-98363b21e646', N'', CAST(0x0000A88900000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7611, 1, 1, 1, 0, CAST(0x00009BA50107DB5E AS DateTime), 1, NULL, N'deep@tathya.com', 1, N'Sankhadeep', NULL, N'Ghosh', CAST(0x00009BA50107DB5E AS DateTime), 0, 0, N'vsat1s23nl', N'deep@tathya.com', N'd029495c-291d-431d-b113-f6490ae11250', N'', CAST(0x0000A9E700000000 AS DateTime), 1)
INSERT [dbo].[VU360USER] ([ID], [ACCEPTEDEULATF], [ACCOUNTNONEXPIREDTF], [ACCOUNTNONLOCKEDTF], [CHANGEPASSWORDONLOGINTF], [CREATEDDATE], [CREDENTIALSNONEXPIREDTF], [DOMAIN], [EMAILADDRESS], [ENABLEDTF], [FIRSTNAME], [LASTLOGONDATE], [LASTNAME], [LASTUPDATEDDATE], [NEWUSERTF], [NUMLOGONS], [PASSWORD], [USERNAME], [USERGUID], [MIDDLENAME], [EXPIRATIONDATE], [VISIBLEONREPORTTF]) VALUES (7661, 1, 1, 1, 0, CAST(0x00009BA50119622B AS DateTime), 1, NULL, N'sumit@tathya.com', 1, N'Sumit', NULL, N'Mitra', CAST(0x00009BA5011961FC AS DateTime), 0, 0, N'vsat1s23nl', N'sumit@tathya.com', N'3f8bb349-c53f-4e45-8752-d3383764bdc6', N'', NULL, 1)
/****** Object:  Table [dbo].[DISTRIBUTORENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DISTRIBUTORENTITLEMENT](
	[ID] [bigint] NOT NULL,
 CONSTRAINT [PK_DISTRIBUTORENTITLEMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[DISTRIBUTORENTITLEMENT] ([ID]) VALUES (1)
/****** Object:  Table [dbo].[AUDITEVENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUDITEVENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AUDITEVENT](
	[ID] [bigint] NOT NULL,
 CONSTRAINT [PK_AUDITEVENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BRAND]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BRAND](
	[ID] [bigint] NOT NULL,
	[BRANDKEY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__BRAND__72910220] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[BRAND] ([ID], [BRANDKEY], [NAME]) VALUES (1, N'xxx', N'tathya')
INSERT [dbo].[BRAND] ([ID], [BRANDKEY], [NAME]) VALUES (2, N'yyy', N'tathyaDotCom')
/****** Object:  Table [dbo].[COURSE_COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_COURSEGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSE_COURSEGROUP](
	[COURSE_ID] [int] NOT NULL,
	[COURSEGROUP_ID] [int] NOT NULL
)
END
GO
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (1, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (2, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (3, 4)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (4, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (5, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (6, 4)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (7, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (8, 4)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (9, 3)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (10, 5)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (11, 4)
INSERT [dbo].[COURSE_COURSEGROUP] ([COURSE_ID], [COURSEGROUP_ID]) VALUES (12, 6)
/****** Object:  Table [dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRININGADMINISTRATOR_ORGANISATIONALGROUP](
	[TRAININGADMINISTRATOR_ID] [bigint] NULL,
	[ORGANISATIONALGROUP_ID] [bigint] NULL
)
END
GO
/****** Object:  Table [dbo].[VU360USER_ROLE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_ROLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VU360USER_ROLE](
	[USER_ID] [bigint] NOT NULL,
	[ROLE_ID] [bigint] NOT NULL
)
END
GO
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (1, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (2, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (2, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3, 3)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3761, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3811, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3861, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4161, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4312, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4361, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (1361, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (1361, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4314, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (2, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (2, 311)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4327, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4321, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4323, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4324, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4314, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4314, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4911, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4911, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4961, 3)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4961, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4961, 311)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4961, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4962, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4962, 311)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4962, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4327, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4327, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4327, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4327, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5111, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5111, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5161, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5161, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5211, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5211, 311)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5211, 411)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5211, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4911, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5911, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5461, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5511, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5511, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5561, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5561, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5661, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5661, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5661, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5711, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5711, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5912, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5912, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 3)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5762, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5912, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6163, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6163, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5861, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5861, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5861, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6163, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 811)
GO
print 'Processed 200 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 811)
GO
print 'Processed 300 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6061, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6061, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6061, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6162, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6162, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6162, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6161, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6261, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6261, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6262, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6262, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6262, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6761, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6761, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6761, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6762, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6762, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6762, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7063, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7063, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7063, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7063, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7111, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7111, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7111, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7111, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6361, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6361, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6361, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6361, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6314, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6314, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6314, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6314, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6315, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6315, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6315, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6315, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6511, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6511, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 3)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6512, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6513, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6513, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6561, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6562, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6711, 311)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6711, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6711, 964)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6612, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6612, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6612, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
GO
print 'Processed 500 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7362, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7313, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7212, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7212, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7212, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7212, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7261, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7261, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7261, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7313, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7313, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7313, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7313, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7362, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7362, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7362, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7362, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7363, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7363, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7363, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7363, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7364, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7364, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7364, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7364, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5711, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6313, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7411, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7411, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7411, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7411, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3561, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4411, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3661, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3662, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4811, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (3911, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4511, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4761, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4711, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5662, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5662, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4313, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5061, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5061, 361)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5411, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5662, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5761, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5761, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5761, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
GO
print 'Processed 600 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6022, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
GO
print 'Processed 700 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 761)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6312, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6312, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6312, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6312, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 661)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4326, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4326, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6612, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6613, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6611, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6611, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4311, 2)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5813, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6012, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5963, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6013, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6014, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6016, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6017, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6018, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6019, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 963)
GO
print 'Processed 800 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5964, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6021, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6023, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6024, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5611, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6561, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6561, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6561, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7361, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7361, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7361, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7361, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4314, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6711, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4011, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4318, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4326, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6211, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5965, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6212, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6213, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6215, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6216, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6217, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6219, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 711)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6220, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 861)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 811)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6661, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6661, 961)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6661, 962)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6763, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6763, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6763, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6764, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6764, 963)
GO
print 'Processed 900 total records'
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6764, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7061, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7061, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7061, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7061, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7062, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7062, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7062, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7062, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7311, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7311, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7311, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7311, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7312, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7312, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7312, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7312, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7461, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7461, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7461, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7461, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5961, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (5962, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6218, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6020, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6015, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4314, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6661, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (4261, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7161, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 911)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7511, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7511, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7511, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7511, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6214, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7561, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7561, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7561, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7561, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7611, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7611, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7611, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7611, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7661, 1)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7661, 963)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7661, 1111)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (7661, 1162)
INSERT [dbo].[VU360USER_ROLE] ([USER_ID], [ROLE_ID]) VALUES (6411, 911)
/****** Object:  Table [dbo].[LEARNER_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_ORGANIZATIONALGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNER_ORGANIZATIONALGROUP](
	[LEARNER_ID] [bigint] NOT NULL,
	[ORGANIZATIONALGROUP_ID] [bigint] NOT NULL
)
END
GO
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (2, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (2, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3811, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3812, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4011, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4011, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3821, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3827, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3961, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4011, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4011, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5061, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5112, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3826, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4961, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4661, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5161, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5161, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4862, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5161, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4961, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4961, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5162, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4961, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5162, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5162, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5163, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5163, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5163, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (2, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5164, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5164, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5164, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5164, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5220, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5165, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5165, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5165, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5211, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5211, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5212, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5212, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5212, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5213, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5213, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5213, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5214, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5214, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5214, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5411, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5215, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5215, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5215, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5216, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5216, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5216, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5217, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5217, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5217, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5218, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5218, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5218, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5219, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5219, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5219, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5219, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5212, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5220, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5220, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5220, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5221, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5221, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5221, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5221, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5222, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5222, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5223, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5223, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5224, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5224, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5224, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5224, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5261, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5261, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5361, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 7)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5362, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5761, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5461, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5461, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5462, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5462, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5161, 6)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6311, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5222, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5013, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5361, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5261, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (2, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5514, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5514, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5711, 7)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5661, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5661, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5712, 361)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5713, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6361, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5761, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5761, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5761, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5762, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5762, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5762, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5811, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5811, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5811, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5811, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5812, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5812, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5812, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5813, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5813, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6461, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6561, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6561, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5512, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3711, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3711, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3711, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3711, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5561, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3813, 7)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3814, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3818, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3861, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3861, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3861, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3861, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5111, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3826, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (2, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4711, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4711, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4761, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4761, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4761, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4861, 4)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4861, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4911, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5363, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5411, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5411, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5411, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5411, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5412, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5513, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5515, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5013, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5013, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5412, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5412, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5412, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5413, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5413, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5413, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5414, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5414, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5414, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5415, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5415, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5416, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5417, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5515, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5418, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5418, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5418, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5419, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5419, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5419, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5419, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5420, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5515, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5515, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 311)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5611, 7)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5861, 261)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5861, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5861, 411)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5961, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5961, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5961, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5962, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5962, 3)
GO
print 'Processed 200 total records'
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5962, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5962, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5963, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5963, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5963, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5964, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5964, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6261, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6262, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6263, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6412, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6511, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6512, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6512, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6513, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6513, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6562, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6563, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6564, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 4)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 7)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 9)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 413)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 12)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 411)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 414)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 415)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 461)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 511)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 561)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6661, 562)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3818, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3823, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3824, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3911, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3911, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3911, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3911, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (3812, 361)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4411, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4411, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (4411, 4)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5911, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5911, 3)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5911, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (5911, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 8)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 261)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 711)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 761)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 11)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 217)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6711, 412)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 1)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 10)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 261)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 761)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 811)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 217)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 611)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 61)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 661)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 5)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 6)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6761, 511)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6811, 2)
INSERT [dbo].[LEARNER_ORGANIZATIONALGROUP] ([LEARNER_ID], [ORGANIZATIONALGROUP_ID]) VALUES (6861, 2)
/****** Object:  Table [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP](
	[REGISTRATIONINVITATION_ID] [bigint] NULL,
	[ORGANIZATIONALGROUP_ID] [bigint] NULL
)
END
GO
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (11, 1)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (311, 1)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (411, 1)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (611, 11)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (611, 6)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (811, 217)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (911, 11)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (961, 562)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1111, 3)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1062, 413)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1161, 1)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1211, 10)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (611, 14)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1061, 711)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1261, 1)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (761, 10)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (761, 261)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (761, 11)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (761, 217)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (861, 414)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1311, 562)
INSERT [dbo].[REGISTRATIONINVITATION_ORGANIZATIONALGROUP] ([REGISTRATIONINVITATION_ID], [ORGANIZATIONALGROUP_ID]) VALUES (1361, 8)
/****** Object:  Table [dbo].[REGISTRATIONINVITATION_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION_LEARNERGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REGISTRATIONINVITATION_LEARNERGROUP](
	[REGISTRATIONINVITATION_ID] [bigint] NULL,
	[LEARNERGROUP_ID] [bigint] NULL
)
END
GO
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (11, 1)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (311, 1)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (411, 1)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (811, 311)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (861, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (911, 1)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (911, 361)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (961, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1111, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1062, 461)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1062, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1161, 511)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1211, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1061, 1)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1061, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1261, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1311, 2)
INSERT [dbo].[REGISTRATIONINVITATION_LEARNERGROUP] ([REGISTRATIONINVITATION_ID], [LEARNERGROUP_ID]) VALUES (1361, 311)
/****** Object:  Table [dbo].[LEARNER_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNER_LEARNERGROUP](
	[LEARNER_ID] [bigint] NULL,
	[LEARNERGROUP_ID] [bigint] NULL
)
END
GO
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (1, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5111, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3711, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3812, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3813, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3814, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4111, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5363, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3821, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3823, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3824, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3911, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5411, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3827, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4361, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4361, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5412, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5413, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4661, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4711, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5414, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4962, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5415, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4911, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5416, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5417, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5418, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5419, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5420, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4962, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5561, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5512, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5513, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5513, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5514, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5515, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5515, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5611, 361)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5611, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5861, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5911, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4761, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5761, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5762, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5961, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5962, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5963, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5963, 361)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5964, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5964, 361)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
GO
print 'Processed 400 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6262, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6263, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6412, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6511, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6562, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
GO
print 'Processed 500 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6563, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6564, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
GO
print 'Processed 600 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5061, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5112, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4011, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4011, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5461, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5461, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5462, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5362, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5711, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6311, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6361, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
GO
print 'Processed 700 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6611, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
GO
print 'Processed 800 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
GO
print 'Processed 900 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5211, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3861, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5212, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5213, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5214, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5216, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5217, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5218, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5219, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5220, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5221, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5222, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5223, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5224, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5361, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5362, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5713, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
GO
print 'Processed 1000 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6461, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (4862, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5163, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5164, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5165, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5515, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5515, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5661, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5661, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
GO
print 'Processed 1100 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5362, 311)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5811, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5812, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5813, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
GO
print 'Processed 1200 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
GO
print 'Processed 1300 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (3827, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5611, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
GO
print 'Processed 1400 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
GO
print 'Processed 1500 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6661, 461)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
GO
print 'Processed 1600 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6711, 511)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6811, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6861, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
GO
print 'Processed 1700 total records'
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6761, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (6761, 3)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5013, 2)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5261, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5162, 1)
INSERT [dbo].[LEARNER_LEARNERGROUP] ([LEARNER_ID], [LEARNERGROUP_ID]) VALUES (5161, 1)
/****** Object:  Table [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_CUSTOMERENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT](
	[COURSEGROUP_ID] [bigint] NOT NULL,
	[CUSTOMERENTITLEMENT_ID] [bigint] NOT NULL
)
END
GO
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (1, 6)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (1, 7)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (3, 7)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (3, 8)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (4, 9)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (4, 6)
INSERT [dbo].[COURSEGROUP_CUSTOMERENTITLEMENT] ([COURSEGROUP_ID], [CUSTOMERENTITLEMENT_ID]) VALUES (5, 10)
/****** Object:  Table [dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSEGROUP_DISTRIBUTORENTITLEMENT](
	[COURSEGROUP_ID] [bigint] NOT NULL,
	[DISTRIBUTORENTITLEMENT_ID] [bigint] NOT NULL
)
END
GO
/****** Object:  Table [dbo].[LANGUAGE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LANGUAGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LANGUAGE](
	[ID] [bigint] NOT NULL,
	[COUNTRY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LANGUAGE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VARIANT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__LANGUAGE__00551192] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LANGUAGE] ([ID], [COUNTRY], [LANGUAGE], [VARIANT]) VALUES (1, N'India', N'English', N'xx')
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADDRESS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ADDRESS](
	[ID] [bigint] NOT NULL,
	[STREETADDRESS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STREETADDRESS2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STREETADDRESS3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIPCODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PROVINCE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COUNTRY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (1, N'Kolkata-700059', N'', NULL, N'Kolkata', N'', N'CA', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (2, N'ultadanga', N'India', NULL, N'Kolkata', N'700001', N'AZ', N'kol', N'kol')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3511, N'B-58 Block ABC ', N'ZZZ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3561, N'B-58 Block ABC ', N'ZZZ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3661, N'a road', N'b 13/11', NULL, N'b city', N'700030', N'CA', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3711, N'B-58 Block ABC ', N'QQQ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3761, N'Address Test', N'giygig', NULL, N'iuggy', N'999999', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3811, N'hffgfgfhfhg', N'hffgfgfhfhg', NULL, N'kolkata', N'11111111', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3812, N'kol', N'kol1', NULL, N'kolkata', N'6666', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3813, N'USA', N'USA', NULL, N'LA', N'2222', N'CA', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3814, N'tegh', N'tegh1', NULL, N'KOLKATA', N'5555', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3815, N'89add', N'89add2', NULL, N'KOLKATA', N'700001', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3816, N'Learner88', N'Learner88', NULL, N'kol88', N'898989', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3817, N'USA', N'USA', NULL, N'USA', N'7777', N'AZ', NULL, N'UK')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3818, N'Mycrosoftttt', N'USA123', NULL, N'USA', N'1111', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3819, N'Sangat Appartment', N'Kolkata-700059', NULL, N'Kolkata', N'700059', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3820, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3821, N'Mumbai', N'', NULL, N'Mumbai', N'', N'AZ', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3822, N'Delhi', N'', NULL, N'Delhi', N'', N'CO', NULL, N'UK')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3823, N'Channi', N'', NULL, N'Channi', N'', N'CA', NULL, N'UK')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3824, N'Noida', N'U.P', NULL, N'Noida', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3825, N'New Town', N'Kolkata', NULL, N'Kolkta', N'', N'AZ', NULL, N'UK')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3826, N'Pune Maharastrs', N'111', NULL, N'Pune', N'112', N'CA', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3827, N'Hydrabad', N'', NULL, N'Hydrabad', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3861, N'B-58 Block ABC ', N'QQQ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3911, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (3961, N'kjhgkij igi gigig', N'', NULL, N'kolkata', N'68768787', N'CA', NULL, N'UK')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4011, N'B-58 Block ABC ', N'QQQ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4061, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4111, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4161, N'Test', N'Test', NULL, N'Kolkata', N'12345', N'CA', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4162, N'Kolkata', N'', NULL, N'', N'', N'CO', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4211, N'Kolkata', N'', NULL, N'', N'', N'AZ', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4261, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4311, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4361, N'West Bengl', N'', NULL, N'Kolkata', N'123123', N'AZ', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4411, N'WB', N'', NULL, N'Kolkata', N'1234567', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4461, N'West Bengl', N'', NULL, N'Kolkata', N'1234567', N'CO', NULL, N'FRANCE')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4511, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4561, N'123-Address', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4611, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4661, N'katwa', N'', NULL, N'kolkata', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4711, N'a road', N'', NULL, N'kolkata', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4761, N'a roada', N'', NULL, N'kolkata', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4811, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4861, N'a road', N'', NULL, N'kolkata', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4862, N'a road', N'', NULL, N'hydrabad', N'98765', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4911, N'b-road', N'', NULL, N'hydrabad', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4961, N'ssss', N'ssssss', NULL, N'sssss', N'12445', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (4962, N'1?', N'1?', NULL, N'1?', N'1?', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5011, N'B-58 Block ABC ', N'Palm Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5012, N'B-58 Block ABC ', N'QQQ Avenue ', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5013, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5061, N'b-road', N'', NULL, N'hydrabad', N'12345', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5111, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5112, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5161, N'B-58 Block ABC', N'Palm Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5162, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5163, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5164, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5165, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5211, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5212, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5213, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5214, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5215, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5216, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5217, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5218, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5219, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5220, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5221, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5222, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5223, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5224, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5261, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5311, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5361, N'', N'', NULL, N'', N'700059', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5362, N'////', N'////', NULL, N'/////', N'////', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5363, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5411, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5412, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5413, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5414, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5415, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5416, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5417, N'B-58 Block ABC', N'Palm Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5418, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5419, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5420, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5461, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5462, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5511, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5512, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5513, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5514, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5515, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5561, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5611, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5661, N'', N'11111111', NULL, N'', N'1111111011', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5711, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
GO
print 'Processed 100 total records'
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5712, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5713, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5761, N'B-58 Block ABC', N'Palm Avenue', NULL, N'Austin', N'64512', N'AZ', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5762, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5811, N'B-58 Block ABC', N'Palm Avenue', NULL, N'Austin', N'64512', N'AZ', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5812, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'AZ', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5813, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5861, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5911, N'B-58 Block ABC', N'Palm Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'INDIA')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5961, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5962, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5963, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (5964, N'B-58 Block ABC', N'QQQ Avenue', NULL, N'Austin', N'64512', N'TX', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6261, N'add1', N'add2', NULL, N'city', N'zip', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6262, N'add1', N'add2', NULL, N'city', N'zip', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6263, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6311, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6361, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6412, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6461, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6511, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6512, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6513, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6561, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6562, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6563, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6564, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6611, N'sss', N'sssss', NULL, N'', N'11gtrgg', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6661, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6711, N'2 jenef roaf', N'trigGuard', NULL, N'ukasik', N'', N'CO', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6761, N'test', N'test', NULL, N'', N'', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6811, N'G/G-8 Jyangra', N'Baguiati', NULL, N'Kolkata', N'70059', N'AZ', NULL, N'US')
INSERT [dbo].[ADDRESS] ([ID], [STREETADDRESS], [STREETADDRESS2], [STREETADDRESS3], [CITY], [ZIPCODE], [STATE], [PROVINCE], [COUNTRY]) VALUES (6861, N'', N'', NULL, N'', N'', N'AZ', NULL, N'US')
/****** Object:  Table [dbo].[DISTRIBUTOR_DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR_DISTRIBUTORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DISTRIBUTOR_DISTRIBUTORGROUP](
	[DISTRIBUTOR_ID] [bigint] NULL,
	[DISTRIBUTORGROUP_ID] [bigint] NULL
)
END
GO
INSERT [dbo].[DISTRIBUTOR_DISTRIBUTORGROUP] ([DISTRIBUTOR_ID], [DISTRIBUTORGROUP_ID]) VALUES (1, 1)
/****** Object:  Table [dbo].[SURVEYQUESTION]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SURVEYQUESTION](
	[ID] [bigint] NOT NULL,
	[TEXT] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[QUESTION_TYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SURVEY_ID] [bigint] NOT NULL,
	[ALIGNMENT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DROPDOWNTF] [int] NOT NULL,
	[UNLIMITEDTF] [int] NOT NULL,
 CONSTRAINT [PK_SURVEYQUESTION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (1, N'Q1', N'Mul', 1, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (2, N'Q2', N'sort', 1, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (251, N'Mul Type', N'MSSQ', 251, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (401, N'q1', N'SSSQ', 401, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (451, N'how do you get your daily job?', N'MSSQ', 451, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (452, N'who verifies your job done?', N'MSSQ', 451, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (501, N'what you feel at night', N'SSSQ', 501, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (502, N'What you feel in morning', N'SSSQ', 501, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (651, N'somnather ki hoyeche?', N'MSSQ', 651, NULL, 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (751, N'ashis da ki holo', N'MSSQ', 651, N'horizontal', 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (851, N'q2', N'MSSQ', 401, N'horizontal', 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (1001, N'f1', N'MSSQ', 701, N'horizontal', 0, 0)
INSERT [dbo].[SURVEYQUESTION] ([ID], [TEXT], [QUESTION_TYPE], [SURVEY_ID], [ALIGNMENT], [DROPDOWNTF], [UNLIMITEDTF]) VALUES (1051, N'aaj Deep da ki korche??', N'MSSQ', 651, N'horizontal', 0, 0)
/****** Object:  Table [dbo].[SURVEYANSWER]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SURVEYANSWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SURVEYANSWER](
	[ID] [bigint] NOT NULL,
	[SURVEYQUESTION_ID] [bigint] NOT NULL,
	[Label] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Value] [varchar](254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SURVEYANSWER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (151, 651, N'baire betha', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (152, 651, N'ontore betha', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (251, 751, N'bhalo', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (252, 751, N'mondo', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (351, 851, N'b', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (352, 851, N'd', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (353, 851, N'a', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (354, 851, N'c', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (501, 1001, N's2', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (502, 1001, N's3', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (551, 1051, N'cheleder marche', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (552, 1051, N'bagh marche', NULL)
INSERT [dbo].[SURVEYANSWER] ([ID], [SURVEYQUESTION_ID], [Label], [Value]) VALUES (553, 1051, N'gum hoye kaaj korche', NULL)
/****** Object:  Table [dbo].[SurveyResult]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SurveyResult](
	[ID] [bigint] NOT NULL,
	[Survey_ID] [bigint] NOT NULL,
	[VU360User_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_SurveyResult] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Table [dbo].[SurveyResultAnswer]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SurveyResultAnswer](
	[ID] [bigint] NOT NULL,
	[SurveyResult_ID] [bigint] NOT NULL,
	[SurveyAnswer_ID] [bigint] NOT NULL,
	[SurveyResultAnswerType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_SurveyResultAnswer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Table [dbo].[LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LMSPERMISSION](
	[ID] [bigint] NOT NULL,
	[LMSFEATUREDENABLEDTF] [int] NULL,
	[ROLE_ID] [bigint] NOT NULL,
	[FEATURE_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_LMSPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1, 1, 2, 1)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (2, 1, 2, 2)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (3, 1, 2, 3)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (4, 1, 2, 4)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (5, 1, 2, 5)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (6, 1, 2, 6)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (7, 1, 2, 7)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (8, 1, 2, 8)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (9, 1, 2, 9)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (10, 1, 2, 10)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (11, 1, 2, 11)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (12, 1, 2, 12)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (13, 1, 2, 13)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (14, 1, 2, 14)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (15, 1, 2, 15)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (16, 1, 1, 16)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (17, 1, 1, 17)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (18, 1, 1, 18)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (19, 1, 2, 19)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1161, 1, 911, 10)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1162, 1, 911, 7)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1163, 1, 911, 13)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1164, 1, 911, 8)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1165, 1, 911, 12)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1166, 1, 911, 16)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1167, 1, 911, 6)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1168, 1, 911, 2)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1169, 1, 911, 5)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1170, 1, 911, 4)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1171, 1, 911, 18)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1172, 1, 911, 11)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1173, 1, 911, 3)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1174, 1, 911, 9)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1175, 1, 911, 17)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1176, 1, 911, 1)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1177, 1, 911, 15)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1178, 1, 911, 19)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1179, 1, 911, 14)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1311, 1, 1111, 16)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1312, 1, 1111, 17)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1313, 0, 1111, 18)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1361, 1, 1161, 12)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1362, 1, 1161, 13)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1363, 1, 1161, 8)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1364, 1, 1161, 19)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1365, 1, 1161, 14)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1366, 1, 1161, 15)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1367, 1, 1161, 5)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1368, 1, 1161, 9)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1369, 1, 1161, 4)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1370, 1, 1161, 1)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1371, 1, 1161, 16)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1372, 1, 1161, 3)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1373, 1, 1161, 7)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1374, 1, 1161, 18)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1375, 1, 1161, 11)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1376, 1, 1161, 10)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1377, 1, 1161, 6)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1378, 1, 1161, 17)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1379, 1, 1161, 2)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1380, 1, 1162, 5)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1381, 1, 1162, 6)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1382, 1, 1162, 15)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1383, 1, 1162, 14)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1384, 1, 1162, 13)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1385, 1, 1162, 9)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1386, 1, 1162, 4)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1387, 1, 1162, 11)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1388, 1, 1162, 7)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1389, 1, 1162, 19)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1390, 1, 1162, 18)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1391, 1, 1162, 2)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1392, 1, 1162, 16)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1393, 1, 1162, 8)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1394, 1, 1162, 17)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1395, 1, 1162, 10)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1396, 1, 1162, 12)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1397, 1, 1162, 3)
INSERT [dbo].[LMSPERMISSION] ([ID], [LMSFEATUREDENABLEDTF], [ROLE_ID], [FEATURE_ID]) VALUES (1398, 1, 1162, 1)
/****** Object:  Table [dbo].[LMSADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LMSADMINISTRATOR](
	[ID] [bigint] NOT NULL,
	[GLOBALADMINISTRATORTF] [int] NOT NULL,
	[VU360USER_ID] [bigint] NOT NULL,
 CONSTRAINT [PK__LMSADMINISTRATOR__0697FACD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LMSADMINISTRATOR] ([ID], [GLOBALADMINISTRATORTF], [VU360USER_ID]) VALUES (1811, 1, 4961)
INSERT [dbo].[LMSADMINISTRATOR] ([ID], [GLOBALADMINISTRATORTF], [VU360USER_ID]) VALUES (1861, 1, 5762)
INSERT [dbo].[LMSADMINISTRATOR] ([ID], [GLOBALADMINISTRATORTF], [VU360USER_ID]) VALUES (1911, 1, 6512)
/****** Object:  Table [dbo].[DISTRIBUTOR]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DISTRIBUTOR](
	[ID] [bigint] NOT NULL,
	[BRAND_ID] [bigint] NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[STREETADDRESS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIPCODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACTPERSON] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[WEBSITE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__DISTRIBUTOR__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[DISTRIBUTOR] ([ID], [BRAND_ID], [NAME], [STREETADDRESS], [CITY], [STATE], [ZIPCODE], [EMAIL], [CONTACTPERSON], [WEBSITE], [STATUS]) VALUES (1, 1, N'Tathya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [bigint] NOT NULL,
	[BRAND_ID] [bigint] NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[STREETADDRESS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CITY] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ZIPCODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EMAIL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONTACTPERSON] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BILLINGADDRESS_ID] [bigint] NULL,
	[SHIPPINGADDRESS_ID] [bigint] NULL,
	[DISTRIBUTOR_ID] [bigint] NULL,
 CONSTRAINT [PK__CUSTOMER__060DEAE8] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[CUSTOMER] ([ID], [BRAND_ID], [NAME], [STREETADDRESS], [CITY], [ZIPCODE], [EMAIL], [CONTACTPERSON], [STATUS], [BILLINGADDRESS_ID], [SHIPPINGADDRESS_ID], [DISTRIBUTOR_ID]) VALUES (1, 1, N'360', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
/****** Object:  Table [dbo].[TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAININGADMINISTRATOR](
	[ID] [bigint] NOT NULL,
	[VU360USER_ID] [bigint] NOT NULL,
	[MANAGEALLORGANIZATIONALGROUPTF] [int] NULL,
	[CUSTOMER_ID] [bigint] NULL,
 CONSTRAINT [PK__TRAININGADMINIST__0880433F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (2961, 2, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3011, 4961, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3012, 4962, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3111, 5211, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3161, 5762, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3511, 6512, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3573, 4311, 1, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3611, 5911, 0, NULL)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3661, 6461, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3662, 5961, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3663, 6611, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3664, 6561, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3665, 5711, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3711, 5662, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3712, 6016, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3713, 6218, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3714, 6711, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3715, 5962, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3716, 7313, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3717, 6764, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3718, 6562, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3719, 4324, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3761, 6612, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3762, 6015, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3763, 6020, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3764, 6511, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3811, 4314, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3812, 7362, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3813, 5912, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3814, 5761, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3815, 4261, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3816, 4312, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3817, 6312, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3818, 6661, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3861, 6411, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3862, 7161, 0, 1)
INSERT [dbo].[TRAININGADMINISTRATOR] ([ID], [VU360USER_ID], [MANAGEALLORGANIZATIONALGROUPTF], [CUSTOMER_ID]) VALUES (3863, 6011, 0, 1)
/****** Object:  Table [dbo].[LEARNER]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNER](
	[ID] [bigint] NOT NULL,
	[VU360USER_ID] [bigint] NOT NULL,
	[CUSTOMER_ID] [bigint] NULL,
 CONSTRAINT [PK__LEARNER__04AFB25B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (1, 1, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (2, 2, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3711, 4561, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3761, 4261, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3811, 4311, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3812, 4312, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3813, 4313, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3814, 4314, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3818, 4318, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3821, 4321, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3823, 4323, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3824, 4324, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3826, 4326, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3827, 4327, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3861, 4661, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3911, 4711, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (3961, 4761, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4011, 4811, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4111, 4911, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4161, 4961, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4162, 4962, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4261, 5061, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4311, 5111, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4361, 5161, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4411, 5211, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4611, 5411, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4661, 5461, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4711, 5511, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4761, 5561, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4811, 5611, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4861, 5661, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4862, 5662, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4911, 5711, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4961, 5761, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (4962, 5762, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5013, 5813, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5061, 5861, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5111, 5911, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5112, 5912, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5161, 5961, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5162, 5962, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5163, 5963, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5164, 5964, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5165, 5965, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5211, 6011, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5212, 6012, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5213, 6013, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5214, 6014, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5215, 6015, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5216, 6016, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5217, 6017, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5218, 6018, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5219, 6019, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5220, 6020, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5221, 6021, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5222, 6022, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5223, 6023, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5224, 6024, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5261, 6061, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5361, 6161, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5362, 6162, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5363, 6163, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5411, 6211, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5412, 6212, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5413, 6213, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5414, 6214, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5415, 6215, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5416, 6216, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5417, 6217, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5418, 6218, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5419, 6219, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5420, 6220, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5461, 6261, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5462, 6262, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5512, 6312, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5513, 6313, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5514, 6314, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5515, 6315, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5561, 6361, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5611, 6411, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5661, 6461, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5711, 6511, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5712, 6512, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5713, 6513, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5761, 6561, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5762, 6562, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5811, 6611, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5812, 6612, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5813, 6613, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5861, 6661, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5911, 6711, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5961, 6761, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5962, 6762, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5963, 6763, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (5964, 6764, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6261, 7061, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6262, 7062, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6263, 7063, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6311, 7111, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6361, 7161, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6412, 7212, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6461, 7261, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6511, 7311, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6512, 7312, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6513, 7313, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6561, 7361, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6562, 7362, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6563, 7363, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6564, 7364, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6611, 7411, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6661, 7461, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6711, 7511, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6761, 7561, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6811, 7611, 1)
INSERT [dbo].[LEARNER] ([ID], [VU360USER_ID], [CUSTOMER_ID]) VALUES (6861, 7661, 1)
/****** Object:  Table [dbo].[DISTRIBUTORGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DISTRIBUTORGROUP](
	[ID] [bigint] NOT NULL,
	[BRAND_ID] [bigint] NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__DISTRIBUTORGROUP__0DAF0CB0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[DISTRIBUTORGROUP] ([ID], [BRAND_ID], [NAME]) VALUES (1, 1, N'TathyaGroup')
/****** Object:  Table [dbo].[COURSE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSE](
	[ID] [bigint] NOT NULL,
	[GUID] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LANGUAGE_ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VERSION] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COURSESTATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RETIREDTF] [bit] NULL,
	[KEYWORDS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COURSETYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CODE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DESCRIPTION] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IMAGEOFCOURSE] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APPROVEDCOURSEHOURS] [bigint] NULL,
	[COURSTYPE_CATEGORY] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DELIVERYMETHOD] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CEUS] [bigint] NULL,
	[LEARNINGOBJECTIVES] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TOPICSCOVERED] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QUIZINFO] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FINALEXAMINFO] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COURSEPRE_REQ] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STATE_REGREQ] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ENDOFCOURSEINSTRUCTIONS] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[APPROVALNUMBER] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ADDITIONALMATERIALS] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SUBJECTMATTEREXPERTINFO] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PRODUCTPRICE] [money] NULL,
	[CURRENCY] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REGULATINGBODY] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ASSESMENTS] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COURSEID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[COURSEGUIDE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MSRP] [decimal](18, 0) NULL,
 CONSTRAINT [PK__COURSE__1FCDBCEB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (1, N'1', 1, N'Fundamentals of the Mortgage Lending', N'1', N'inprogress', 1, N'1', N'Online', NULL, NULL, N'http://images.google.com/intl/en_ALL/images/images_hp.gif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (2, N'123', 1, N'NEC 2008 Wiring and Protection', N'1.1', N'inprogress', 0, N'NEC', N'Online', NULL, N'DESC NEC 2008 Wiring and Protection', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 10, N'COURSTYPE_CATEGORY NEC 2008 Wiring and Protection', N'online', 1, N'LEARNINGOBJECTIVES NEC 2008 Wiring and Protection', N'TOPICSCOVERED NEC 2008 Wiring and Protection', N'QUIZINFO NEC 2008 Wiring and Protection', N'FINALEXAMINFO NEC 2008 Wiring and Protection', N'COURSEPRE_REQ NEC 2008 Wiring and Protection', N'STATE_REGREQ NEC 2008 Wiring and Protection', N'ENDOFCOURSEINSTRUCTIONS NEC 2008 Wiring and Protection', N'APPROVALNUMBER NEC 2008 Wiring and Protection', N'ADDITIONALMATERIALS NEC 2008 Wiring and Protection', N'SUBJECTMATTEREXPERTINFO NEC 2008 Wiring and Protection', 100.0000, N'$', NULL, NULL, N'2', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (3, N'1043215', 1, N'NEC 2008 Code Updates', N'1.2', N'inprogress', 0, N'NEC', N'Online', NULL, N'Pires valente dunde ver parsie febregas urbergker veira overmars penzertun gamst shea Un pulzuerg ljumberg zemberk veira overmars penzertun gamst shea. Ver parsie febregas urbergas veira overmars penzrtun gamst shea. Un pulzuerg ljumbergur bergker.', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 3, N'COURSTYPE_CATEGORY NEC 2008 Code Updates', N'Online', 1, N'<div class="lineContent">
										<br>At the conclusion of this course, you will be able to:
									</div>
									<div class="learningObjective">
											<li>Pires valente dunde ver parsie febregas urbergker veira</li>
											<li>Overmars penzertun gamst shea Un pulzuerg</li>
											<li>Ljumberg zemberk veira overmars penzertun gamst shea. Ver parsie febregas</li>
											<li>Urbergker veira overmars penzertun gamst shea. Un pulzuerg ljumbergur bergker.</li>
									</div>', N'TOPICSCOVERED NEC 2008 Code Updates', N'QUIZINFO NEC 2008 Code Updates', N'Pires valente dunde ver parsie febregas urbergker veira overmars penzertun gamst shea Un pulzuerg ljumberg zemberk veira overmars penzertun gamst shea. Ver parsie febregas urbergas veira overmars penzrtun gamst shea.', N'COURSEPRE_REQ NEC 2008 Code Updates', N'Pires valente dunde ver parsie febregas urbergker veira overmars penzertun gamst shea Un pulzuerg ljumberg zemberk veira overmars penzertun gamst shea. Ver parsie febregas urbergas veira overmars penzrtun gamst shea.
										<br/><br/>Un pulzuerg ljumberg pires valente dunde ver parsie febregas urbergas viera overmars penzertun gamst shea. Ver parsie febregas urbergker veira overmars penzertun gamst shea. Un pulzuerg ljumberg.
										<br/><br/>Ver parsie febregas urbergas viera overmars penzertun gamst shea.', N'Un pulzuerg ljumberg pires valente dunde ver parsie febregas urbergas viera overmars penzertun gamst shea. Ver parsie febregas urbergker veira overmars penzertun gamst shea. Un pulzuerg ljumberg.
										<br/><br/>Ver parsie febregas urbergas viera overmars penzertun gamst shea. ', N'0360930', N'Un pulzuerg ljumberg pires valente dunde ver parsie febregas urbergas viera overmars penzertun gamst shea. Ver parsie febregas urbergker veira overmars penzertun gamst shea. Un pulzuerg ljumberg.
										<br/><br/>Pires valente dunde ver parsie febregas urbergker veira overmars penzertun gamst shea Un pulzuerg ljumberg zemberk veira overmars penzertun gamst shea. Ver parsie febregas urbergas veira overmars penzrtun gamst shea.', N'>Monkious Eatalotis', 200.0000, N'$', N'Austin Powers', N'The course consists of 4 Lesson assesments. In order to complete the course, you need to successfully pass each assesment with at least 70% marks. Ubtun pulzger berkemp. Kilo funeral ljumber.', N'3', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (4, N'4455', 1, N'OSHA 10 Hour Construction Course', N'1.4', N'inprogress', 0, N'OSHA', N'CD/DVD', NULL, N'DESC OSHA 10 Hour Construction Course', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 14, N'COURSTYPE_CATEGORY OSHA 10 Hour Construction Course', N'online', 1, N'LEARNINGOBJECTIVES OSHA 10 Hour Construction Course', N'TOPICSCOVERED OSHA 10 Hour Construction Course', N'QUIZINFO OSHA 10 Hour Construction Course', N'FINALEXAMINFO OSHA 10 Hour Construction Course', N'COURSEPRE_REQ OSHA 10 Hour Construction Course', N'STATE_REGREQ OSHA 10 Hour Construction Course', N'ENDOFCOURSEINSTRUCTIONS OSHA 10 Hour Construction Course', N'APPROVALNUMBER OSHA 10 Hour Construction Course', N'ADDITIONALMATERIALS OSHA 10 Hour Construction Course', N'SUBJECTMATTEREXPERTINFO OSHA 10 Hour Construction Course', 250.0000, N'$', NULL, NULL, N'4', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (5, N'4665', 1, N'OSHA 30 Hour Construction Course', N'1.5', N'inprogress', 0, N'OSHA', N'Course Group', NULL, N'DESC OSHA 30 Hour Construction Course', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 30, N'COURSTYPE_CATEGORY OSHA 30 Hour Construction Course', N'online', 1, N'LEARNINGOBJECTIVES OSHA 30 Hour Construction Course', N'TOPICSCOVERED OSHA 30 Hour Construction Course', N'QUIZINFO OSHA 30 Hour Construction Course', N'FINALEXAMINFO OSHA 30 Hour Construction Course', N'COURSEPRE_REQ OSHA 30 Hour Construction Course', N'STATE_REGREQ OSHA 30 Hour Construction Course', N'ENDOFCOURSEINSTRUCTIONS OSHA 30 Hour Construction Course', N'APPROVALNUMBER OSHA 30 Hour Construction Course', N'ADDITIONALMATERIALS OSHA 30 Hour Construction Course', N'SUBJECTMATTEREXPERTINFO OSHA 30 Hour Construction Course', 350.0000, N'$', NULL, NULL, N'5', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (6, N'ttyyt', 1, N'NEC 2008 10 hr Wiring and Protection', N'1.5', N'inprogress', 0, N'NEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'6', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (7, N'kdfj', 1, N'2008 Exemplary Course Program', N'1.5', NULL, NULL, NULL, NULL, NULL, N'DESC NEC 2008 Wiring and Protection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (8, N'kdf5', 1, N'2008 WebCT Exemplary Course Project', N'1.5', NULL, NULL, NULL, NULL, NULL, N'DESC OSHA 10 Hour Construction Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (9, N'eioruioe', 1, N'2008 Bb Greenhouse Exemplary Course Project', N'1.1', N'inprogress', 0, N'NEC', N'Online', NULL, N'DESC NEC 2008 Wiring and Protection', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 10, N'COURSTYPE_CATEGORY NEC 2008 Wiring and Protection', N'online', 1, N'LEARNINGOBJECTIVES NEC 2008 Wiring and Protection', N'TOPICSCOVERED NEC 2008 Wiring and Protection', N'QUIZINFO NEC 2008 Wiring and Protection', N'FINALEXAMINFO NEC 2008 Wiring and Protection', N'COURSEPRE_REQ NEC 2008 Wiring and Protection', N'STATE_REGREQ NEC 2008 Wiring and Protection', N'ENDOFCOURSEINSTRUCTIONS NEC 2008 Wiring and Protection', N'APPROVALNUMBER NEC 2008 Wiring and Protection', N'ADDITIONALMATERIALS NEC 2008 Wiring and Protection', N'SUBJECTMATTEREXPERTINFO NEC 2008 Wiring and Protection', 100.0000, N'$', NULL, NULL, N'2', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (10, N'cxv', 1, N'Mindflash Samples Course', N'1.4', N'inprogress', 0, N'OSHA', N'CD/DVD', NULL, N'DESC OSHA 10 Hour Construction Course', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 14, N'COURSTYPE_CATEGORY OSHA 10 Hour Construction Course', N'online', 1, N'LEARNINGOBJECTIVES OSHA 10 Hour Construction Course', N'TOPICSCOVERED OSHA 10 Hour Construction Course', N'QUIZINFO OSHA 10 Hour Construction Course', N'FINALEXAMINFO OSHA 10 Hour Construction Course', N'COURSEPRE_REQ OSHA 10 Hour Construction Course', N'STATE_REGREQ OSHA 10 Hour Construction Course', N'ENDOFCOURSEINSTRUCTIONS OSHA 10 Hour Construction Course', N'APPROVALNUMBER OSHA 10 Hour Construction Course', N'ADDITIONALMATERIALS OSHA 10 Hour Construction Course', N'SUBJECTMATTEREXPERTINFO OSHA 10 Hour Construction Course', 250.0000, N'$', NULL, NULL, N'4', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (11, N'kdu', 1, N'D2L course', N'1.5', N'inprogress', 0, N'OSHA', N'Course Group', NULL, N'DESC OSHA 30 Hour Construction Course', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', 30, N'COURSTYPE_CATEGORY OSHA 30 Hour Construction Course', N'online', 1, N'LEARNINGOBJECTIVES OSHA 30 Hour Construction Course', N'TOPICSCOVERED OSHA 30 Hour Construction Course', N'QUIZINFO OSHA 30 Hour Construction Course', N'FINALEXAMINFO OSHA 30 Hour Construction Course', N'COURSEPRE_REQ OSHA 30 Hour Construction Course', N'STATE_REGREQ OSHA 30 Hour Construction Course', N'ENDOFCOURSEINSTRUCTIONS OSHA 30 Hour Construction Course', N'APPROVALNUMBER OSHA 30 Hour Construction Course', N'ADDITIONALMATERIALS OSHA 30 Hour Construction Course', N'SUBJECTMATTEREXPERTINFO OSHA 30 Hour Construction Course', 350.0000, N'$', NULL, NULL, N'5', NULL, NULL)
INSERT [dbo].[COURSE] ([ID], [GUID], [LANGUAGE_ID], [NAME], [VERSION], [COURSESTATUS], [RETIREDTF], [KEYWORDS], [COURSETYPE], [CODE], [DESCRIPTION], [IMAGEOFCOURSE], [APPROVEDCOURSEHOURS], [COURSTYPE_CATEGORY], [DELIVERYMETHOD], [CEUS], [LEARNINGOBJECTIVES], [TOPICSCOVERED], [QUIZINFO], [FINALEXAMINFO], [COURSEPRE_REQ], [STATE_REGREQ], [ENDOFCOURSEINSTRUCTIONS], [APPROVALNUMBER], [ADDITIONALMATERIALS], [SUBJECTMATTEREXPERTINFO], [PRODUCTPRICE], [CURRENCY], [REGULATINGBODY], [ASSESMENTS], [COURSEID], [COURSEGUIDE], [MSRP]) VALUES (12, N'QA-C', 1, N'QA-Course', N'1.0', N'inprogress', 0, N'QA-C', NULL, N'Online', N'QA Course', N'http://images.google.com/intl/en_ALL/images/images_hp.gif', NULL, N'COURSTYPE_CATEGORY OSHA 30 Hour Construction Course', N'online', 1, N'LEARNINGOBJECTIVES OSHA 30 Hour Construction Course', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'12', NULL, NULL)
/****** Object:  Table [dbo].[CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMERENTITLEMENT](
	[DISTRIBUTOR_ID] [bigint] NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[ID] [bigint] NOT NULL,
	[SEATS] [bigint] NOT NULL,
	[ALLOWSELFENROLLMENTTF] [int] NULL,
	[ALLOWUNLIMITEDENROLLMENTS] [int] NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[STARTDATE] [datetime] NULL,
	[ENDDATE] [datetime] NULL,
	[NUMBERDAYS] [int] NULL,
	[NUMBERSEATSUSED] [int] NULL,
 CONSTRAINT [PK_CUSTOMERENTITLEMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 1, 25, 1, 0, N'Project Manager Training', CAST(0x00009BA300000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 60, 10)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 2, 25, 1, 0, N'OSHA101', CAST(0x00009BDE00000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 80, 20)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 3, 25, 1, 1, N'Technology & Entitlement', CAST(0x00009BFC00000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 70, 15)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 4, 25, 1, 1, N'General Training', CAST(0x00009B8400000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 60, 100)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 5, 25, 1, 1, N'Spring MVC', CAST(0x00009C1B00000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 120, 200)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 6, 25, 1, 1, N'LAMP Technology', CAST(0x00009C1B00000000 AS DateTime), CAST(0x00009CD200000000 AS DateTime), NULL, 100)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 7, 25, 1, 1, N'Ruby On Rail', CAST(0x00009BA800000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), NULL, 5)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 8, 25, 1, 0, N'.NET Framework', CAST(0x00009BA500000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 120, 6)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 9, 25, 1, 1, N'Security', CAST(0x00009BA700000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 130, 2)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 10, 25, 1, 0, N'Testing', CAST(0x00009BAA00000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 140, 10)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 11, 25, 1, 1, N'Server Administration', CAST(0x00009BA800000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 30, 1)
INSERT [dbo].[CUSTOMERENTITLEMENT] ([DISTRIBUTOR_ID], [CUSTOMER_ID], [ID], [SEATS], [ALLOWSELFENROLLMENTTF], [ALLOWUNLIMITEDENROLLMENTS], [NAME], [STARTDATE], [ENDDATE], [NUMBERDAYS], [NUMBERSEATSUSED]) VALUES (1, 1, 12, 25, 1, 1, N'QA-Course', CAST(0x00009BA800000000 AS DateTime), CAST(0x00009CD600000000 AS DateTime), 0, 0)
/****** Object:  Table [dbo].[ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORGANIZATIONALGROUP](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PARENTORGGROUP_ID] [bigint] NULL,
	[ROOTORGGROUP_ID] [bigint] NULL,
	[CUSTOMER_ID] [bigint] NULL,
 CONSTRAINT [PK__ORGANIZATIONALGR__6CD828CA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (1, N'Technology', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (2, N'360Training.com', NULL, NULL, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (3, N'Production', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (4, N'Accounting', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (5, N'MQA', 3, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (6, N'SQC', 3, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (7, N'finance', 4, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (8, N'Java', 1, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (9, N'ligistic', 4, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (10, N'Core Java', 8, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (11, N'J2EE', 8, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (12, N'C++', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (61, N'Ogr5', 1, 2, NULL)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (120, N'Spring', 1, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (217, N'J2ME', 11, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (261, N'Java Swing', 10, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (311, N'Manufacture', 3, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (361, N'Acegi', 120, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (411, N'Architecture', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (412, N'Spring MVC', 8, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (413, N'Courier Services', 9, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (414, N'NIFD', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (415, N'NIFD', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (461, N'Texttile Designing', 415, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (511, N'Advanced CSS-Styling your website', 2, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (561, N'Tutorial', 511, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (562, N'Code Examples', 511, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (611, N'Spring Acegi', 412, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (661, N'org6', 61, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (711, N'hhhhhhhhhhhh', 261, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (712, N'remember', 361, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (761, N'Bla bla', 261, 2, 1)
INSERT [dbo].[ORGANIZATIONALGROUP] ([ID], [NAME], [PARENTORGGROUP_ID], [ROOTORGGROUP_ID], [CUSTOMER_ID]) VALUES (811, N'bla bla2', 761, 2, 1)
/****** Object:  Table [dbo].[ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT](
	[ID] [bigint] NOT NULL,
	[ORGANIZATIONALGROUP_ID] [bigint] NOT NULL,
	[CUSTOMERENTITLEMENT_ID] [bigint] NOT NULL,
	[ALLOWUNLIMITEDENROLLMENTSTF] [int] NOT NULL,
	[SEATS] [int] NULL,
	[NUMBERSEATSUSED] [int] NULL,
 CONSTRAINT [PK_ORGANIZATIONALGROUPENTITLEMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (1, 2, 1, 1, 500, -2)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (61, 1, 7, 0, 50, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (62, 8, 7, 0, 40, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (111, 10, 7, 0, 11, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (161, 261, 7, 0, 22, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (211, 1, 2, 0, 22, 4)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (261, 8, 2, 0, 24, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (311, 1, 9, 0, 100, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (361, 8, 3, 0, 200, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (362, 1, 3, 0, 100, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (411, 10, 3, 0, 300, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (461, 8, 11, 0, 245, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (462, 1, 11, 0, 200, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (511, 8, 4, 0, 3, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (512, 1, 4, 0, 4, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (561, 10, 4, 0, 1, 5)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (611, 811, 7, 0, 30, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (612, 217, 7, 0, 25, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (661, 1, 5, 0, 200, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (662, 261, 5, 0, 100, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (663, 1, 10, 0, 20, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (664, 8, 10, 0, 4, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (711, 6, 12, 0, 30, 0)
INSERT [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID], [ORGANIZATIONALGROUP_ID], [CUSTOMERENTITLEMENT_ID], [ALLOWUNLIMITEDENROLLMENTSTF], [SEATS], [NUMBERSEATSUSED]) VALUES (712, 5, 12, 0, 20, 0)
/****** Object:  Table [dbo].[LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNERENROLLMENT](
	[ID] [bigint] NOT NULL,
	[ENROLLMENTDATE] [datetime] NULL,
	[COURSESTARTDATE] [datetime] NULL,
	[ENROLLMENTSTATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUSTOMERENTITLEMENT_ID] [bigint] NULL,
	[LEARNER_ID] [bigint] NULL,
	[COURSE_ID] [bigint] NULL,
	[LEARNERENROLLMENTTYPE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORGGROUPENTITLEMENT_ID] [bigint] NULL,
	[STARTDATE] [datetime] NULL,
	[ENDDATE] [datetime] NULL,
 CONSTRAINT [PK_LEARNERENROLLMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VALUES = NORMAL,REGULATED' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'LEARNERENROLLMENT', @level2type=N'COLUMN', @level2name=N'LEARNERENROLLMENTTYPE'
GO
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (1, CAST(0x00009B5800C876AD AS DateTime), CAST(0x00009B7000000000 AS DateTime), N'expired', 1, 1, 1, NULL, 1, NULL, CAST(0x00009B9B014CB659 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (2, CAST(0x00009B5800C876B6 AS DateTime), CAST(0x00009B6600000000 AS DateTime), N'active', 2, 1, 2, NULL, 211, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (3, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'swapped', 3, 1, 3, NULL, 1, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (4, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'active', 4, 1, 5, NULL, 1, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (5, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'active', 5, 1, 6, NULL, 1, NULL, CAST(0x00009BA400000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (6, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'active', 6, 1, 7, NULL, 1, NULL, CAST(0x00009CD100000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (7, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'active', 7, 1, 8, NULL, 1, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (8, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'active', 8, 1, 9, NULL, 1, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (9, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'swapped', 9, 1, 10, NULL, 1, NULL, CAST(0x00009CC500C87594 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (10, CAST(0x00009B4700000000 AS DateTime), CAST(0x00009B5000000000 AS DateTime), N'dropped', 10, 1, 11, NULL, 1, NULL, CAST(0x00009B9B00F71334 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (11, CAST(0x00009B9E00EE78A5 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, CAST(0x00009B9E00EE78A5 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (61, CAST(0x00009B9E010AD7E8 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, CAST(0x00009B9E010AD7E8 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (62, CAST(0x00009B9E010AD7E8 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, CAST(0x00009B9E010AD7E8 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (111, CAST(0x00009B9E011B75D5 AS DateTime), NULL, N'active', 2, 5961, 2, NULL, 1, CAST(0x00009B8800000000 AS DateTime), CAST(0x00009BA100000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (112, CAST(0x00009B9E011D88D2 AS DateTime), NULL, N'active', 2, 5961, 2, NULL, 1, CAST(0x00009B8800000000 AS DateTime), CAST(0x00009BA100000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (161, CAST(0x00009B9E01203D4F AS DateTime), NULL, N'dropped', 2, 5611, 2, NULL, 1, CAST(0x00009B8400000000 AS DateTime), CAST(0x00009BA200000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (162, CAST(0x00009B9E01230EFF AS DateTime), NULL, N'dropped', 2, 5611, 2, NULL, 1, CAST(0x00009B8800000000 AS DateTime), CAST(0x00009B9E00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (163, CAST(0x00009B9E01236E66 AS DateTime), NULL, N'active', 2, 5611, 2, NULL, 1, CAST(0x00009B8800000000 AS DateTime), CAST(0x00009BBE00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (211, CAST(0x00009B9E01260B51 AS DateTime), NULL, N'active', 2, 5661, 2, NULL, 1, CAST(0x00009B8500000000 AS DateTime), CAST(0x00009BA100000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (261, CAST(0x00009B9E01350BF0 AS DateTime), NULL, N'dropped', 1, 1, 4, NULL, 1, NULL, CAST(0x00009B9E01350BF0 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (311, CAST(0x00009B9E013FDEED AS DateTime), NULL, N'active', 2, 5362, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (312, CAST(0x00009B9E013FDEED AS DateTime), NULL, N'active', 2, 3812, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (313, CAST(0x00009B9E013FDEED AS DateTime), NULL, N'active', 2, 5515, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (314, CAST(0x00009B9E013FDEED AS DateTime), NULL, N'dropped', 2, 5611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (315, CAST(0x00009B9E013FDEED AS DateTime), NULL, N'dropped', 2, 5661, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (361, CAST(0x00009B9E01426757 AS DateTime), NULL, N'active', 2, 5515, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (362, CAST(0x00009B9E01426757 AS DateTime), NULL, N'active', 2, 3812, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (363, CAST(0x00009B9E01426757 AS DateTime), NULL, N'active', 2, 5661, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (364, CAST(0x00009B9E01426757 AS DateTime), NULL, N'active', 2, 5362, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (365, CAST(0x00009B9E01426757 AS DateTime), NULL, N'dropped', 2, 5611, 2, NULL, 1, NULL, CAST(0x00009BBE00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (366, CAST(0x00009B9E01446AAC AS DateTime), NULL, N'active', 2, 3827, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (367, CAST(0x00009B9E01446AAC AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (368, CAST(0x00009B9E01446AAC AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (369, CAST(0x00009B9E01446AAC AS DateTime), NULL, N'active', 2, 4011, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (370, CAST(0x00009B9E01446AAC AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (411, CAST(0x00009B9E014860FC AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (412, CAST(0x00009B9E014860FC AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (413, CAST(0x00009B9E014860FC AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (414, CAST(0x00009B9E014860FC AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (415, CAST(0x00009B9E014860FC AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (416, CAST(0x00009B9E014A6BB2 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (417, CAST(0x00009B9E014A6BB2 AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (418, CAST(0x00009B9E014A6BB2 AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (419, CAST(0x00009B9E014A6BB2 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (420, CAST(0x00009B9E014A6BB2 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (461, CAST(0x00009B9E014C6FC3 AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (462, CAST(0x00009B9E014C6FC3 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (463, CAST(0x00009B9E014C6FC3 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (464, CAST(0x00009B9E014C6FC3 AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (465, CAST(0x00009B9E014C6FC3 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (511, CAST(0x00009B9E014FEDCA AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (512, CAST(0x00009B9E014FEDCA AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (513, CAST(0x00009B9E014FEDCA AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (514, CAST(0x00009B9E014FEDCA AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (515, CAST(0x00009B9E014FEDCA AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (516, CAST(0x00009B9E0150DD9A AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (517, CAST(0x00009B9E0150DD9A AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (518, CAST(0x00009B9E0150DD9A AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (519, CAST(0x00009B9E0150DD9A AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (520, CAST(0x00009B9E0150DD9A AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (561, CAST(0x00009B9E0154BB37 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (562, CAST(0x00009B9E0154BB37 AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (563, CAST(0x00009B9E0154BB37 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (564, CAST(0x00009B9E0154BB37 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (565, CAST(0x00009B9E0154BB37 AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (611, CAST(0x00009B9E01573122 AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (612, CAST(0x00009B9E01573122 AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (613, CAST(0x00009B9E01573122 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (614, CAST(0x00009B9E01573122 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (615, CAST(0x00009B9E01573122 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (661, CAST(0x00009B9E015CF7FD AS DateTime), NULL, N'active', 2, 4711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (662, CAST(0x00009B9E015CF7FD AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (663, CAST(0x00009B9E015CF7FD AS DateTime), NULL, N'active', 2, 4611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (664, CAST(0x00009B9E015CF7FD AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (665, CAST(0x00009B9E015CF7FD AS DateTime), NULL, N'active', 2, 4961, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (711, CAST(0x00009B9E015F53F6 AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (712, CAST(0x00009B9E015F53F6 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (713, CAST(0x00009B9E015F8C77 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (714, CAST(0x00009B9E015F8C77 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (715, CAST(0x00009B9E015F8C77 AS DateTime), NULL, N'active', 2, 4711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (716, CAST(0x00009B9E015F8C77 AS DateTime), NULL, N'active', 2, 4611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (717, CAST(0x00009B9E015F8C77 AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (718, CAST(0x00009B9E0160DEA9 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (719, CAST(0x00009B9E0160DEA9 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (720, CAST(0x00009B9E0160DEA9 AS DateTime), NULL, N'active', 2, 4611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (721, CAST(0x00009B9E0160DEA9 AS DateTime), NULL, N'active', 2, 4711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (722, CAST(0x00009B9E0160DEA9 AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (723, CAST(0x00009B9E01613B50 AS DateTime), NULL, N'active', 2, 4611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (724, CAST(0x00009B9E01613B50 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (725, CAST(0x00009B9E01613B50 AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (726, CAST(0x00009B9E01613B50 AS DateTime), NULL, N'active', 2, 4711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (727, CAST(0x00009B9E01613B50 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (728, CAST(0x00009B9E01614164 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (729, CAST(0x00009B9E01614164 AS DateTime), NULL, N'active', 2, 3814, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (730, CAST(0x00009B9E01614164 AS DateTime), NULL, N'active', 2, 4611, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (731, CAST(0x00009B9E01614164 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (732, CAST(0x00009B9E01614164 AS DateTime), NULL, N'active', 2, 4711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (733, CAST(0x00009B9E01639CF2 AS DateTime), NULL, N'active', 2, 5223, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (734, CAST(0x00009B9E01648309 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (735, CAST(0x00009B9E0164EF4E AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (736, CAST(0x00009B9E016539CF AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (761, CAST(0x00009B9E016737D5 AS DateTime), NULL, N'active', 2, 2, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (762, CAST(0x00009B9E016737D5 AS DateTime), NULL, N'active', 2, 3911, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (763, CAST(0x00009B9E016737D5 AS DateTime), NULL, N'active', 2, 1, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (764, CAST(0x00009B9E016737D5 AS DateTime), NULL, N'active', 2, 3711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (765, CAST(0x00009B9E016737D5 AS DateTime), NULL, N'active', 2, 3861, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (811, CAST(0x00009BA500C8F96F AS DateTime), NULL, N'active', 1, 6711, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (812, CAST(0x00009BA500C8F96F AS DateTime), NULL, N'active', 2, 6711, 2, NULL, 1, NULL, NULL)
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (861, CAST(0x00009BA501049DD9 AS DateTime), NULL, N'active', 3, 6761, 3, NULL, 361, CAST(0x00009BAD00000000 AS DateTime), CAST(0x00009CCC00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (862, CAST(0x00009BA501049DD9 AS DateTime), NULL, N'active', 11, 6761, 11, NULL, 461, CAST(0x00009BAD00000000 AS DateTime), CAST(0x00009CCC00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (863, CAST(0x00009BA5010832BA AS DateTime), NULL, N'active', 5, 6811, 5, NULL, 661, CAST(0x00009BAC00000000 AS DateTime), CAST(0x00009D2700000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (864, CAST(0x00009BA5010832BA AS DateTime), NULL, N'active', 3, 6811, 3, NULL, 361, CAST(0x00009BB400000000 AS DateTime), CAST(0x0000A88100000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (911, CAST(0x00009BA5012525E7 AS DateTime), NULL, N'active', 12, 6861, 12, NULL, 712, CAST(0x00009BA500000000 AS DateTime), CAST(0x00009BBD00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (961, CAST(0x00009BA5013F9F51 AS DateTime), NULL, N'active', 12, 6513, 12, NULL, 711, CAST(0x00009BA500000000 AS DateTime), CAST(0x00009BB400000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (1011, CAST(0x00009BA501404BAC AS DateTime), NULL, N'active', 12, 5611, 12, NULL, 711, CAST(0x00009BA500000000 AS DateTime), CAST(0x00009BBE00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (1012, CAST(0x00009BA501404BAC AS DateTime), NULL, N'active', 12, 5963, 12, NULL, 711, CAST(0x00009BA500000000 AS DateTime), CAST(0x00009BBE00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (1013, CAST(0x00009BA501404BAC AS DateTime), NULL, N'active', 12, 5964, 12, NULL, 711, CAST(0x00009BA500000000 AS DateTime), CAST(0x00009BBE00000000 AS DateTime))
INSERT [dbo].[LEARNERENROLLMENT] ([ID], [ENROLLMENTDATE], [COURSESTARTDATE], [ENROLLMENTSTATUS], [CUSTOMERENTITLEMENT_ID], [LEARNER_ID], [COURSE_ID], [LEARNERENROLLMENTTYPE], [ORGGROUPENTITLEMENT_ID], [STARTDATE], [ENDDATE]) VALUES (1061, CAST(0x00009BA5014601A9 AS DateTime), NULL, N'active', 11, 6513, 11, NULL, 461, CAST(0x00009BA600000000 AS DateTime), CAST(0x00009BBC00000000 AS DateTime))
/****** Object:  Table [dbo].[LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNINGSESSION](
	[ID] [bigint] NOT NULL,
	[COURSE_ID] [bigint] NULL,
	[ENROLLMENT_ID] [bigint] NULL,
	[LEARNER_ID] [bigint] NULL,
	[LEARNINGSESSIONID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UNIQUEUSERGUID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SESSIONSTARTDATETIME] [datetime] NULL,
	[SESSIONENDDATETIME] [datetime] NULL,
	[STRINGCOURSEID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_LEARNINGSESSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (11, NULL, NULL, NULL, N'e0b4c8ec-37c3-4907-819f-ef1b1021fc30', N'32a3285c-dd72-441a-ad94-f49ce84c7797', CAST(0x0012F28F0116B705 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (61, NULL, NULL, NULL, N'cba9c17a-2489-4cdc-9693-c650d3a94cd7', N'3320b0d5-51d5-4f03-ba6f-c05ae7759e3f', CAST(0x0012FCC101393789 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (111, NULL, NULL, NULL, N'e9b42855-3797-4620-ba8b-d4837be0f96e', N'33f3abfb-ff6c-4564-bd38-fcbb7a1d1da2', CAST(0x00008CC40035C387 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (161, NULL, NULL, NULL, N'c3c1aaae-ff82-4fc0-b4be-70c155865edf', N'62f4fc78-26b9-4ca0-bafc-82f0a4857889', CAST(0x0002FACE00FBC2C8 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (261, NULL, NULL, NULL, N'ac31914c-09cb-41bd-9e2d-185a68e299b2', N'2e4bf4d4-6a23-4d19-a25d-61ec44b5ba5a', CAST(0x00047EBD010D981F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (311, NULL, NULL, NULL, N'3159dacb-723c-41f1-bf2e-f2179cc8dc4e', N'83e3ee22-7d4f-4c36-8357-b01e7706766c', CAST(0x0005AF63003A2BD2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (361, NULL, NULL, NULL, N'36a31718-7e50-4df9-85d8-352cd2be4f91', N'089976ee-d27f-4c48-8dc0-383ffe6d73b0', CAST(0x0000E666005B2F13 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (411, NULL, NULL, NULL, N'4f6d0be7-678c-4b1f-9f69-9bc5276449b2', N'f719c5c0-d2bc-4a7b-a0df-faf6a8ae0297', CAST(0x00066D6C0082F198 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (461, NULL, NULL, NULL, N'538bb61d-8f57-4c67-b40f-52fdc736874a', N'c6dd7a8c-29c2-46e4-b5da-68bde16ddce8', CAST(0x0006778C00B52387 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (511, NULL, NULL, NULL, N'48914d17-5c7c-4544-9d60-1ea5cee333a3', N'b78e0552-d549-4af7-8feb-0b9bf2eb30c7', CAST(0x00067D530007181B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (561, NULL, NULL, NULL, N'9d2c8f3b-e64e-47e8-a1c2-c900a54697a3', N'b3e385e0-fcab-4975-a2cb-6aa82d57cec4', CAST(0x000685930161265E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (611, NULL, NULL, NULL, N'13c680be-0195-4222-a9fa-fbea6a78435f', N'd8cebbf6-d812-4cda-9a02-3e40e92ad438', CAST(0x0006927200E64898 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (661, NULL, NULL, NULL, N'3aacd29c-6f17-45db-acfb-d3ef31763f91', N'7dd97fcb-6ac2-428f-a400-50691c949a6a', CAST(0x00017D890176AF61 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (711, NULL, NULL, NULL, N'08495704-74b6-4bb9-874c-3484d4bd95ff', N'9a9624b7-bcf0-4d25-a1e2-208613f254e5', CAST(0x0001893C01047AC3 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (761, NULL, NULL, NULL, N'0694f852-27b4-4213-8d70-390a73727e8e', N'1cae95d6-9452-4d72-97c4-fa2d863a5d5e', CAST(0x0001900C0037CC7E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (811, NULL, NULL, NULL, N'220aa39c-358e-44bc-8adb-e95546a0f348', N'38a5dfb9-d7a5-4a6f-8e55-ad240759cfa5', CAST(0x0001E69100405598 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (861, NULL, NULL, NULL, N'c52e393f-5ba6-4f2e-97df-754170bf009f', N'7fcffe0c-f07c-4652-937a-2b6a010af8e8', CAST(0x0001EE72014497A8 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (911, NULL, NULL, NULL, N'7210be17-49e6-4857-89b9-caa771e7a384', N'9584cecf-2bf9-4343-9f42-bd4180c8ab77', CAST(0x0002944800FFCFAE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (961, NULL, NULL, NULL, N'df036145-2ee5-4fd7-91eb-52cf4c4d0116', N'350557e3-5ce4-4bb7-b68c-8e35901e7a23', CAST(0x0002981C003FB808 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1011, NULL, NULL, NULL, N'e80193cb-cd8b-488f-abba-6d398f676304', N'de328269-fe64-4be6-b7f9-2c39d31a498a', CAST(0x0002BCEF010DEA08 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1061, NULL, NULL, NULL, N'8701f291-a10c-4e5f-a2e9-6f6f11c0e70f', N'fcf3c2cb-702c-4e6e-96b3-36d3e634de26', CAST(0x0002C3720094F2C5 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1111, NULL, NULL, NULL, N'e0a44c49-a9fa-4ad3-869a-0420ee618644', N'759ff791-5e98-4399-99d6-030da5f6cdfe', CAST(0x0002DD75014F30C6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1161, NULL, NULL, NULL, N'96325d16-2564-4f50-927f-5b8cc30b7725', N'ec2605b1-8371-42f1-83f4-561b0d19fa18', CAST(0x0005B79201535D8B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1211, NULL, NULL, NULL, N'99c17371-ae3f-496d-a35d-fc931a3fd027', N'a7ccfad9-c2f6-4076-b8da-b2126aeed373', CAST(0x0005C6010125517C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1261, NULL, NULL, NULL, N'9abed7aa-52be-4740-9c4f-f985bd971f82', N'85fa3b1d-acca-4ba5-8623-caed9d5ea9bc', CAST(0x0005CC520130B10D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1311, NULL, NULL, NULL, N'd7272d4a-4f9d-4a0d-8ef2-4f3ebc03bd23', N'7fea5fe9-0f11-4d39-ab4c-2bbbbdeaa9f5', CAST(0x0005D56D00976B8B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1361, NULL, NULL, NULL, N'f7b1b36b-9b53-4f28-9180-e700e12b8e63', N'714983a1-ba8a-4d16-9925-39f1fc90a1fa', CAST(0x0005D918004C7A5A AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1411, NULL, NULL, NULL, N'034ff7ec-6ed5-448f-9f2a-9055625813b1', N'1744a9e6-d12e-4f3c-bc45-137e719fa3bb', CAST(0x0005DF1600B4490C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1461, NULL, NULL, NULL, N'8e4b237d-befd-445e-a812-2128957dd4c8', N'5c7199a2-894a-488c-951d-b87bf5e877d8', CAST(0x0005EE9200AA4594 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1511, NULL, NULL, NULL, N'7e43f9fd-1481-4675-86bb-43d6aa696d98', N'6da0de1b-9283-4e2b-b618-17f6fd7e4fe0', CAST(0x0005FA1E01236929 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1561, NULL, NULL, NULL, N'eff301a1-e99b-4772-a09a-ac75142c2c56', N'2d089e46-dbf6-4cb3-b98d-93530c7947e2', CAST(0x0005FF5601506706 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1611, NULL, NULL, NULL, N'4b3466bc-cebd-4cb3-afab-210b0c561022', N'2e050dc0-e4cf-4949-aa4f-b5e81ce1ba1c', CAST(0x0001D2D70162D63F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1661, NULL, NULL, NULL, N'7cb38d3c-9968-48be-b3a4-1515398c04a7', N'751bb395-1a73-46ff-8da2-991edd49e3de', CAST(0x0001E53C013A9E2F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1711, NULL, NULL, NULL, N'88d7ad1b-7eac-4cc1-9741-022240f3cc05', N'3872bd69-6253-4eda-a3c3-ede86387aa5a', CAST(0x000510B20042778A AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1761, NULL, NULL, NULL, N'4c51652d-e43e-41e1-ad05-e2cdece0f7bb', N'923e2e51-67f5-4000-a731-af73fb83047f', CAST(0x00051B97010CCDD1 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1811, NULL, NULL, NULL, N'97c1e5d0-99eb-4455-812f-ff250c208d7a', N'581ac953-3910-4a89-9ab0-0feca0ccc608', CAST(0x0005201700EEA35D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1861, NULL, NULL, NULL, N'94aea9c3-19d6-4097-84c0-41c341ab5078', N'7d698548-d55e-4cfd-bd96-c854a384f061', CAST(0x000526B50165F42F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1911, NULL, NULL, NULL, N'2d5b5c2d-7267-4f00-8148-93b917cdbd0b', N'0575492d-376c-4ae5-b4c0-581113d28d81', CAST(0x0005300100DC2F9D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (1961, NULL, NULL, NULL, N'499dc3df-af6a-45ee-9ce8-b91c4f253aca', N'9ede88d4-a6c4-4425-94ac-342725715d6c', CAST(0x0005360C006F7F64 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2011, NULL, NULL, NULL, N'1fcd6c27-d648-4584-a759-62ff756ff4b7', N'c7ec065b-cdf7-4f96-b099-494b8bd9ee7e', CAST(0x0004EC3B003E71C2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2061, NULL, NULL, NULL, N'd0009854-7f08-4a47-ad24-79183b8ea16d', N'60bb074f-bb1f-43af-8f68-3d1741b384b5', CAST(0x0004F2AC00539D0E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2111, NULL, NULL, NULL, N'b3bd4de6-330f-41bf-a47b-12b09d0c5571', N'609f775c-9a44-4ead-98b7-c7e086500244', CAST(0x00051158006C966B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2161, NULL, NULL, NULL, N'ca3d9f52-9eb7-4af4-bc05-6c81ba1f5ed6', N'3596862b-299a-46e3-bb7c-7776a7e73bb1', CAST(0x0007466C00373046 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2211, NULL, NULL, NULL, N'a6b41d04-3f50-43bf-8899-b05d227deda1', N'57a09477-19c0-4b91-b04a-bb93646f837e', CAST(0x00074E8E00924BBE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2261, NULL, NULL, NULL, N'f0df93a1-8359-4f91-af38-bdcc6549b386', N'f2f70270-780d-4c16-8bc9-6d6345286f67', CAST(0x0001EBBF00BDD461 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2311, NULL, NULL, NULL, N'5762418c-84d5-4051-a3df-7212ba060f3d', N'9dad8fb3-1510-47d0-b8e6-b37f625ab785', CAST(0x0004581500D54669 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2361, NULL, NULL, NULL, N'baf2d420-ba8c-4929-bb65-3e86f6b7bbdd', N'dee59391-be62-4bfd-8915-4dca3fc012c7', CAST(0x000471FB00FA5FEA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2411, NULL, NULL, NULL, N'4b748c69-0912-48d7-90d0-dbc47c95e512', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000228250031B1B1 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2412, NULL, NULL, NULL, N'1d3a607e-96bc-4b6e-ad60-5c58078cea91', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002290F01361702 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2413, NULL, NULL, NULL, N'57396e49-8fdb-41d8-939a-ee17049829f6', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002295700020AF9 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2414, NULL, NULL, NULL, N'4e4f6df7-8c14-4e03-9bb8-d59f0a57f0b7', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002297A016CD5A9 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2415, NULL, NULL, NULL, N'f6531946-a49e-4987-a85c-e279a38c8825', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000229E1011902DD AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2416, NULL, NULL, NULL, N'dcbd7766-c84a-4799-8a4f-2843150f3d34', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00022A6D0015632E AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2417, NULL, NULL, NULL, N'e5b2e1c1-d4f0-4ad8-ab8d-b6e9b9136902', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00022B0D0081FEA4 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2418, NULL, NULL, NULL, N'7c2c92cb-02de-44c4-8bf4-e6fb0b3d99f3', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00022B4B00C09EED AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2419, NULL, NULL, NULL, N'096974ed-2324-4405-bf68-91915e70d330', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00022B69011A3272 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2420, NULL, NULL, NULL, N'beddabae-3def-49ea-8b26-b1f0aacd1d88', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002307201307246 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2421, NULL, NULL, NULL, N'5af461e2-1b03-4c63-be5f-c443d36aedac', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000230AF005FECDA AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2461, NULL, NULL, NULL, N'e66bb106-a483-4d66-908c-dcf787d44b8d', N'82131ade-52c4-4057-8d79-8940a33666bf', CAST(0x000253BC00B9B4D2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2511, NULL, NULL, NULL, N'1995c5e1-5ff6-48f0-9767-539f2efe60eb', N'5751c89d-b750-4e5b-9c3b-490e16791c12', CAST(0x000258E800972704 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2561, NULL, NULL, NULL, N'20b774b4-bcbb-4635-8d32-573660fc6287', N'ab4685a1-b286-49ce-a37d-29bce0877458', CAST(0x00026EC801046E71 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2611, NULL, NULL, NULL, N'7479cb69-abfd-43e0-a847-21e6e0031e79', N'80582db0-f80f-4fa5-94f2-ed2ae0f5a821', CAST(0x0002735E00793730 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2661, NULL, NULL, NULL, N'c6b8e9fe-102c-4b35-9381-56018e306513', N'65ddf6cf-d67c-40bb-953d-6e9b9e2baba3', CAST(0x000236EB001FA40C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2711, NULL, NULL, NULL, N'0d5617b8-f665-49b5-a1d6-abf2e3c7d343', N'07f23ea3-4556-4bc7-9529-689263ca5e35', CAST(0x00023DAB006CADDA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2761, NULL, NULL, NULL, N'2b75edd5-2099-4151-9efd-566371339dd8', N'f4c4c884-20a4-46af-80be-7de7158ffdb2', CAST(0x0002699E010EBDA3 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2811, NULL, NULL, NULL, N'5c6edd76-525c-426b-a239-de4414970045', N'4bf5e58e-01e7-4d62-84e0-7cc47ca10446', CAST(0x00026F9F0188AFE2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2861, NULL, NULL, NULL, N'955365dd-ad9d-4a0b-bba8-edf66d57ec9a', N'b1895df3-e039-46af-80be-3fb53eb89dd0', CAST(0x0002FA8E0085F767 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2911, NULL, NULL, NULL, N'ccf8d493-da14-4620-95fb-7abe59d09e1a', N'55cd9358-5f1f-4773-b3ea-e2d8d84aa071', CAST(0x0003075D00A78788 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (2961, NULL, NULL, NULL, N'def5790f-43a9-4b83-9478-bbdb91abe6d2', N'3f9b9688-e8f1-4a86-a691-87f24ad3ce1c', CAST(0x0003187301301ABD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3011, NULL, NULL, NULL, N'61116ff2-fe99-4f3a-b281-adef7e3c3d4d', N'4f22bb33-a79c-4afe-aed1-22b55d98df88', CAST(0x0002CCDC0110105E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3061, NULL, NULL, NULL, N'eda4f4ec-a217-4572-b4a5-1d5e0c47781e', N'92e39513-4d1a-4731-8106-8e00710bb6cd', CAST(0x0002D76D015200C6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3111, NULL, NULL, NULL, N'1ff6532c-6494-4e9e-84a1-6d32b5c94d3f', N'28791072-dfc8-4ea0-88da-06612f31172c', CAST(0x0002E35300B8BFE1 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3161, NULL, NULL, NULL, N'6ddfec4a-b098-452f-b070-d91afcf3950b', N'019a9e4a-4b3a-4518-926e-c57c7c02bb0b', CAST(0x0002EBB2001BA261 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3211, NULL, NULL, NULL, N'478295ed-f8ad-4390-b7f6-74ff1d8ff28d', N'ff946bdd-2f40-4db6-8d28-fe23445c29c6', CAST(0x0002F455017142E2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3261, NULL, NULL, NULL, N'dbdd48a0-a63e-4868-9791-3d7ba9a0c09d', N'c8b8a0a7-3470-42ad-b7a6-fcb992741afc', CAST(0x0002F7F2010FA1D5 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3311, NULL, NULL, NULL, N'88ef4e63-8e09-4927-b64e-79f8b65ca124', N'211e4593-bd65-40b5-a794-deeb4ade30bd', CAST(0x0003006C00CF5F47 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3361, NULL, NULL, NULL, N'549e2572-28e9-4c2f-8125-80f7f79adb88', N'428ee868-0d28-4f9d-bfe4-bcae8313d551', CAST(0x0003BF740117EE3C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3411, NULL, NULL, NULL, N'486e4f88-901b-4071-aa71-e23ad0a730a4', N'68f14631-0de7-47ab-9156-4c5a51e18d70', CAST(0x0003C563001AC3E8 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3461, NULL, NULL, NULL, N'0ba10717-dc4c-4a15-b6a2-aba034b8c4bd', N'868a004c-158e-4d24-a54c-2a05ae2d3676', CAST(0x00044B0800D0ABB6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3511, NULL, NULL, NULL, N'892d0c67-366d-4e26-94e2-156675137d39', N'146107da-124b-4f07-bc20-e9fe0d14db30', CAST(0x00075CCE000C0DA2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3561, NULL, NULL, NULL, N'2f06bdbf-5ad0-462f-ae96-79248f945416', N'64a6d9d5-f5c3-4b6b-8c00-af3844a81813', CAST(0x0000E832002A44EC AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3611, NULL, NULL, NULL, N'9170c931-e351-4082-9041-cf02048aca32', N'9d4b93bc-9dfc-4090-bdc7-f8b8f26a781e', CAST(0x0000ED3800F1FEB5 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3661, NULL, NULL, NULL, N'03f499d0-3beb-4ebf-9866-fde0b6f7e81a', N'7a59fd9d-5fcc-47ab-a834-c831e6dbcfbc', CAST(0x0000F15600669490 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3711, NULL, NULL, NULL, N'7c432826-a593-418f-bdb7-1cf862962989', N'caf3338c-3d52-4570-a22c-d2c655a7db25', CAST(0x0001215A008EC04A AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3761, NULL, NULL, NULL, N'cd0d8610-1445-4c83-b5fe-4b745a055b77', N'74a5a139-af47-4109-a0d5-5855ceb2a45f', CAST(0x00015AA900B426FD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3811, NULL, NULL, NULL, N'cf8c5d2c-69b4-4ff9-8406-dcacf3f5c205', N'7b1193c5-37b7-4a99-9dd7-3897ce54afcd', CAST(0x0001601E01414033 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3861, NULL, NULL, NULL, N'59be9eac-cb70-4d82-9b72-5f9e90146bb4', N'627e6b4d-c89c-4077-a26f-89af7535bf53', CAST(0x000175A0011BE7A6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3911, NULL, NULL, NULL, N'1baeb186-402c-4f4b-84aa-d9ed3952497e', N'b7940036-4eea-4536-8c49-2c4dadd2a217', CAST(0x000183BC009A2B28 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (3961, NULL, NULL, NULL, N'71b158a9-f2a0-4a76-8128-39b02fe5b051', N'eefdbc28-ac28-47b5-b538-6e892b7fb4d9', CAST(0x000186CF0173B576 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4011, NULL, NULL, NULL, N'c948aeaa-cf7b-4daf-9d56-40a23cb4b3e5', N'80b9a01a-28de-4ced-be64-ffd45ff0c7f1', CAST(0x00018BE2014BED0F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4061, NULL, NULL, NULL, N'ec39219d-a559-4e03-a177-75a5c562714b', N'8a4297d7-bfe0-41ea-a6be-195ba2b9b719', CAST(0x0001A250000956B7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4111, NULL, NULL, NULL, N'4a514f7a-69c4-413a-964b-2f926258bbfe', N'2f8865b0-438f-4a8d-b879-090312bf3fa3', CAST(0x0001A461015CF98E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4161, NULL, NULL, NULL, N'5ff9e857-8806-40ad-b68b-10900fdbfada', N'9701f552-9f0e-4eea-811c-ad89c2ab5f54', CAST(0x0001A83E00185867 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4211, NULL, NULL, NULL, N'315345d4-375e-4ce1-b627-3654d148a271', N'd93f1966-7c75-42b4-bbb8-e4e894c6f387', CAST(0x0001A9BE0087E134 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4261, NULL, NULL, NULL, N'f8a399bf-9de4-4c1b-a68c-a74e40703fbb', N'dccca8ad-e3b7-44a0-9d70-018208c6ad7f', CAST(0x0001AF7200F091C3 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4311, NULL, NULL, NULL, N'0be41ae8-88a5-419a-9a05-5fa3388b1493', N'd563dfc7-4ce9-4ac3-9f4e-a0cb2f7d5523', CAST(0x0001B249009A75D5 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4361, NULL, NULL, NULL, N'69a125ce-5f24-456e-a9d5-716d760cceae', N'57555c0d-5cca-47a7-aef0-79652d719bae', CAST(0x0001B6F8013CF046 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4411, NULL, NULL, NULL, N'e8719d8e-73e0-4cce-84a9-377e7396dfa5', N'8a90c171-da1f-4923-b801-40a7dd2c46ed', CAST(0x0001BB28006C6CF4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4461, NULL, NULL, NULL, N'10d4ed64-6659-422f-8494-9f2cc96ca757', N'd1dc58f8-cd73-4d37-a567-e35262b664c8', CAST(0x0001D21D00C999CF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4511, NULL, NULL, NULL, N'838f8994-aa6d-4271-af70-60dc31742718', N'afd1f16f-65bb-44f1-a980-e5a779ebcea9', CAST(0x0001F93601019F53 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4561, NULL, NULL, NULL, N'd6e5c24a-27a5-46de-8b9c-f52a4ac7851f', N'7aadc8e5-56ac-49ac-80cc-225b88b8fe32', CAST(0x00024F7A0139BC37 AS DateTime), NULL, N'3')
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4611, NULL, NULL, NULL, N'a22fe5d5-bdb6-4485-b6d8-7a5701134ac0', N'd1493c2b-93ae-427e-a06f-1e2b068afed5', CAST(0x00025C64015335CD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4661, NULL, NULL, NULL, N'df653087-bd08-4c5e-9a9d-1932b66db847', N'94b9f116-4958-4010-82b1-588ef15f164c', CAST(0x00026A06005F0CDF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4711, NULL, NULL, NULL, N'dfe54ef4-c47a-431b-af29-d45acf02edba', N'a2e23d32-5cd6-4f18-960c-9de26703c63d', CAST(0x0002E3C601149177 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4761, NULL, NULL, NULL, N'fd7ec1bf-fa30-4f53-8615-1e0fbb5df994', N'b64cebc9-1586-487f-ad03-6a171fda5573', CAST(0x0002EAC000CAC40F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4811, NULL, NULL, NULL, N'1274d33c-ec82-4214-92f9-c1fc02453628', N'40559781-6642-4acd-9aa1-8f0b6859c059', CAST(0x0002ED3000DFDE66 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4861, NULL, NULL, NULL, N'013ff23b-cb42-4a82-8060-e0b11e318dc6', N'c649f6f2-3958-4b1f-b795-e7c1209454d0', CAST(0x0002F506007ACA7D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4911, NULL, NULL, NULL, N'f68eb8e6-2e7f-48ef-99f7-aab59721f7fc', N'1d34b6f3-303d-413c-95c9-3ffc0eda2ff6', CAST(0x0002F9C2010F97EF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (4961, NULL, NULL, NULL, N'4b101d82-5e09-4780-bf73-92cf7b746584', N'd91dae69-cc6d-4360-9752-d9ed6e64f1cd', CAST(0x0003128900FACDB5 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5011, NULL, NULL, NULL, N'c2b9d93a-9d0c-44fb-9c16-64bc4bf4b0b5', N'146f3dd7-d489-4cf2-97f8-5501bb4ed255', CAST(0x000314EA00C6CA78 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5061, NULL, NULL, NULL, N'158122fa-c459-488a-85ae-77698a050791', N'5018e6de-8eb7-4489-83b0-5552eca2fdb0', CAST(0x00031D0301589AB4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5111, NULL, NULL, NULL, N'37635880-fbcf-4a96-86b6-6c420482ec2b', N'd0d3ed92-28a2-4a25-94c0-bee33c6ce860', CAST(0x00031F00000E87A4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5161, NULL, NULL, NULL, N'62b30b7b-31b9-4fae-ba22-accffd211bfe', N'1137c7df-cb08-4b3e-ab11-4662de9ca8a2', CAST(0x000326C8010B4A55 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5211, NULL, NULL, NULL, N'c8b99bb0-f5a1-4de4-b7d6-76d8521f0401', N'd68d5919-172c-4606-bb90-29ee0e59e37a', CAST(0x000329B900FE65FC AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5261, NULL, NULL, NULL, N'df7d82e9-db24-412f-83e8-dabef6a0aa77', N'a67ddc32-a706-4c28-9d63-c9cf36952659', CAST(0x00034F3B007A7A49 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5311, NULL, NULL, NULL, N'6929995a-9845-4334-94ad-faaf25d8fce3', N'edd70289-cb64-4459-a1e6-e3731505a36c', CAST(0x0003516500404870 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5361, NULL, NULL, NULL, N'f7aa65c5-e617-45ea-88d3-18890ebefd10', N'fa9bc80d-325f-47ef-8822-c49c91e08a08', CAST(0x00035DFB0101AC0F AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5411, NULL, NULL, NULL, N'd0a66171-02ce-4431-8dac-20d577340baf', N'e683a1b2-a883-45ee-8421-80ff3291c1ad', CAST(0x0003601E00B38755 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5461, NULL, NULL, NULL, N'7a7e4024-4970-4525-bccd-6733d146bab1', N'96b4d6e6-9f91-4c16-bdfe-d46e2b602024', CAST(0x000364630082F610 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5511, NULL, NULL, NULL, N'859e6f4d-1253-4b30-b970-c006c40957f0', N'8b83c054-b25e-4f5e-85cf-eb910fb6c048', CAST(0x0003681C00105AF1 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5561, NULL, NULL, NULL, N'18d95c0b-ad63-4f0f-8265-70a7caf26e5d', N'5f397d65-6bb9-4761-8248-b6f41ff90f7b', CAST(0x00037B3E00252E12 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5611, NULL, NULL, NULL, N'2d9127e8-61f8-43de-b53a-829412db7498', N'2d34d36f-a9e8-445e-a3f0-a9803b0f206a', CAST(0x00037CEE005D4C76 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5661, NULL, NULL, NULL, N'a0a9f0ef-89f7-440a-8b79-b0051eb81565', N'd1499017-2be6-4dfe-b45e-8ecbe0315437', CAST(0x00037EE3004FBDAC AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5711, NULL, NULL, NULL, N'955c4056-05f8-401e-862f-60fffaf82378', N'cb286e64-12dd-4365-aaa4-baf03feaa7a9', CAST(0x000380EC01519B9C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5761, NULL, NULL, NULL, N'955350e6-d0e1-4c1d-96dc-16ed47d5551c', N'06939967-159a-4d8d-a087-84eb53a9003c', CAST(0x00038F58016EC431 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5811, NULL, NULL, NULL, N'12e35e66-bf57-4eb5-a1b3-b552763c81b1', N'a0c211db-3c3c-44f3-b57d-13eebfa6880f', CAST(0x00039830018018A7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5861, NULL, NULL, NULL, N'a6191a4d-40d9-41ab-bc6c-1f5470e17050', N'b06c6f4b-e688-47ae-9741-b455efb67b6f', CAST(0x0003A00C00455064 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5911, NULL, NULL, NULL, N'a257be19-e463-43b9-9a10-05da0c70eab6', N'f0a11d69-b63f-442f-9652-513ece57f56d', CAST(0x0003A1E70141FFFF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5961, NULL, NULL, NULL, N'ac1da534-49aa-4440-8e91-db52ec5c152f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001CF8400989A0C AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5962, NULL, NULL, NULL, N'c2aa4be8-47e1-4627-9476-239a885e2ef2', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00028FD600423E57 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5963, NULL, NULL, NULL, N'c873643e-d734-4de8-ac7c-b79164c94a7d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003CD630046029D AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (5964, NULL, NULL, NULL, N'7ecd3272-f166-4965-859f-e78fd4992877', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003CE2C015DA0B3 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6011, NULL, NULL, NULL, N'4ef62f6e-12f0-4c20-9533-bff87ab56f74', N'25bf512e-66eb-4914-9ea2-a62b6ca3f416', CAST(0x0003A53E00465F20 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6061, NULL, NULL, NULL, N'7a1f8c0a-d4ba-4a0c-9844-5ce663e2b023', N'ee4aba3d-6067-4751-9f7c-6180c5e36b7d', CAST(0x0003C2C801729440 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6111, NULL, NULL, NULL, N'fc0b98cf-465b-493d-b9ed-ccadd26b225c', N'd6b31108-b81a-4ce1-8088-0a8633dd72a1', CAST(0x0003C65D00BE86AE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6161, NULL, NULL, NULL, N'46edc654-4862-4a4d-a0ed-9dc5349da024', N'7d078ddf-0903-4400-91f5-034c7bad05cf', CAST(0x0002BC1200DCB3C6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6211, NULL, NULL, NULL, N'92e4e26c-12af-490f-b599-308361eacb0e', N'2a241b97-059f-4d7f-ba69-7a6c6438ba06', CAST(0x00041D5E009C18FC AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6261, NULL, NULL, NULL, N'8a60e4f8-5d94-4c07-b183-770ef3275462', N'4e2e06b1-095b-4a74-9369-faddea032cb7', CAST(0x000420950094E27C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6311, NULL, NULL, NULL, N'2833b7e1-4e47-48d2-a852-b324b06ce02d', N'c7bd0133-5270-4a15-a1ec-4e7d4488cb00', CAST(0x0002E8E2004B346A AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6361, NULL, NULL, NULL, N'71eb0fe5-07ac-44e1-bad3-11ee442ebd00', N'a5d56751-6584-444d-ba37-d346643ff6fd', CAST(0x0002EDC0017C48AB AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6411, NULL, NULL, NULL, N'571d52bb-9cca-46c0-9ffc-6e411230656b', N'211f9af3-1658-4678-8ee4-702c8f7884bc', CAST(0x0002F21400467015 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6461, NULL, NULL, NULL, N'bf40e1f1-d71c-4545-87b2-84264d8b243f', N'b7427e93-6036-4cba-9ea0-d514df2a4e2c', CAST(0x00047F2100AFADA7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6511, NULL, NULL, NULL, N'bfb1ea65-c6e6-4bcd-8ccd-cedc5d55246c', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003DB06017D7219 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6512, NULL, NULL, NULL, N'f06e7b99-fafb-4e6e-a37a-f3014fa6ad37', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003DB780090D7E3 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6513, NULL, NULL, NULL, N'29eea82c-0142-4b16-b4a4-0e638117339e', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003DCF600A73C64 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6514, NULL, NULL, NULL, N'01cac4d1-2618-40a0-acfb-42c3bf9244d2', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003DFCE015FF64B AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6515, NULL, NULL, NULL, N'e40a2ad1-cc04-404a-8850-a26128dd3987', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E1000105B439 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6516, NULL, NULL, NULL, N'9e743c02-b625-442e-9c63-c171d3d7f003', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E15800419539 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6517, NULL, NULL, NULL, N'ecdca2ce-2fb8-48be-bc44-45c958759cb6', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E5CF01571B07 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6518, NULL, NULL, NULL, N'e33ae95f-0a60-4d8d-ac18-fcaf267c19a2', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E5F80008DEFE AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6519, NULL, NULL, NULL, N'3636b327-9cd4-4c56-8cf5-543a2272e225', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E69D01054B3F AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6520, NULL, NULL, NULL, N'e540446b-990b-46e0-86f9-b5ccd36867a1', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E6BD013925E3 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6521, NULL, NULL, NULL, N'bf9115af-8745-491f-b584-15fbabcf1f3a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E6E2011E57D5 AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6522, NULL, NULL, NULL, N'b3d66399-9cee-481b-91fb-73f8676435b3', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E71300FC845F AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6523, NULL, NULL, NULL, N'8fc0529e-1c28-4e4e-a280-3aeeb18852d1', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003E99E006910B9 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6524, NULL, NULL, NULL, N'4d28569b-6d17-42f1-bafb-fce260684c59', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003EA4A005A50EE AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6525, NULL, NULL, NULL, N'85d9603e-0fb0-4195-b27f-16b7f818c504', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003EF1001116439 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6526, NULL, NULL, NULL, N'fbd4119d-6711-4853-af57-d870d2ac9bac', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003FDE3002C6861 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6527, NULL, NULL, NULL, N'9dd285c6-797e-40b2-ae83-8b313d470e0f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003FE3901585843 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6528, NULL, NULL, NULL, N'7c5e10f5-ac6c-485a-9cff-0ad5711076a2', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004005A00B970E5 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6529, NULL, NULL, NULL, N'dc35aa19-c9d5-44c8-a3e5-c34f400aaf9d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000401E4006F9454 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6530, NULL, NULL, NULL, N'35d4d3c7-8d6d-435b-8058-085f642080d8', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00040C3D00CE5717 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6531, NULL, NULL, NULL, N'7b548c80-c2de-40f5-a662-6bc99f3b73b5', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00040E8F00154696 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6532, NULL, NULL, NULL, N'4acbb56d-6658-4bda-8deb-0566cdc697e8', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00041268004F748F AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6533, NULL, NULL, NULL, N'6d5da63e-3846-414a-90e3-79acf5458475', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000413EF016B9957 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6534, NULL, NULL, NULL, N'c01ae1c3-e5b8-407f-a01b-47805d64280d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000416710090E0D0 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6535, NULL, NULL, NULL, N'732d64de-946c-4efa-ad05-b8a09b2b22e9', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000416C900C17CB7 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6536, NULL, NULL, NULL, N'e0b28037-41b8-4b54-b2f3-35aa93522ebc', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004175001390562 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6537, NULL, NULL, NULL, N'7fc79b9f-d350-4308-aa3a-9f402e139eba', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00041EE700C4DDC4 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6538, NULL, NULL, NULL, N'ca7341cc-9298-400e-8917-26b02dcdb275', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000421A70168E336 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6539, NULL, NULL, NULL, N'284b8f97-4668-4ebb-a55f-2dadb206890d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004262101811033 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6540, NULL, NULL, NULL, N'708d7abb-b627-4a31-be28-72b6d0e34413', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00042BBE017A53AB AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6541, NULL, NULL, NULL, N'e45223a1-d652-464e-8ff5-108be32dc438', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00042E8D00C1BA55 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6542, NULL, NULL, NULL, N'9453594f-927d-402a-97c6-f6cce4f1e6ca', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000433A2006A7EFD AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6543, NULL, NULL, NULL, N'c587f5b5-bc0d-48cd-ad7d-a3ca7d942bd9', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043520009B3B36 AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6544, NULL, NULL, NULL, N'3fa6e459-5785-465a-b3fc-b8664dc02e4a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004357100B7945B AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6545, NULL, NULL, NULL, N'5f43c1f8-f73b-4582-ac5a-163451454993', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000435D3012E12AF AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6546, NULL, NULL, NULL, N'19fa707a-8399-406c-96e7-3bcaeaea32f9', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043602007D715E AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6547, NULL, NULL, NULL, N'c13b1359-6b6a-4e57-bf0d-4dc091b16e92', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043E900098E7A3 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6548, NULL, NULL, NULL, N'd0241211-22b2-4f5d-a662-b0996a8f65f9', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043EC7001A3DE9 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6549, NULL, NULL, NULL, N'f5ea4c2e-3130-490d-8599-de886f50240f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043EE8002DF5E6 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6550, NULL, NULL, NULL, N'84553d54-94ad-46b9-b14b-b132bd94950a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043F01015B8633 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6551, NULL, NULL, NULL, N'65db06f2-4ed1-4384-ba4f-b4a996708f80', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00043F1B012B8FD0 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6552, NULL, NULL, NULL, N'ec6d7909-6f92-4a27-9fe0-7d069d8824d5', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004445D00071E4F AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6553, NULL, NULL, NULL, N'2c6f2c8b-05e5-4286-8db3-0d5f00158845', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000453EF0094D001 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6554, NULL, NULL, NULL, N'49d2f6d6-7b46-41f3-90bd-fc8209bd07fd', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000472BC001915EE AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6555, NULL, NULL, NULL, N'4d2de3b1-7e5b-4212-8ca9-c453a585f2db', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478340128B543 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6556, NULL, NULL, NULL, N'bc25d73c-2f93-4f0b-90e3-6e83de47b275', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047864005A3C9C AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6557, NULL, NULL, NULL, N'f25cffb7-aa92-42d2-a69c-97a432104b13', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478950166D3E1 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6558, NULL, NULL, NULL, N'a616e6e1-3847-4fec-9a1f-6848657c6cce', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478BD014CA495 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6559, NULL, NULL, NULL, N'8bd7cf9f-f4b6-4eb8-954f-cbffc7b24bd5', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478D000B2A0C2 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6560, NULL, NULL, NULL, N'9d3db53d-7827-4135-822a-82abf4876a16', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478E001186664 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6561, NULL, NULL, NULL, N'9441e55f-d8cc-4c3e-be2a-e96288a0fae1', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000478EF00063D0A AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6562, NULL, NULL, NULL, N'96e88ea3-74fa-4047-b3a5-efa483fabf5f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047917003A129A AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6563, NULL, NULL, NULL, N'c9d35a99-a534-4908-b07e-5f7bd7e82bc3', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000479510051148B AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6564, NULL, NULL, NULL, N'1a17a452-e987-4161-855c-6f89f22f2346', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047A1B00CB3F96 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6565, NULL, NULL, NULL, N'11b75711-ea61-47ed-9ba8-4721afe26263', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047A53016240E3 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6566, NULL, NULL, NULL, N'70f83f89-a089-4f0d-987a-df6e84a2a4b4', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047A850085B698 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6567, NULL, NULL, NULL, N'03e99673-b3ba-45b4-950e-082a8bb7a0e9', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047AB5012F5F3E AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6568, NULL, NULL, NULL, N'cdcc65a5-ea6b-4e6a-965c-89f810b9afec', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047B99000D8859 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6569, NULL, NULL, NULL, N'7addd591-1fca-4e55-9bc4-4185ab625b9d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047BC9010DB7EB AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6570, NULL, NULL, NULL, N'e5de66cc-2e78-4c5d-afed-84f413bc1361', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047BD10128FE77 AS DateTime), NULL, N'ttyyt')
GO
print 'Processed 200 total records'
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6571, NULL, NULL, NULL, N'7fb5a6a5-7bc6-4ea1-94bb-0a9e61726755', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047C190080D8ED AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6572, NULL, NULL, NULL, N'1e8f10a3-65c7-4fb6-8f28-efde113b345c', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047C62015F95C8 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6573, NULL, NULL, NULL, N'517d302f-92c5-4459-a20f-706cadd7fbfe', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047C95007D3EEB AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6574, NULL, NULL, NULL, N'9dae8fd2-476a-4b05-921d-298f00e9815a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047CC900A485D8 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6575, NULL, NULL, NULL, N'a474f573-e938-4343-84af-6df1d9f2e16a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E220171A6F3 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6576, NULL, NULL, NULL, N'78d5a4f4-717a-4475-a757-92157b8b348f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E5400748947 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6577, NULL, NULL, NULL, N'58fa443b-cc10-49a5-a59b-080d84f58285', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E6201063463 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6578, NULL, NULL, NULL, N'44eb33a6-9de3-4b43-b006-9f2b9c93b3fe', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E71001A24B2 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6579, NULL, NULL, NULL, N'7890e0bf-b261-436f-9d88-969693e2b0dd', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E7E017A7437 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6580, NULL, NULL, NULL, N'c7c1c53f-7770-4263-862a-47ead217e3e7', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047E8E0172B598 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6581, NULL, NULL, NULL, N'f8f60742-609f-4c59-a181-9019ecfa16a5', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047F20005B00AD AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6582, NULL, NULL, NULL, N'7f9ae561-b083-4b5d-83f6-021a5137ab77', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047F2E00365967 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6583, NULL, NULL, NULL, N'625f23b1-86d1-4be3-930e-95cacdabff91', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047F4201255575 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6584, NULL, NULL, NULL, N'7f1431ca-e325-44d0-8a4f-60099abbee16', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047F7700678037 AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6585, NULL, NULL, NULL, N'b0a0509b-fda7-4f4c-8d2b-3f3703d04c8f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047FAC0088E062 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6586, NULL, NULL, NULL, N'0cd92cfa-8f47-4a25-9e9f-3b8d6f8dabce', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00048172015C5850 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6587, NULL, NULL, NULL, N'29de9d52-cd6b-47f2-b5ff-4dbd8448b088', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004873600DF3F6B AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6588, NULL, NULL, NULL, N'b400b2e9-2a13-4713-9004-e73c8d93354c', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000487820166884E AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6589, NULL, NULL, NULL, N'29351ce0-9f0f-4f35-84fe-878daccfdde8', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00048B21014FC5FA AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6590, NULL, NULL, NULL, N'aa2ca0a3-6c39-49e3-aabf-c4b264b643ea', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00048C2800A0A9B7 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6591, NULL, NULL, NULL, N'55c98d7f-00d7-4576-811e-608faed2b17b', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00048DCA00A2B210 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6592, NULL, NULL, NULL, N'1bb48f99-18df-48af-9786-9cd51e4c3e9f', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00048FAB0168E7D9 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6593, NULL, NULL, NULL, N'd561233c-8cf9-49cb-855a-e61aa260ae03', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004907600EC8151 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6594, NULL, NULL, NULL, N'9e2ec08d-1994-4b6d-8f5c-b57ccc46bfdf', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000490970080C33D AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6595, NULL, NULL, NULL, N'e32d24b7-e428-4e43-a29c-d2533ee15172', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000490B900BF6D6F AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6596, NULL, NULL, NULL, N'2514c3c6-f26d-4e8c-b405-59a4d40f6f69', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000490E7018938A2 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6597, NULL, NULL, NULL, N'd150ab10-f85d-4f16-ab79-e15db51588c8', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004914A00495CB7 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6598, NULL, NULL, NULL, N'24c5e5e9-f536-4457-b84c-f8f8521c2bff', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004915F0094794B AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6599, NULL, NULL, NULL, N'a4941604-e6d2-44b3-bc3e-9f318225dc4e', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004916C00F756CF AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6600, NULL, NULL, NULL, N'2951f68e-6c61-424e-81d9-2b97004076ab', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004918000148793 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6601, NULL, NULL, NULL, N'42b5aba8-36c3-4d96-8248-e4ca55c590d8', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004918D012AE837 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6602, NULL, NULL, NULL, N'9f4ad995-4718-406e-96ea-20d6709f9623', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004919F009333DD AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6603, NULL, NULL, NULL, N'9e38874f-37dd-4294-9dd3-32958197201c', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000491B20133F2A6 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6604, NULL, NULL, NULL, N'8c77b612-f763-4768-a99b-e51d634303c2', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000492090075A22F AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6605, NULL, NULL, NULL, N'8449e208-b497-4fa9-a6d4-e5100d730a44', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004955A00FF4725 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6606, NULL, NULL, NULL, N'1ced331e-20bd-43d5-b4a1-1ff1eecaa1f0', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000495880167C733 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6607, NULL, NULL, NULL, N'a497b920-fce6-43e3-a1f3-02b0d69dac43', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004959800351411 AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6611, NULL, NULL, NULL, N'2b7269b2-d1b4-4af3-8211-0e0f63664f03', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001D5EB0138B353 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6612, NULL, NULL, NULL, N'e0a88c5b-adcd-43d6-813d-41fa6bae09ca', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001D8D200D8AE30 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6661, NULL, NULL, NULL, N'30a416ca-4b74-44a0-bceb-0113f1c31403', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001ED7300BC19C5 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6711, NULL, NULL, NULL, N'e6ba13a5-ec6e-4115-b6f0-d888dd33abbf', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00102653015D228F AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6712, NULL, NULL, NULL, N'cde012df-cf0e-47e0-8533-9c2bab33b4dc', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0010272600D4FA93 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6713, NULL, NULL, NULL, N'1d09d6f1-7bcf-49fb-ac6c-111814373a01', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0010293300D7F1B5 AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6761, NULL, NULL, NULL, N'e342d7d2-0bb3-4c04-98c0-407fabf4430e', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003044901833B4F AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6762, NULL, NULL, NULL, N'772eeabf-aac9-4fd0-913e-794f5d5279af', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000308AA012FF81B AS DateTime), NULL, N'1')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6763, NULL, NULL, NULL, N'd8c689fb-77d6-4d60-9d96-309fb43404fa', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00030911004A8FED AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6764, NULL, NULL, NULL, N'5b68c41f-4dc1-4d7f-b769-7bf9df9673e4', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003095300CB10AC AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6765, NULL, NULL, NULL, N'26d66ffe-102f-48c3-919c-e4e92086e348', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00030DB4009E34B9 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6766, NULL, NULL, NULL, N'e62050eb-266f-49e9-b5ae-99a09b21c98a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003BE6E009E478C AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6811, NULL, NULL, NULL, N'bdbb8750-b859-4f23-af76-f4f777cbffb9', N'd5586a70-6024-47d0-8141-efe047c5b39e', CAST(0x0004B04C013A4353 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6861, NULL, NULL, NULL, N'5a58ab3f-2ae0-4348-8195-585c0bf4e206', N'8bc0ad53-d244-4263-9f2b-81b8c4c1678f', CAST(0x0004B66100E2BD4C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6911, NULL, NULL, NULL, N'beea4248-8943-4d46-a718-0559f4924ec7', N'feb11ced-f91f-49ef-b91e-109802904193', CAST(0x0004BA94012ADD64 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6961, NULL, NULL, NULL, N'b7c1bae8-3512-4126-af59-a595df2229c0', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00047C70006A30C4 AS DateTime), NULL, N'4455')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6962, NULL, NULL, NULL, N'b8c11ee1-57b4-4b49-8b58-76eab3416690', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000586BD00FAA36C AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (6963, NULL, NULL, NULL, N'693694d3-0de3-43b6-a37b-365e377ab725', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00062F4800A94B54 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7011, NULL, NULL, NULL, N'16bc0ba5-f276-41f2-aa77-c2289c700d31', N'bd58cfee-4839-4a11-86a6-43e57d071c4f', CAST(0x0004CDA1001B6D58 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7061, NULL, NULL, NULL, N'645aff24-d8a2-45a8-87cd-e22eb201dd08', N'81206850-8a82-4554-b814-a751504b48c4', CAST(0x0004EA0D00300E09 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7111, NULL, NULL, NULL, N'be7653f2-9c8b-433f-ba25-6b1342387027', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000565A5001B3300 AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7161, NULL, NULL, NULL, N'48c0eb35-4f5a-4d20-a87e-a07e4b3a5d58', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000099080046056B AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7162, NULL, NULL, NULL, N'b7954895-94d7-46ef-b7db-987056fe23cb', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0000A6E600F33A6D AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7211, NULL, NULL, NULL, N'1d41b539-d944-4179-9025-b1bee551d0bc', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000395D10019D512 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7261, NULL, NULL, NULL, N'8c06da14-d02c-415f-a92d-48fca4d6fcec', N'550f5686-be95-469f-b41c-d70547ce40c4', CAST(0x000375BA00F49921 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7311, NULL, NULL, NULL, N'adbcaa13-bc5f-4c7f-a6a2-40209791bee2', N'313f6129-690b-42b8-b209-123ac0763226', CAST(0x00037CC2010C66DE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7361, NULL, NULL, NULL, N'076a1fd4-9b9e-44df-afa2-6f902369dbde', N'b314f412-0223-4757-a651-21cde6559a51', CAST(0x0003860D017F6F86 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7411, NULL, NULL, NULL, N'd4e06c44-1945-4a5f-8c9f-a2fa8efa6677', N'be4b9bb4-cd97-40e7-aa1f-602e5ce6ba33', CAST(0x0000CB4B00ADD60B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7461, NULL, NULL, NULL, N'9e8e3063-e33d-47f6-9ea1-ebd0fd0b492e', N'76fcaf48-b23d-4259-9e31-92d38ae4753c', CAST(0x0000DF3E00CC84B2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7511, NULL, NULL, NULL, N'ab6f3245-5340-4501-bbe6-2209beb271b9', N'22701867-8281-46fb-8ed4-30f1a7e7bd38', CAST(0x00011C580145D32D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7561, NULL, NULL, NULL, N'abc85503-dd39-46d3-af14-28cc59735187', N'129d6804-35ef-431d-9021-0f208dca9043', CAST(0x000121DA006A58B6 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7611, NULL, NULL, NULL, N'158f7262-9b5f-4192-a4fe-8a4d1d65c3a1', N'ad069489-99a6-4a9a-8849-112bee137cc0', CAST(0x000130B501438950 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7661, NULL, NULL, NULL, N'ce95cb62-b846-445a-b02a-3cfba4079eb9', N'3a8eba82-516c-4a6f-a549-67b389b0cef7', CAST(0x00013BFF0127DCAE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7711, NULL, NULL, NULL, N'08f67554-ed68-4772-9240-ca232aed5372', N'0062f175-1841-4884-be65-446cef84b447', CAST(0x00014D9F00ACDCC4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7761, NULL, NULL, NULL, N'7713783f-18b1-4db2-bfdf-e753958504e6', N'30ed048f-fcb3-49bc-9cd7-f529b030f174', CAST(0x000156CD00D01929 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7811, NULL, NULL, NULL, N'69e2bb3a-00ae-4ea6-a18c-7ec0c00a924a', N'2e8df910-2be3-48b8-8674-953deafd96e3', CAST(0x000185070070E7A4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7861, NULL, NULL, NULL, N'3accb7d5-24ab-4b41-9c24-98e0417241dd', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000071A301491EEE AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7862, NULL, NULL, NULL, N'06a85982-0a1f-4934-ba99-06dcd6e04e10', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0000CAE8017283A4 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7863, NULL, NULL, NULL, N'e767ba0b-eb47-4d41-b262-478d9d61a350', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001BF7500F43424 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7864, NULL, NULL, NULL, N'9ca1b1b8-aa54-4fe4-bb0c-a7d943e2dad0', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002A8BB00B0A4F0 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7865, NULL, NULL, NULL, N'c68330ab-77d3-4284-b6e3-ee51e708a50a', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002B76400DFEE28 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7866, NULL, NULL, NULL, N'bf370c3f-c9f1-42e6-90a3-8b195eeaf6df', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002B7B80025E867 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7867, NULL, NULL, NULL, N'1e83e9da-cfab-486b-b24d-c00b72444c88', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002B7F7012242B5 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7868, NULL, NULL, NULL, N'702ccbe7-69cb-47be-96ef-09357138d0d7', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002B86B00AAF029 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7869, NULL, NULL, NULL, N'55cf3ad6-3f90-4a5f-82fb-3a6a698d6fe7', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0002B91B00B617E0 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7870, NULL, NULL, NULL, N'f5ca94c1-bfbe-4ec4-bbc9-4ee503f4f075', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00039354012732B9 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7871, NULL, NULL, NULL, N'd564d293-0979-45a0-a3a0-54531786b1c5', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0003939B018695CB AS DateTime), NULL, N'123')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7872, NULL, NULL, NULL, N'c76a588b-afa4-4918-ba33-4e3a9532e48d', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x000393EA00DCC6B8 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7911, NULL, NULL, NULL, N'3928b9f8-8c85-425c-9e23-467c2fc38e8c', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00015E7B012818B4 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7912, NULL, NULL, NULL, N'fd0d64bc-2718-4bd5-a5dc-d62812c4ac90', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0001646500CEBAC9 AS DateTime), NULL, N'ttyyt')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (7961, NULL, NULL, NULL, N'a00abf00-6d05-47a0-800e-17d3accdf9b6', N'26729f7f-b960-4790-a7f4-350a44875ba1', CAST(0x00044198018AD793 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8011, NULL, NULL, NULL, N'fe7c17d6-6c99-49d5-971a-18e79b468410', N'28adbd4e-19de-4dc4-b7a2-e2a6239f1d72', CAST(0x000452C60079D657 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8061, NULL, NULL, NULL, N'282937d4-226f-4edc-a40c-fee006515abd', N'2cc2493d-062e-40b2-8215-c9848ca3195a', CAST(0x00045E9D010510DB AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8111, NULL, NULL, NULL, N'0c3ecd07-9ab9-450b-8e84-a8264ba6be38', N'2a2ad084-0b7e-4efc-b1eb-6efd0c4a6a7c', CAST(0x0004657E00DC4DBA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8161, NULL, NULL, NULL, N'9bb69c55-782f-4703-8e9e-81495e4d0382', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x00007298008C5B05 AS DateTime), NULL, N'')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8211, NULL, NULL, NULL, N'475c3ac9-a6ce-4555-aa5e-11e86a86e03a', N'fefbaf5b-4262-4de2-b694-50281d90c938', CAST(0x0000B49B01789CDA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8261, NULL, NULL, NULL, N'f1112724-f569-4129-93e0-3abde464840f', N'43b17a55-6583-45cb-961f-60bcdbe91c7c', CAST(0x00035F150107081C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8311, NULL, NULL, NULL, N'137a917c-02ca-48d8-961b-e786c0d0b0f8', N'9cd35042-98cb-4cf1-97e6-e652818064ad', CAST(0x0003EB7000FFF680 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8361, NULL, NULL, NULL, N'22f69dae-bcda-445e-970e-1ac601aebf63', N'41db33ea-359b-4c98-87ea-9e929d09237d', CAST(0x0003F18A0113B50C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8411, NULL, NULL, NULL, N'1185acf0-c58e-4fff-a548-96ad9f2e20ce', N'8b430c42-0ddc-42eb-8aa1-d083ad58798f', CAST(0x0003FA89011B0047 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8461, NULL, NULL, NULL, N'64eeb74d-8e85-494d-9bd0-c735e847a00a', N'c985b100-c5f4-4032-97cd-d5d44289de6e', CAST(0x00040806003A12A7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8511, NULL, NULL, NULL, N'b285a086-93a3-4c3a-92af-6daddb4f3778', N'27fe6256-0f91-4509-b89f-c0084dda55f7', CAST(0x000423DE0044246E AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8561, NULL, NULL, NULL, N'294d24ca-06f8-4bed-b6e3-9b61965add1e', N'23a6b6cd-0550-48c1-8091-57f1263487c1', CAST(0x000484910080F9CD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8611, NULL, NULL, NULL, N'9926abb0-0b23-442f-b856-30ddfc61640c', N'6e3832f3-d018-4bda-8000-7ebabb15c321', CAST(0x0004968B013AAC69 AS DateTime), NULL, N'3')
GO
print 'Processed 300 total records'
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8661, NULL, NULL, NULL, N'fe1a236e-75d8-4b19-b3f2-959328cc636f', N'e34f7aa1-7aa0-451b-89c4-7566cff93c16', CAST(0x0004A07000AC3FC2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8711, NULL, NULL, NULL, N'84d7b90c-3523-4ca2-a2b5-00d66b85685c', N'f6342529-4e4d-4f40-9b1a-31852b90abf9', CAST(0x0004CD6A00981127 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8761, NULL, NULL, NULL, N'3c868f72-2231-4577-b832-72b3ec289482', N'ca3d143c-47d9-42a4-a461-912434ba5109', CAST(0x00045E4D00256988 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8811, NULL, NULL, NULL, N'43024300-0919-4c0d-a38f-f877a6fb953e', N'8013649e-3645-421d-b9ae-6d5eccf42878', CAST(0x0004BB7D006227D4 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8861, NULL, NULL, NULL, N'1a001356-b4a1-4464-a376-8ae04bf94561', N'8a0dbd81-b2ff-4147-a163-10cb5e22ccaf', CAST(0x0004C77C015D301C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8911, NULL, NULL, NULL, N'86c8d1d0-daf2-436c-bd8e-c638dfae3594', N'acd24304-63be-43a0-a569-636d83bb2601', CAST(0x0003AC1B00E22869 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (8961, NULL, NULL, NULL, N'102e46b2-74d5-4342-9878-bdb4f5cccc0e', N'b7f26f22-7b48-4c08-bf6f-e8cae0236f8b', CAST(0x0003B319008F22AA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9011, NULL, NULL, NULL, N'970d6440-a254-494f-b88a-8903ef96077b', N'15e2efd6-9d89-41b7-b5a3-1b4e612c3aaf', CAST(0x000460950010DBEF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9061, NULL, NULL, NULL, N'd33ecb44-41e7-4611-8cdc-1bf25b7814b7', N'1c30b803-3df8-46ea-84e1-564dd57d0747', CAST(0x0004820600921B5C AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9111, NULL, NULL, NULL, N'ad672afb-12b6-45a1-babc-19eb4051a65c', N'db2ecdb0-936c-4a90-a121-46413ec5b58f', CAST(0x00048CA8004575DD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9161, NULL, NULL, NULL, N'6fde4782-88ec-40a1-9b8d-328bba9127e3', N'519b0d4c-80b8-41b6-8e53-45c44da3aa3d', CAST(0x000495D5006983AE AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9211, NULL, NULL, NULL, N'a05caf80-d1e9-4c56-b3a0-4066e7110177', N'508674c0-9a51-40ed-9eda-2590ba2744a5', CAST(0x0004A26000BCF24A AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9261, NULL, NULL, NULL, N'fc160d77-5427-4a07-9e15-b3c5b8cd9a12', N'27c1abd6-b154-4e3a-9882-363fc8d02606', CAST(0x0004AEF50170C643 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9311, NULL, NULL, NULL, N'76e5a8b6-c6e5-42ca-b0a9-a1137e624e64', N'447285f4-cedb-4f04-8a38-e3830bfdc669', CAST(0x0004C378002E96A7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9361, NULL, NULL, NULL, N'96a887a9-8a53-4a74-8ad5-59283b508ef1', N'b6e49280-b647-4b9c-832d-5c7e3c4fadd3', CAST(0x0004D1DF00729C7D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9411, NULL, NULL, NULL, N'9b1f221d-dc99-4ecf-8d43-61eb2b8e1dfd', N'cd567374-9349-4e31-9af3-a41fbc31b40b', CAST(0x0004D53D00B9B2EC AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9461, NULL, NULL, NULL, N'0b986ca1-45ab-4f4a-9efd-54ee281b8b7b', N'2dea24fe-4275-4a54-9711-0df21aeba353', CAST(0x0004DA750142D884 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9511, NULL, NULL, NULL, N'5969f5c9-b547-4101-8a5a-d56b2ef86ba9', N'55f9323c-1db7-488d-b953-4d4c0d8c94c0', CAST(0x00023D7C00270143 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9561, NULL, NULL, NULL, N'2f5c0f62-94bb-47c8-832c-de8353e9f0e3', N'd3145fb1-ed36-4766-846c-5b2bce6d0d20', CAST(0x00042BBC00767BE7 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9611, NULL, NULL, NULL, N'637e8a27-5a46-4c37-b3e9-79a45d84a0a1', N'c9128872-1361-4a05-816e-33e8ad634c5f', CAST(0x0005A6230048A23B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9661, NULL, NULL, NULL, N'4375985e-9057-41dd-b3c9-6b87b13c0b11', N'274b2c3e-7020-4907-8a12-fb17b61b67cf', CAST(0x0005A9CF01310E82 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9711, NULL, NULL, NULL, N'af21eb28-1b73-4148-8483-e8182df4d627', N'6325db7e-06e4-4fa5-8f95-631663e70597', CAST(0x0000EE4201684196 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9761, NULL, NULL, NULL, N'f4874f85-366e-4a73-b289-68ccc66439a8', N'34d045b7-be9d-4430-9615-8f9c284272d0', CAST(0x0000FBA900057E00 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9811, NULL, NULL, NULL, N'68fea4d6-7e17-41e6-9dcf-0403c60478cf', N'7123e0d9-3029-47a9-984a-fa35265cac73', CAST(0x00010136010007FB AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9861, NULL, NULL, NULL, N'd7a6863b-baec-4988-950e-11ca84608525', N'2f17e264-4324-447d-b12c-9577b575599d', CAST(0x000109DC012D7522 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9911, NULL, NULL, NULL, N'854eb1ba-e63e-43f8-8543-5c687714a253', N'c16cc9e8-ea49-4cbd-a4c2-40912c4fa91a', CAST(0x000111B300149FFF AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (9961, NULL, NULL, NULL, N'a8261075-6660-4727-807a-8454fd36c399', N'c80d9019-6beb-4fcf-8782-2efcf7667ab1', CAST(0x000115C4009CDF6D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10011, NULL, NULL, NULL, N'f6d8f777-74b1-4898-9717-fcf2edea7a82', N'28cfe308-226b-4c86-a1b4-f51a5e8b2867', CAST(0x0001A30E004806B2 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10061, NULL, NULL, NULL, N'8d8087ff-b23c-4090-90df-b979c52a0d61', N'2111c098-bd22-4746-b823-ced23ce6e8c8', CAST(0x0003442D00896FAD AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10111, NULL, NULL, NULL, N'9972aeac-3404-4462-926e-efb06ed15f3a', N'b63e2f8d-635a-41c0-ba7f-e0aec7621dda', CAST(0x00034CCA0118874D AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10161, NULL, NULL, NULL, N'3d6a9a10-1b1e-498f-8fef-09bc50a599e8', N'4a9dd33b-ec53-4c1c-b8f6-8c89467a08ad', CAST(0x00035480008A2B8B AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10211, NULL, NULL, NULL, N'4765dfe5-afce-4b1e-9435-0c3b2b5bc6bc', N'7ffc24f7-b733-4445-a340-eb5a87ca9544', CAST(0x00035E3C015434AA AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10261, NULL, NULL, NULL, N'487a1026-4d9e-4413-9e92-200ee716832c', N'8353fb4f-3b59-47b9-acb9-5b3f42f4c55c', CAST(0x000362B4013F88DB AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10311, NULL, NULL, NULL, N'9d90fcb2-992b-42b0-ae10-97c6477a006e', N'9dc47d27-b570-4efa-be71-98363b21e646', CAST(0x0012026F00FD6A07 AS DateTime), NULL, N'1043215')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10361, NULL, NULL, NULL, N'7d56483c-6c85-4f6d-a288-856066aaf248', N'529d5d36-f54e-4713-bffd-a830b2c50681', CAST(0x0004275200C68530 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10411, NULL, NULL, NULL, N'8fad751c-6d1e-4238-b062-d99c8f19c4b1', N'aacbcd21-5283-428a-9953-17f9d3b985d9', CAST(0x00042F1A004D0781 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10461, NULL, NULL, NULL, N'df96a3b6-17cc-44d6-8406-4c2a2e70aa64', N'ffd25529-948c-431a-bea5-2bfdccaebe4e', CAST(0x000444B40047A8F3 AS DateTime), NULL, N'3')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10511, NULL, NULL, NULL, N'3f1b8517-60e6-4b16-9bba-72d2f1207e37', N'1D5831AD-0FB8-4FE6-902B-9FDA356542D3', CAST(0x0004F16F0030F026 AS DateTime), NULL, N'4665')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10561, NULL, NULL, NULL, N'f9fd2d20-5e9f-4277-9bf1-9c2120893d46', N'3f8bb349-c53f-4e45-8752-d3383764bdc6', CAST(0x0013CB74002ACABA AS DateTime), NULL, N'QA-C')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10562, NULL, NULL, NULL, N'2b276290-f376-42fe-aa9a-355558d9dfc4', N'3f8bb349-c53f-4e45-8752-d3383764bdc6', CAST(0x0013CCFC0165159D AS DateTime), NULL, N'QA-C')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10611, NULL, NULL, NULL, N'ce5946c2-ddce-4937-8d82-c0630edb6a62', N'3f8bb349-c53f-4e45-8752-d3383764bdc6', CAST(0x00141D0E00135DA8 AS DateTime), NULL, N'QA-C')
INSERT [dbo].[LEARNINGSESSION] ([ID], [COURSE_ID], [ENROLLMENT_ID], [LEARNER_ID], [LEARNINGSESSIONID], [UNIQUEUSERGUID], [SESSIONSTARTDATETIME], [SESSIONENDDATETIME], [STRINGCOURSEID]) VALUES (10612, NULL, NULL, NULL, N'e14ed7ae-f5c3-4ca4-9113-8f59db193ae8', N'9dc47d27-b570-4efa-be71-98363b21e646', CAST(0x001476BC009CB0C6 AS DateTime), NULL, N'1043215')
/****** Object:  Table [dbo].[COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSEGROUP](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PARENTCOURSEGROUP_ID] [bigint] NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[ROOTCOURSEGROUP_ID] [bigint] NULL,
	[DESCRIPTION] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__COURSEGROUP__1B0907CE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[COURSEGROUP] ([ID], [NAME], [PARENTCOURSEGROUP_ID], [CUSTOMER_ID], [ROOTCOURSEGROUP_ID], [DESCRIPTION]) VALUES (1, N'OSHA-101 Certification', NULL, 1, NULL, NULL)
INSERT [dbo].[COURSEGROUP] ([ID], [NAME], [PARENTCOURSEGROUP_ID], [CUSTOMER_ID], [ROOTCOURSEGROUP_ID], [DESCRIPTION]) VALUES (3, N'Real Estate', NULL, 1, NULL, NULL)
INSERT [dbo].[COURSEGROUP] ([ID], [NAME], [PARENTCOURSEGROUP_ID], [CUSTOMER_ID], [ROOTCOURSEGROUP_ID], [DESCRIPTION]) VALUES (4, N'Pre-Licensing', 3, 1, NULL, NULL)
INSERT [dbo].[COURSEGROUP] ([ID], [NAME], [PARENTCOURSEGROUP_ID], [CUSTOMER_ID], [ROOTCOURSEGROUP_ID], [DESCRIPTION]) VALUES (5, N'All States', 4, 1, NULL, NULL)
INSERT [dbo].[COURSEGROUP] ([ID], [NAME], [PARENTCOURSEGROUP_ID], [CUSTOMER_ID], [ROOTCOURSEGROUP_ID], [DESCRIPTION]) VALUES (6, N'QA-CourseGroup', NULL, 1, NULL, NULL)
/****** Object:  Table [dbo].[TRAINIINGPLAN]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAINIINGPLAN](
	[ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[COURSE_ID] [bigint] NULL,
 CONSTRAINT [PK_TRAINIINGPLAN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Table [dbo].[REGISTRATIONINVITATION]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REGISTRATIONINVITATION](
	[ID] [bigint] NOT NULL,
	[INVITATIONNAME] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PASSCODE] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ISUNLIMITED] [int] NULL,
	[MAXIMUMREGISTRATION] [int] NULL,
	[MESSAGE] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[NUMBERUTILIZED] [int] NULL,
 CONSTRAINT [PK_REGISTRATIONINVITATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (11, N'MCA', N'abc', 1, 21, N'                        
                 Tathya       ', 1, 22)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (311, N'MBA', N'abcd', 0, 8, N'Tathya', 1, 8)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (411, N'B-TECH', N'abcd', 0, 35, N'HERITAGE', 1, 10)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (611, N'M TECH', N'm123', 0, 500, N'test invitation message', 1, 203)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (711, N'java', N'123', 1, 9999, N'this is atest', 1, 24)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (761, N'MscIT', N'4455', 1, 9999, N'hellow', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (811, N'J2EE', N'abcd', 0, 10, N'Tathya', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (861, N'Health awareness', N'abcd', 0, 50, N'zgzg', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (911, N'SPring MVC', N'ashis', 1, 9999, N'eleting directory E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms
   [delete] Deleting directory E:\lmslocalcodebase\Lms_local_trunk\dist\war
   [delete] Deleting directory E:\lmslocalcodebase\Lms_local_trunk\dist\jars
init:
    [mkdir] Created dir: E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
    [mkdir] Created dir: E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\lib
    [mkdir] Created dir: E:\lmslocalcodebase\Lms_local_trunk\dist\jars
    [mkdir] Created dir: E:\lmslocalcodebase\Lms_local_trunk\dist\war
compile:
    [javac] Compiling 128 source files to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
    [javac] Note: E:\lmslocalcodebase\Lms_local_trunk\src\java\com\softech\vu360\lms\service\impl\TemplateServiceImpl.java uses or overrides a deprecated API.
    [javac] Note: Recompile with -Xlint:deprecation for details.
    [javac] Note: Some input files use unchecked or unsafe operations.
    [javac] Note: Recompile with -Xlint:unchecked for details.
dev:
     [copy] Copying 34 files to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\lib
     [copy] Copying 10 files to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 1 file to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes
     [copy] Copying 84 files to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes\vm
     [copy] Copied 10 empty directories to 1 empty directory under E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms\WEB-INF\classes\vm
     [copy] Copying 258 files to E:\lmslocalcodebase\Lms_local_trunk\dist\vu360-lms
      [jar] Building jar: E:\lmslocalcodebase\Lms_local_trunk\dist\war\vu360-lms.war
BUILD SUCCESSFUL
Total time: 27 seconds
', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (961, N'CCNA', N'369', 1, 9999, N'Invitation for <b>CCNA</b>', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1061, N'ICSC', N'icsc123', 1, 9999, N'<h1>Registration Invitation</h1>
<p>Below are the details of registration invitation. To make any changes, change the field and then click on the ''Save Changes'' button. To cancel and return to the previous screen click on the ''Cancel'' button.</p>
', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1062, N'New Invitation', N'asdfg', 1, 9999, N'test invitation', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1111, N'testtapas', N'1234', 0, 12, N'rerrerereerrere', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1161, N'testtapas12', N'1212', 0, 12, N'ewweweweweew', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1211, N'tapastest', N'1234', 0, 12, N'fdkjkfd kfdkf fk', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1261, N'testtapas', N'erere', 0, 12, N'rtrrt', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1311, N'TstInv1', N'123', 1, 9999, N'this is a test invitation', 1, 0)
INSERT [dbo].[REGISTRATIONINVITATION] ([ID], [INVITATIONNAME], [PASSCODE], [ISUNLIMITED], [MAXIMUMREGISTRATION], [MESSAGE], [CUSTOMER_ID], [NUMBERUTILIZED]) VALUES (1361, N'J2EE', N'gggg', 1, 9999, N'Tathya', 1, 0)
/****** Object:  Table [dbo].[LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNERGROUP](
	[ID] [bigint] NOT NULL,
	[CUSTOMER_ID] [bigint] NOT NULL,
	[NAME] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ORGANIZATIONALGROUP_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_LEARNERGROUP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (1, 1, N'LearnerGroup1', 1)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (2, 1, N'LeanerGroup2', 2)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (3, 1, N'LearnerGroup3', 3)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (311, 1, N'IT', 1)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (361, 1, N'ITES', 11)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (461, 1, N'Costing', 4)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (462, 1, N'Costing', 4)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (463, 1, N'IIJT', 311)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (511, 1, N'Java Swing', 1)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (561, 1, N'lgp1', 8)
INSERT [dbo].[LEARNERGROUP] ([ID], [CUSTOMER_ID], [NAME], [ORGANIZATIONALGROUP_ID]) VALUES (611, 1, N'QA-Group', 2)
/****** Object:  Table [dbo].[LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNERCOURSESTATISTICS](
	[LEARNER_ID] [bigint] NOT NULL,
	[LEARNERENROLLMENT_ID] [bigint] NOT NULL,
	[AVERAGEPOSTTESTSCORE] [float] NULL,
	[AVERAGEQUIZSCORE] [float] NULL,
	[COMPLETED] [bit] NULL,
	[COMPLETIONDATE] [datetime] NULL,
	[FIRSTACCESSDATE] [datetime] NULL,
	[FIRSTPOSTTESTDATE] [datetime] NULL,
	[FIRSTQUIZDATE] [datetime] NULL,
	[HEIGHESTPOSTTESTSCORE] [float] NULL,
	[HIGHESTQUIZSCORE] [float] NULL,
	[LASTACCESSDATE] [datetime] NULL,
	[LASTPOSTTESTDATE] [datetime] NULL,
	[LASTQUIZDATE] [datetime] NULL,
	[LAUNCHESACCRUED] [bigint] NULL,
	[LOWESTPOSTTESTSCORE] [float] NULL,
	[LOWESTQUIZSCORE] [float] NULL,
	[NUMBERPOSTTESTSTAKEN] [bigint] NULL,
	[NUMBERQUIZESTAKEN] [float] NULL,
	[PERCENTCOMPLETE] [bigint] NULL,
	[PRETESTDATE] [datetime] NULL,
	[PRETESTSCORE] [float] NULL,
	[STATUS] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TOTALTIMEINSECONDS] [bigint] NOT NULL,
	[ID] [bigint] NOT NULL,
 CONSTRAINT [PK_LEARNERCOURSESTATISTICS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 1, 35, 40, 1, CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5700000000 AS DateTime), 40, 40, CAST(0x00009B5000000000 AS DateTime), NULL, CAST(0x00009B5500000000 AS DateTime), 12, 40, 40, 2, 2, 100, CAST(0x00009B5300000000 AS DateTime), 33, N'completed', 1000, 1)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x00009B5500000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, N'inprogress', 0, 2)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 3, 34, 40, 0, NULL, CAST(0x00009B5300000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), 40, 40, CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5500000000 AS DateTime), CAST(0x00009B5500000000 AS DateTime), 12, 40, 40, 2, 2, 50, CAST(0x00009B5300000000 AS DateTime), 39, N'inprogress', 100, 3)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 4, 34, 40, 1, CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5300000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), 40, 40, CAST(0x00009B5700000000 AS DateTime), CAST(0x00009B5500000000 AS DateTime), CAST(0x00009B5500000000 AS DateTime), 12, 40, 40, 2, 2, 50, CAST(0x00009B5300000000 AS DateTime), 39, N'inprogress', 1000, 4)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 5, 78, 89, 0, NULL, CAST(0x00009B5300000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), CAST(0x00009B5400000000 AS DateTime), 40, 40, CAST(0x00009B5000000000 AS DateTime), NULL, NULL, 12, 40, 30, 3, 4, 50, CAST(0x00009B5200000000 AS DateTime), 39, N'inprogress', 1000, 5)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 11, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 161)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 62, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 211)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5961, 111, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 261)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5961, 112, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 262)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5611, 161, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 311)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5611, 162, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 312)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5611, 163, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 313)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5661, 211, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 361)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 261, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 411)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5661, 315, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 461)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5515, 361, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 511)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5661, 363, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 512)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5611, 365, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 513)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3812, 362, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 514)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5362, 364, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 515)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 367, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 516)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3827, 366, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 517)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 368, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 518)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4011, 369, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 519)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 370, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 520)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 411, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 561)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 415, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 562)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 414, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 563)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 412, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 564)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 413, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 565)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 419, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 566)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 418, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 567)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 417, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 568)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 416, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 569)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 420, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 570)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 461, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 611)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 465, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 612)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 464, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 613)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 463, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 614)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 462, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 615)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 511, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 661)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 514, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 662)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 515, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 663)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 512, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 664)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 513, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 665)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 518, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 666)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 516, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 667)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 517, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 668)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 519, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 669)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 520, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 670)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 563, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 711)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 562, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 712)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 561, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 713)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 565, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 714)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 564, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 715)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 613, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 761)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 615, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 762)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 614, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 763)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 612, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 764)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 611, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 765)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4961, 665, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 811)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 662, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 812)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 664, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 813)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4711, 661, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 814)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4611, 663, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 815)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 712, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 861)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 711, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 862)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4711, 715, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 863)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 717, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 864)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 714, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 865)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 713, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 866)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4611, 716, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 867)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 722, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 868)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 718, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 869)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4611, 720, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 870)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 719, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 871)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4711, 721, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 872)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 725, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 873)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 727, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 874)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4611, 723, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 875)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4711, 726, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 876)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 724, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 877)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4711, 732, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 878)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3814, 729, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 879)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (4611, 730, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 880)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 728, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 881)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 731, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 882)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5223, 733, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 883)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 734, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 884)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 735, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 885)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 736, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 886)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3911, 762, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 911)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3861, 765, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 912)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (2, 761, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 913)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (1, 763, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 914)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (3711, 764, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 915)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6711, 811, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 961)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6711, 812, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 962)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6761, 862, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1011)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6761, 861, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1012)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6811, 864, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1013)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6811, 863, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1014)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6861, 911, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1061)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6513, 961, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1111)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5963, 1012, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1161)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5964, 1013, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1162)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (5611, 1011, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1163)
INSERT [dbo].[LEARNERCOURSESTATISTICS] ([LEARNER_ID], [LEARNERENROLLMENT_ID], [AVERAGEPOSTTESTSCORE], [AVERAGEQUIZSCORE], [COMPLETED], [COMPLETIONDATE], [FIRSTACCESSDATE], [FIRSTPOSTTESTDATE], [FIRSTQUIZDATE], [HEIGHESTPOSTTESTSCORE], [HIGHESTQUIZSCORE], [LASTACCESSDATE], [LASTPOSTTESTDATE], [LASTQUIZDATE], [LAUNCHESACCRUED], [LOWESTPOSTTESTSCORE], [LOWESTQUIZSCORE], [NUMBERPOSTTESTSTAKEN], [NUMBERQUIZESTAKEN], [PERCENTCOMPLETE], [PRETESTDATE], [PRETESTSCORE], [STATUS], [TOTALTIMEINSECONDS], [ID]) VALUES (6513, 1061, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, N'notstarted', 0, 1211)
/****** Object:  Table [dbo].[LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LEARNERPROFILE](
	[ID] [bigint] NOT NULL,
	[LEARNER_ID] [bigint] NOT NULL,
	[ADDRESS_ID] [bigint] NOT NULL,
	[MOBILEPHONE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OFFICEPHONE] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OFFICEPHONEEXT] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LEARNERPROFILE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (1, 1, 1, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (2, 2, 2, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3711, 3711, 3711, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3761, 3761, 3761, N'123433444', N'1234567890', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3811, 3811, 3811, N'1234567890', N'(123)456-7890', N'999999')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3812, 3812, 3812, N'898989', N'8888', N'8888')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3813, 3813, 3813, N'1111', N'11115555', N'1111')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3814, 3814, 3814, N'5555', N'5555aaaa', N'5555')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3818, 3818, 3818, N'6666', N'6666', N'6666')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3821, 3821, 3821, N'91254586', N'022-2145 4567', N'567')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3823, 3823, 3823, N'96565656', N'044 5869 4561', N'1456')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3824, 3824, 3824, N'93652482', N'0101 9856 2345', N'895')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3826, 3826, 3826, N'9632587410', N'', N'011')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3827, 3827, 3827, N'09800054261a', N'0412-5623 7894', N'5689')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3861, 3861, 3861, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3911, 3911, 3911, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (3961, 3961, 3961, N'87567567', N'5876875', N'87')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4011, 4011, 4011, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4111, 4111, 4111, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4161, 4161, 4161, N'12345', N'12345', N'12')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4162, 4162, 4162, N'12345', N'12345', N'12')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4261, 4261, 4261, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4311, 4311, 4311, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4361, 4361, 4361, N'', N'123456', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4411, 4411, 4411, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4611, 4611, 4611, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4661, 4661, 4661, N'221', N'25738041', N'442')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4711, 4711, 4711, N'9231552253', N'12345678', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4761, 4761, 4761, N'988988988', N'12345678', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4811, 4811, 4811, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4861, 4861, 4861, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4862, 4862, 4862, N'988988988', N'12345678', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4911, 4911, 4911, N'988988988', N'12345678', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4961, 4961, 4961, N'ssss', N'ssss', N'ssss')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (4962, 4962, 4962, N'1?', N'1?', N'1?')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5013, 5013, 5013, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5061, 5061, 5061, N'988988988', N'12345678', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5111, 5111, 5111, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5112, 5112, 5112, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5161, 5161, 5161, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5162, 5162, 5162, N'1234-6567989', N'1234-6567989', N'1234')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5163, 5163, 5163, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5164, 5164, 5164, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5165, 5165, 5165, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5211, 5211, 5211, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5212, 5212, 5212, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5213, 5213, 5213, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5214, 5214, 5214, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5215, 5215, 5215, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5216, 5216, 5216, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5217, 5217, 5217, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5218, 5218, 5218, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5219, 5219, 5219, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5220, 5220, 5220, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5221, 5221, 5221, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5222, 5222, 5222, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5223, 5223, 5223, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5224, 5224, 5224, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5261, 5261, 5261, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5361, 5361, 5361, N'9883188480', N'033-4000-1234', N'123')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5362, 5362, 5362, N'////', N'////', N'////')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5363, 5363, 5363, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5411, 5411, 5411, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5412, 5412, 5412, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5413, 5413, 5413, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5414, 5414, 5414, N'1234-6567989', N'', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5415, 5415, 5415, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5416, 5416, 5416, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5417, 5417, 5417, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5418, 5418, 5418, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5419, 5419, 5419, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5420, 5420, 5420, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5461, 5461, 5461, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5462, 5462, 5462, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5512, 5512, 5512, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5513, 5513, 5513, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5514, 5514, 5514, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5515, 5515, 5515, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5561, 5561, 5561, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5611, 5611, 5611, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5661, 5661, 5661, N'1111111111', N'1111111111', N'1111111111')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5711, 5711, 5711, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5712, 5712, 5712, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5713, 5713, 5713, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5761, 5761, 5761, N'1234-6567989', N'', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5762, 5762, 5762, N'1234-6567989', N'1234-6567989', N'1234')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5811, 5811, 5811, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5812, 5812, 5812, N'1234-6567989', N'', N'1234')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5813, 5813, 5813, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5861, 5861, 5861, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5911, 5911, 5911, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5961, 5961, 5961, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5962, 5962, 5962, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5963, 5963, 5963, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (5964, 5964, 5964, N'1234-6567989', N'1234-6567989', N'5678')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6261, 6261, 6261, N'1234567890', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6262, 6262, 6262, N'1234567890', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6263, 6263, 6263, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6311, 6311, 6311, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6361, 6361, 6361, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6412, 6412, 6412, N'', NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6461, 6461, 6461, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6511, 6511, 6511, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6512, 6512, 6512, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6513, 6513, 6513, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6561, 6561, 6561, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6562, 6562, 6562, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6563, 6563, 6563, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6564, 6564, 6564, N'', NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6611, 6611, 6611, NULL, NULL, NULL)
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6661, 6661, 6661, N'', N'', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6711, 6711, 6711, N'123456', N'033-217-8041', N'241')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6761, 6761, 6761, N'9830905671', N'033-25738041', N'228')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6811, 6811, 6811, N'9231515035', N'03325705006', N'')
INSERT [dbo].[LEARNERPROFILE] ([ID], [LEARNER_ID], [ADDRESS_ID], [MOBILEPHONE], [OFFICEPHONE], [OFFICEPHONEEXT]) VALUES (6861, 6861, 6861, N'', N'', N'')
/****** Object:  Table [dbo].[TRAINIINGPLANASSIGNMENT]    Script Date: 02/03/2009 20:12:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLANASSIGNMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRAINIINGPLANASSIGNMENT](
	[ID] [bigint] NOT NULL,
	[TRAINIINGPLAN_ID] [bigint] NULL,
	[LEARNERENROLLMENT_ID] [bigint] NULL,
 CONSTRAINT [PK_TRAINIINGPLANASSIGNMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
END
GO
/****** Object:  Default [DF_LEARNINGSESSION_STRINGCOURSEID]    Script Date: 02/03/2009 20:12:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_LEARNINGSESSION_STRINGCOURSEID]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
Begin
ALTER TABLE [dbo].[LEARNINGSESSION] ADD  CONSTRAINT [DF_LEARNINGSESSION_STRINGCOURSEID]  DEFAULT ('') FOR [STRINGCOURSEID]

End
GO
/****** Object:  Default [DF_SURVEYQUESTION_DROPDOWNTF]    Script Date: 02/03/2009 20:12:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SURVEYQUESTION_DROPDOWNTF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
Begin
ALTER TABLE [dbo].[SURVEYQUESTION] ADD  CONSTRAINT [DF_SURVEYQUESTION_DROPDOWNTF]  DEFAULT ((0)) FOR [DROPDOWNTF]

End
GO
/****** Object:  Default [DF_SURVEYQUESTION_UNLIMITEDTF]    Script Date: 02/03/2009 20:12:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_SURVEYQUESTION_UNLIMITEDTF]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
Begin
ALTER TABLE [dbo].[SURVEYQUESTION] ADD  CONSTRAINT [DF_SURVEYQUESTION_UNLIMITEDTF]  DEFAULT ((0)) FOR [UNLIMITEDTF]

End
GO
/****** Object:  ForeignKey [LANGUAGE_COURSE]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LANGUAGE_COURSE]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSE]'))
ALTER TABLE [dbo].[COURSE]  WITH CHECK ADD  CONSTRAINT [LANGUAGE_COURSE] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[LANGUAGE] ([ID])
GO
/****** Object:  ForeignKey [COURSEGROUP_ROOTCOURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSEGROUP_ROOTCOURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP]  WITH CHECK ADD  CONSTRAINT [COURSEGROUP_ROOTCOURSEGROUP] FOREIGN KEY([ROOTCOURSEGROUP_ID])
REFERENCES [dbo].[COURSEGROUP] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_COURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_COURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_COURSEGROUP] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [FK_COURSEGROUP_PARENTCOURSEGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_COURSEGROUP_PARENTCOURSEGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSEGROUP]'))
ALTER TABLE [dbo].[COURSEGROUP]  WITH CHECK ADD  CONSTRAINT [FK_COURSEGROUP_PARENTCOURSEGROUP] FOREIGN KEY([PARENTCOURSEGROUP_ID])
REFERENCES [dbo].[COURSEGROUP] ([ID])
GO
/****** Object:  ForeignKey [BILLINGADDRESS_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[BILLINGADDRESS_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [BILLINGADDRESS_CUSTOMER] FOREIGN KEY([BILLINGADDRESS_ID])
REFERENCES [dbo].[ADDRESS] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_BRAND] FOREIGN KEY([BRAND_ID])
REFERENCES [dbo].[BRAND] ([ID])
GO
/****** Object:  ForeignKey [FK_DISTRIBUTOR_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DISTRIBUTOR_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_DISTRIBUTOR_CUSTOMER] FOREIGN KEY([DISTRIBUTOR_ID])
REFERENCES [dbo].[DISTRIBUTOR] ([ID])
GO
/****** Object:  ForeignKey [SHIPPINGADDRESS_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SHIPPINGADDRESS_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMER]'))
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [SHIPPINGADDRESS_CUSTOMER] FOREIGN KEY([SHIPPINGADDRESS_ID])
REFERENCES [dbo].[ADDRESS] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_CUSTOMERENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_CUSTOMERENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT]'))
ALTER TABLE [dbo].[CUSTOMERENTITLEMENT]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_CUSTOMERENTITLEMENT] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [DISTRIBUTOR_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[DISTRIBUTOR]'))
ALTER TABLE [dbo].[DISTRIBUTOR]  WITH CHECK ADD  CONSTRAINT [DISTRIBUTOR_BRAND] FOREIGN KEY([BRAND_ID])
REFERENCES [dbo].[BRAND] ([ID])
GO
/****** Object:  ForeignKey [DISTRIBUTORGROUP_BRAND]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP_BRAND]') AND parent_object_id = OBJECT_ID(N'[dbo].[DISTRIBUTORGROUP]'))
ALTER TABLE [dbo].[DISTRIBUTORGROUP]  WITH CHECK ADD  CONSTRAINT [DISTRIBUTORGROUP_BRAND] FOREIGN KEY([BRAND_ID])
REFERENCES [dbo].[BRAND] ([ID])
GO
/****** Object:  ForeignKey [LEARNER_CUSTOMER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_CUSTOMER]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNER]'))
ALTER TABLE [dbo].[LEARNER]  WITH CHECK ADD  CONSTRAINT [LEARNER_CUSTOMER] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [VU360USER_LEARNER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_LEARNER]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNER]'))
ALTER TABLE [dbo].[LEARNER]  WITH CHECK ADD  CONSTRAINT [VU360USER_LEARNER] FOREIGN KEY([VU360USER_ID])
REFERENCES [dbo].[VU360USER] ([ID])
GO
/****** Object:  ForeignKey [LEARNER_LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERCOURSESTATISTICS]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]'))
ALTER TABLE [dbo].[LEARNERCOURSESTATISTICS]  WITH CHECK ADD  CONSTRAINT [LEARNER_LEARNERCOURSESTATISTICS] FOREIGN KEY([LEARNER_ID])
REFERENCES [dbo].[LEARNER] ([ID])
GO
/****** Object:  ForeignKey [LEARNERENROLMENT_LEARNERCOURSESTATISTICS]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLMENT_LEARNERCOURSESTATISTICS]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERCOURSESTATISTICS]'))
ALTER TABLE [dbo].[LEARNERCOURSESTATISTICS]  WITH CHECK ADD  CONSTRAINT [LEARNERENROLMENT_LEARNERCOURSESTATISTICS] FOREIGN KEY([LEARNERENROLLMENT_ID])
REFERENCES [dbo].[LEARNERENROLLMENT] ([ID])
GO
/****** Object:  ForeignKey [COURSE_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT]  WITH CHECK ADD  CONSTRAINT [COURSE_LEARNERENROLLMENT] FOREIGN KEY([COURSE_ID])
REFERENCES [dbo].[COURSE] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMERENROLLMENT_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENROLLMENT_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT]  WITH CHECK ADD  CONSTRAINT [CUSTOMERENROLLMENT_LEARNERENROLLMENT] FOREIGN KEY([CUSTOMERENTITLEMENT_ID])
REFERENCES [dbo].[CUSTOMERENTITLEMENT] ([ID])
GO
/****** Object:  ForeignKey [LEARNER_LEARNERENROLLMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERENROLLMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT]  WITH CHECK ADD  CONSTRAINT [LEARNER_LEARNERENROLLMENT] FOREIGN KEY([LEARNER_ID])
REFERENCES [dbo].[LEARNER] ([ID])
GO
/****** Object:  ForeignKey [LEARNERENROLLMENT_ORGGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT_ORGGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT]'))
ALTER TABLE [dbo].[LEARNERENROLLMENT]  WITH CHECK ADD  CONSTRAINT [LEARNERENROLLMENT_ORGGROUPENTITLEMENT] FOREIGN KEY([ORGGROUPENTITLEMENT_ID])
REFERENCES [dbo].[ORGANIZATIONALGROUPENTITLEMENT] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_LEARNERGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]'))
ALTER TABLE [dbo].[LEARNERGROUP]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_LEARNERGROUP] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [ORGANIZATIONALGROUP_LEARNERGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP_LEARNERGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERGROUP]'))
ALTER TABLE [dbo].[LEARNERGROUP]  WITH CHECK ADD  CONSTRAINT [ORGANIZATIONALGROUP_LEARNERGROUP] FOREIGN KEY([ORGANIZATIONALGROUP_ID])
REFERENCES [dbo].[ORGANIZATIONALGROUP] ([ID])
GO
/****** Object:  ForeignKey [ADDRESS_LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ADDRESS_LEARNERPROFILE]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]'))
ALTER TABLE [dbo].[LEARNERPROFILE]  WITH CHECK ADD  CONSTRAINT [ADDRESS_LEARNERPROFILE] FOREIGN KEY([ADDRESS_ID])
REFERENCES [dbo].[ADDRESS] ([ID])
GO
/****** Object:  ForeignKey [LEARNER_LEARNERPROFILE]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNERPROFILE]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNERPROFILE]'))
ALTER TABLE [dbo].[LEARNERPROFILE]  WITH CHECK ADD  CONSTRAINT [LEARNER_LEARNERPROFILE] FOREIGN KEY([LEARNER_ID])
REFERENCES [dbo].[LEARNER] ([ID])
GO
/****** Object:  ForeignKey [COURSE_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[COURSE_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION]  WITH CHECK ADD  CONSTRAINT [COURSE_LEARNINGSESSION] FOREIGN KEY([COURSE_ID])
REFERENCES [dbo].[COURSE] ([ID])
GO
/****** Object:  ForeignKey [LEARNER_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNER_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION]  WITH CHECK ADD  CONSTRAINT [LEARNER_LEARNINGSESSION] FOREIGN KEY([LEARNER_ID])
REFERENCES [dbo].[LEARNER] ([ID])
GO
/****** Object:  ForeignKey [LEARNERENROLLMENT_LEARNINGSESSION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LEARNERENROLLMENT_LEARNINGSESSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LEARNINGSESSION]'))
ALTER TABLE [dbo].[LEARNINGSESSION]  WITH CHECK ADD  CONSTRAINT [LEARNERENROLLMENT_LEARNINGSESSION] FOREIGN KEY([ENROLLMENT_ID])
REFERENCES [dbo].[LEARNERENROLLMENT] ([ID])
GO
/****** Object:  ForeignKey [VU360USER_LMSADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_LMSADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSADMINISTRATOR]'))
ALTER TABLE [dbo].[LMSADMINISTRATOR]  WITH CHECK ADD  CONSTRAINT [VU360USER_LMSADMINISTRATOR] FOREIGN KEY([VU360USER_ID])
REFERENCES [dbo].[VU360USER] ([ID])
GO
/****** Object:  ForeignKey [LMSFEATURE_LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LMSFEATURE_LMSPERMISSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]'))
ALTER TABLE [dbo].[LMSPERMISSION]  WITH CHECK ADD  CONSTRAINT [LMSFEATURE_LMSPERMISSION] FOREIGN KEY([FEATURE_ID])
REFERENCES [dbo].[LMSFEATURE] ([ID])
GO
/****** Object:  ForeignKey [LMSROLE_LMSPERMISSION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[LMSROLE_LMSPERMISSION]') AND parent_object_id = OBJECT_ID(N'[dbo].[LMSPERMISSION]'))
ALTER TABLE [dbo].[LMSPERMISSION]  WITH CHECK ADD  CONSTRAINT [LMSROLE_LMSPERMISSION] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[LMSROLE] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_ORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_ORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_ORGANIZATIONALGROUP] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP]  WITH CHECK ADD  CONSTRAINT [FK_ORGANIZATIONALGROUP_PARENTORGANIZATIONALGROUP] FOREIGN KEY([PARENTORGGROUP_ID])
REFERENCES [dbo].[ORGANIZATIONALGROUP] ([ID])
GO
/****** Object:  ForeignKey [FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUP]  WITH CHECK ADD  CONSTRAINT [FK_ORGANIZATIONALGROUP_ROOTORGANIZATIONALGROUP] FOREIGN KEY([ROOTORGGROUP_ID])
REFERENCES [dbo].[ORGANIZATIONALGROUP] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT]  WITH CHECK ADD  CONSTRAINT [CUSTOMERENTITLEMENT_ORGANIZATIONALGROUPENTITLEMENT] FOREIGN KEY([CUSTOMERENTITLEMENT_ID])
REFERENCES [dbo].[CUSTOMERENTITLEMENT] ([ID])
GO
/****** Object:  ForeignKey [ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORGANIZATIONALGROUPENTITLEMENT]'))
ALTER TABLE [dbo].[ORGANIZATIONALGROUPENTITLEMENT]  WITH CHECK ADD  CONSTRAINT [ORGANIZATIONALGROUP_ORGANIZATIONALGROUPENTITLEMENT] FOREIGN KEY([ORGANIZATIONALGROUP_ID])
REFERENCES [dbo].[ORGANIZATIONALGROUP] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_REGISTRATIONINVITATION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_REGISTRATIONINVITATION]') AND parent_object_id = OBJECT_ID(N'[dbo].[REGISTRATIONINVITATION]'))
ALTER TABLE [dbo].[REGISTRATIONINVITATION]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_REGISTRATIONINVITATION] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [FK_SURVEYANSWER_SURVEYQUESTION]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SURVEYANSWER_SURVEYQUESTION]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYANSWER]'))
ALTER TABLE [dbo].[SURVEYANSWER]  WITH CHECK ADD  CONSTRAINT [FK_SURVEYANSWER_SURVEYQUESTION] FOREIGN KEY([SURVEYQUESTION_ID])
REFERENCES [dbo].[SURVEYQUESTION] ([ID])
GO
/****** Object:  ForeignKey [FK_SURVEYQUESTION_SURVEY]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SURVEYQUESTION_SURVEY]') AND parent_object_id = OBJECT_ID(N'[dbo].[SURVEYQUESTION]'))
ALTER TABLE [dbo].[SURVEYQUESTION]  WITH CHECK ADD  CONSTRAINT [FK_SURVEYQUESTION_SURVEY] FOREIGN KEY([SURVEY_ID])
REFERENCES [dbo].[SURVEY] ([ID])
GO
/****** Object:  ForeignKey [SurveyResult_Survey]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult_Survey]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResult]'))
ALTER TABLE [dbo].[SurveyResult]  WITH CHECK ADD  CONSTRAINT [SurveyResult_Survey] FOREIGN KEY([Survey_ID])
REFERENCES [dbo].[SURVEY] ([ID])
GO
/****** Object:  ForeignKey [SurveyResult_VU360USER]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResult_VU360USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResult]'))
ALTER TABLE [dbo].[SurveyResult]  WITH CHECK ADD  CONSTRAINT [SurveyResult_VU360USER] FOREIGN KEY([VU360User_ID])
REFERENCES [dbo].[VU360USER] ([ID])
GO
/****** Object:  ForeignKey [SurveyResultAnswer_SurveyAnswer]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer_SurveyAnswer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]'))
ALTER TABLE [dbo].[SurveyResultAnswer]  WITH CHECK ADD  CONSTRAINT [SurveyResultAnswer_SurveyAnswer] FOREIGN KEY([SurveyAnswer_ID])
REFERENCES [dbo].[SURVEYANSWER] ([ID])
GO
/****** Object:  ForeignKey [SurveyResultAnswer_SurveyResult]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer_SurveyResult]') AND parent_object_id = OBJECT_ID(N'[dbo].[SurveyResultAnswer]'))
ALTER TABLE [dbo].[SurveyResultAnswer]  WITH CHECK ADD  CONSTRAINT [SurveyResultAnswer_SurveyResult] FOREIGN KEY([SurveyResult_ID])
REFERENCES [dbo].[SurveyResult] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_TRAINIINGPLAN]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_TRAINIINGPLAN]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN]'))
ALTER TABLE [dbo].[TRAINIINGPLAN]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_TRAINIINGPLAN] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAINIINGPLANASSIGNMENT]'))
ALTER TABLE [dbo].[TRAINIINGPLANASSIGNMENT]  WITH CHECK ADD  CONSTRAINT [TRAINIINGPLAN_TRAINIINGPLANASSIGNMENT] FOREIGN KEY([TRAINIINGPLAN_ID])
REFERENCES [dbo].[TRAINIINGPLAN] ([ID])
GO
/****** Object:  ForeignKey [CUSTOMER_TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMER_TRAININGADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]'))
ALTER TABLE [dbo].[TRAININGADMINISTRATOR]  WITH CHECK ADD  CONSTRAINT [CUSTOMER_TRAININGADMINISTRATOR] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
/****** Object:  ForeignKey [VU360USER_TRAININGADMINISTRATOR]    Script Date: 02/03/2009 20:12:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[VU360USER_TRAININGADMINISTRATOR]') AND parent_object_id = OBJECT_ID(N'[dbo].[TRAININGADMINISTRATOR]'))
ALTER TABLE [dbo].[TRAININGADMINISTRATOR]  WITH CHECK ADD  CONSTRAINT [VU360USER_TRAININGADMINISTRATOR] FOREIGN KEY([VU360USER_ID])
REFERENCES [dbo].[VU360USER] ([ID])
GO
