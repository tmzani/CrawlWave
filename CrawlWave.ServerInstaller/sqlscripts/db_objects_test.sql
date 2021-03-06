use [CrawlWaveTest]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SW_QD_QueryDetails_SW_QR_Query]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SW_QD_QueryDetails] DROP CONSTRAINT FK_SW_QD_QueryDetails_SW_QR_Query
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SW_QR_Query_SW_UR_User]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SW_QR_Query] DROP CONSTRAINT FK_SW_QR_Query_SW_UR_User
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_client_history_cw_client]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_client_history] DROP CONSTRAINT FK_cw_client_history_cw_client
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_banned_host_cw_host]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_banned_host] DROP CONSTRAINT FK_cw_banned_host_cw_host
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_robot_cw_host]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_robot] DROP CONSTRAINT FK_cw_robot_cw_host
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_url_cw_host]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_url] DROP CONSTRAINT FK_cw_url_cw_host
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_link_graph_cw_url]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_link_graph] DROP CONSTRAINT FK_cw_link_graph_cw_url
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_url_data_cw_url]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_url_data] DROP CONSTRAINT FK_cw_url_data_cw_url
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_url_word_cw_url]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_url_word] DROP CONSTRAINT FK_cw_url_word_cw_url
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_SW_QD_QueryDetails_cw_url]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[SW_QD_QueryDetails] DROP CONSTRAINT FK_SW_QD_QueryDetails_cw_url
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_client_cw_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_client] DROP CONSTRAINT FK_cw_client_cw_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_cw_url_word_cw_word]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[cw_url_word] DROP CONSTRAINT FK_cw_url_word_cw_word
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fn_CR_CRCStrUnique]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fn_CR_CRCStrUnique]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fn_DO_DateOnly]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fn_DO_DateOnly]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_CheckIfThereAreMoreResults]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_CheckIfThereAreMoreResults]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryAndReturnQueryID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryAndReturnQueryID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryDetailsPerEvaluation]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryDetailsPerEvaluation]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryDetailsPerSearch]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryDetailsPerSearch]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryDetailsPerSelection]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryDetailsPerSelection]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryPerCloseQuery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryPerCloseQuery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_FillQueryWithMaxRank]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_FillQueryWithMaxRank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetAlreadyExistingQueryResults]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetAlreadyExistingQueryResults]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetDataOfURL]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetDataOfURL]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetMaxRank]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetMaxRank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetMaxRankOfSpecifiedQuery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetMaxRankOfSpecifiedQuery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetMaxShowOrderForASpecificQueryID]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetMaxShowOrderForASpecificQueryID]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_GetProcessedQueryOfQuery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_GetProcessedQueryOfQuery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_askQuery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_askQuery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_createUser]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_createUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_loginUser]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SW_loginUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_delete_banned_host]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_delete_banned_host]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_delete_server]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_delete_server]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_delete_url_out_links]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_delete_url_out_links]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_delete_url_to_crawl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_delete_url_to_crawl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_delete_url_words]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_delete_url_words]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_banned_host]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_banned_host]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_client]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_client]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_client_history]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_client_history]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_client_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_client_update]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_host]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_host]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_link_graph]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_link_graph]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_server]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_server]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_statistic]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_statistic]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_url]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_url]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_url_to_crawl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_url_to_crawl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_url_word]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_url_word]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_insert_word]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_insert_word]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_mark_url_as_assigned]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_mark_url_as_assigned]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_banned_host_names]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_banned_host_names]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_banned_hosts]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_banned_hosts]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_client_versions]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_client_versions]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_db_size]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_db_size]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_ready_urls]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_ready_urls]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_ready_urls_to_refresh]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_ready_urls_to_refresh]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_robot]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_robot]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_robots]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_robots]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_server_statistics]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_server_statistics]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_servers]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_servers]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_updated_version]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_updated_version]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_url_data]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_url_data]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_url_for_word_extraction]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_url_for_word_extraction]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_url_to_crawl_count]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_url_to_crawl_count]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_urls_to_crawl]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_urls_to_crawl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_user_authentication]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_user_authentication]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_user_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_user_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_user_statistic]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_user_statistic]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_user_statistics_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_user_statistics_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_select_words]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_select_words]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_client]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_client]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_client_last_active]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_client_last_active]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_client_statistics]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_client_statistics]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_or_insert_robot]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_or_insert_robot]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_url]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_url]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_url_data]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_url_data]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_update_url_data_last_process]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[cw_update_url_data_last_process]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_CheckUser]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_CheckUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_ConnectWord]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_ConnectWord]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_DeleteRank]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_DeleteRank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_FindWordAA]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_FindWordAA]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_GetURLData]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_GetURLData]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_NewQuery]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_NewQuery]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_NewUser]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_NewUser]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectGreekInLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectGreekInLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectGreekOutLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectGreekOutLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectGreekURLIDs]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectGreekURLIDs]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectInLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectInLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectNumberOfGreekInLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectNumberOfGreekInLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectNumberOfGreekOutLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectNumberOfGreekOutLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectNumberOfInLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectNumberOfInLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectNumberOfOutLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectNumberOfOutLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectOutLinks]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectOutLinks]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectRank]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectRank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_SelectURLsToWordProc]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_SelectURLsToWordProc]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_TestInsert]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_TestInsert]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_UnconnectURLFromUrlLinkWord]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_UnconnectURLFromUrlLinkWord]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_UpdateRank]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_UpdateRank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_SW_UrlHasProcessedWords]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_SW_UrlHasProcessedWords]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_QD_QueryDetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SW_QD_QueryDetails]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_QR_Query]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SW_QR_Query]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_RK_Rank]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SW_RK_Rank]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SW_UR_User]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SW_UR_User]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_banned_host]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_banned_host]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_client]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_client]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_client_history]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_client_history]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_client_update]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_client_update]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_global_settings]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_global_settings]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_host]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_host]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_link_graph]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_link_graph]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_robot]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_robot]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_server]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_server]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_statistic]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_statistic]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_url]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_url]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_url_data]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_url_data]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_url_history]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_url_history]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_url_to_crawl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_url_to_crawl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_url_word]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_url_word]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cw_word]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cw_word]
GO

CREATE TABLE [dbo].[SW_QD_QueryDetails] (
	[SWQD_AA] [int] IDENTITY (1, 1) NOT NULL ,
	[SWQD_QueryID] [int] NOT NULL ,
	[SWQD_URLID] [int] NOT NULL ,
	[SWQD_Title] [nvarchar] (100) COLLATE Greek_CI_AS NOT NULL ,
	[SWQD_Snapshot] [nvarchar] (500) COLLATE Greek_CI_AS NOT NULL ,
	[SWQD_ShowOrder] [int] NOT NULL ,
	[SWQD_SelectedOrder] [int] NULL ,
	[SWQD_Satisfaction] [tinyint] NULL ,
	[SWQD_PercentSuccess] [numeric](28, 10) NULL ,
	[SWQD_DateSelected] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SW_QR_Query] (
	[SWQR_AA] [int] IDENTITY (1, 1) NOT NULL ,
	[SWQR_OriginalQuery] [varchar] (500) COLLATE Greek_CI_AS NOT NULL ,
	[SWQR_ProcessedQuery] [varchar] (500) COLLATE Greek_CI_AS NULL ,
	[SWQR_SearchSortMethod] [tinyint] NULL ,
	[SWQR_PersonalizationMethodTriedToPerform] [tinyint] NULL ,
	[SWQR_PersonalizationMethod] [tinyint] NULL ,
	[SWQR_UserAA] [int] NOT NULL ,
	[SWQR_DateAsked] [datetime] NOT NULL ,
	[SWQR_DateCloseQuery] [datetime] NULL ,
	[SWQR_MaxRank] [numeric](28, 10) NULL 
) ON [SECONDARY]
GO

CREATE TABLE [dbo].[SW_RK_Rank] (
	[SWRK_TYPEID] [int] NOT NULL ,
	[SWRK_URLID] [int] NOT NULL ,
	[SWRK_RANK] [numeric](28, 10) NOT NULL ,
	[SWRK_UPDATED] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[SW_UR_User] (
	[SWUR_AA] [int] IDENTITY (1, 1) NOT NULL ,
	[SWUR_UserName] [char] (41) COLLATE Greek_CI_AS NOT NULL ,
	[SWUR_PasswordPIN] [char] (36) COLLATE Greek_CI_AS NOT NULL ,
	[SWUR_LastAccessed] [datetime] NOT NULL 
) ON [SECONDARY]
GO

CREATE TABLE [dbo].[cw_banned_host] (
	[cwbh_host_id] [uniqueidentifier] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_client] (
	[cwcl_client_id] [uniqueidentifier] NOT NULL ,
	[cwcl_user_id] [int] NOT NULL ,
	[cwcl_info_cpu] [nvarchar] (50) COLLATE Greek_CI_AS NULL ,
	[cwcl_info_ram] [smallint] NULL ,
	[cwcl_info_hdd] [int] NULL ,
	[cwcl_info_net] [tinyint] NULL ,
	[cwcl_urls_assigned] [bigint] NOT NULL ,
	[cwcl_urls_returned] [bigint] NOT NULL ,
	[cwcl_last_active] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_client_history] (
	[cwch_event_id] [bigint] NOT NULL ,
	[cwch_client_id] [uniqueidentifier] NULL ,
	[cwch_timestamp] [smalldatetime] NOT NULL ,
	[cwch_event_type] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_client_update] (
	[cwcu_client_update_version] [nchar] (15) COLLATE Greek_CI_AS NOT NULL ,
	[cwcu_client_update_image] [image] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_global_settings] (
	[cwgs_setting_id] [int] IDENTITY (1, 1) NOT NULL ,
	[cwgs_setting_name] [nvarchar] (50) COLLATE Greek_CI_AS NOT NULL ,
	[cwgs_app_name] [nvarchar] (50) COLLATE Greek_CI_AS NULL ,
	[cwgs_value] [sql_variant] NOT NULL ,
	[cwgs_last_changed] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_host] (
	[cwho_host_id] [uniqueidentifier] NOT NULL ,
	[cwho_host_name] [nvarchar] (100) COLLATE Greek_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_link_graph] (
	[cwlg_from_url_id] [int] NOT NULL ,
	[cwlg_to_url_id] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_robot] (
	[cwro_host_id] [uniqueidentifier] NOT NULL ,
	[cwro_disallowed] [nvarchar] (1000) COLLATE Greek_CI_AS NOT NULL ,
	[cwro_last_update] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_server] (
	[cwse_server_id] [int] IDENTITY (1, 1) NOT NULL ,
	[cwse_url] [nvarchar] (255) COLLATE Greek_CI_AS NOT NULL ,
	[cwse_version] [nchar] (15) COLLATE Greek_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_statistic] (
	[cwst_statistics_id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[cwst_statistics_date] [smalldatetime] NOT NULL ,
	[cwst_num_users] [int] NOT NULL ,
	[cwst_num_clients] [int] NOT NULL ,
	[cwst_num_clients_active] [int] NOT NULL ,
	[cwst_num_hosts] [int] NOT NULL ,
	[cwst_num_banned_hosts] [int] NOT NULL ,
	[cwst_num_robots] [int] NOT NULL ,
	[cwst_num_urls] [int] NOT NULL ,
	[cwst_num_url_to_crawl] [int] NOT NULL ,
	[cwst_num_url_data] [int] NOT NULL ,
	[cwst_num_link_graph_edges] [bigint] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_url] (
	[cwur_url_id] [int] IDENTITY (1, 1) NOT NULL ,
	[cwur_url] [nvarchar] (500) COLLATE Greek_CI_AS NOT NULL ,
	[cwur_url_md5] [uniqueidentifier] NOT NULL ,
	[cwur_url_host_id] [uniqueidentifier] NOT NULL ,
	[cwur_url_priority] [tinyint] NOT NULL ,
	[cwur_crc] [bigint] NULL ,
	[cwur_flag_assigned] [tinyint] NOT NULL ,
	[cwur_flag_domain] [tinyint] NOT NULL ,
	[cwur_flag_robots] [tinyint] NOT NULL ,
	[cwur_flag_updated] [tinyint] NOT NULL ,
	[cwur_last_visited] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_url_data] (
	[cwud_url_id] [int] NOT NULL ,
	[cwud_data] [image] NOT NULL ,
	[cwud_data_length] [int] NOT NULL ,
	[cwud_data_original_length] [int] NOT NULL ,
	[cwud_http_code] [smallint] NOT NULL ,
	[cwud_retrieval_time] [int] NOT NULL ,
	[cwud_last_process] [smalldatetime] NULL 
) ON [SECONDARY] TEXTIMAGE_ON [SECONDARY]
GO

CREATE TABLE [dbo].[cw_url_history] (
	[cwuh_event_id] [bigint] IDENTITY (1, 1) NOT NULL ,
	[cwuh_url_id] [int] NOT NULL ,
	[cwuh_client_id] [uniqueidentifier] NULL ,
	[cwuh_timestamp] [smalldatetime] NOT NULL ,
	[cwuh_event_type] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_url_to_crawl] (
	[cwuc_url_id] [int] NOT NULL ,
	[cwuc_url] [nvarchar] (500) COLLATE Greek_CI_AS NOT NULL ,
	[cwuc_crc] [bigint] NULL ,
	[cwuc_domain] [tinyint] NULL ,
	[cwuc_robots] [nvarchar] (1000) COLLATE Greek_CI_AS NULL ,
	[cwuc_robots_expiration] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_url_word] (
	[cwuw_url_id] [int] NOT NULL ,
	[cwuw_word_id] [int] NOT NULL ,
	[cwuw_count] [smallint] NOT NULL 
) ON [SECONDARY]
GO

CREATE TABLE [dbo].[cw_user] (
	[cwus_user_id] [int] IDENTITY (1, 1) NOT NULL ,
	[cwus_username] [nchar] (20) COLLATE Greek_CI_AS NOT NULL ,
	[cwus_password] [uniqueidentifier] NOT NULL ,
	[cwus_email] [nvarchar] (50) COLLATE Greek_CI_AS NOT NULL ,
	[cwus_registration_date] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[cw_word] (
	[cwwo_word_id] [int] IDENTITY (1, 1) NOT NULL ,
	[cwwo_word] [nvarchar] (30) COLLATE Greek_CI_AS NOT NULL 
) ON [SECONDARY]
GO

ALTER TABLE [dbo].[SW_QD_QueryDetails] WITH NOCHECK ADD 
	CONSTRAINT [PK_SW_QD_QueryDetails] PRIMARY KEY  CLUSTERED 
	(
		[SWQD_AA]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SW_QR_Query] WITH NOCHECK ADD 
	CONSTRAINT [PK_SW_QR_Query] PRIMARY KEY  CLUSTERED 
	(
		[SWQR_AA]
	)  ON [SECONDARY] 
GO

ALTER TABLE [dbo].[SW_RK_Rank] WITH NOCHECK ADD 
	CONSTRAINT [PK_SW_RK_Rank] PRIMARY KEY  CLUSTERED 
	(
		[SWRK_TYPEID],
		[SWRK_URLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SW_UR_User] WITH NOCHECK ADD 
	CONSTRAINT [PK_SW_UR_User] PRIMARY KEY  CLUSTERED 
	(
		[SWUR_AA]
	)  ON [SECONDARY] 
GO

ALTER TABLE [dbo].[cw_banned_host] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_banned_hosts] PRIMARY KEY  CLUSTERED 
	(
		[cwbh_host_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_client] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_clients] PRIMARY KEY  CLUSTERED 
	(
		[cwcl_client_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_client_history] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_client_history] PRIMARY KEY  CLUSTERED 
	(
		[cwch_event_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_client_update] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_client_updates] PRIMARY KEY  CLUSTERED 
	(
		[cwcu_client_update_version]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_global_settings] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_global_settings] PRIMARY KEY  CLUSTERED 
	(
		[cwgs_setting_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_host] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_host] PRIMARY KEY  CLUSTERED 
	(
		[cwho_host_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_link_graph] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_link_graph] PRIMARY KEY  CLUSTERED 
	(
		[cwlg_from_url_id],
		[cwlg_to_url_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_robot] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_host_robots] PRIMARY KEY  CLUSTERED 
	(
		[cwro_host_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_server] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_servers] PRIMARY KEY  CLUSTERED 
	(
		[cwse_server_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_statistic] WITH NOCHECK ADD 
	CONSTRAINT [PK_cwst_statistics] PRIMARY KEY  CLUSTERED 
	(
		[cwst_statistics_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_url] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_urls] PRIMARY KEY  CLUSTERED 
	(
		[cwur_url_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_url_data] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_url_data] PRIMARY KEY  CLUSTERED 
	(
		[cwud_url_id]
	)  ON [SECONDARY] 
GO

ALTER TABLE [dbo].[cw_url_history] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_url_history] PRIMARY KEY  CLUSTERED 
	(
		[cwuh_event_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_url_to_crawl] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_url_to_crawl] PRIMARY KEY  CLUSTERED 
	(
		[cwuc_url_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_url_word] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_url_words] PRIMARY KEY  CLUSTERED 
	(
		[cwuw_url_id],
		[cwuw_word_id]
	)  ON [SECONDARY] 
GO

ALTER TABLE [dbo].[cw_user] WITH NOCHECK ADD 
	CONSTRAINT [PK_cw_users] PRIMARY KEY  CLUSTERED 
	(
		[cwus_user_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_word] WITH NOCHECK ADD 
	CONSTRAINT [PK_cwwo_words] PRIMARY KEY  CLUSTERED 
	(
		[cwwo_word_id]
	)  ON [SECONDARY] 
GO

ALTER TABLE [dbo].[SW_QD_QueryDetails] WITH NOCHECK ADD 
	CONSTRAINT [IX_SW_QD_QueryDetails] UNIQUE  NONCLUSTERED 
	(
		[SWQD_QueryID],
		[SWQD_URLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SW_RK_Rank] WITH NOCHECK ADD 
	CONSTRAINT [DF_SW_RK_Rank_SWRK_CREATED] DEFAULT (getdate()) FOR [SWRK_UPDATED]
GO

ALTER TABLE [dbo].[SW_UR_User] WITH NOCHECK ADD 
	CONSTRAINT [IX_SWUR_UserName] UNIQUE  NONCLUSTERED 
	(
		[SWUR_UserName]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[cw_client] WITH NOCHECK ADD 
	CONSTRAINT [DF_cw_client_cwcl_urls_assigned] DEFAULT (0) FOR [cwcl_urls_assigned],
	CONSTRAINT [DF_cw_client_cwcl_urls_returned] DEFAULT (0) FOR [cwcl_urls_returned]
GO

ALTER TABLE [dbo].[cw_url] WITH NOCHECK ADD 
	CONSTRAINT [DF_cw_url_cwur_priority] DEFAULT (255) FOR [cwur_url_priority],
	CONSTRAINT [DF_cw_urls_cwur_flag_assigned] DEFAULT (0) FOR [cwur_flag_assigned],
	CONSTRAINT [DF_cw_urls_cwur_flag_domain] DEFAULT (0) FOR [cwur_flag_domain],
	CONSTRAINT [DF_cw_urls_cwur_flag_robots] DEFAULT (0) FOR [cwur_flag_robots],
	CONSTRAINT [DF_cw_urls_cwur_flag_updated] DEFAULT (0) FOR [cwur_flag_updated]
GO

ALTER TABLE [dbo].[cw_url_data] WITH NOCHECK ADD 
	CONSTRAINT [DF_cw_url_data_cwud_data_length] DEFAULT (0) FOR [cwud_data_length],
	CONSTRAINT [DF_cw_url_data_cwud_data_original_length] DEFAULT (0) FOR [cwud_data_original_length]
GO

ALTER TABLE [dbo].[cw_url_word] WITH NOCHECK ADD 
	CONSTRAINT [DF_cw_url_words_cwuw_count] DEFAULT (0) FOR [cwuw_count]
GO

ALTER TABLE [dbo].[cw_user] WITH NOCHECK ADD 
	CONSTRAINT [IX_cw_user] UNIQUE  NONCLUSTERED 
	(
		[cwus_username]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [IX_SWQR_SearchMethodType] ON [dbo].[SW_QR_Query]([SWQR_SearchSortMethod]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_SW_RK_Created] ON [dbo].[SW_RK_Rank]([SWRK_UPDATED]) WITH  FILLFACTOR = 80 ON [PRIMARY]
GO

 CREATE  INDEX [IX_SW_RK_Rank] ON [dbo].[SW_RK_Rank]([SWRK_RANK]) WITH  FILLFACTOR = 80 ON [PRIMARY]
GO

 CREATE  INDEX [IX_cwst_statistics] ON [dbo].[cw_statistic]([cwst_statistics_date] DESC ) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [IX_md5] ON [dbo].[cw_url]([cwur_url_md5]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_cw_url_flags] ON [dbo].[cw_url]([cwur_flag_assigned], [cwur_flag_domain], [cwur_flag_robots]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [IX_cw_word] ON [dbo].[cw_word]([cwwo_word]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SW_QD_QueryDetails] ADD 
	CONSTRAINT [FK_SW_QD_QueryDetails_cw_url] FOREIGN KEY 
	(
		[SWQD_URLID]
	) REFERENCES [dbo].[cw_url] (
		[cwur_url_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE ,
	CONSTRAINT [FK_SW_QD_QueryDetails_SW_QR_Query] FOREIGN KEY 
	(
		[SWQD_QueryID]
	) REFERENCES [dbo].[SW_QR_Query] (
		[SWQR_AA]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[SW_QR_Query] ADD 
	CONSTRAINT [FK_SW_QR_Query_SW_UR_User] FOREIGN KEY 
	(
		[SWQR_UserAA]
	) REFERENCES [dbo].[SW_UR_User] (
		[SWUR_AA]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_banned_host] ADD 
	CONSTRAINT [FK_cw_banned_host_cw_host] FOREIGN KEY 
	(
		[cwbh_host_id]
	) REFERENCES [dbo].[cw_host] (
		[cwho_host_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_client] ADD 
	CONSTRAINT [FK_cw_client_cw_user] FOREIGN KEY 
	(
		[cwcl_user_id]
	) REFERENCES [dbo].[cw_user] (
		[cwus_user_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_client_history] ADD 
	CONSTRAINT [FK_cw_client_history_cw_client] FOREIGN KEY 
	(
		[cwch_client_id]
	) REFERENCES [dbo].[cw_client] (
		[cwcl_client_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_link_graph] ADD 
	CONSTRAINT [FK_cw_link_graph_cw_url] FOREIGN KEY 
	(
		[cwlg_from_url_id]
	) REFERENCES [dbo].[cw_url] (
		[cwur_url_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_robot] ADD 
	CONSTRAINT [FK_cw_robot_cw_host] FOREIGN KEY 
	(
		[cwro_host_id]
	) REFERENCES [dbo].[cw_host] (
		[cwho_host_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_url] ADD 
	CONSTRAINT [FK_cw_url_cw_host] FOREIGN KEY 
	(
		[cwur_url_host_id]
	) REFERENCES [dbo].[cw_host] (
		[cwho_host_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_url_data] ADD 
	CONSTRAINT [FK_cw_url_data_cw_url] FOREIGN KEY 
	(
		[cwud_url_id]
	) REFERENCES [dbo].[cw_url] (
		[cwur_url_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[cw_url_word] ADD 
	CONSTRAINT [FK_cw_url_word_cw_url] FOREIGN KEY 
	(
		[cwuw_url_id]
	) REFERENCES [dbo].[cw_url] (
		[cwur_url_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE ,
	CONSTRAINT [FK_cw_url_word_cw_word] FOREIGN KEY 
	(
		[cwuw_word_id]
	) REFERENCES [dbo].[cw_word] (
		[cwwo_word_id]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_CheckIfThereAreMoreResults    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_CheckIfThereAreMoreResults    Script Date: 19/09/2004 21:59:54 ******/
CREATE PROCEDURE SW_CheckIfThereAreMoreResults (@query as varchar(30), @queryID as int, @hasMoreResults as int out) AS
BEGIN
	if exists (SELECT     TOP 1 CDUR_URLID
		FROM	SW_UW_UrlLinkWord INNER JOIN
	            		SW_WD_Word ON SWUW_SWWDAA = SWWD_AA INNER JOIN
			CD_UR_URL ON SWUW_CDUR_URLID = CDUR_URLID
		WHERE    ( (SWWD_WORD = @query)
		AND CDUR_URLID NOT IN
			(SELECT SWQD_URLID
			FROM SW_QD_QueryDetails
			WHERE SWQD_QueryID = @queryID)))
	begin
		SET @hasMoreResults = 1
	end

	else
	begin
		SET @hasMoreResults = 0
	end
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryAndReturnQueryID    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryAndReturnQueryID    Script Date: 19/09/2004 21:59:57 ******/
CREATE PROCEDURE SW_FillQueryAndReturnQueryID  (@Query  as varchar(500), @processedQuery as varchar(500), @SWQR_DateAsked as datetime, @SWUR_UserName as varchar(41),@SWUR_PasswordPIN as varchar(36),@getQueryID as int output) AS
BEGIN	
	DECLARE @SWUR_AA AS INT
	SET @SWUR_AA=(SELECT SWUR_AA FROM SW_UR_User WHERE SWUR_UserName=@SWUR_UserName)

	if not exists 	(SELECT SWQR_AA
			FROM SW_QR_Query
			WHERE SWQR_AA = @getQueryID)
	begin
		INSERT INTO SW_QR_Query
			(SWQR_OriginalQuery,
			 SWQR_ProcessedQuery, 
			 SWQR_UserAA,
			 SWQR_DateAsked) 
		VALUES 
			(@Query,
			 @processedQuery,
			 @SWUR_AA,
			 @SWQR_DateAsked)

		SET @getQueryID = (SELECT SWQR_AA FROM SW_QR_Query WHERE ( (SWQR_OriginalQuery = @Query) AND (SWQR_ProcessedQuery = @processedQuery) AND (SWQR_UserAA = @SWUR_AA) AND (SWQR_DateAsked = @SWQR_DateAsked) ) )
	end
	
	SET TRANSACTION ISOLATION LEVEL     READ COMMITTED 
	set nocount on
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerEvaluation    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerEvaluation    Script Date: 19/09/2004 21:58:09 ******/
CREATE PROCEDURE SW_FillQueryDetailsPerEvaluation(@QueryDetailsID as int, @Evaluation as int) AS
BEGIN

if (@Evaluation = 0)
begin
	UPDATE SW_QD_QueryDetails
		SET SWQD_Satisfaction = NULL
		WHERE  (SWQD_AA = @QueryDetailsID)
end

else
begin
	UPDATE SW_QD_QueryDetails
		SET SWQD_Satisfaction = @Evaluation
		WHERE  (SWQD_AA = @QueryDetailsID)
end

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerSearch    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerSearch    Script Date: 19/09/2004 21:58:45 ******/
CREATE PROCEDURE SW_FillQueryDetailsPerSearch (@queryID as int, @URLid as int, @title as nvarchar(100), @snapshot as nvarchar(500), @show_order as int, @rank as float, @getQueryDetailsID as int output) AS
BEGIN

SET @getQueryDetailsID = 0

if not exists (SELECT *
		FROM SW_QD_QueryDetails
		WHERE ((SWQD_QueryID = @queryID) AND (SWQD_ShowOrder = @show_order)))
begin

INSERT INTO SW_QD_QueryDetails
		(SWQD_QueryID,
		SWQD_URLID,
		SWQD_Title,
		SWQD_Snapshot,
		SWQD_ShowOrder,
		SWQD_PercentSuccess) 
	VALUES 
		(@queryID,
		@URLid,
		@title,
		@snapshot,
		@show_order,
		@rank)

SET @getQueryDetailsID = (SELECT SWQD_AA FROM SW_QD_QueryDetails WHERE ( (SWQD_QueryID = @queryID) AND (SWQD_URLID = @URLid) ) )

end

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerSelection    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryDetailsPerSelection    Script Date: 19/09/2004 21:58:12 ******/
CREATE PROCEDURE SW_FillQueryDetailsPerSelection (@QueryID as int, @QueryDetailsID as int, @date_selected as datetime) AS
BEGIN

DECLARE @selected_order as int
SET @selected_order = (SELECT max(SWQD_SelectedOrder) FROM SW_QD_QueryDetails
				WHERE (SWQD_QueryID = @QueryID)) + 1

if (@selected_order is null)
begin
	SET @selected_order = 1
end

UPDATE SW_QD_QueryDetails
	SET SWQD_SelectedOrder = @selected_order, SWQD_DateSelected = @date_selected
	WHERE ( (SWQD_AA = @QueryDetailsID) AND (SWQD_SelectedOrder is null) AND (SWQD_DateSelected is null) )

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryPerCloseQuery    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryPerCloseQuery    Script Date: 19/09/2004 21:59:59 ******/
CREATE PROCEDURE SW_FillQueryPerCloseQuery (@queryID as int, @dateCloseQuery as datetime) AS
BEGIN
	UPDATE SW_QR_Query
		SET SWQR_DateCloseQuery = @dateCloseQuery
		WHERE SWQR_AA = @queryID
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_FillQueryWithMaxRank    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_FillQueryWithMaxRank    Script Date: 19/09/2004 22:00:02 ******/
CREATE PROCEDURE SW_FillQueryWithMaxRank (@queryID as int, @maxRank as float) AS
BEGIN
	UPDATE SW_QR_Query
		SET SWQR_MaxRank = @maxRank
		WHERE ((SWQR_AA = @queryID) AND (SWQR_MaxRank = NULL))
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetAlreadyExistingQueryResults    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_GetAlreadyExistingQueryResults    Script Date: 19/09/2004 21:58:47 ******/
CREATE PROCEDURE SW_GetAlreadyExistingQueryResults (@queryID as int, @fromOrder as int, @toOrder as int) AS
BEGIN
	SELECT SWQD_URLID, CDUR_URL, CDUR_Data, SWQD_PercentSuccess, SWQD_Title, SWQD_Snapshot, SWQD_Satisfaction, SWQD_AA
	FROM SW_QD_QueryDetails, CD_UR_URL
	WHERE ((SWQD_QueryID = @queryID) AND (SWQD_ShowOrder BETWEEN @fromOrder AND @toOrder) AND (SWQD_URLID = CDUR_URLID))
	ORDER BY SWQD_ShowOrder ASC

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetDataOfURL    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.SW_GetDataOfURL    Script Date: 19/09/2004 21:58:50 ******/
CREATE PROCEDURE SW_GetDataOfURL (@URLID as int) as
BEGIN
	SELECT CDUR_DATA 
		FROM CD_UR_URL
		WHERE (CDUR_URLID = @URLID)
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetMaxRank    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_GetMaxRank    Script Date: 19/09/2004 22:00:04 ******/
CREATE PROCEDURE SW_GetMaxRank (@typeID as int, @maxRank as numeric output) AS
BEGIN
	SET @maxRank = (SELECT MAX(SWRK_RANK)
					FROM SW_RK_Rank
						WHERE (SWRK_TYPEID = @typeID))
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetMaxRankOfSpecifiedQuery    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_GetMaxRankOfSpecifiedQuery    Script Date: 19/09/2004 22:00:07 ******/
CREATE PROCEDURE SW_GetMaxRankOfSpecifiedQuery (@queryID as int) AS
BEGIN
	SELECT SWQR_MaxRank
		FROM SW_QR_Query
		WHERE (SWQR_AA = @queryID)
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetMaxShowOrderForASpecificQueryID    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_GetMaxShowOrderForASpecificQueryID    Script Date: 19/09/2004 21:58:15 ******/
CREATE PROCEDURE SW_GetMaxShowOrderForASpecificQueryID (@queryID as int, @maxShowOrder as int output) AS
BEGIN

	SET @maxShowOrder = (SELECT MAX(SWQD_ShowOrder)
					FROM SW_QD_QueryDetails
						WHERE (SWQD_QueryID = @queryID))
	if (@maxShowOrder = null)
	begin
		SET @maxShowOrder = 0
	end

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_GetProcessedQueryOfQuery    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.SW_GetProcessedQueryOfQuery    Script Date: 19/09/2004 22:00:10 ******/
CREATE PROCEDURE SW_GetProcessedQueryOfQuery (@queryID as int) AS
BEGIN
	SELECT SWQR_ProcessedQuery
		FROM SW_QR_Query
		WHERE (SWQR_AA = @queryID)
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_askQuery    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo._TEMP_obsolete_SW_askQuery    Script Date: 19/09/2004 22:00:13 ******/
CREATE PROCEDURE SW_askQuery  (@Query  as varchar(30), @SWQR_DateAsked as datetime, @SWUR_UserName as char(41),@SWUR_PasswordPIN as char(36),@getQueryID as int output, @fromOrder as int, @toOrder as int, @resultsAlreadyExistedInDB as int output, @numberOfResults as int output) AS
BEGIN

	SET @numberOfResults = (SELECT count(CD_UR_URL.CDUR_URLID)
					FROM	SW_UW_UrlLinkWord INNER JOIN
	            				SW_WD_Word ON SWUW_SWWDAA = SWWD_AA INNER JOIN
					CD_UR_URL ON SWUW_CDUR_URLID = CDUR_URLID
					WHERE    (SWWD_WORD = @Query))
	
	DECLARE @SWUR_AA AS INT
	SET @SWUR_AA=(SELECT SWUR_AA FROM SW_UR_User WHERE SWUR_UserName=@SWUR_UserName)

	if not exists 	(SELECT SWQR_AA
			FROM SW_QR_Query
			WHERE SWQR_AA = @getQueryID)
	begin
		INSERT INTO SW_QR_Query
			(SWQR_OriginalQuery, 
			 SWQR_UserAA,
			 SWQR_DateAsked) 
		VALUES 
			(@Query,
			 @SWUR_AA,
			 @SWQR_DateAsked)

		SET @getQueryID = (SELECT SWQR_AA FROM SW_QR_Query WHERE ( (SWQR_OriginalQuery = @Query) AND (SWQR_UserAA = @SWUR_AA) AND (SWQR_DateAsked = @SWQR_DateAsked) ) )
	end
	
	SET TRANSACTION ISOLATION LEVEL     READ COMMITTED 
	set nocount on
	

--	SELECT  TOP 10 CDUR_URLID, CDUR_URL, CDUR_DATA
--	FROM CD_UR_URL
--	WHERE (CDUR_URLID IN
--		(SELECT SWUW_CDUR_URLID
--			FROM SW_UW_UrlLinkWord
--			WHERE SWUW_SWWDAA IN
--				(SELECT SWWD_AA
--				FROM SW_WD_Word
--				WHERE SWWD_WORD = @Query)) 
--	AND CDUR_URLID NOT IN
--		(SELECT SWQD_URLID
--		FROM SW_QD_QueryDetails
--		WHERE SWQD_QueryID = @getQueryID))

--	SELECT     TOP 10 CD_UR_URL.CDUR_URLID, CD_UR_URL.CDUR_URL, CD_UR_URL.CDUR_DATA
--	FROM         SW_UW_UrlLinkWord INNER JOIN
--	                      SW_WD_Word ON SW_UW_UrlLinkWord.SWUW_SWWDAA = SW_WD_Word.SWWD_AA INNER JOIN
--	                      CD_UR_URL ON SW_UW_UrlLinkWord.SWUW_CDUR_URLID = CD_UR_URL.CDUR_URLID
--	WHERE     (SW_WD_Word.SWWD_WORD = @Query)
--	ORDER BY SW_UW_UrlLinkWord.SWUW_AppearCount DESC

	if not exists 	(SELECT SWQD_AA
			FROM SW_QD_QueryDetails
			WHERE ((SWQD_QueryID = @getQueryID) AND (SWQD_ShowOrder = @toOrder)))
	begin
		SELECT     TOP 10 CDUR_URLID, CDUR_URL, CDUR_DATA
		FROM	SW_UW_UrlLinkWord INNER JOIN
	            		SW_WD_Word ON SWUW_SWWDAA = SWWD_AA INNER JOIN
			CD_UR_URL ON SWUW_CDUR_URLID = CDUR_URLID
		WHERE    ( (SWWD_WORD = @Query)
		AND CDUR_URLID NOT IN
			(SELECT SWQD_URLID
			FROM SW_QD_QueryDetails
			WHERE SWQD_QueryID = @getQueryID))
		ORDER BY SWUW_AppearCount DESC

		SET @resultsAlreadyExistedInDB = 0
	end
	
	else
	begin
		SELECT SWQD_URLID, CDUR_URL, CDUR_Data, SWQD_Snapshot, CDUR_URL, CDUR_URL, SWQD_ShowOrder, SWQD_AA
		FROM SW_QD_QueryDetails, CD_UR_URL
--		WHERE ((SWQD_ShowOrder >= @fromOrder) AND (SWQD_ShowOrder <= @fromOrder) AND (SWQD_QueryID = @getQueryID))
		WHERE ((SWQD_ShowOrder BETWEEN @fromOrder AND @toOrder) AND (SWQD_QueryID = @getQueryID) AND (SWQD_URLID = CDUR_URLID))
		ORDER BY SWQD_ShowOrder ASC

		SET @resultsAlreadyExistedInDB = 1
	end
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_createUser    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.SW_createUser    Script Date: 19/09/2004 21:58:52 ******/
CREATE PROCEDURE SW_createUser  (@UserName as char (41),@PasswordPIN as char(36), @LastAccessed as datetime,@status as int output)  AS
BEGIN



if not exists (SELECT    SWUR_AA
	      FROM         SW_UR_User
	      WHERE     (SWUR_UserName = @UserName) )
begin
	INSERT INTO SW_UR_User
		 (SWUR_UserName,
		 SWUR_PasswordPIN,
		SWUR_LastAccessed) 
	VALUES 
		(@UserName,
		@PasswordPIN,
		@LastAccessed)
	set @status=1
end

else
begin 
	set @status=0
end

END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.SW_loginUser    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.SW_loginUser    Script Date: 19/09/2004 21:58:55 ******/

/****** Object:  Stored Procedure dbo.SW_loginUser    Script Date: 8/4/2004 17:06:59 ******/
CREATE PROCEDURE SW_loginUser (@UserName as char (41),@PasswordPIN as char(36),@LastAccessed as datetime,@status as int output) AS

BEGIN


if not exists (SELECT    SWUR_AA
FROM         SW_UR_User
WHERE     (SWUR_UserName = @UserName) )
begin 
set @status=0
end

else
begin
	
	
	if not exists (SELECT SWUR_AA
	FROM         SW_UR_User
	WHERE     (SWUR_UserName = @UserName)  AND  (SWUR_PasswordPIN = @PasswordPIN))
	begin
		set @status=1
	end
	
	else
	begin
		UPDATE SW_UR_User SET SWUR_LastAccessed=@LastAccessed
		WHERE     SWUR_UserName = @UserName
		
		set @status=2
	end

end
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_delete_banned_host]
	(@host_id 	[uniqueidentifier])

AS

DELETE [CrawlWaveTest].[dbo].[cw_banned_host] 

WHERE 
	([cwbh_host_id]	 = @host_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_delete_server]
	(@server_id 	[int])

AS

DELETE [CrawlWaveTest].[dbo].[cw_server] 

WHERE 
	([cwse_server_id] = @server_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_delete_url_out_links]
	(@url_id 	[int])

AS

DELETE FROM [CrawlWaveTest].[dbo].[cw_link_graph] 

WHERE 
	( [cwlg_from_url_id]	 = @url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_delete_url_to_crawl]
	(@url_id [int])

AS DELETE [CrawlWaveTest].[dbo].[cw_url_to_crawl] 

WHERE 
	( [cwuc_url_id]	 = @url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_delete_url_words]
	(@url_id 	[int])

AS

DELETE FROM  [CrawlWaveTest].[dbo].[cw_url_word] 

WHERE 
	( [cwuw_url_id] = @url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_banned_host]
	(@host_id 	[uniqueidentifier],
	 @host_name 	[nvarchar](100))

AS

DECLARE @id uniqueidentifier

SELECT @id = [cwho_host_id] 
FROM [CrawlWaveTest].[dbo].[cw_host]
WHERE [cwho_host_id] = @host_id

IF (@@ROWCOUNT = 0)

BEGIN

	INSERT INTO [CrawlWaveTest].[dbo].[cw_host] 
		([cwho_host_id],
	 	 [cwho_host_name]) 
	VALUES 
		(@host_id,
	 	 @host_name)

END

INSERT INTO [CrawlWaveTest].[dbo].[cw_banned_host]
	([cwbh_host_id])
VALUES
	(@host_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_client]
	(@client_id [uniqueidentifier],
	 @user_id [int],
	 @info_cpu [nvarchar](50),
	 @info_ram [smallint],
	 @info_hdd [int],
	 @info_net [tinyint])

AS INSERT INTO [CrawlWaveTest].[dbo].[cw_client] 
	 ([cwcl_client_id], 
	 [cwcl_user_id],
	 [cwcl_info_cpu],
	 [cwcl_info_ram],
	 [cwcl_info_hdd],
	 [cwcl_info_net],
	 [cwcl_last_active]) 
 
VALUES 
	(@client_id,
	 @user_id,
	 @info_cpu,
	 @info_ram,
	 @info_hdd,
	 @info_net,
	 GETDATE())

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_client_history]
	(@client_id 	[uniqueidentifier],
	 @event_type 	[int])

AS INSERT INTO [CrawlWaveTest].[dbo].[cw_client_history] 
	 ([cwch_client_id],
	  [cwch_timestamp],
	  [cwch_event_type]) 
 
VALUES 
	(@client_id,
	 GETDATE(),
	 @event_type)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_client_update]
	(@client_update_version	[char](15),
	 @client_update_image 	[image])

AS
INSERT INTO [CrawlWaveTest].[dbo].[cw_client_update] 
	 ([cwcu_client_update_version],
	  [cwcu_client_update_image]) 
 
VALUES 
	(@client_update_version,
	 @client_update_image)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_host]
	(@host_id 	[uniqueidentifier],
	 @host_name 	[nvarchar](100))

AS

SELECT [cwho_host_id]
FROM [CrawlWaveTest].[dbo].[cw_host]
WHERE [cwho_host_id] = @host_id

IF (@@ROWCOUNT = 0)

INSERT INTO [CrawlWaveTest].[dbo].[cw_host] 
	 ( [cwho_host_id],
	 [cwho_host_name]) 
 
VALUES 
	( @host_id,
	 @host_name)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_link_graph]
	(@from_url_id 	[int],
	 @to_url_id 	[int])

AS INSERT INTO [CrawlWaveTest].[dbo].[cw_link_graph] 
	 ([cwlg_from_url_id],
	  [cwlg_to_url_id]) 
 
VALUES 
	(@from_url_id,
	 @to_url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_server]
	(@url 	[nvarchar](255),
	 @version 	[nchar](15))

AS

INSERT INTO [CrawlWaveTest].[dbo].[cw_server] 
	([cwse_url],
	 [cwse_version]) 
 
VALUES 
	(@url,
	 @version)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_statistic]

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @num_users int
DECLARE @num_clients int
DECLARE @num_clients_active int
DECLARE @num_hosts int
DECLARE @num_banned_hosts int
DECLARE @num_robots int
DECLARE @num_urls int
DECLARE @num_url_to_crawl int
DECLARE @num_url_data int
DECLARE @num_link_graph_edges bigint

SELECT @num_users = COUNT([cwus_user_id]) FROM [CrawlWaveTest].[dbo].[cw_user]
SELECT @num_clients = COUNT([cwcl_last_active]) FROM [CrawlWaveTest].[dbo].[cw_client]
SELECT @num_clients_active = COUNT([cwcl_last_active]) FROM [CrawlWaveTest].[dbo].[cw_client] WHERE [cwcl_last_active] > DATEADD([day], - 1, GETDATE())
SELECT @num_hosts = COUNT([cwho_host_name]) FROM [CrawlWaveTest].[dbo].[cw_host]
SELECT @num_banned_hosts = COUNT(*) FROM [CrawlWaveTest].[dbo].[cw_banned_host]
SELECT @num_robots = COUNT(*) FROM [CrawlWaveTest].[dbo].[cw_robot]
SELECT @num_urls = COUNT([cwur_url_id]) FROM [CrawlWaveTest].[dbo].[cw_url]
SELECT @num_url_to_crawl = COUNT([cwuc_url_id]) FROM [CrawlWaveTest].[dbo].[cw_url_to_crawl]
SELECT @num_url_data = COUNT([cwud_url_id]) FROM [CrawlWaveTest].[dbo].[cw_url_data]
SELECT @num_link_graph_edges = COUNT(*) FROM [CrawlWaveTest].[dbo].[cw_link_graph]


INSERT INTO [CrawlWaveTest].[dbo].[cw_statistic] 
	 ( [cwst_statistics_date],
	 [cwst_num_users],
	 [cwst_num_clients],
	 [cwst_num_clients_active],
	 [cwst_num_hosts],
	 [cwst_num_banned_hosts],
	 [cwst_num_robots],
	 [cwst_num_urls],
	 [cwst_num_url_to_crawl],
	 [cwst_num_url_data],
	 [cwst_num_link_graph_edges]) 
 
VALUES 
	(GETDATE(),
	 @num_users,
	 @num_clients,
	 @num_clients_active,
	 @num_hosts,
	 @num_banned_hosts,
	 @num_robots,
	 @num_urls,
	 @num_url_to_crawl,
	 @num_url_data,
	 @num_link_graph_edges)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_url]
	(@url 	[nvarchar](500),
	 @url_md5 	[uniqueidentifier],
	 @url_host_id 	[uniqueidentifier],
	 @url_priority 	[tinyint],
	 @flag_domain 	[tinyint],
	 @flag_robots 	[tinyint],
	 @id [int] output)

AS

SELECT @id = [cwur_url_id] 
FROM [CrawlWaveTest].[dbo].[cw_url]
WHERE [cwur_url_md5] = @url_md5
OPTION (FAST 1)

IF (@id IS NULL)

BEGIN

INSERT INTO [CrawlWaveTest].[dbo].[cw_url] 
	 ([cwur_url],
	 [cwur_url_md5],
	 [cwur_url_host_id],
	 [cwur_url_priority],
	 [cwur_crc],
	 [cwur_flag_assigned],
	 [cwur_flag_domain],
	 [cwur_flag_robots],
	 [cwur_flag_updated],
	 [cwur_last_visited]) 
 
VALUES 
	(@url,
	 @url_md5,
	 @url_host_id,
	 @url_priority,
	 NULL,
	 0,
	 @flag_domain,
	 @flag_robots,
	 0,
	 NULL)

SET @id = SCOPE_IDENTITY()

END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_url_to_crawl]
	(@url_id   [int],
	 @url       [nvarchar](500),
	 @crc      [bigint],
	 @domain [tinyint],
	 @robots [nvarchar](1000),
	 @robots_expiration [smalldatetime])

AS INSERT INTO [CrawlWaveTest].[dbo].[cw_url_to_crawl] 
	 ( [cwuc_url_id],
	 [cwuc_url],
	 [cwuc_crc],
	 [cwuc_domain],
	 [cwuc_robots],
	 [cwuc_robots_expiration]) 
 
VALUES 
	(@url_id,
	 @url,
	 @crc,
	 @domain,
	 @robots,
	 @robots_expiration)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_url_word]
	(@url_id 	[int],
	 @word_id 	[int],
	 @count 	[smallint])

AS INSERT INTO [CrawlWaveTest].[dbo].[cw_url_word] 
	 ( [cwuw_url_id],
	   [cwuw_word_id],
	   [cwuw_count]) 
 
VALUES 
	(@url_id,
	 @word_id,
	 @count)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_user]
	(@username 	[nchar](20),
	 @password 	[uniqueidentifier],
	 @email 	[nvarchar](50))

AS 

DECLARE @user_id int

INSERT INTO [CrawlWaveTest].[dbo].[cw_user] 
	 ([cwus_username],
	 [cwus_password],
	 [cwus_email],
	 [cwus_registration_date]) 
 
VALUES 
	(@username,
	 @password,
	 @email,
	 GETDATE())

SET @user_id =  SCOPE_IDENTITY()

RETURN @user_id

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_insert_word]
	( @cwwo_word 	[nvarchar](30),
	  @cwwo_word_id [int] OUTPUT)

AS

SELECT @cwwo_word_id = [cwwo_word_id] FROM  [CrawlWaveTest].[dbo].[cw_word] WHERE [cwwo_word] = @cwwo_word

IF(@cwwo_word_id IS NULL)

BEGIN

INSERT INTO [CrawlWaveTest].[dbo].[cw_word] 
	 ([cwwo_word]) 
VALUES 
	( @cwwo_word)

SELECT @cwwo_word_id = SCOPE_IDENTITY()

END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_mark_url_as_assigned]
	(@url_id 	[int])

AS UPDATE [CrawlWaveTest].[dbo].[cw_url] 

SET  [cwur_flag_assigned] = 1 

WHERE 
	( [cwur_url_id]	 = @url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_banned_host_names]

AS 

SELECT cwbh_host_id, cwho_host_name FROM [CrawlWaveTest].[dbo].[cw_banned_host]
INNER JOIN [CrawlWaveTest].[dbo].[cw_host]
ON [cwbh_host_id] = [cwho_host_id]
ORDER BY [cwho_host_name]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_banned_hosts]

AS 

SELECT cwbh_host_id FROM [CrawlWaveTest].[dbo].[cw_banned_host]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_client_versions]

AS

SELECT [cwcu_client_update_version]

FROM [CrawlWaveTest].[dbo].[cw_client_update]

ORDER BY [cwcu_client_update_version] DESC

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_db_size]

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

declare @total_size bigint
declare @urls_size bigint
declare @hosts_size bigint
declare @data_size bigint
declare @graph_size bigint

SELECT @urls_size = 250 * (SELECT COUNT([cwur_url_id]) FROM [CrawlWaveTest].[dbo].[cw_url])
SELECT @hosts_size = 64 * (SELECT COUNT([cwho_host_name]) FROM [CrawlWaveTest].[dbo].[cw_host])
SELECT @data_size = SUM([cwud_data_length] + 32) FROM [CrawlWaveTest].[dbo].[cw_url_data]
SELECT @graph_size = 16 * (SELECT COUNT(*) FROM [CrawlWaveTest].[dbo].[cw_link_graph])

SELECT @total_size = @urls_size+@hosts_size+@data_size+@graph_size

SELECT @total_size AS total

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_ready_urls]
	(@count 	[int])

AS 

DECLARE @SQLString nvarchar(500)

/* Build the SQL string. */
SET @SQLString = N'SELECT TOP ' + convert(varchar,@count) + N' [cwur_url_id], [cwur_url], [cwur_url_host_id], [cwur_crc], [cwur_flag_domain] FROM [CrawlWaveTest].[dbo].[cw_url]  WHERE ([cwur_flag_assigned] = 0 AND [cwur_flag_domain] <> 1 AND [cwur_flag_robots] = 0) ORDER BY NEWID(), [cwur_url_priority] OPTION (FAST ' + convert(varchar,@count) + N')'

--SELECT TOP 100 [cwur_url_id], [cwur_url], [cwur_url_host_id], [cwur_crc], [cwur_flag_domain] FROM [CrawlWaveTest].[dbo].[cw_url]  WHERE ([cwur_last_visited] IS NULL) AND  [cwur_flag_assigned] = 0 AND [cwur_flag_domain] <> 1 AND [cwur_flag_robots] = 0) ORDER BY [cwur_url_priority] OPTION (FAST 100);

/* Execute the string. */

EXECUTE sp_executesql @SQLString
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_ready_urls_to_refresh]
	(@count 	[int])

AS 

DECLARE @SQLString nvarchar(500)

/* Build the SQL string. */
SET @SQLString = N'SELECT TOP ' + convert(varchar,@count) + N' [cwur_url_id], [cwur_url], [cwur_url_host_id], [cwur_crc], [cwur_flag_domain] FROM [CrawlWaveTest].[dbo].[cw_url]  WHERE ([cwur_flag_assigned] = 0 AND [cwur_flag_domain] = 0 AND [cwur_flag_robots] = 0 AND [cwur_last_visited] IS NOT NULL) ORDER BY NEWID(), [cwur_url_priority] OPTION (FAST ' + convert(varchar,@count) + N')'

--SELECT TOP 100 [cwur_url_id], [cwur_url], [cwur_url_host_id], [cwur_crc], [cwur_flag_domain] FROM [CrawlWaveTest].[dbo].[cw_url]  WHERE ([cwur_last_visited] IS NULL) AND  [cwur_flag_assigned] = 0 AND [cwur_flag_domain] <> 1 AND [cwur_flag_robots] = 0) ORDER BY [cwur_url_priority] OPTION (FAST 100);

/* Execute the string. */

EXECUTE sp_executesql @SQLString
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_robot]
			(@host_id uniqueidentifier)

AS 

SELECT TOP 1 * FROM [CrawlWaveTest].[dbo].[cw_robot]

WHERE [cwro_host_id] = @host_id

OPTION (FAST 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_robots]

AS 

SELECT * FROM [CrawlWaveTest].[dbo].[cw_robot]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_server_statistics] 

AS

SELECT TOP 25 *
FROM cw_statistic
ORDER BY [cw_statistic].[cwst_statistics_id]
OPTION (FAST 25)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_servers]

AS

SELECT [cwse_server_id], [cwse_url], [cwse_version]

FROM [CrawlWaveTest].[dbo].[cw_server]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_updated_version]
(@version [nchar](15))

AS

SELECT TOP 1 [cwcu_client_update_image]

FROM [CrawlWaveTest].[dbo].[cw_client_update]

WHERE [cwcu_client_update_version] = @version

OPTION (FAST 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_url_data]
	(@url_id 	[int])

AS

SELECT TOP 1 [cwud_url_id], [cwud_data], [cwud_data_length], [cwud_data_original_length]
FROM [CrawlWaveTest].[dbo].[cw_url_data]
WHERE [cwud_url_id] = @url_id
OPTION (FAST 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_url_for_word_extraction]

AS 

SELECT TOP 1 [cwud_url_id], [cwud_data]

FROM  [CrawlWaveTest].[dbo].[cw_url_data] 

WHERE ( [cwud_last_process] IS NULL)

OPTION (FAST 1)

IF (@@ROWCOUNT = 0)

SELECT TOP 1 [cwud_url_id], [cwud_data]

FROM  [CrawlWaveTest].[dbo].[cw_url_data] 

ORDER BY ([cwud_last_process])

OPTION (FAST 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_url_to_crawl_count]

AS 

SELECT COUNT([cwuc_url_id]) FROM [CrawlWaveTest].[dbo].[cw_url_to_crawl]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_urls_to_crawl]

AS 

SELECT TOP 20 * FROM [CrawlWaveTest].[dbo].[cw_url_to_crawl] 

OPTION (FAST 20)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_user]
	(@user_id [int])

AS

SELECT *

FROM [CrawlWaveTest].[dbo].[cw_user]
WHERE [cwus_user_id] = @user_id

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_user_authentication]
	(@username [nvarchar] (20))

AS

SELECT TOP 1 [cwus_password]

FROM [CrawlWaveTest].[dbo].[cw_user]
WHERE [cwus_username] = @username

OPTION (FAST 1)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_user_list]

AS

SELECT *

FROM [CrawlWaveTest].[dbo].[cw_user]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_select_user_statistic]
	(@user_id 	[int])

AS

SELECT	cwus_username, cwus_email, cwus_registration_date, cwcl_client_id, cwcl_urls_assigned,
	cwcl_urls_returned, cwcl_last_active, cwcl_info_cpu, cwcl_info_ram, cwcl_info_net
FROM	[CrawlWaveTest].[dbo].[cw_user]
	INNER JOIN [CrawlWaveTest].[dbo].[cw_client]
	ON cwus_user_id = cwcl_user_id
WHERE	(cwus_user_id = @user_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_user_statistics_list] 

AS

SELECT  cw_user.cwus_user_id AS userid, cw_user.cwus_username AS username, cw_user.cwus_email AS email,
	COUNT(cw_client.cwcl_user_id) AS numclients, SUM(cw_client.cwcl_urls_assigned) AS assigned,
	SUM(cw_client.cwcl_urls_returned) AS returned, cw_user.cwus_registration_date AS registration,
	MAX(cw_client.cwcl_last_active) AS last_active
FROM    cw_user 
INNER JOIN cw_client ON cw_user.cwus_user_id = cw_client.cwcl_user_id
GROUP BY cw_user.cwus_user_id, cw_user.cwus_username, cw_user.cwus_email, 
	 cw_user.cwus_registration_date

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_select_words]

AS 

SELECT * FROM [CrawlWaveTest].[dbo].[cw_word]

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_client]
	(@client_id 	[uniqueidentifier],
	 @user_id 	[int],
	 @info_cpu 	[nvarchar](50),
	 @info_ram 	[smallint],
	 @info_hdd 	[int],
	 @info_net 	[tinyint])

AS

UPDATE [CrawlWaveTest].[dbo].[cw_client] 

SET  [cwcl_info_cpu]	 = @info_cpu,
	 [cwcl_info_ram]	 = @info_ram,
	 [cwcl_info_hdd]	 = @info_hdd,
	 [cwcl_info_net]	 = @info_net,
	 [cwcl_last_active] = GETDATE()

WHERE 
	( [cwcl_client_id]	 = @client_id AND
	 [cwcl_user_id]	 = @user_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO


CREATE PROCEDURE [cw_update_client_last_active]
	(@client_id 	[uniqueidentifier])

AS

UPDATE [CrawlWaveTest].[dbo].[cw_client] 

SET
	[cwcl_last_active] = GETDATE()

WHERE 
	[cwcl_client_id] = @client_id

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_client_statistics]
	(@client_id 	[uniqueidentifier],
	 @assigned 	[bigint],
	 @returned 	[bigint],
	 @type		[tinyint])

AS

IF (@type = 0)

	UPDATE [CrawlWaveTest].[dbo].[cw_client] 

	SET  [cwcl_urls_assigned] = [cwcl_urls_assigned] + @assigned

	WHERE 
		([cwcl_client_id] = @client_id)
ELSE

	UPDATE [CrawlWaveTest].[dbo].[cw_client] 

	SET  [cwcl_urls_returned] = [cwcl_urls_returned] + @returned 

	WHERE 
		([cwcl_client_id] = @client_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_or_insert_robot]
	(@host_id 	[uniqueidentifier],
	 @disallowed	[nvarchar](1000))

AS

UPDATE [CrawlWaveTest].[dbo].[cw_robot] 

SET	[cwro_disallowed] = @disallowed,
	[cwro_last_update] = GETDATE() 

WHERE 
	( [cwro_host_id]	 = @host_id)

IF (@@ROWCOUNT = 0)

INSERT INTO  [CrawlWaveTest].[dbo].[cw_robot] ( [cwro_host_id], [cwro_disallowed], [cwro_last_update] )
VALUES (@host_id, @disallowed, GETDATE())

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_url]
	(@url_id 	[int],
	 @url 	[nvarchar](500),
	 @url_md5 	[uniqueidentifier],
	 @url_host_id 	[uniqueidentifier],
	 @url_priority 	[tinyint],
	 @crc 	[bigint],
	 @flag_domain 	[tinyint],
	 @flag_robots 	[tinyint],
	 @flag_updated 	[tinyint],
	 @last_visited 	[smalldatetime],
	 @flag_redirected [tinyint],
	 @id [int] output)

AS

SELECT @id = 0

IF(@flag_updated = 0)
BEGIN

	UPDATE [CrawlWaveTest].[dbo].[cw_url] 

	SET
		 [cwur_flag_assigned]	= 0,
		 [cwur_flag_updated]	= 0,
		 [cwur_last_visited] 	= @last_visited 

	WHERE 
		( [cwur_url_id]	 = @url_id)

	SELECT @id = @url_id

END

ELSE

BEGIN

	IF (@flag_redirected = 0)
	BEGIN

		UPDATE [CrawlWaveTest].[dbo].[cw_url] 

		SET 
			 [cwur_crc]		 = @crc,
			 [cwur_flag_assigned]	 = 0,
			 [cwur_flag_domain]	 = @flag_domain,
			 [cwur_flag_robots]	 = @flag_robots,
			 [cwur_flag_updated]	 = 1,
			 [cwur_last_visited]	 = @last_visited 

		WHERE 
			( [cwur_url_id]	 = @url_id)
	
		SELECT @id = @url_id

	END

	ELSE
	BEGIN

		DECLARE @new_id int
		SELECT @new_id = [cwur_url_id] 
		FROM [CrawlWaveTest].[dbo].[cw_url]
		WHERE [cwur_url_md5]	 = @url_md5
		OPTION (FAST 1)

		IF(@@ROWCOUNT = 0) -- The redirection url does not exist
		BEGIN

			UPDATE [CrawlWaveTest].[dbo].[cw_url] 

			SET 
			 [cwur_url]	 	= @url,
			 [cwur_url_md5]	 	= @url_md5,
			 [cwur_url_host_id]	= @url_host_id,
			 [cwur_url_priority]	= @url_priority,
			 [cwur_crc]	 	= @crc,
			 [cwur_flag_assigned]	= 0,
			 [cwur_flag_domain]	= @flag_domain,
			 [cwur_flag_robots]	= @flag_robots,
			 [cwur_flag_updated]	= 1,
			 [cwur_last_visited]	= @last_visited 

			WHERE 
				( [cwur_url_id]	 = @url_id) 

			SELECT @id = @url_id

		END

		ELSE /* the redirection url exists. */
		BEGIN

			/* Update all links to point to the new url. */
			UPDATE  [CrawlWaveTest].[dbo].[cw_link_graph]
			SET
				[cwlg_to_url_id] = @new_id

			WHERE 
				[cwlg_to_url_id] = @url_id

			/* Delete the old url (that will also delete its out-links). */
			DELETE FROM [CrawlWaveTest].[dbo].[cw_url]
			WHERE 
				 [cwur_url_id]	 = @url_id

			/* update the new (redirection) url */
			UPDATE [CrawlWaveTest].[dbo].[cw_url]
			SET 
				 [cwur_crc]	 	= @crc,
				 [cwur_flag_assigned]	= 0,
				 [cwur_flag_domain]	= @flag_domain,
				 [cwur_flag_robots]	= @flag_robots,
				 [cwur_flag_updated]	= 1,
				 [cwur_last_visited]	= @last_visited 

			WHERE 
				( [cwur_url_id]	 = @new_id)

			SELECT @id = @new_id

		END

	END

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_url_data]
	(@url_id 	 [int],
	 @data 		 [image],
	 @length	 [int],
	 @original_length [int],
	 @http_code 	 [smallint],
	 @retrieval_time [int])

AS 

UPDATE [CrawlWaveTest].[dbo].[cw_url_data] 

SET  	[cwud_data]	 	= @data,
	[cwud_data_length] 	= @length,
	[cwud_data_original_length] = @original_length,
	[cwud_http_code]	= @http_code,
	[cwud_retrieval_time]	= @retrieval_time 

WHERE 
	( [cwud_url_id]	 = @url_id)

IF(@@ROWCOUNT = 0)

	INSERT INTO [CrawlWaveTest].[dbo].[cw_url_data]
	([cwud_url_id],
	 [cwud_data],
	 [cwud_data_length],
	 [cwud_data_original_length],
	 [cwud_http_code],
	 [cwud_retrieval_time],
	 [cwud_last_process])
	VALUES
	(@url_id,
	 @data,
	 @length,
	 @original_length,
	 @http_code,
	 @retrieval_time,
	 NULL)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


CREATE PROCEDURE [cw_update_url_data_last_process]
	(@url_id [int])

AS UPDATE [CrawlWaveTest].[dbo].[cw_url_data] 

SET  [cwud_last_process] = GETDATE()

WHERE 
	( [cwud_url_id]	 = @url_id)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_SW_CheckUser    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_CheckUser    Script Date: 19/09/2004 21:58:26 ******/

/****** Object:  Stored Procedure dbo.sp_SW_CheckUser    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_CheckUser    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_CheckUser ( @strUser as varchar(33), @strPassword as varchar(33),  @intUserID as int output  /*  -1 if user not found, -2 if invalid password  */ )   AS
BEGIN
	declare @intExistedUserD as integer	

	SELECT    @intExistedUserD=SWUR_AA
	FROM         SW_UR_User with (nolock)
	WHERE     (SWUR_UserName = @strUser) 

	set @intExistedUserD = IsNull(@intExistedUserD, -1)

	if (@intExistedUserD<=0) --it doesn't exist
	begin
		set @intUserID =-1
	end
	else
	begin
		update SW_UR_User
		set SWUR_LastAccessed = GetDate()
		where SWUR_AA=@intExistedUserD

		declare @intExistedUseWithPassword as integer		

		SELECT    @intExistedUseWithPassword=SWUR_AA
		FROM         SW_UR_User with (nolock)
		WHERE     (SWUR_AA = @intExistedUserD)  and (SWUR_PasswordPIN = BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(@strPassword)))))))))) )

		set @intExistedUseWithPassword = IsNull(@intExistedUseWithPassword, -1)

		if (@intExistedUseWithPassword<=0) -- invalid password 
		begin
			set @intUserID =-2
		end
		else
		begin
			set @intUserID =@intExistedUseWithPassword
		end
	end
	
	return 0;
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.sp_SW_ConnectWord    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_ConnectWord    Script Date: 19/09/2004 21:58:28 ******/

/****** Object:  Stored Procedure dbo.sp_SW_ConnectWord    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_ConnectWord    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_ConnectWord ( @intURLID as int, @strWord as varchar(33), @intAppearCount as int)   AS
BEGIN
	declare @intWordID as integer	

	SELECT    @intWordID=SWWD_AA
	FROM         SW_WD_Word with (nolock)
	WHERE     (SWWD_WORD = @strWord)

	set @intWordID = IsNull(@intWordID, -1)

	if (@intWordID<=0) --it doesn't exist
	begin
		insert 	SW_WD_WORD
		select @strWord
		
		set @intWordID= @@IDENTITY
	end

	if (@intWordID>0)
	begin
		declare @intAppearCountToInsert as tinyint
		if (@intAppearCount>255)
		begin
			set @intAppearCountToInsert=255
		end
		else
		begin
			if (@intAppearCount<0) 
			begin
				set @intAppearCountToInsert=0
			end
			else
			begin
				set @intAppearCountToInsert=convert(tinyint,@intAppearCount)
			end
		end

		declare @intAppearCountExists as tinyint
		select @intAppearCountExists=SWUW_AppearCount from SW_UW_UrlLinkWord where ( (SWUW_SWWDAA=@intWordID) AND (SWUW_CDUR_URLID=@intURLID) )

		
--		if exists (select * from SW_UW_UrlLinkWord with (nolock))
		if (@intAppearCountExists is not NULL)
		begin
			if (@intAppearCountExists<>@intAppearCountToInsert)
			begin
				update SW_UW_UrlLinkWord				
				set 	SWUW_SWWDAA=@intWordID,
					 SWUW_CDUR_URLID=@intURLID,
					 SWUW_AppearCount=@intAppearCountToInsert
				where ( (SWUW_SWWDAA=@intWordID) AND (SWUW_CDUR_URLID=@intURLID) )				
			end
			-- alliws einai to idio
		end
		else
		begin
			insert SW_UW_UrlLinkWord
			select @intWordID, @intURLID, @intAppearCountToInsert
		end
	end
	
	return 0;
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.sp_SW_DeleteRank    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_DeleteRank    Script Date: 19/09/2004 22:00:17 ******/

/****** Object:  Stored Procedure dbo.sp_SW_DeleteRank    Script Date: 17/6/2004 12:28:28 μμ ******/

CREATE PROCEDURE dbo.sp_SW_DeleteRank ( @intRankTypeID int )   as
BEGIN

	delete   SW_RK_Rank
	WHERE     (SWRK_TYPEID = @intRankTypeID) 

	return 0
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_FindWordAA    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_FindWordAA    Script Date: 19/09/2004 21:58:31 ******/

/****** Object:  Stored Procedure dbo.sp_SW_FindWordAA    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_FindWordAA    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_FindWordAA ( @strWord as varchar(33), @intWordAA as int output)   AS
BEGIN
	SELECT     @intWordAA=SWWD_AA
	FROM         SW_WD_Word with (nolock)
	WHERE     (SWWD_WORD = @strWord)
	
	set @intWordAA = IsNull(@intWordAA,-1)

	return 0
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_GetURLData    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_GetURLData    Script Date: 19/09/2004 21:59:24 ******/

/****** Object:  Stored Procedure dbo.sp_SW_GetURLData    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_GetURLData    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_GetURLData ( @intURLID as int)   AS
BEGIN
	SELECT     CDUR_DATA
	FROM         CD_UR_URL
	WHERE     (CDUR_URLID = @intURLID)
	
	return 0
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_NewQuery    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewQuery    Script Date: 19/09/2004 21:58:34 ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewQuery    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewQuery    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_NewQuery ( 	@intSearchMethodType as tinyint, @strOriginalQyery as nvarchar(500) ,
						@strProcessedQuery as nvarchar(500) , @intUserAA as int, @intQueryAA as integer output) AS

/*BEGIN
	insert SW_QR_Query
	SELECT      @intSearchMethodType, @strOriginalQyery, @strProcessedQuery, @intUserAA, GetDate()
	
	set @intQueryAA= @@IDENTITY

	return 0;
END*/



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_NewUser    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewUser    Script Date: 19/09/2004 21:58:36 ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewUser    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_NewUser    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_NewUser ( @strUser as varchar(33), @strPassword as varchar(33),  @intUserID as int output  /* -1 if exists */ )   AS
BEGIN
	declare @intExistedUserD as integer	

	SELECT    @intExistedUserD=SWUR_AA
	FROM         SW_UR_User with (nolock)
	WHERE     (SWUR_UserName = @strUser)

	set @intExistedUserD = IsNull(@intExistedUserD, -1)

	if (@intExistedUserD<=0) --it doesn't exist
	begin
		insert 	SW_UR_User
		select 	@strUser, 
			BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(reverse(convert(varchar(33),BINARY_CHECKSUM(@strPassword)))))))))),
			GetDate()
		
		set @intUserID= @@IDENTITY		
	end
	else
	begin
		set @intUserID= -1
	end
	
	return 0;
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekInLinks    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekInLinks    Script Date: 19/09/2004 21:59:26 ******/


CREATE PROCEDURE dbo.sp_SW_SelectGreekInLinks (@intURLID  int)   as
BEGIN
	set nocount on
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     CDUL_FromUrlID
	FROM         dbo.CD_UL_URLLINKGRAPH INNER JOIN
	                      dbo.CD_UR_URL ON dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID = dbo.CD_UR_URL.CDUR_URLID
	WHERE     (dbo.CD_UL_URLLINKGRAPH.CDUL_ToUrlID = @intURLID) AND (dbo.CD_UR_URL.CDUR_FlagRobots = 0) AND (dbo.CD_UR_URL.CDUR_FlagDomain = 1) AND 
	                      (dbo.CD_UR_URL.CDUR_CRC IS NOT NULL)
END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekOutLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekOutLinks    Script Date: 19/09/2004 21:59:29 ******/


CREATE PROCEDURE dbo.sp_SW_SelectGreekOutLinks (@intURLID  int)   as
BEGIN
	set nocount on
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     CDUL_ToUrlID
	FROM         dbo.CD_UL_URLLINKGRAPH INNER JOIN
	                      dbo.CD_UR_URL ON dbo.CD_UL_URLLINKGRAPH.CDUL_ToUrlID = dbo.CD_UR_URL.CDUR_URLID
	WHERE     (dbo.CD_UR_URL.CDUR_FlagRobots = 0) AND (dbo.CD_UR_URL.CDUR_FlagDomain = 1) AND (dbo.CD_UR_URL.CDUR_CRC IS NOT NULL) AND 
	                      (dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID =@intURLID)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekURLIDs    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekURLIDs    Script Date: 19/09/2004 21:59:31 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectGreekURLIDs    Script Date: 17/6/2004 12:28:28 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectGreekURLIDs ( @intFromURLID int, @intToURLID int)   as
BEGIN

	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	
	SELECT     CDUR_URLID
	FROM         dbo.CD_UR_URL
	WHERE     	(CDUR_URLID BETWEEN @intFromURLID AND @intToURLID) AND 
			(CDUR_FlagRobots = 0) AND 
			(CDUR_FlagDomain = 1) AND 
			(CDUR_CRC IS NOT NULL)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectInLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectInLinks    Script Date: 19/09/2004 21:59:34 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectInLinks    Script Date: 17/6/2004 12:28:28 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectInLinks (@intURLID  int)   as
BEGIN
	set nocount on
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     CDUL_FromUrlID
	FROM         dbo.CD_UL_URLLINKGRAPH
	WHERE     (CDUL_ToUrlID = @intURLID)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfGreekInLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfGreekInLinks    Script Date: 19/09/2004 21:59:36 ******/


CREATE PROCEDURE dbo.sp_SW_SelectNumberOfGreekInLinks (@intURLID  int)   as
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     COUNT(CDUL_FromUrlID) AS C
		FROM         dbo.CD_UL_URLLINKGRAPH INNER JOIN
	                      dbo.CD_UR_URL ON dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID = dbo.CD_UR_URL.CDUR_URLID
	WHERE     (dbo.CD_UL_URLLINKGRAPH.CDUL_ToUrlID = @intURLID) AND (dbo.CD_UR_URL.CDUR_FlagRobots = 0) AND (dbo.CD_UR_URL.CDUR_FlagDomain = 1) AND 
	                      (dbo.CD_UR_URL.CDUR_CRC IS NOT NULL)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfGreekOutLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfGreekOutLinks    Script Date: 19/09/2004 21:59:39 ******/


CREATE PROCEDURE dbo.sp_SW_SelectNumberOfGreekOutLinks (@intURLID  int)   as
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

/*	SELECT     COUNT(CDUL_FromUrlID) AS C
	FROM         dbo.CD_UL_URLLINKGRAPH INNER JOIN
	                      dbo.CD_UR_URL ON dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID = dbo.CD_UR_URL.CDUR_URLID
	WHERE     (dbo.CD_UR_URL.CDUR_FlagRobots = 0) AND (dbo.CD_UR_URL.CDUR_FlagDomain = 1) AND (dbo.CD_UR_URL.CDUR_CRC IS NOT NULL) AND 
	                      (dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID =@intURLID)*/

	SELECT     COUNT(CDUL_ToUrlID) AS C  
	FROM         dbo.CD_UL_URLLINKGRAPH INNER JOIN
	                      dbo.CD_UR_URL ON dbo.CD_UL_URLLINKGRAPH.CDUL_ToUrlID = dbo.CD_UR_URL.CDUR_URLID
	WHERE     (dbo.CD_UR_URL.CDUR_FlagRobots = 0) AND (dbo.CD_UR_URL.CDUR_FlagDomain = 1) AND (dbo.CD_UR_URL.CDUR_CRC IS NOT NULL) AND 
	                      (dbo.CD_UL_URLLINKGRAPH.CDUL_FromUrlID =@intURLID)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfInLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfInLinks    Script Date: 19/09/2004 21:59:41 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfInLinks    Script Date: 17/6/2004 12:28:28 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectNumberOfInLinks (@intURLID  int)   as
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     COUNT(CDUL_ToUrlID) AS C
	FROM         dbo.CD_UL_URLLINKGRAPH
	WHERE     (CDUL_ToUrlID = @intURLID)	

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfOutLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfOutLinks    Script Date: 19/09/2004 21:59:44 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectNumberOfOutLinks    Script Date: 17/6/2004 12:28:29 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectNumberOfOutLinks (@intURLID  int)   as
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     COUNT(CDUL_FromUrlID) AS C
	FROM         dbo.CD_UL_URLLINKGRAPH
	WHERE     (CDUL_FromUrlID = @intURLID)	

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectOutLinks    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectOutLinks    Script Date: 19/09/2004 21:59:46 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectOutLinks    Script Date: 17/6/2004 12:28:29 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectOutLinks (@intURLID  int)   as
BEGIN
	set nocount on
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

	SELECT     CDUL_ToUrlID
	FROM         dbo.CD_UL_URLLINKGRAPH
	WHERE     (CDUL_FromUrlID = @intURLID)

END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectRank    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectRank    Script Date: 19/09/2004 22:00:20 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectRank    Script Date: 17/6/2004 12:28:29 μμ ******/

CREATE PROCEDURE dbo.sp_SW_SelectRank ( @intRankTypeID int, @intURLID int, @numRank numeric(28,10) output, @intFoundRankValue tinyint output )   as
BEGIN

	SELECT   TOP 1 @numRank = SWRK_RANK
	FROM         dbo.SW_RK_Rank
	WHERE     (SWRK_TYPEID = @intRankTypeID) AND (SWRK_URLID = @intURLID)

	if (@@ROWCOUNT >0)
	begin
		set @intFoundRankValue=1
	end
	else
	begin
		set @numRank=null		
		set @intFoundRankValue=0
	end

	return 0
END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 20/09/2004 11:43:58 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 19/09/2004 21:58:39 ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 17/6/2004 12:28:28 μμ ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 5/4/2004 6:37:56 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_SelectURLsToWordProc    Script Date: 4/12/2003 4:24:55 μμ ******/
CREATE PROCEDURE dbo.sp_SW_SelectURLsToWordProc (@intHowManyURLs  int)   as
BEGIN
	declare @strSQL as varchar(1000) 

	set	@strSQL=	'SELECT     CDUR_URLID
				FROM         (SELECT     TOP '+convert(varchar,@intHowManyURLs) +' CDUR_URLID, CDUR_LastWordProcess_FIXEDNONULLS
			              FROM          (	SELECT     CDUR_URLID, ISNULL(CDUR_LastWordProcess, CONVERT(DATETIME, ''1900-1-1 00:00:00'', 102)) AS CDUR_LastWordProcess_FIXEDNONULLS
						FROM         dbo.CD_UR_URL WITH (nolock)
						WHERE    (CDUR_CRC IS NOT NULL)  ) tblURL
		                       	ORDER BY CDUR_LastWordProcess_FIXEDNONULLS) tblURL2
				ORDER BY CDUR_URLID'



	exec(@strSQL)
	
	
	return 0
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_TestInsert    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_TestInsert    Script Date: 19/09/2004 21:59:49 ******/

/****** Object:  Stored Procedure dbo.sp_SW_TestInsert    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_TestInsert    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_TestInsert(@strData as varchar(1000)) AS
BEGIN
		

	declare @maxUrlID as integer

	select @maxUrlID=max(CDUR_URLID)+1
	FROM         CD_UR_URL	


	/*insert CD_UR_URL
	select top 1 'tu'+convert(varchar(14),@maxUrlID),@strData as CDUR_DATA, CDUR_CRC, CDUR_RetrievalTime,  CDUR_HTTPCode, CDUR_LastVisited, CDUR_FlagRobots, CDUR_FlagUpdated, CDUR_FlagAssigned, CDUR_FlagDomain, NULL as CDUR_LastWordProcess                                   
	FROM         CD_UR_URL
	where CDUR_URLID=2*/
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_UnconnectURLFromUrlLinkWord    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UnconnectURLFromUrlLinkWord    Script Date: 19/09/2004 21:58:42 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UnconnectURLFromUrlLinkWord    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_UnconnectURLFromUrlLinkWord    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_UnconnectURLFromUrlLinkWord ( @intURLID as int)   AS
BEGIN	
	delete SW_UW_UrlLinkWord				
	where (SWUW_CDUR_URLID=@intURLID) 
	
	return 0
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_UpdateRank    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UpdateRank    Script Date: 19/09/2004 22:00:23 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UpdateRank    Script Date: 17/6/2004 12:28:29 μμ ******/

CREATE PROCEDURE dbo.sp_SW_UpdateRank ( @intRankTypeID int, @intURLID int, @numRank numeric(28,10), @numRankOldValue numeric(28,10) output, @intFoundRankOldValue tinyint output)   as
BEGIN


	SELECT   TOP 1 @numRankOldValue = SWRK_RANK
	FROM         dbo.SW_RK_Rank
	WHERE     (SWRK_TYPEID = @intRankTypeID) AND (SWRK_URLID = @intURLID)

	if (@@ROWCOUNT >0)
	begin
		set @intFoundRankOldValue=1
		update SW_RK_Rank
		set 	SWRK_RANK=@numRank,
			SWRK_UPDATED=GetDate()
		where  (SWRK_TYPEID = @intRankTypeID) AND (SWRK_URLID = @intURLID)
	end
	else
	begin
		set @intFoundRankOldValue=0		
		set @numRankOldValue=null
		insert SW_RK_Rank(SWRK_TYPEID, SWRK_URLID, SWRK_RANK)
		values (@intRankTypeID, @intURLID, @numRank)		
	end

	return 0
END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  Stored Procedure dbo.sp_SW_UrlHasProcessedWords    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UrlHasProcessedWords    Script Date: 19/09/2004 21:59:51 ******/

/****** Object:  Stored Procedure dbo.sp_SW_UrlHasProcessedWords    Script Date: 12/4/2003 7:35:45 PM ******/

/****** Object:  Stored Procedure dbo.sp_SW_UrlHasProcessedWords    Script Date: 4/12/2003 4:24:56 μμ ******/
CREATE PROCEDURE sp_SW_UrlHasProcessedWords ( @intURLID as int)   AS
BEGIN
	update CD_UR_URL
	set CDUR_LastWordProcess=GetDate()
	where CDUR_URLID=@intURLID
	
	return 0
END





GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  User Defined Function dbo.fn_CR_CRCStrUnique    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  User Defined Function dbo.fn_CR_CRCStrUnique    Script Date: 19/09/2004 22:00:25 ******/

/****** Object:  User Defined Function dbo.fn_CR_CRCStrUnique    Script Date: 20/10/2003 4:09:04 μμ ******/


CREATE FUNCTION dbo.fn_CR_CRCStrUnique (@strToScrable as varchar(1024))  
RETURNS integer AS  
BEGIN 
/*
	return checksum(REVERSE(CONVERT(varchar(20), checksum(@strToScrable))))
*/

return abs(convert(int,checksum(reverse(@strToScrable)))%100000000)

/*
	return checksum(@strToScrable)
*/
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO



/****** Object:  User Defined Function dbo.fn_DO_DateOnly    Script Date: 20/09/2004 11:43:59 ******/

/****** Object:  User Defined Function dbo.fn_DO_DateOnly    Script Date: 19/09/2004 22:00:28 ******/

/****** Object:  User Defined Function dbo.fn_DO_DateOnly    Script Date: 20/10/2003 4:09:04 μμ ******/


CREATE FUNCTION dbo.fn_DO_DateOnly (@sdt smalldatetime)  
RETURNS smalldatetime AS  
BEGIN 
RETURN convert(smalldatetime,floor(convert(float, (@sdt))))   
END



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

