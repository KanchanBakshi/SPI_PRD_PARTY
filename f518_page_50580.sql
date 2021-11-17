prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.12'
,p_default_workspace_id=>1307600888716932
,p_default_application_id=>518
,p_default_owner=>'APCTS'
);
end;
/
 
prompt APPLICATION 518 - Single Point Ingestion (SPI)
--
-- Application Export:
--   Application:     518
--   Name:            Single Point Ingestion (SPI)
--   Date and Time:   09:23 Wednesday November 17, 2021
--   Exported By:     KBAKSHI
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         18.2.0.00.12
--   Instance ID:     69431613733717
--

prompt --application/pages/delete_50580
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>50580);
end;
/
prompt --application/pages/page_50580
begin
wwv_flow_api.create_page(
 p_id=>50580
,p_user_interface_id=>wwv_flow_api.id(51875501499240850)
,p_name=>'Song Header/Shares Update'
,p_step_title=>'Song Header/Shares Update'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(68043383818229663)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KBAKSHI'
,p_last_upd_yyyymmddhh24miss=>'20210914082919'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1673141431665161141)
,p_plug_name=>'&nbsp'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(51851408341240826)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1673141545248161142)
,p_plug_name=>'Song Header Update'
,p_region_name=>'HEADERUPD'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(51849320405240825)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1673141619407161143)
,p_plug_name=>'Song Shares Update'
,p_region_name=>'SHARESUPD'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(51841286547240820)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1673141898067161145)
,p_plug_name=>'Mechanical  Song Shares Update'
,p_parent_plug_id=>wwv_flow_api.id(1673141619407161143)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(51849320405240825)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1678769490966283722)
,p_plug_name=>'ISWC Update'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(51849320405240825)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1678769584102283723)
,p_plug_name=>'ISWC and Song Title Update'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(51849320405240825)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1680433717733087449)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(51852637782240827)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(51876846391240858)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(51870806884240842)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1673142206213161149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1678769584102283723)
,p_button_name=>'CANCEL_TITLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_image_alt=>'Cancel '
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-rotate-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1680439999089202602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1673141898067161145)
,p_button_name=>'CANCEL_SHARE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-rotate-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1678769833081283726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1678769490966283722)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_image_alt=>'Cancel '
,p_button_position=>'BELOW_BOX'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-rotate-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1680440035920202603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1673141898067161145)
,p_button_name=>'NEXT_SHARE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1673142324019161150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1678769584102283723)
,p_button_name=>'NEXT_TITLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1678769983928283727)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1678769490966283722)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(51870469213240841)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18591957522162317)
,p_branch_name=>'Go to 50590'
,p_branch_action=>'f?p=&APP_ID.:50590:&SESSION.::&DEBUG.:RP,50590::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1673142324019161150)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40158291329958140)
,p_branch_name=>'Go to 50600'
,p_branch_action=>'f?p=&APP_ID.:50600:&SESSION.::&DEBUG.:RP,50600::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1680440035920202603)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1678770259963283730)
,p_branch_name=>'Go to 129'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1678769983928283727)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18591885193162316)
,p_name=>'P50580_SKIP_HEADER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1678769490966283722)
,p_item_default=>'Y'
,p_prompt=>'Skip Header'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(62410853427715388)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40158186289958139)
,p_name=>'P50580_SKIP_HEADER_SHARE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1673141898067161145)
,p_item_default=>'Y'
,p_prompt=>'Skip Header'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(62410853427715388)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1673141985536161146)
,p_name=>'P50580_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1678769490966283722)
,p_prompt=>'File'
,p_post_element_text=>'<a href="#APP_IMAGES#ISWC_Sample_File.xlsx">Download Template .csv file</a>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>40
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1678769330069283721)
,p_name=>'P50580_SELECTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1673141545248161142)
,p_item_default=>'1'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:ISWC Update;1,ISWC and Song Title Update;2'
,p_field_template=>wwv_flow_api.id(51869870681240840)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1678769615920283724)
,p_name=>'P50580_FILE_TITLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1678769584102283723)
,p_prompt=>'File'
,p_post_element_text=>'<a href="#APP_IMAGES#Song Header File Template.csv">Download Template .csv file</a>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>7
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1678769759883283725)
,p_name=>'P50580_SKIP_HEADER_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1678769584102283723)
,p_item_default=>'Y'
,p_prompt=>'Skip Header'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO'
,p_lov=>'.'||wwv_flow_api.id(62410853427715388)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1680439888711202601)
,p_name=>'P50580_FILE_SHARE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1673141898067161145)
,p_prompt=>'File'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#APP_IMAGES#Song Share Updates File Template.csv">Download Template .csv file</a>',
'',
''))
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>7
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(51870006101240840)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1683961889200103804)
,p_name=>'P50580_CALLING_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1673141545248161142)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1673142092643161147)
,p_validation_name=>'File is NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P50580_FILE_TITLE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a file to process.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(1673142324019161150)
,p_associated_item=>wwv_flow_api.id(1678769615920283724)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1680440140198202604)
,p_validation_name=>'File Share is NOT NULL'
,p_validation_sequence=>20
,p_validation=>'P50580_FILE_SHARE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a file to process.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(1680440035920202603)
,p_associated_item=>wwv_flow_api.id(1680439888711202601)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1678770069081283728)
,p_name=>'Change of Radio Button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50580_SELECTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1678770122963283729)
,p_event_id=>wwv_flow_api.id(1678770069081283728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P50580_SELECTION'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1680987513098708116)
,p_name=>'Show Region ISWC'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50580_SELECTION'
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_SELECTED_TAB = ''HEADER'' OR :P50580_CALLING_PAGE_ID IN( 50580,50590,129)'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680987624122708117)
,p_event_id=>wwv_flow_api.id(1680987513098708116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680987758671708118)
,p_event_id=>wwv_flow_api.id(1680987513098708116)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963825583103824)
,p_event_id=>wwv_flow_api.id(1680987513098708116)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1683963510408103821)
,p_name=>'Show Region Title/ISWC'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50580_SELECTION'
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_SELECTED_TAB = ''HEADER'' OR :P50580_CALLING_PAGE_ID IN (50580,50590,129)'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963678816103822)
,p_event_id=>wwv_flow_api.id(1683963510408103821)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963728874103823)
,p_event_id=>wwv_flow_api.id(1683963510408103821)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963917426103825)
,p_event_id=>wwv_flow_api.id(1683963510408103821)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1680988054896708121)
,p_name=>'Show Region Shares'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50580_SELECTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P50580_SELECTED_TAB'
,p_display_when_cond2=>'SHARES'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680988232035708123)
,p_event_id=>wwv_flow_api.id(1680988054896708121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683964012732103826)
,p_event_id=>wwv_flow_api.id(1680988054896708121)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680988166881708122)
,p_event_id=>wwv_flow_api.id(1680988054896708121)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1680988992084708130)
,p_name=>'OnClick_Song_Shares'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'[href="#SHARESUPD"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962035577103806)
,p_event_id=>wwv_flow_api.id(1680988992084708130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50580_SELECTED_TAB := ''SHARES'';',
'--:P50580_SELECTION := 2;',
''))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680989137772708132)
,p_event_id=>wwv_flow_api.id(1680988992084708130)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680990603188708147)
,p_event_id=>wwv_flow_api.id(1680988992084708130)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44968118689750002)
,p_event_id=>wwv_flow_api.id(1680988992084708130)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1673141898067161145)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683966186098103847)
,p_event_id=>wwv_flow_api.id(1680988992084708130)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'PROC_LOGS('':P50580_SELECTION FROM SHARES'' || :P50580_SELECTION );',
'END;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1680990789483708148)
,p_name=>'OnClick_Song_Header_ISWC'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'[href="#HEADERUPD"]'
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_CALLING_PAGE_ID IN (50600,50580)'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962217826103808)
,p_event_id=>wwv_flow_api.id(1680990789483708148)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50580_SELECTED_TAB := ''HEADER'';',
'--:P50580_SELECTION := 1;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680990855510708149)
,p_event_id=>wwv_flow_api.id(1680990789483708148)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1680990905833708150)
,p_event_id=>wwv_flow_api.id(1680990789483708148)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1673141898067161145)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683965209696103838)
,p_event_id=>wwv_flow_api.id(1680990789483708148)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1683963046777103816)
,p_name=>'OnClick_Song_Header_ISWC_TITLE'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'[href="#HEADERUPD"]'
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_CALLING_PAGE_ID IN (50600,50580)'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963286363103818)
,p_event_id=>wwv_flow_api.id(1683963046777103816)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50580_SELECTED_TAB := ''HEADER'';',
'--:P50580_SELECTION := 2;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963327129103819)
,p_event_id=>wwv_flow_api.id(1683963046777103816)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963128756103817)
,p_event_id=>wwv_flow_api.id(1683963046777103816)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1673141898067161145)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683963465695103820)
,p_event_id=>wwv_flow_api.id(1683963046777103816)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1683962427408103810)
,p_name=>'Display_Selected_Region'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_SELECTED_TAB = ''SHARES'' OR :P50580_CALLING_PAGE_ID IN ( 50580, 50560)'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962537250103811)
,p_event_id=>wwv_flow_api.id(1683962427408103810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1673141898067161145)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962617628103812)
,p_event_id=>wwv_flow_api.id(1683962427408103810)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962739360103813)
,p_event_id=>wwv_flow_api.id(1683962427408103810)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1683962837415103814)
,p_name=>'Display_ISWC_region'
,p_event_sequence=>90
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_CALLING_PAGE_ID in (50580, 129,50590) AND nvl(:P50580_SELECTED_TAB,''XX'') <> ''SHARES'' '
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683962940315103815)
,p_event_id=>wwv_flow_api.id(1683962837415103814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683964448591103830)
,p_event_id=>wwv_flow_api.id(1683962837415103814)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1683964563340103831)
,p_name=>'Display_ISWC_Title_region'
,p_event_sequence=>100
,p_condition_element=>'P50580_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_display_when_cond=>':P50580_CALLING_PAGE_ID in  (50580,129,50590) AND nvl(:P50580_SELECTED_TAB,''X'') <> ''SHARES'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683964614565103832)
,p_event_id=>wwv_flow_api.id(1683964563340103831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769584102283723)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1683964707666103833)
,p_event_id=>wwv_flow_api.id(1683964563340103831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1678769490966283722)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18591758637162315)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'Import CSV to collection for song header_song_title'
,p_attribute_01=>'P50580_FILE_TITLE'
,p_attribute_02=>'BULK_SONG_HEADER'
,p_attribute_04=>','
,p_attribute_05=>'"'
,p_attribute_07=>'P50580_SKIP_HEADER_TITLE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1673142324019161150)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1678770424623283732)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'Import CSV to collection for song header_iswc'
,p_attribute_01=>'P50580_FILE'
,p_attribute_02=>'ISWC_DATA'
,p_attribute_04=>','
,p_attribute_05=>'"'
,p_attribute_07=>'P50580_SKIP_HEADER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1678769983928283727)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40158089411958138)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'Import CSV to collection for shares update'
,p_attribute_01=>'P50580_FILE_SHARE'
,p_attribute_02=>'P50580_BULK_SHARES_UPDATE'
,p_attribute_04=>','
,p_attribute_05=>'"'
,p_attribute_07=>'P50580_SKIP_HEADER_SHARE'
,p_attribute_08=>'C001'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1680440035920202603)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1678770319200283731)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Truncoll'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	l_coll_name1	    VARCHAR2(100) := ''ISWC_DATA'' ;',
'BEGIN',
'',
'',
'',
'IF NVL(:REQUEST, ''~'') = ''TRUNC'' THEN',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (p_collection_name=>l_coll_name1);',
'END IF;',
'',
'--SPI - 4130',
'IF (APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name => ''P50580_BULK_SHARES_UPDATE'') ) THEN',
'APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''P50580_BULK_SHARES_UPDATE'');',
'      ',
'END IF;',
'END;',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
