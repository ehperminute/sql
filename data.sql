--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _dbo_all_educationtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_all_educationtype (
    id_educationtype smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_educationtype character varying(14) DEFAULT NULL::character varying,
    date_educationtype character varying(19) DEFAULT NULL::character varying,
    descript_educationtype character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_all_educationtype OWNER TO rebasedata;

--
-- Name: _dbo_all_municipality; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_all_municipality (
    id_municipality smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_municipality character varying(38) DEFAULT NULL::character varying,
    descript_municipality character varying(1) DEFAULT NULL::character varying,
    id_subjectrf smallint
);


ALTER TABLE public._dbo_all_municipality OWNER TO rebasedata;

--
-- Name: _dbo_all_settlementtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_all_settlementtype (
    id_settlementtype smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_settlementtype character varying(14) DEFAULT NULL::character varying,
    date_settlementtype character varying(19) DEFAULT NULL::character varying,
    descript_settlementtype character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_all_settlementtype OWNER TO rebasedata;

--
-- Name: _dbo_all_subjectrf; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_all_subjectrf (
    id_subjectrf smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_subjectrf character varying(57) DEFAULT NULL::character varying,
    code character varying(2) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_all_subjectrf OWNER TO rebasedata;

--
-- Name: _dbo_own_cnn; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_cnn (
    id_cnn smallint,
    id_own smallint,
    id_cnnsub smallint,
    settimeout smallint,
    date_lastlogin character varying(19) DEFAULT NULL::character varying,
    date_lasttime character varying(19) DEFAULT NULL::character varying,
    ipaddress character varying(1) DEFAULT NULL::character varying,
    namecomputer character varying(15) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    clientappversion character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_cnn OWNER TO rebasedata;

--
-- Name: _dbo_own_cnnlog; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_cnnlog (
    id_cnnlog smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    id_cnnsub smallint,
    id_obj character varying(1) DEFAULT NULL::character varying,
    descript character varying(16) DEFAULT NULL::character varying,
    id_cnn smallint,
    id_sol character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_cnnlog OWNER TO rebasedata;

--
-- Name: _dbo_own_cnnsub; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_cnnsub (
    id_cnnsub smallint,
    name character varying(30) DEFAULT NULL::character varying,
    descript character varying(38) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_cnnsub OWNER TO rebasedata;

--
-- Name: _dbo_own_flagon; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_flagon (
    id_flagon smallint,
    id_own smallint,
    setvalue integer,
    id_flagontype smallint
);


ALTER TABLE public._dbo_own_flagon OWNER TO rebasedata;

--
-- Name: _dbo_own_flagontype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_flagontype (
    id_flagontype smallint,
    name character varying(26) DEFAULT NULL::character varying,
    descript character varying(27) DEFAULT NULL::character varying,
    id_obj character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_flagontype OWNER TO rebasedata;

--
-- Name: _dbo_own_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_log (
    id_log smallint,
    date_log character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_area smallint,
    id_obj integer,
    id_field integer,
    id_in smallint,
    value_old character varying(61) DEFAULT NULL::character varying,
    value_new character varying(61) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_log OWNER TO rebasedata;

--
-- Name: _dbo_own_objfldprp; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_objfldprp (
    id_objfldprp smallint,
    id_obj integer,
    id_objfld integer,
    width_in_pixels smallint,
    id_own_user smallint,
    id_own character varying(3) DEFAULT NULL::character varying,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_objfldprp OWNER TO rebasedata;

--
-- Name: _dbo_own_objfldrule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_objfldrule (
    id_objfldrule character varying(1) DEFAULT NULL::character varying,
    in_date character varying(1) DEFAULT NULL::character varying,
    up_date character varying(1) DEFAULT NULL::character varying,
    id_own character varying(1) DEFAULT NULL::character varying,
    id_flag character varying(1) DEFAULT NULL::character varying,
    id_area character varying(1) DEFAULT NULL::character varying,
    id_obj character varying(1) DEFAULT NULL::character varying,
    id_objfld character varying(1) DEFAULT NULL::character varying,
    denyread character varying(1) DEFAULT NULL::character varying,
    denywrite character varying(1) DEFAULT NULL::character varying,
    id_own_user character varying(1) DEFAULT NULL::character varying,
    id_objrule character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_objfldrule OWNER TO rebasedata;

--
-- Name: _dbo_own_objhide; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_objhide (
    id_objhide smallint,
    id_own smallint,
    id_obj smallint,
    setid smallint
);


ALTER TABLE public._dbo_own_objhide OWNER TO rebasedata;

--
-- Name: _dbo_own_objrule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_objrule (
    id_objrule smallint,
    id_flag smallint,
    id_own_user smallint,
    id_area smallint,
    id_obj integer,
    ruleselect smallint,
    ruleupdate smallint,
    ruleinsert smallint,
    ruledelete smallint,
    ruleupdateselect smallint,
    ruleinsertcopy smallint,
    ruleexportrecordone smallint,
    ruleexportrecordall smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint
);


ALTER TABLE public._dbo_own_objrule OWNER TO rebasedata;

--
-- Name: _dbo_own_owngroup; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_owngroup (
    id_owngroup smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_owngroup character varying(26) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_owngroup OWNER TO rebasedata;

--
-- Name: _dbo_own_owngrouprow; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_owngrouprow (
    id_owngrouprow smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_owngroup smallint,
    id_own_set smallint,
    descript character varying(9) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_owngrouprow OWNER TO rebasedata;

--
-- Name: _dbo_own_ownlevel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_ownlevel (
    id_ownlevel smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_own_set smallint,
    id_own_papa smallint
);


ALTER TABLE public._dbo_own_ownlevel OWNER TO rebasedata;

--
-- Name: _dbo_own_ownwork; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_ownwork (
    id_ownwork character varying(1) DEFAULT NULL::character varying,
    date_ownwork character varying(1) DEFAULT NULL::character varying,
    id_own character varying(1) DEFAULT NULL::character varying,
    id_workplace character varying(1) DEFAULT NULL::character varying,
    name_ownwork character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_ownwork OWNER TO rebasedata;

--
-- Name: _dbo_own_prf; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_prf (
    id_prf smallint,
    name character varying(10) DEFAULT NULL::character varying,
    descript character varying(13) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_prf OWNER TO rebasedata;

--
-- Name: _dbo_own_reference; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_reference (
    id_reference smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    date_reference character varying(19) DEFAULT NULL::character varying,
    id_obj_from smallint,
    id_from smallint,
    id_obj_to smallint,
    id_to smallint,
    descript character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_reference OWNER TO rebasedata;

--
-- Name: _dbo_own_sendto; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_sendto (
    id_sendto character varying(1) DEFAULT NULL::character varying,
    in_date character varying(1) DEFAULT NULL::character varying,
    up_date character varying(1) DEFAULT NULL::character varying,
    id_own character varying(1) DEFAULT NULL::character varying,
    id_flag character varying(1) DEFAULT NULL::character varying,
    id_area character varying(1) DEFAULT NULL::character varying,
    id_obj character varying(1) DEFAULT NULL::character varying,
    id_send character varying(1) DEFAULT NULL::character varying,
    date_sendto character varying(1) DEFAULT NULL::character varying,
    id_own_from character varying(1) DEFAULT NULL::character varying,
    id_own_to character varying(1) DEFAULT NULL::character varying,
    id_department character varying(1) DEFAULT NULL::character varying,
    id_owngroup character varying(1) DEFAULT NULL::character varying,
    dateset character varying(1) DEFAULT NULL::character varying,
    dateview character varying(1) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    id_sendto_papa character varying(1) DEFAULT NULL::character varying,
    report character varying(1) DEFAULT NULL::character varying,
    datereport character varying(1) DEFAULT NULL::character varying,
    is_reportset character varying(1) DEFAULT NULL::character varying,
    reportdd character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_sendto OWNER TO rebasedata;

--
-- Name: _dbo_own_sendtosmtp; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_sendtosmtp (
    id_sendtosmtp character varying(1) DEFAULT NULL::character varying,
    in_date character varying(1) DEFAULT NULL::character varying,
    up_date character varying(1) DEFAULT NULL::character varying,
    id_own character varying(1) DEFAULT NULL::character varying,
    id_flag character varying(1) DEFAULT NULL::character varying,
    id_area character varying(1) DEFAULT NULL::character varying,
    date_sendtosmtp character varying(1) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    id_person character varying(1) DEFAULT NULL::character varying,
    smtpaddress character varying(1) DEFAULT NULL::character varying,
    id_obj character varying(1) DEFAULT NULL::character varying,
    id_send character varying(1) DEFAULT NULL::character varying,
    id_own_from character varying(1) DEFAULT NULL::character varying,
    start_date character varying(1) DEFAULT NULL::character varying,
    stop_date character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_own_sendtosmtp OWNER TO rebasedata;

--
-- Name: _dbo_own_solrule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_own_solrule (
    id_solrule smallint,
    id_flag smallint,
    id_area smallint,
    id_sol smallint,
    id_prf smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own_user smallint,
    id_own smallint
);


ALTER TABLE public._dbo_own_solrule OWNER TO rebasedata;

--
-- Name: _dbo_pem_averagedata; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_averagedata (
    id_averagedata smallint,
    statfunction character varying(7) DEFAULT NULL::character varying,
    id_subjectrf smallint,
    id_organization smallint,
    id_grade character varying(3) DEFAULT NULL::character varying,
    id_period smallint,
    s1 character varying(18) DEFAULT NULL::character varying,
    s2 character varying(17) DEFAULT NULL::character varying,
    s3 character varying(18) DEFAULT NULL::character varying,
    s4 character varying(17) DEFAULT NULL::character varying,
    s5 character varying(18) DEFAULT NULL::character varying,
    s6 character varying(18) DEFAULT NULL::character varying,
    t1 character varying(17) DEFAULT NULL::character varying,
    t2 character varying(17) DEFAULT NULL::character varying,
    testscore character varying(16) DEFAULT NULL::character varying,
    id_testlevel character varying(3) DEFAULT NULL::character varying,
    id_report smallint,
    s7 character varying(18) DEFAULT NULL::character varying,
    s8 character varying(18) DEFAULT NULL::character varying,
    id_parallel smallint
);


ALTER TABLE public._dbo_pem_averagedata OWNER TO rebasedata;

--
-- Name: _dbo_pem_grade; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_grade (
    id_grade smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_grade character varying(14) DEFAULT NULL::character varying,
    descript_grade character varying(1) DEFAULT NULL::character varying,
    teacherfio character varying(1) DEFAULT NULL::character varying,
    id_organization smallint,
    id_subjectrf character varying(2) DEFAULT NULL::character varying,
    id_parallel smallint
);


ALTER TABLE public._dbo_pem_grade OWNER TO rebasedata;

--
-- Name: _dbo_pem_learner; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_learner (
    id_learner smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_learner character varying(41) DEFAULT NULL::character varying,
    date_learner character varying(1) DEFAULT NULL::character varying,
    descript_learner character varying(1) DEFAULT NULL::character varying,
    id_grade smallint,
    learner_id character varying(11) DEFAULT NULL::character varying,
    id_organization smallint
);


ALTER TABLE public._dbo_pem_learner OWNER TO rebasedata;

--
-- Name: _dbo_pem_namecells; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_namecells (
    id_namecells smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    namecells character varying(13) DEFAULT NULL::character varying,
    descript character varying(39) DEFAULT NULL::character varying,
    insertformula character varying(1) DEFAULT NULL::character varying,
    isnamevalue smallint,
    id_obj_res integer,
    id_objfld_res integer,
    id_objfld_w1 integer,
    text_w1 character varying(8) DEFAULT NULL::character varying,
    add_w2 smallint,
    id_objfld_w2 integer,
    text_w2 character varying(8) DEFAULT NULL::character varying,
    add_w3 smallint,
    id_objfld_w3 integer,
    text_w3 character varying(8) DEFAULT NULL::character varying,
    add_w4 smallint,
    id_objfld_w4 integer,
    text_w4 character varying(6) DEFAULT NULL::character varying,
    id_objfld_w5 character varying(5) DEFAULT NULL::character varying,
    text_w5 character varying(8) DEFAULT NULL::character varying,
    add_w5 smallint,
    id_report smallint,
    tabindex smallint
);


ALTER TABLE public._dbo_pem_namecells OWNER TO rebasedata;

--
-- Name: _dbo_pem_organization; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_organization (
    id_organization smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_organization character varying(80) DEFAULT NULL::character varying,
    descript_organization character varying(1) DEFAULT NULL::character varying,
    id_municipality character varying(1) DEFAULT NULL::character varying,
    id_educationtype character varying(1) DEFAULT NULL::character varying,
    id_settlementtype character varying(1) DEFAULT NULL::character varying,
    addressfact character varying(1) DEFAULT NULL::character varying,
    directorfio character varying(1) DEFAULT NULL::character varying,
    telephonecontact character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    site character varying(1) DEFAULT NULL::character varying,
    id_subjectrf character varying(2) DEFAULT NULL::character varying,
    organization_id character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_organization OWNER TO rebasedata;

--
-- Name: _dbo_pem_organizationgroupforparallel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_organizationgroupforparallel (
    id_organizationgroupforparallel smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(2) DEFAULT NULL::character varying,
    id_period character varying(1) DEFAULT NULL::character varying,
    id_parallel character varying(2) DEFAULT NULL::character varying,
    id_report character varying(2) DEFAULT NULL::character varying,
    groupnumber character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_organizationgroupforparallel OWNER TO rebasedata;

--
-- Name: _dbo_pem_parallel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_parallel (
    id_parallel smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_parallel character varying(14) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_parallel OWNER TO rebasedata;

--
-- Name: _dbo_pem_period; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_period (
    id_period smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_period character varying(15) DEFAULT NULL::character varying,
    descript_period character varying(1) DEFAULT NULL::character varying,
    datestart character varying(19) DEFAULT NULL::character varying,
    dateend character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_period OWNER TO rebasedata;

--
-- Name: _dbo_pem_primarydata; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_primarydata (
    id_primarydata integer,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_subjectrf smallint,
    id_organization smallint,
    id_grade smallint,
    id_learner smallint,
    id_period smallint,
    a01 smallint,
    a02 smallint,
    a03 smallint,
    a04 smallint,
    a05 smallint,
    a06 smallint,
    a07 smallint,
    a08 smallint,
    a09 smallint,
    a10 smallint,
    a11 smallint,
    a12 smallint,
    a13 smallint,
    a14 smallint,
    a15 smallint,
    a16 smallint,
    a17 smallint,
    a18 smallint,
    a19 smallint,
    a20 smallint,
    a21 smallint,
    a22 smallint,
    a23 smallint,
    a24 smallint,
    a25 smallint,
    a26 smallint,
    testscore smallint,
    id_testlevel smallint,
    id_report smallint,
    id_parallel character varying(2) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_primarydata OWNER TO rebasedata;

--
-- Name: _dbo_pem_report; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_report (
    id_report smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_report character varying(61) DEFAULT NULL::character varying,
    date_report character varying(19) DEFAULT NULL::character varying,
    descript_report character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_report OWNER TO rebasedata;

--
-- Name: _dbo_pem_report_section; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_report_section (
    id_report_section smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_report_section character varying(44) DEFAULT NULL::character varying,
    namefield character varying(2) DEFAULT NULL::character varying,
    id_report character varying(1) DEFAULT NULL::character varying,
    itemsnumbers character varying(50) DEFAULT NULL::character varying,
    maxscore smallint
);


ALTER TABLE public._dbo_pem_report_section OWNER TO rebasedata;

--
-- Name: _dbo_pem_sectiondata; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_sectiondata (
    id_sectiondata integer,
    id_subjectrf smallint,
    id_organization smallint,
    id_grade smallint,
    id_learner smallint,
    id_period smallint,
    s1 smallint,
    s2 smallint,
    s3 smallint,
    s4 smallint,
    s5 smallint,
    s6 character varying(1) DEFAULT NULL::character varying,
    testscore smallint,
    id_testlevel smallint,
    t1 smallint,
    t2 smallint,
    id_report smallint,
    s7 character varying(1) DEFAULT NULL::character varying,
    s8 character varying(1) DEFAULT NULL::character varying,
    id_parallel smallint
);


ALTER TABLE public._dbo_pem_sectiondata OWNER TO rebasedata;

--
-- Name: _dbo_pem_testlevel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_pem_testlevel (
    id_testlevel smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_testlevel character varying(13) DEFAULT NULL::character varying,
    descript_testlevel character varying(1) DEFAULT NULL::character varying,
    setmin character varying(1) DEFAULT NULL::character varying,
    setmax character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_pem_testlevel OWNER TO rebasedata;

--
-- Name: _dbo_sys_area; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_area (
    id_area smallint,
    name character varying(14) DEFAULT NULL::character varying,
    descript character varying(30) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_area OWNER TO rebasedata;

--
-- Name: _dbo_sys_colortheme; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_colortheme (
    id_colortheme smallint,
    name character varying(14) DEFAULT NULL::character varying,
    descript character varying(17) DEFAULT NULL::character varying,
    red smallint,
    green smallint,
    blue smallint
);


ALTER TABLE public._dbo_sys_colortheme OWNER TO rebasedata;

--
-- Name: _dbo_sys_const; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_const (
    id_const smallint,
    name character varying(7) DEFAULT NULL::character varying,
    alias character varying(9) DEFAULT NULL::character varying,
    setvalue character varying(7) DEFAULT NULL::character varying,
    descript character varying(28) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_const OWNER TO rebasedata;

--
-- Name: _dbo_sys_docflowtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_docflowtype (
    id_docflowtype smallint,
    name character varying(31) DEFAULT NULL::character varying,
    descript character varying(35) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_docflowtype OWNER TO rebasedata;

--
-- Name: _dbo_sys_doctext; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_doctext (
    id_doctext character varying(1) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    alltext character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_doctext OWNER TO rebasedata;

--
-- Name: _dbo_sys_doctype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_doctype (
    id_doctype smallint,
    name character varying(8) DEFAULT NULL::character varying,
    descript character varying(15) DEFAULT NULL::character varying,
    fileextension character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_doctype OWNER TO rebasedata;

--
-- Name: _dbo_sys_dtype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_dtype (
    id_dtype smallint,
    bytesize smallint,
    name character varying(8) DEFAULT NULL::character varying,
    alias character varying(8) DEFAULT NULL::character varying,
    descript character varying(23) DEFAULT NULL::character varying,
    alias_mssqlserver character varying(14) DEFAULT NULL::character varying,
    alias_msaccess character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_dtype OWNER TO rebasedata;

--
-- Name: _dbo_sys_flag; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_flag (
    id_flag smallint,
    name character varying(10) DEFAULT NULL::character varying,
    descript character varying(16) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_flag OWNER TO rebasedata;

--
-- Name: _dbo_sys_frame; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_frame (
    id_frame smallint,
    name character varying(6) DEFAULT NULL::character varying,
    descript character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_frame OWNER TO rebasedata;

--
-- Name: _dbo_sys_frameload; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_frameload (
    id_frameload smallint,
    id_interface smallint,
    toright smallint,
    setpersent smallint,
    setpixels smallint,
    interfaces character varying(35) DEFAULT NULL::character varying,
    id_framesch smallint,
    id_frame smallint,
    id_frame_to smallint
);


ALTER TABLE public._dbo_sys_frameload OWNER TO rebasedata;

--
-- Name: _dbo_sys_framesch; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_framesch (
    id_framesch smallint,
    name character varying(37) DEFAULT NULL::character varying,
    descript character varying(42) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_framesch OWNER TO rebasedata;

--
-- Name: _dbo_sys_frametool; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_frametool (
    id_frametool smallint,
    descript character varying(24) DEFAULT NULL::character varying,
    id_frame smallint,
    id_interface smallint,
    pixelheight smallint,
    id_frametoolsch smallint,
    id_framesch smallint,
    pixelbuttoninterval smallint,
    buttonsonleft smallint,
    id_colortheme_fc smallint,
    id_colortheme_bc smallint
);


ALTER TABLE public._dbo_sys_frametool OWNER TO rebasedata;

--
-- Name: _dbo_sys_frametoolload; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_frametoolload (
    id_frametoolload smallint,
    name character varying(15) DEFAULT NULL::character varying,
    descript character varying(47) DEFAULT NULL::character varying,
    id_res smallint,
    unvisible smallint,
    leftpixel smallint,
    checkgroup smallint,
    checkstatus smallint,
    tabindex smallint,
    id_frametoolsch smallint
);


ALTER TABLE public._dbo_sys_frametoolload OWNER TO rebasedata;

--
-- Name: _dbo_sys_frametoolsch; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_frametoolsch (
    id_frametoolsch smallint,
    name character varying(42) DEFAULT NULL::character varying,
    descript character varying(47) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_frametoolsch OWNER TO rebasedata;

--
-- Name: _dbo_sys_hash; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_hash (
    id_hash smallint,
    name character varying(16) DEFAULT NULL::character varying,
    key_to character varying(5) DEFAULT NULL::character varying,
    id_obj character varying(4) DEFAULT NULL::character varying,
    select_to character varying(110) DEFAULT NULL::character varying,
    where_to character varying(57) DEFAULT NULL::character varying,
    order_to character varying(21) DEFAULT NULL::character varying,
    descript character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_hash OWNER TO rebasedata;

--
-- Name: _dbo_sys_interface; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_interface (
    id_interface smallint,
    name character varying(13) DEFAULT NULL::character varying,
    descript character varying(35) DEFAULT NULL::character varying,
    alias character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_interface OWNER TO rebasedata;

--
-- Name: _dbo_sys_menu; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_menu (
    id_menu smallint,
    name character varying(5) DEFAULT NULL::character varying,
    descript character varying(5) DEFAULT NULL::character varying,
    id_menugroup smallint,
    level smallint,
    id_menu_papa smallint
);


ALTER TABLE public._dbo_sys_menu OWNER TO rebasedata;

--
-- Name: _dbo_sys_menutype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_menutype (
    id_menutype smallint,
    name character varying(9) DEFAULT NULL::character varying,
    descript character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_menutype OWNER TO rebasedata;

--
-- Name: _dbo_sys_namespace; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_namespace (
    id_namespace smallint,
    name character varying(9) DEFAULT NULL::character varying,
    descript character varying(28) DEFAULT NULL::character varying,
    prefix character varying(3) DEFAULT NULL::character varying,
    postfix character varying(1) DEFAULT NULL::character varying,
    id_obj_alias smallint
);


ALTER TABLE public._dbo_sys_namespace OWNER TO rebasedata;

--
-- Name: _dbo_sys_obj; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_obj (
    id_obj integer,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    name character varying(32) DEFAULT NULL::character varying,
    descript character varying(59) DEFAULT NULL::character varying,
    id_sol smallint,
    is_unused smallint,
    deforderby character varying(1) DEFAULT NULL::character varying,
    is_docflow smallint,
    id_interface smallint,
    id_objfld character varying(1) DEFAULT NULL::character varying,
    id_docflowtype character varying(1) DEFAULT NULL::character varying,
    rowsheight smallint
);


ALTER TABLE public._dbo_sys_obj OWNER TO rebasedata;

--
-- Name: _dbo_sys_objdoc; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_objdoc (
    id_objdoc smallint,
    id_own smallint,
    id_obj smallint,
    key_from smallint,
    date_objdoc character varying(1) DEFAULT NULL::character varying,
    id_doctype smallint,
    filename character varying(1) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    id_doctext character varying(1) DEFAULT NULL::character varying,
    filesize character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_objdoc OWNER TO rebasedata;

--
-- Name: _dbo_sys_objevt; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_objevt (
    id_objevt smallint,
    id_obj smallint,
    id_objevttype smallint,
    numline smallint,
    setline character varying(5) DEFAULT NULL::character varying,
    id_fun character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_objevt OWNER TO rebasedata;

--
-- Name: _dbo_sys_objevttype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_objevttype (
    id_objevttype smallint,
    name character varying(18) DEFAULT NULL::character varying,
    descript character varying(25) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_objevttype OWNER TO rebasedata;

--
-- Name: _dbo_sys_objfld; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_objfld (
    id_objfld integer,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    name character varying(31) DEFAULT NULL::character varying,
    descript character varying(248) DEFAULT NULL::character varying,
    id_obj integer,
    id_dtype smallint,
    setsize smallint,
    tabindex smallint,
    id_objlnk smallint,
    unvisible smallint,
    unused smallint,
    defvalue character varying(23) DEFAULT NULL::character varying,
    defwidth smallint,
    defformat character varying(15) DEFAULT NULL::character varying,
    formula character varying(1) DEFAULT NULL::character varying,
    is_list smallint
);


ALTER TABLE public._dbo_sys_objfld OWNER TO rebasedata;

--
-- Name: _dbo_sys_objlnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_objlnk (
    id_objlnk smallint,
    id_obj_from integer,
    id_objkey_from integer,
    id_obj_to integer,
    id_objkey_to integer,
    select_to character varying(31) DEFAULT NULL::character varying,
    where_to character varying(21) DEFAULT NULL::character varying,
    order_to character varying(16) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_objlnk OWNER TO rebasedata;

--
-- Name: _dbo_sys_oper; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_oper (
    id_oper smallint,
    name character varying(17) DEFAULT NULL::character varying,
    descript character varying(22) DEFAULT NULL::character varying,
    alias character varying(8) DEFAULT NULL::character varying,
    id_opertype smallint,
    id_namespace smallint,
    rang smallint
);


ALTER TABLE public._dbo_sys_oper OWNER TO rebasedata;

--
-- Name: _dbo_sys_opertype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_opertype (
    id_opertype smallint,
    name character varying(10) DEFAULT NULL::character varying,
    descript character varying(27) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_opertype OWNER TO rebasedata;

--
-- Name: _dbo_sys_own; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_own (
    id_own smallint,
    id_prf smallint,
    login character varying(1) DEFAULT NULL::character varying,
    name character varying(2) DEFAULT NULL::character varying,
    descript character varying(31) DEFAULT NULL::character varying,
    id_area smallint,
    domainuser character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_own OWNER TO rebasedata;

--
-- Name: _dbo_sys_res; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_res (
    id_res smallint,
    name character varying(24) DEFAULT NULL::character varying,
    descript character varying(5) DEFAULT NULL::character varying,
    id_restype smallint
);


ALTER TABLE public._dbo_sys_res OWNER TO rebasedata;

--
-- Name: _dbo_sys_restype; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_restype (
    id_restype smallint,
    name character varying(13) DEFAULT NULL::character varying,
    descript character varying(25) DEFAULT NULL::character varying,
    alias character varying(5) DEFAULT NULL::character varying,
    catalog character varying(7) DEFAULT NULL::character varying,
    fileextencion character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_restype OWNER TO rebasedata;

--
-- Name: _dbo_sys_sch; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_sch (
    id_sch smallint,
    name character varying(20) DEFAULT NULL::character varying,
    descript character varying(34) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_sch OWNER TO rebasedata;

--
-- Name: _dbo_sys_schalter; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_schalter (
    id_schalter smallint,
    id_sch smallint,
    tabindex smallint,
    id_dtype smallint,
    setsyze smallint,
    name character varying(10) DEFAULT NULL::character varying,
    setparam character varying(15) DEFAULT NULL::character varying,
    descript character varying(15) DEFAULT NULL::character varying,
    unvisible smallint,
    defvalue character varying(4) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_schalter OWNER TO rebasedata;

--
-- Name: _dbo_sys_schinsert; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_schinsert (
    id_schinsert smallint,
    id_sch smallint,
    id_schalter smallint,
    numrecord smallint,
    setvalue character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_schinsert OWNER TO rebasedata;

--
-- Name: _dbo_sys_schlnk; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_schlnk (
    id_schlnk smallint,
    id_sch smallint,
    id_schalter smallint,
    id_obj_to smallint,
    id_objkey_to smallint,
    select_to character varying(18) DEFAULT NULL::character varying,
    where_to character varying(1) DEFAULT NULL::character varying,
    order_to character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_schlnk OWNER TO rebasedata;

--
-- Name: _dbo_sys_sol; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_sol (
    id_sol smallint,
    name character varying(5) DEFAULT NULL::character varying,
    descript character varying(44) DEFAULT NULL::character varying,
    unused character varying(1) DEFAULT NULL::character varying,
    id_framesch smallint,
    savepathnetwork character varying(19) DEFAULT NULL::character varying,
    savepathlocal character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_sys_sol OWNER TO rebasedata;

--
-- Name: _dbo_sys_variable; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_sys_variable (
    id_variable smallint,
    name character varying(16) DEFAULT NULL::character varying,
    descript character varying(36) DEFAULT NULL::character varying,
    alias character varying(20) DEFAULT NULL::character varying,
    id_dtype smallint
);


ALTER TABLE public._dbo_sys_variable OWNER TO rebasedata;

--
-- Name: _dbo_tmp_num; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_tmp_num (
    id_num smallint
);


ALTER TABLE public._dbo_tmp_num OWNER TO rebasedata;

--
-- Name: _dbo_tmr_letter; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_tmr_letter (
    id_letter character varying(1) DEFAULT NULL::character varying,
    in_date character varying(1) DEFAULT NULL::character varying,
    up_date character varying(1) DEFAULT NULL::character varying,
    id_own character varying(1) DEFAULT NULL::character varying,
    id_flag character varying(1) DEFAULT NULL::character varying,
    id_area character varying(1) DEFAULT NULL::character varying,
    date_letter character varying(1) DEFAULT NULL::character varying,
    text_letter character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_tmr_letter OWNER TO rebasedata;

--
-- Name: _dbo_tmr_message; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_tmr_message (
    id_message smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_message character varying(63) DEFAULT NULL::character varying,
    date_message character varying(19) DEFAULT NULL::character varying,
    id_own_from smallint,
    id_own_to smallint,
    is_apimsgbox smallint,
    dateview character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_tmr_message OWNER TO rebasedata;

--
-- Name: _dbo_tmr_task; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_tmr_task (
    id_task smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_task character varying(8) DEFAULT NULL::character varying,
    date_task character varying(19) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_tmr_task OWNER TO rebasedata;

--
-- Name: _dbo_tmr_timer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_tmr_timer (
    id_timer smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_timer character varying(8) DEFAULT NULL::character varying,
    date_timer character varying(19) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    id_own_from character varying(1) DEFAULT NULL::character varying,
    id_ownto character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_tmr_timer OWNER TO rebasedata;

--
-- Name: _dbo_yak_clusterses; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_clusterses (
    id_clusterses smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_clusterses character varying(14) DEFAULT NULL::character varying,
    date_clusterses character varying(19) DEFAULT NULL::character varying,
    descript_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_clusterses OWNER TO rebasedata;

--
-- Name: _dbo_yak_groupoperations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_groupoperations (
    id_groupoperations smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_groupoperations character varying(1) DEFAULT NULL::character varying,
    date_groupoperations character varying(19) DEFAULT NULL::character varying,
    descript character varying(1) DEFAULT NULL::character varying,
    id_obj_data integer,
    id_objfld_data integer,
    id_link_data integer,
    id_obj_update character varying(1) DEFAULT NULL::character varying,
    id_objfld_update character varying(1) DEFAULT NULL::character varying,
    id_link_update character varying(1) DEFAULT NULL::character varying,
    groupoperationstype character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_groupoperations OWNER TO rebasedata;

--
-- Name: _dbo_yak_namecells; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_namecells (
    id_namecells smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    namecells character varying(8) DEFAULT NULL::character varying,
    descript character varying(226) DEFAULT NULL::character varying,
    id_obj_res integer,
    id_objfld_res integer,
    isnamevalue smallint,
    id_objfld_w1 character varying(5) DEFAULT NULL::character varying,
    text_w1 character varying(5) DEFAULT NULL::character varying,
    add_w2 character varying(1) DEFAULT NULL::character varying,
    id_objfld_w2 character varying(5) DEFAULT NULL::character varying,
    text_w2 character varying(8) DEFAULT NULL::character varying,
    insertformula character varying(55) DEFAULT NULL::character varying,
    add_w3 character varying(1) DEFAULT NULL::character varying,
    id_objfld_w3 character varying(5) DEFAULT NULL::character varying,
    text_w3 character varying(8) DEFAULT NULL::character varying,
    add_w4 character varying(1) DEFAULT NULL::character varying,
    id_objfld_w4 character varying(5) DEFAULT NULL::character varying,
    text_w4 character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_namecells OWNER TO rebasedata;

--
-- Name: _dbo_yak_organization; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_organization (
    id_organization smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_organization character varying(103) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_educationtype character varying(1) DEFAULT NULL::character varying,
    id_settlementtype character varying(1) DEFAULT NULL::character varying,
    id_transportaccess character varying(1) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying,
    valueses character varying(5) DEFAULT NULL::character varying,
    addressfact character varying(100) DEFAULT NULL::character varying,
    directorfio character varying(32) DEFAULT NULL::character varying,
    telephonecontact character varying(11) DEFAULT NULL::character varying,
    email character varying(25) DEFAULT NULL::character varying,
    site character varying(34) DEFAULT NULL::character varying,
    descript_organization character varying(1099) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_organization OWNER TO rebasedata;

--
-- Name: _dbo_yak_s1; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s1 (
    id_s1 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses character varying(1) DEFAULT NULL::character varying,
    yearset smallint,
    d01 character varying(17) DEFAULT NULL::character varying,
    d02 character varying(17) DEFAULT NULL::character varying,
    d03 character varying(18) DEFAULT NULL::character varying,
    d04 character varying(17) DEFAULT NULL::character varying,
    d05 character varying(18) DEFAULT NULL::character varying,
    d06 character varying(17) DEFAULT NULL::character varying,
    d07 character varying(17) DEFAULT NULL::character varying,
    d08 character varying(17) DEFAULT NULL::character varying,
    d09 character varying(17) DEFAULT NULL::character varying,
    d10 character varying(18) DEFAULT NULL::character varying,
    d11 character varying(17) DEFAULT NULL::character varying,
    d12 character varying(17) DEFAULT NULL::character varying,
    d13 character varying(19) DEFAULT NULL::character varying,
    d14 character varying(19) DEFAULT NULL::character varying,
    d15 character varying(18) DEFAULT NULL::character varying,
    summaryindex character varying(17) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_s1 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s2; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s2 (
    id_s2 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    p01 numeric(15,13) DEFAULT NULL::numeric,
    p02 numeric(15,14) DEFAULT NULL::numeric,
    p03 numeric(15,13) DEFAULT NULL::numeric,
    p04 numeric(15,13) DEFAULT NULL::numeric,
    p05 numeric(15,13) DEFAULT NULL::numeric,
    p06 numeric(15,13) DEFAULT NULL::numeric,
    p07 numeric(16,15) DEFAULT NULL::numeric,
    p08 numeric(15,14) DEFAULT NULL::numeric,
    p09 numeric(15,14) DEFAULT NULL::numeric,
    p10 numeric(15,14) DEFAULT NULL::numeric,
    p11 numeric(15,14) DEFAULT NULL::numeric,
    p12 numeric(15,14) DEFAULT NULL::numeric,
    p13 numeric(15,14) DEFAULT NULL::numeric,
    p14 numeric(15,14) DEFAULT NULL::numeric,
    p15 numeric(15,14) DEFAULT NULL::numeric,
    p16 numeric(16,15) DEFAULT NULL::numeric,
    p17 numeric(15,14) DEFAULT NULL::numeric,
    p18 numeric(15,14) DEFAULT NULL::numeric,
    p19 numeric(15,14) DEFAULT NULL::numeric,
    p20 numeric(15,14) DEFAULT NULL::numeric,
    p21 numeric(15,14) DEFAULT NULL::numeric,
    p22 numeric(16,14) DEFAULT NULL::numeric,
    p23 numeric(16,15) DEFAULT NULL::numeric,
    p24 numeric(16,15) DEFAULT NULL::numeric,
    p25 numeric(16,15) DEFAULT NULL::numeric,
    p26 numeric(17,16) DEFAULT NULL::numeric,
    p27 numeric(16,15) DEFAULT NULL::numeric,
    p28 numeric(16,15) DEFAULT NULL::numeric,
    p29 numeric(16,14) DEFAULT NULL::numeric,
    p30 numeric(15,14) DEFAULT NULL::numeric,
    p31 numeric(15,13) DEFAULT NULL::numeric,
    p32 numeric(15,13) DEFAULT NULL::numeric,
    p33 numeric(15,14) DEFAULT NULL::numeric,
    p34 numeric(15,14) DEFAULT NULL::numeric,
    p35 numeric(2,1) DEFAULT NULL::numeric,
    p36 numeric(15,14) DEFAULT NULL::numeric,
    p37 numeric(16,15) DEFAULT NULL::numeric,
    p38 numeric(16,15) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s2 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s3; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s3 (
    id_s3 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    s01 numeric(16,13) DEFAULT NULL::numeric,
    s02 numeric(16,13) DEFAULT NULL::numeric,
    s03 numeric(16,13) DEFAULT NULL::numeric,
    s04 numeric(16,13) DEFAULT NULL::numeric,
    s05 numeric(16,13) DEFAULT NULL::numeric,
    s06 numeric(16,14) DEFAULT NULL::numeric,
    s07 numeric(16,14) DEFAULT NULL::numeric,
    s08 numeric(16,15) DEFAULT NULL::numeric,
    s09 numeric(15,14) DEFAULT NULL::numeric,
    s10 numeric(16,15) DEFAULT NULL::numeric,
    s11 numeric(16,15) DEFAULT NULL::numeric,
    s12 numeric(16,15) DEFAULT NULL::numeric,
    s13 numeric(16,15) DEFAULT NULL::numeric,
    s14 numeric(16,15) DEFAULT NULL::numeric,
    s15 numeric(16,13) DEFAULT NULL::numeric,
    s16 numeric(16,13) DEFAULT NULL::numeric,
    s17 numeric(16,14) DEFAULT NULL::numeric,
    s18 numeric(16,14) DEFAULT NULL::numeric,
    s19 numeric(16,14) DEFAULT NULL::numeric,
    s20 numeric(16,15) DEFAULT NULL::numeric,
    s21 numeric(16,15) DEFAULT NULL::numeric,
    s22 numeric(16,15) DEFAULT NULL::numeric,
    s23 numeric(15,14) DEFAULT NULL::numeric,
    s24 numeric(15,14) DEFAULT NULL::numeric,
    s25 numeric(16,15) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s3 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s4; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s4 (
    id_s4 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    a01 numeric(16,13) DEFAULT NULL::numeric,
    a02 numeric(16,13) DEFAULT NULL::numeric,
    a03 numeric(15,13) DEFAULT NULL::numeric,
    a04 numeric(16,13) DEFAULT NULL::numeric,
    a05 numeric(2,1) DEFAULT NULL::numeric,
    a06 numeric(16,14) DEFAULT NULL::numeric,
    a07 numeric(15,13) DEFAULT NULL::numeric,
    a08 numeric(16,14) DEFAULT NULL::numeric,
    a09 numeric(16,15) DEFAULT NULL::numeric,
    a10 numeric(15,13) DEFAULT NULL::numeric,
    a11 numeric(16,14) DEFAULT NULL::numeric,
    a12 numeric(16,14) DEFAULT NULL::numeric,
    a13 numeric(16,14) DEFAULT NULL::numeric,
    a14 numeric(16,14) DEFAULT NULL::numeric,
    a15 numeric(15,14) DEFAULT NULL::numeric,
    a16 numeric(16,15) DEFAULT NULL::numeric,
    a17 numeric(16,14) DEFAULT NULL::numeric,
    a18 numeric(15,14) DEFAULT NULL::numeric,
    a19 numeric(16,14) DEFAULT NULL::numeric,
    a20 numeric(16,14) DEFAULT NULL::numeric,
    a21 numeric(15,14) DEFAULT NULL::numeric,
    a22 numeric(16,14) DEFAULT NULL::numeric,
    a23 numeric(15,14) DEFAULT NULL::numeric,
    a24 numeric(16,15) DEFAULT NULL::numeric,
    a25 numeric(17,16) DEFAULT NULL::numeric,
    a26 numeric(16,15) DEFAULT NULL::numeric,
    a27 numeric(15,14) DEFAULT NULL::numeric,
    a28 numeric(15,14) DEFAULT NULL::numeric,
    a29 numeric(16,14) DEFAULT NULL::numeric,
    a30 numeric(2,1) DEFAULT NULL::numeric,
    a31 numeric(16,14) DEFAULT NULL::numeric,
    a32 numeric(16,14) DEFAULT NULL::numeric,
    a33 numeric(16,14) DEFAULT NULL::numeric,
    a34 numeric(15,14) DEFAULT NULL::numeric,
    a35 numeric(16,14) DEFAULT NULL::numeric,
    a36 numeric(16,14) DEFAULT NULL::numeric,
    a37 numeric(15,14) DEFAULT NULL::numeric,
    a38 numeric(16,14) DEFAULT NULL::numeric,
    a39 numeric(16,14) DEFAULT NULL::numeric,
    a40 numeric(15,14) DEFAULT NULL::numeric,
    a41 numeric(16,14) DEFAULT NULL::numeric,
    a42 numeric(16,14) DEFAULT NULL::numeric,
    a43 numeric(15,14) DEFAULT NULL::numeric,
    a44 numeric(16,14) DEFAULT NULL::numeric,
    a45 numeric(16,14) DEFAULT NULL::numeric,
    a46 numeric(15,14) DEFAULT NULL::numeric,
    a47 numeric(15,14) DEFAULT NULL::numeric,
    a48 numeric(15,14) DEFAULT NULL::numeric,
    a49 numeric(16,15) DEFAULT NULL::numeric,
    a50 numeric(16,15) DEFAULT NULL::numeric,
    a51 numeric(16,14) DEFAULT NULL::numeric,
    a52 numeric(15,14) DEFAULT NULL::numeric,
    a53 numeric(15,14) DEFAULT NULL::numeric,
    a54 numeric(16,14) DEFAULT NULL::numeric,
    a55 numeric(17,15) DEFAULT NULL::numeric,
    a56 numeric(16,14) DEFAULT NULL::numeric,
    a57 numeric(16,14) DEFAULT NULL::numeric,
    a58 numeric(15,14) DEFAULT NULL::numeric,
    a59 numeric(16,14) DEFAULT NULL::numeric,
    a60 numeric(16,14) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s4 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s5; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s5 (
    id_s5 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    m01 numeric(15,13) DEFAULT NULL::numeric,
    m02 numeric(15,14) DEFAULT NULL::numeric,
    m03 numeric(16,15) DEFAULT NULL::numeric,
    m04 numeric(15,11) DEFAULT NULL::numeric,
    m05 numeric(16,12) DEFAULT NULL::numeric,
    m06 numeric(15,12) DEFAULT NULL::numeric,
    m07 numeric(16,15) DEFAULT NULL::numeric,
    m08 numeric(16,15) DEFAULT NULL::numeric,
    m09 numeric(16,15) DEFAULT NULL::numeric,
    m10 numeric(15,14) DEFAULT NULL::numeric,
    m11 numeric(16,15) DEFAULT NULL::numeric,
    m12 numeric(16,15) DEFAULT NULL::numeric,
    m13 numeric(2,1) DEFAULT NULL::numeric,
    m14 numeric(16,15) DEFAULT NULL::numeric,
    m15 numeric(16,15) DEFAULT NULL::numeric,
    m16 numeric(16,15) DEFAULT NULL::numeric,
    m17 numeric(16,15) DEFAULT NULL::numeric,
    m18 numeric(16,15) DEFAULT NULL::numeric,
    m19 numeric(2,1) DEFAULT NULL::numeric,
    m20 numeric(16,15) DEFAULT NULL::numeric,
    m21 numeric(16,15) DEFAULT NULL::numeric,
    m22 numeric(16,15) DEFAULT NULL::numeric,
    m23 numeric(16,15) DEFAULT NULL::numeric,
    m24 numeric(2,1) DEFAULT NULL::numeric,
    m25 numeric(16,15) DEFAULT NULL::numeric,
    m26 numeric(16,15) DEFAULT NULL::numeric,
    m27 numeric(2,1) DEFAULT NULL::numeric,
    m28 numeric(16,15) DEFAULT NULL::numeric,
    m29 numeric(16,15) DEFAULT NULL::numeric,
    m30 numeric(2,1) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s5 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s6; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s6 (
    id_s6 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    f01 numeric(15,9) DEFAULT NULL::numeric,
    f02 numeric(10,4) DEFAULT NULL::numeric,
    f03 numeric(9,4) DEFAULT NULL::numeric,
    f04 numeric(8,4) DEFAULT NULL::numeric,
    f05 numeric(9,4) DEFAULT NULL::numeric,
    f06 numeric(9,4) DEFAULT NULL::numeric,
    f07 numeric(7,4) DEFAULT NULL::numeric,
    f08 numeric(7,4) DEFAULT NULL::numeric,
    f09 numeric(7,4) DEFAULT NULL::numeric,
    f10 numeric(9,4) DEFAULT NULL::numeric,
    f11 numeric(9,4) DEFAULT NULL::numeric,
    f12 numeric(9,4) DEFAULT NULL::numeric,
    f13 numeric(6,4) DEFAULT NULL::numeric,
    f14 numeric(8,4) DEFAULT NULL::numeric,
    f15 numeric(9,4) DEFAULT NULL::numeric,
    f16 numeric(9,4) DEFAULT NULL::numeric,
    f17 numeric(9,4) DEFAULT NULL::numeric,
    f18 numeric(6,4) DEFAULT NULL::numeric,
    f19 numeric(8,4) DEFAULT NULL::numeric,
    f20 numeric(9,4) DEFAULT NULL::numeric,
    f21 numeric(9,4) DEFAULT NULL::numeric,
    f22 numeric(5,4) DEFAULT NULL::numeric,
    f23 numeric(9,4) DEFAULT NULL::numeric,
    f24 numeric(9,4) DEFAULT NULL::numeric,
    f25 numeric(8,4) DEFAULT NULL::numeric,
    f26 numeric(7,4) DEFAULT NULL::numeric,
    f27 numeric(8,4) DEFAULT NULL::numeric,
    f28 numeric(8,4) DEFAULT NULL::numeric,
    f29 numeric(8,4) DEFAULT NULL::numeric,
    f30 numeric(5,4) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s6 OWNER TO rebasedata;

--
-- Name: _dbo_yak_s7; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_s7 (
    id_s7 smallint,
    statfunction character varying(3) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint,
    yearset smallint,
    o01 numeric(16,14) DEFAULT NULL::numeric,
    o02 numeric(15,13) DEFAULT NULL::numeric,
    o03 numeric(16,14) DEFAULT NULL::numeric,
    o04 numeric(16,13) DEFAULT NULL::numeric
);


ALTER TABLE public._dbo_yak_s7 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section1; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section1 (
    id_section1 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization smallint,
    yearset smallint,
    d01 character varying(17) DEFAULT NULL::character varying,
    d02 character varying(17) DEFAULT NULL::character varying,
    d03 character varying(18) DEFAULT NULL::character varying,
    d04 character varying(17) DEFAULT NULL::character varying,
    d05 character varying(18) DEFAULT NULL::character varying,
    d06 character varying(17) DEFAULT NULL::character varying,
    d07 character varying(18) DEFAULT NULL::character varying,
    d08 character varying(17) DEFAULT NULL::character varying,
    d09 character varying(17) DEFAULT NULL::character varying,
    d10 character varying(18) DEFAULT NULL::character varying,
    d11 character varying(17) DEFAULT NULL::character varying,
    d12 character varying(18) DEFAULT NULL::character varying,
    d13 character varying(19) DEFAULT NULL::character varying,
    d14 character varying(19) DEFAULT NULL::character varying,
    d15 character varying(19) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses character varying(1) DEFAULT NULL::character varying,
    summaryindex character varying(17) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section1 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section2; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section2 (
    id_section2 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    yearset character varying(4) DEFAULT NULL::character varying,
    p01 character varying(3) DEFAULT NULL::character varying,
    p03 character varying(4) DEFAULT NULL::character varying,
    p04 character varying(2) DEFAULT NULL::character varying,
    p05 character varying(2) DEFAULT NULL::character varying,
    p06 character varying(2) DEFAULT NULL::character varying,
    p07 character varying(1) DEFAULT NULL::character varying,
    p08 character varying(1) DEFAULT NULL::character varying,
    p09 character varying(2) DEFAULT NULL::character varying,
    p10 character varying(1) DEFAULT NULL::character varying,
    p11 character varying(1) DEFAULT NULL::character varying,
    p12 character varying(1) DEFAULT NULL::character varying,
    p13 character varying(2) DEFAULT NULL::character varying,
    p14 character varying(2) DEFAULT NULL::character varying,
    p15 character varying(1) DEFAULT NULL::character varying,
    p16 character varying(1) DEFAULT NULL::character varying,
    p17 character varying(1) DEFAULT NULL::character varying,
    p18 character varying(1) DEFAULT NULL::character varying,
    p19 character varying(2) DEFAULT NULL::character varying,
    p20 character varying(1) DEFAULT NULL::character varying,
    p21 character varying(1) DEFAULT NULL::character varying,
    p22 character varying(2) DEFAULT NULL::character varying,
    p23 character varying(1) DEFAULT NULL::character varying,
    p24 character varying(1) DEFAULT NULL::character varying,
    p25 character varying(1) DEFAULT NULL::character varying,
    p26 character varying(1) DEFAULT NULL::character varying,
    p27 character varying(1) DEFAULT NULL::character varying,
    p28 character varying(1) DEFAULT NULL::character varying,
    p29 character varying(2) DEFAULT NULL::character varying,
    p30 character varying(2) DEFAULT NULL::character varying,
    p31 character varying(2) DEFAULT NULL::character varying,
    p32 character varying(2) DEFAULT NULL::character varying,
    p33 character varying(1) DEFAULT NULL::character varying,
    p34 character varying(1) DEFAULT NULL::character varying,
    p35 character varying(1) DEFAULT NULL::character varying,
    p36 character varying(2) DEFAULT NULL::character varying,
    p37 character varying(2) DEFAULT NULL::character varying,
    p38 character varying(1) DEFAULT NULL::character varying,
    id_organization character varying(3) DEFAULT NULL::character varying,
    p02 character varying(3) DEFAULT NULL::character varying,
    id_municipality character varying(2) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section2 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section3; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section3 (
    id_section3 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(3) DEFAULT NULL::character varying,
    yearset character varying(4) DEFAULT NULL::character varying,
    s01 character varying(3) DEFAULT NULL::character varying,
    s02 character varying(3) DEFAULT NULL::character varying,
    s03 character varying(3) DEFAULT NULL::character varying,
    s04 character varying(3) DEFAULT NULL::character varying,
    s05 character varying(3) DEFAULT NULL::character varying,
    s06 character varying(2) DEFAULT NULL::character varying,
    s07 character varying(2) DEFAULT NULL::character varying,
    s08 character varying(2) DEFAULT NULL::character varying,
    s09 character varying(2) DEFAULT NULL::character varying,
    s10 character varying(1) DEFAULT NULL::character varying,
    s11 character varying(2) DEFAULT NULL::character varying,
    s12 character varying(1) DEFAULT NULL::character varying,
    s13 character varying(1) DEFAULT NULL::character varying,
    s14 character varying(1) DEFAULT NULL::character varying,
    s15 character varying(3) DEFAULT NULL::character varying,
    s16 character varying(3) DEFAULT NULL::character varying,
    s17 character varying(3) DEFAULT NULL::character varying,
    s18 character varying(3) DEFAULT NULL::character varying,
    s19 character varying(2) DEFAULT NULL::character varying,
    s20 character varying(4) DEFAULT NULL::character varying,
    s21 character varying(4) DEFAULT NULL::character varying,
    s22 character varying(4) DEFAULT NULL::character varying,
    s23 character varying(3) DEFAULT NULL::character varying,
    s24 character varying(3) DEFAULT NULL::character varying,
    s25 character varying(4) DEFAULT NULL::character varying,
    id_municipality smallint,
    id_clusterses smallint
);


ALTER TABLE public._dbo_yak_section3 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section4; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section4 (
    id_section4 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(3) DEFAULT NULL::character varying,
    yearset character varying(4) DEFAULT NULL::character varying,
    a01 character varying(3) DEFAULT NULL::character varying,
    a02 character varying(3) DEFAULT NULL::character varying,
    a03 character varying(3) DEFAULT NULL::character varying,
    a04 character varying(3) DEFAULT NULL::character varying,
    a05 character varying(1) DEFAULT NULL::character varying,
    a06 character varying(2) DEFAULT NULL::character varying,
    a07 character varying(2) DEFAULT NULL::character varying,
    a08 character varying(2) DEFAULT NULL::character varying,
    a09 character varying(2) DEFAULT NULL::character varying,
    a10 character varying(2) DEFAULT NULL::character varying,
    a11 character varying(2) DEFAULT NULL::character varying,
    a12 character varying(2) DEFAULT NULL::character varying,
    a13 character varying(2) DEFAULT NULL::character varying,
    a14 character varying(2) DEFAULT NULL::character varying,
    a15 character varying(2) DEFAULT NULL::character varying,
    a16 character varying(2) DEFAULT NULL::character varying,
    a17 character varying(2) DEFAULT NULL::character varying,
    a18 character varying(1) DEFAULT NULL::character varying,
    a19 character varying(2) DEFAULT NULL::character varying,
    a20 character varying(2) DEFAULT NULL::character varying,
    a21 character varying(2) DEFAULT NULL::character varying,
    a22 character varying(2) DEFAULT NULL::character varying,
    a23 character varying(2) DEFAULT NULL::character varying,
    a24 character varying(1) DEFAULT NULL::character varying,
    a25 character varying(1) DEFAULT NULL::character varying,
    a26 character varying(1) DEFAULT NULL::character varying,
    a27 character varying(2) DEFAULT NULL::character varying,
    a28 character varying(2) DEFAULT NULL::character varying,
    a29 character varying(2) DEFAULT NULL::character varying,
    a30 character varying(1) DEFAULT NULL::character varying,
    a31 character varying(2) DEFAULT NULL::character varying,
    a32 character varying(2) DEFAULT NULL::character varying,
    a33 character varying(2) DEFAULT NULL::character varying,
    a34 character varying(1) DEFAULT NULL::character varying,
    a35 character varying(2) DEFAULT NULL::character varying,
    a36 character varying(2) DEFAULT NULL::character varying,
    a37 character varying(2) DEFAULT NULL::character varying,
    a38 character varying(2) DEFAULT NULL::character varying,
    a39 character varying(2) DEFAULT NULL::character varying,
    a40 character varying(2) DEFAULT NULL::character varying,
    a41 character varying(2) DEFAULT NULL::character varying,
    a42 character varying(2) DEFAULT NULL::character varying,
    a43 character varying(2) DEFAULT NULL::character varying,
    a44 character varying(2) DEFAULT NULL::character varying,
    a45 character varying(2) DEFAULT NULL::character varying,
    a46 character varying(2) DEFAULT NULL::character varying,
    a47 character varying(2) DEFAULT NULL::character varying,
    a48 character varying(2) DEFAULT NULL::character varying,
    a49 character varying(1) DEFAULT NULL::character varying,
    a50 character varying(2) DEFAULT NULL::character varying,
    a51 character varying(2) DEFAULT NULL::character varying,
    a52 character varying(1) DEFAULT NULL::character varying,
    a53 character varying(2) DEFAULT NULL::character varying,
    a54 character varying(2) DEFAULT NULL::character varying,
    a55 character varying(3) DEFAULT NULL::character varying,
    a56 character varying(3) DEFAULT NULL::character varying,
    a57 character varying(2) DEFAULT NULL::character varying,
    a58 character varying(2) DEFAULT NULL::character varying,
    a59 character varying(2) DEFAULT NULL::character varying,
    a60 character varying(2) DEFAULT NULL::character varying,
    id_municipality character varying(2) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section4 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section5; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section5 (
    id_section5 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(3) DEFAULT NULL::character varying,
    yearset character varying(4) DEFAULT NULL::character varying,
    m01 character varying(2) DEFAULT NULL::character varying,
    m02 character varying(1) DEFAULT NULL::character varying,
    m03 smallint,
    m04 character varying(4) DEFAULT NULL::character varying,
    m05 character varying(4) DEFAULT NULL::character varying,
    m06 character varying(4) DEFAULT NULL::character varying,
    m07 smallint,
    m08 smallint,
    m09 smallint,
    m10 character varying(1) DEFAULT NULL::character varying,
    m11 smallint,
    m12 smallint,
    m13 smallint,
    m14 smallint,
    m15 smallint,
    m16 smallint,
    m17 smallint,
    m18 smallint,
    m19 smallint,
    m20 smallint,
    m21 smallint,
    m22 smallint,
    m23 smallint,
    m24 smallint,
    m25 smallint,
    m26 smallint,
    m27 smallint,
    m28 smallint,
    m29 smallint,
    m30 smallint,
    id_municipality character varying(2) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section5 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section6; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section6 (
    id_section6 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(3) DEFAULT NULL::character varying,
    yearset character varying(4) DEFAULT NULL::character varying,
    f01 character varying(9) DEFAULT NULL::character varying,
    f02 character varying(12) DEFAULT NULL::character varying,
    f03 character varying(10) DEFAULT NULL::character varying,
    f04 character varying(9) DEFAULT NULL::character varying,
    f05 character varying(10) DEFAULT NULL::character varying,
    f06 character varying(10) DEFAULT NULL::character varying,
    f07 character varying(9) DEFAULT NULL::character varying,
    f08 character varying(9) DEFAULT NULL::character varying,
    f09 character varying(9) DEFAULT NULL::character varying,
    f10 character varying(11) DEFAULT NULL::character varying,
    f11 character varying(11) DEFAULT NULL::character varying,
    f12 character varying(10) DEFAULT NULL::character varying,
    f13 character varying(8) DEFAULT NULL::character varying,
    f14 character varying(10) DEFAULT NULL::character varying,
    f15 character varying(11) DEFAULT NULL::character varying,
    f16 character varying(11) DEFAULT NULL::character varying,
    f17 character varying(10) DEFAULT NULL::character varying,
    f18 character varying(8) DEFAULT NULL::character varying,
    f19 character varying(10) DEFAULT NULL::character varying,
    f20 character varying(11) DEFAULT NULL::character varying,
    f21 character varying(11) DEFAULT NULL::character varying,
    f22 character varying(6) DEFAULT NULL::character varying,
    f23 character varying(10) DEFAULT NULL::character varying,
    f24 character varying(10) DEFAULT NULL::character varying,
    f25 character varying(9) DEFAULT NULL::character varying,
    f26 character varying(9) DEFAULT NULL::character varying,
    f27 character varying(9) DEFAULT NULL::character varying,
    f28 character varying(9) DEFAULT NULL::character varying,
    f29 character varying(9) DEFAULT NULL::character varying,
    f30 character varying(6) DEFAULT NULL::character varying,
    id_municipality character varying(2) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section6 OWNER TO rebasedata;

--
-- Name: _dbo_yak_section7; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_section7 (
    id_section7 smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    id_organization character varying(3) DEFAULT NULL::character varying,
    yearset character varying(4) DEFAULT NULL::character varying,
    o01 character varying(2) DEFAULT NULL::character varying,
    o02 character varying(3) DEFAULT NULL::character varying,
    o03 character varying(2) DEFAULT NULL::character varying,
    o04 character varying(3) DEFAULT NULL::character varying,
    id_municipality character varying(2) DEFAULT NULL::character varying,
    id_clusterses character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_section7 OWNER TO rebasedata;

--
-- Name: _dbo_yak_transportaccess; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dbo_yak_transportaccess (
    id_transportaccess smallint,
    in_date character varying(19) DEFAULT NULL::character varying,
    up_date character varying(19) DEFAULT NULL::character varying,
    id_own smallint,
    id_flag smallint,
    id_area smallint,
    name_transportaccess character varying(15) DEFAULT NULL::character varying,
    date_transportaccess character varying(19) DEFAULT NULL::character varying,
    descript_transportaccess character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._dbo_yak_transportaccess OWNER TO rebasedata;

--
-- Data for Name: _dbo_all_educationtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_all_educationtype (id_educationtype, in_date, up_date, id_own, id_flag, id_area, name_educationtype, date_educationtype, descript_educationtype) FROM stdin;
0	2020-06-22 02:25:21	2020-06-22 02:25:21	0	1	1		2020-06-22 02:25:21	
1	2020-06-22 02:25:21	2020-06-22 02:25:21	0	0	1	Средняя школа	2020-06-22 02:25:21	
2	2020-06-22 02:25:21	2020-06-22 02:25:21	0	0	1	Основная школа	2020-06-22 02:25:21	
\.


--
-- Data for Name: _dbo_all_municipality; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_all_municipality (id_municipality, in_date, up_date, id_own, id_flag, id_area, name_municipality, descript_municipality, id_subjectrf) FROM stdin;
1	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Абыйское УО		14
2	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Алданский район		14
3	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Аллаиховское УО		14
4	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Амгинское УО		14
5	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Анабарское УО		14
6	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Булунское УО		14
7	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Верхневилюйское УО		14
8	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Верхнеколымское УО		14
9	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Верхоянское УО		14
10	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Вилюйское УО		14
11	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Горное УО		14
12	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Жиганское УО		14
13	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Кобяйское УО		14
14	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Ленский район		14
15	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Мегино-Кангаласское УО		14
16	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Мирнинское УО		14
17	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Момское УО		14
18	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Намское УО		14
19	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Нерюнгринское УО		14
20	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Нижнеколымское УО		14
21	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Нюрбинское УО		14
22	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Оймяконское УО		14
23	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Олекминское УО		14
24	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Оленекское УО		14
25	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Среднеколымское УО		14
26	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Сунтарское УО		14
27	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Таттинское УО		14
28	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Томпонское УО		14
29	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Усть-Алданское УО		14
30	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Усть-Майское УО		14
31	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Усть-Янское РУО		14
32	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Хангаласское УО		14
33	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Чурапчинское УО		14
34	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	МКУ Эвено-Бытантайское УО		14
35	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	УО ГО город Якутск		14
36	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	УО ОА ГО Жатай		14
37	2020-06-22 04:06:36	2020-06-22 04:06:36	0	0	1	Республика Саха (Якутия) (ОО субъекта)		14
\.


--
-- Data for Name: _dbo_all_settlementtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_all_settlementtype (id_settlementtype, in_date, up_date, id_own, id_flag, id_area, name_settlementtype, date_settlementtype, descript_settlementtype) FROM stdin;
0	2020-06-22 02:32:57	2020-06-22 02:32:57	0	1	1	<НЕОПРЕДЕЛЕНО>	2020-06-22 02:32:57	
1	2020-06-22 02:32:57	2020-06-22 02:32:57	0	0	1	Город	2020-06-22 02:32:57	
2	2020-06-22 02:32:57	2020-06-22 02:32:57	0	0	1	Село	2020-06-22 02:32:57	
\.


--
-- Data for Name: _dbo_all_subjectrf; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_all_subjectrf (id_subjectrf, in_date, up_date, id_own, id_flag, id_area, name_subjectrf, code) FROM stdin;
1	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Адыгея республика	01
2	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Башкортостан республика	02
3	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Бурятия республика	03
4	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Алтай республика	04
5	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Дагестан республика	05
6	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ингушетия республика	06
7	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Кабардино-Балкарская республика	07
8	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Калмыкия республика	08
9	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Карачаево-Черкесская республика	09
10	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Карелия республика	10
11	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Коми республика	11
12	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Марий Эл республика	12
13	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Мордовия республика	13
14	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Саха (Якутия) республика	14
15	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Северная Осетия - Алания республика	15
16	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Татарстан республика	16
17	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Тыва республика	17
18	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Удмуртская республика	18
19	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Хакасия республика	19
20	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Чеченская республика	20
21	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Чувашская Республика - Чувашия	21
22	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Алтайский край	22
23	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Краснодарский край	23
24	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Красноярский край	24
25	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Приморский край	25
26	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ставропольский край	26
27	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Хабаровский край	27
28	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Амурская область	28
29	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Архангельская область	29
30	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Астраханская область	30
31	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Белгородская область	31
32	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Брянская область	32
33	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Владимирская область	33
34	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Волгоградская область	34
35	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Вологодская область	35
36	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Воронежская область	36
37	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ивановская область	37
38	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Иркутская область	38
39	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Калининградская область	39
40	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Калужская область	40
41	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Камчатский край	41
42	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Кемеровская область	42
43	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Кировская область	43
44	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Костромская область	44
45	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Курганская область	45
46	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Курская область	46
47	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ленинградская область	47
48	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Липецкая область	48
49	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Магаданская область	49
50	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Московская область	50
51	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Мурманская область	51
52	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Нижегородская область	52
53	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Новгородская область	53
54	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Новосибирская область	54
55	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Омская область	55
56	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Оренбургская область	56
57	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Орловская область	57
58	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Пензенская область	58
59	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Пермский край	59
60	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Псковская область	60
61	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ростовская область	61
62	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Рязанская область	62
63	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Самарская область	63
64	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Саратовская область	64
65	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Сахалинская область	65
66	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Свердловская область	66
67	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Смоленская область	67
68	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Тамбовская область	68
69	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Тверская область	69
70	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Томская область	70
71	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Тульская область	71
72	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Тюменская область	72
73	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ульяновская область	73
74	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Челябинская область	74
75	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Забайкальский край	75
76	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ярославская область	76
77	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Москва город	77
78	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Санкт-Петербург город	78
79	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Еврейская автономная область	79
83	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ненецкий автономный округ	83
86	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ханты-Мансийский Автономный округ - Югра автономный округ	86
87	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Чукотский автономный округ	87
89	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Ямало-Ненецкий автономный округ	89
91	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Крым республика	91
92	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Севастополь город	92
99	2020-06-22 03:16:26	2020-06-22 03:16:26	0	0	1	Байконур город	99
0	2020-09-12 13:20:04	2020-09-12 13:20:04	0	1	1	<НЕОПРЕДЕЛЕНО>	
\.


--
-- Data for Name: _dbo_own_cnn; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_cnn (id_cnn, id_own, id_cnnsub, settimeout, date_lastlogin, date_lasttime, ipaddress, namecomputer, descript, clientappversion) FROM stdin;
1	0	0	30	2020-11-29 23:21:34	2020-11-30 01:10:28		VK		1.0.1709
2	0	0	30	2022-04-15 15:26:10	2022-04-15 15:29:36		PM-DB		1.0.1709
3	101	0	30	2022-04-15 15:29:42	2022-04-15 15:36:48		PM-DB		1.0.1709
4	0	0	30	2022-04-15 15:45:31	2022-04-15 15:45:37		VALERY-KOROTKOV		1.0.1709
5	101	0	30	2022-04-15 15:45:44	2022-04-15 15:52:42		VALERY-KOROTKOV		1.0.1709
\.


--
-- Data for Name: _dbo_own_cnnlog; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_cnnlog (id_cnnlog, in_date, id_cnnsub, id_obj, descript, id_cnn, id_sol) FROM stdin;
34	2020-11-06 12:45:10	20	0		1	1
35	2020-11-06 12:45:15	11	0		1	8
36	2020-11-06 12:45:16	20	0		1	8
37	2020-11-06 13:05:49	0	0	выход из системы	1	0
38		1		вход в систему	1	
39	2020-11-06 14:24:53	11	0		1	1
40	2020-11-06 14:24:54	20	0		1	1
41	2020-11-06 14:24:58	11	0		1	8
42	2020-11-06 14:24:59	20	0		1	8
43	2020-11-06 17:34:00	0	0	выход из системы	1	0
44		1		вход в систему	1	
45	2020-11-07 07:19:32	11	0		1	1
46	2020-11-07 07:19:33	20	0		1	1
47	2020-11-07 07:19:36	11	0		1	8
48	2020-11-07 07:19:36	20	0		1	8
49	2020-11-07 07:59:23	0	0	выход из системы	1	0
50		1		вход в систему	1	
51	2020-11-09 05:05:05	11	0		1	1
52	2020-11-09 05:05:05	20	0		1	1
53	2020-11-09 05:05:11	11	0		1	8
54	2020-11-09 05:05:11	20	0		1	8
55	2020-11-09 05:25:20	0	0	выход из системы	1	0
56		1		вход в систему	1	
57	2020-11-09 05:30:19	11	0		1	1
58	2020-11-09 05:30:19	20	0		1	1
59	2020-11-09 05:30:25	11	0		1	8
60	2020-11-09 05:30:26	20	0		1	8
61	2020-11-09 05:44:05	0	0	выход из системы	1	0
62		1		вход в систему	1	
63	2020-11-09 05:45:33	11	0		1	1
64	2020-11-09 05:45:33	20	0		1	1
65	2020-11-09 05:52:22	11	0		1	8
66	2020-11-09 05:52:23	20	0		1	8
67	2020-11-09 06:02:09	0	0	выход из системы	1	0
68		1		вход в систему	1	
69	2020-11-09 06:03:37	11	0		1	1
70	2020-11-09 06:03:37	20	0		1	1
71	2020-11-09 06:03:41	11	0		1	8
72	2020-11-09 06:03:41	20	0		1	8
73	2020-11-09 06:07:23	0	0	выход из системы	1	0
74		1		вход в систему	1	
75	2020-11-09 06:16:15	11	0		1	1
76	2020-11-09 06:16:16	20	0		1	1
77	2020-11-09 06:23:39	11	0		1	8
78	2020-11-09 06:23:40	20	0		1	8
79	2020-11-09 06:43:43	0	0	выход из системы	1	0
80		1		вход в систему	1	
81	2020-11-09 06:43:51	11	0		1	1
82	2020-11-09 06:43:51	20	0		1	1
83	2020-11-09 06:43:54	11	0		1	8
84	2020-11-09 06:43:55	20	0		1	8
85	2020-11-09 06:57:28	0	0	выход из системы	1	0
86		1		вход в систему	1	
87	2020-11-09 06:58:03	11	0		1	1
88	2020-11-09 06:58:04	20	0		1	1
89	2020-11-09 06:58:08	11	0		1	8
90	2020-11-09 06:58:08	20	0		1	8
91	2020-11-09 08:10:30	0	0	выход из системы	1	0
92		1		вход в систему	1	
93	2020-11-09 08:16:19	11	0		1	1
94	2020-11-09 08:16:20	20	0		1	1
95	2020-11-09 08:16:23	11	0		1	8
96	2020-11-09 08:16:24	20	0		1	8
97	2020-11-09 09:47:08	0	0	выход из системы	1	0
98		1		вход в систему	1	
99	2020-11-09 09:53:29	11	0		1	1
100	2020-11-09 09:53:30	20	0		1	1
101	2020-11-09 09:53:39	11	0		1	8
102	2020-11-09 09:53:40	20	0		1	8
103	2020-11-09 09:56:08	0	0	выход из системы	1	0
104		1		вход в систему	1	
105	2020-11-09 12:09:50	11	0		1	1
106	2020-11-09 12:09:51	20	0		1	1
107	2020-11-09 12:10:05	11	0		1	8
108	2020-11-09 12:10:05	20	0		1	8
109	2020-11-09 12:21:09	0	0	выход из системы	1	0
110		1		вход в систему	1	
111	2020-11-09 12:27:31	11	0		1	1
112	2020-11-09 12:27:31	20	0		1	1
113	2020-11-09 12:35:05	11	0		1	8
114	2020-11-09 12:35:05	20	0		1	8
115	2020-11-09 13:13:25	0	0	выход из системы	1	0
116		1		вход в систему	1	
117	2020-11-09 13:28:13	11	0		1	1
140		1		вход в систему	1	
141	2020-11-09 15:49:26	11	0		1	1
142	2020-11-09 15:49:26	20	0		1	1
143	2020-11-09 15:49:30	11	0		1	8
144	2020-11-09 15:49:31	20	0		1	8
145	2020-11-09 15:51:37	0	0	выход из системы	1	0
146		1		вход в систему	1	
147	2020-11-09 15:52:45	11	0		1	1
148	2020-11-09 15:52:45	20	0		1	1
149	2020-11-09 15:52:50	11	0		1	8
150	2020-11-09 15:52:51	20	0		1	8
151	2020-11-09 16:17:52	0	0	выход из системы	1	0
152		1		вход в систему	1	
153	2020-11-09 18:25:57	11	0		1	1
154	2020-11-09 18:25:58	20	0		1	1
155	2020-11-09 18:26:09	11	0		1	8
\.


--
-- Data for Name: _dbo_own_cnnsub; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_cnnsub (id_cnnsub, name, descript) FROM stdin;
1	Connected	Подключение
11	Start load module	Начало загрузки модуля
52	Read full fizical table	Чтение всей таблицы
51	Read table property	Чтение свойств таблицы
53	Read All-Join SELECT for table	Чтение запроса подстановок для таблицы
20	End load module	Окончание загрузки модуля
201	Ban a connect	Доступ к подключению закрыт
0	<Disconnected>	<Нет соединения>
\.


--
-- Data for Name: _dbo_own_flagon; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_flagon (id_flagon, id_own, setvalue, id_flagontype) FROM stdin;
1	0	1000001	2
2	0	0	11
3	0	0	12
4	0	0	13
\.


--
-- Data for Name: _dbo_own_flagontype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_flagontype (id_flagontype, name, descript, id_obj) FROM stdin;
2	LastActivityTimer	Таймер последней активности	0
13	Non demonstrated documents	Неотображенные документы	10900
12	Non demonstrated letters	Неотображенные письма	12400
11	Non demonstrated massages	Неотображенные сообщения	12300
0	<ALL>	<ВСЕ>	
\.


--
-- Data for Name: _dbo_own_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_log (id_log, date_log, id_own, id_area, id_obj, id_field, id_in, value_old, value_new) FROM stdin;
1	2020-11-06 07:19:54	0	1	17500	17512	71	0	0
2	2020-11-06 07:20:02	0	1	17500	17507	71	<ПУСТО>	<ПУСТО>
3	2020-11-06 07:20:06	0	1	17500	17510	71	10	10
4	2020-11-06 07:33:34	0	1	17600	17607	1090	<ПУСТО>	<ПУСТО>
5	2020-11-06 07:33:36	0	1	17600	17612	1090	1	1
6	2020-11-06 07:33:41	0	1	17600	17610	1090	1	1
7	2020-11-06 07:33:43	0	1	17600	17611	1090	<ПУСТО>	<ПУСТО>
8	2020-11-06 08:05:44	0	1	17700	17705	1089	0	0
9	2020-11-06 08:09:21	0	1	17700	17711	1089	2	2
10	2020-11-06 08:16:36	0	1	18300	18307	5	Русский язык (10 класс)	Русский язык (10 класс)
11	2020-11-06 08:16:41	0	1	18300	18308	5	05.11.2020 17:09:00	11/05/2020 17:09:00
12	2020-11-06 08:18:04	0	1	18400	18409	37	5	5
13	2020-11-06 08:18:08	0	1	18400	18409	38	5	5
14	2020-11-06 08:18:11	0	1	18400	18409	39	5	5
15	2020-11-06 08:18:14	0	1	18400	18409	40	5	5
16	2020-11-06 08:18:19	0	1	18400	18409	41	5	5
17	2020-11-06 08:18:22	0	1	18400	18409	42	5	5
18	2020-11-06 08:18:24	0	1	18400	18409	43	5	5
19	2020-11-06 08:18:26	0	1	18400	18409	44	5	5
20	2020-11-06 08:22:05	0	1	18400	18407	39	Орфоэпия	Орфоэпия
21	2020-11-06 08:22:19	0	1	18400	18407	40	Морфемика	Морфемика
22	2020-11-06 08:22:54	0	1	18400	18407	42	Лексика	Лексика
23	2020-11-06 08:23:10	0	1	18400	18407	43	Синтаксис и пунктуация	Синтаксис и пунктуация
24	2020-11-06 08:26:35	0	1	18400	18410	37	1;2;4;6;8;10;12;14;16;18	1;2;4;6;8;10;12;14;16;18
25	2020-11-06 08:27:45	0	1	18400	18410	38	3;5;7;9;11;13;15;17;19;20;21;22	3;5;7;9;11;13;15;17;19;20;21;22
26	2020-11-06 08:27:52	0	1	18400	18410	39	1	1
27	2020-11-06 08:28:57	0	1	18400	18410	40	2;3;4	2;3;4
28	2020-11-06 08:29:28	0	1	18400	18410	41	5;10;11;12;13	5;10;11;12;13
29	2020-11-06 08:29:49	0	1	18400	18410	42	6;7;8;9	6;7;8;9
30	2020-11-06 08:30:29	0	1	18400	18410	43	14;15;16;17;18;19;20	14;15;16;17;18;19;20
31	2020-11-06 08:30:38	0	1	18400	18410	44	21;22;23	21;22;23
32	2020-11-06 08:31:00	0	1	18400	18410	38	3;5;7;9;11;13;15;17;19;20;21;22;23	3;5;7;9;11;13;15;17;19;20;21;22;23
33	2020-11-06 08:31:35	0	1	18400	18410	44	21;22	21;22
34	2020-11-06 08:31:39	0	1	18400	18410	38	3;5;7;9;11;13;15;17;19;20;21;22	3;5;7;9;11;13;15;17;19;20;21;22
35	2020-11-06 08:35:00	0	1	18200	18227	123	5	5
36	2020-11-06 08:37:09	0	1	17700	17740	1089	5	5
37	2020-11-06 11:44:25	0	1	18400	18407	33	Орфография	Орфография
38	2020-11-06 11:47:01	0	1	18400	18407	34	Морфология	Морфология
39	2020-11-06 11:47:27	0	1	18400	18407	35	Синтаксис и пунктуация	Синтаксис и пунктуация
40	2020-11-06 14:44:25	0	1	17700	17705	799	201	201
41	2020-11-06 16:10:06	0	1	17600	17605	1338	0	0
70	2020-11-09 05:06:28	0	1	18400	18411	31	7	7
71	2020-11-09 05:07:26	0	1	18400	18411	32	2	2
72	2020-11-09 05:07:38	0	1	18400	18411	33	3	3
73	2020-11-09 05:07:49	0	1	18400	18411	34	17	17
74	2020-11-09 05:08:03	0	1	18400	18411	35	7	7
75	2020-11-09 05:08:11	0	1	18400	18411	36	5	5
76	2020-11-09 05:08:29	0	1	18400	18411	29	14	14
77	2020-11-09 05:08:32	0	1	18400	18411	30	27	27
78	2020-11-09 05:10:59	0	1	18200	18228	153	31	31
79	2020-11-09 05:11:05	0	1	18200	18207	153	P1_T1_M	P1_T1_M
80	2020-11-09 05:11:28	0	1	18200	18208	153	Максимальный балл T1	Максимальный балл T1
81	2020-11-09 05:11:44	0	1	18200	18220	153	<ПУСТО>	<ПУСТО>
82	2020-11-09 05:11:49	0	1	18200	18219	153	0	0
83	2020-11-09 05:11:57	0	1	18200	18218	153	0	0
84	2020-11-09 05:12:38	0	1	18200	18211	153	18400	18400
85	2020-11-09 05:12:50	0	1	18200	18212	153	18411	18411
86	2020-11-09 05:13:08	0	1	18200	18213	153	18409	18409
87	2020-11-09 05:13:23	0	1	18200	18214	153	=DEFAULT	=DEFAULT
88	2020-11-09 05:13:34	0	1	18200	18216	153	18408	18408
89	2020-11-09 05:13:45	0	1	18200	18217	153	=T1	=T1
90	2020-11-09 05:14:04	0	1	18200	18207	154	P1_T2_M	P1_T2_M
91	2020-11-09 05:14:07	0	1	18200	18208	154	Максимальный балл T2	Максимальный балл T2
92	2020-11-09 05:14:16	0	1	18200	18217	154	=T2	=T2
93	2020-11-09 05:14:30	0	1	18200	18228	154	32	32
94	2020-11-09 05:14:33	0	1	18200	18228	155	33	33
95	2020-11-09 05:14:37	0	1	18200	18207	155	P1_S1_M	P1_S1_M
96	2020-11-09 05:14:43	0	1	18200	18208	155	Максимальный балл S1	Максимальный балл S1
97	2020-11-09 05:14:50	0	1	18200	18217	155	=S1	=S1
98	2020-11-09 05:15:02	0	1	18200	18228	156	34	34
99	2020-11-09 05:15:05	0	1	18200	18228	157	35	35
100	2020-11-09 05:15:07	0	1	18200	18228	158	36	36
101	2020-11-09 05:15:10	0	1	18200	18228	159	37	37
102	2020-11-09 05:15:13	0	1	18200	18228	160	38	38
103	2020-11-09 05:15:17	0	1	18200	18207	156	P1_S6_M	P1_S6_M
104	2020-11-09 05:15:21	0	1	18200	18207	156	P1_S2_M	P1_S2_M
105	2020-11-09 05:15:24	0	1	18200	18207	157	P1_S3_M	P1_S3_M
106	2020-11-09 05:15:29	0	1	18200	18207	158	P1_S4_M	P1_S4_M
107	2020-11-09 05:15:33	0	1	18200	18207	159	P1_S5_M	P1_S5_M
108	2020-11-09 05:15:36	0	1	18200	18207	160	P1_S6_M	P1_S6_M
109	2020-11-09 05:15:44	0	1	18200	18208	156	Максимальный балл S2	Максимальный балл S2
110	2020-11-09 05:15:47	0	1	18200	18208	157	Максимальный балл S3	Максимальный балл S3
111	2020-11-09 05:15:50	0	1	18200	18208	158	Максимальный балл S4	Максимальный балл S4
112	2020-11-09 05:15:52	0	1	18200	18208	159	Максимальный балл S5	Максимальный балл S5
113	2020-11-09 05:15:55	0	1	18200	18208	160	Максимальный балл S6	Максимальный балл S6
114	2020-11-09 05:16:02	0	1	18200	18217	156	=S2	=S2
115	2020-11-09 05:16:05	0	1	18200	18217	157	=S3	=S3
116	2020-11-09 05:16:17	0	1	18200	18217	153	=`T1`	=`T1`
117	2020-11-09 05:16:22	0	1	18200	18217	154	=`T2`	=`T2`
118	2020-11-09 05:16:25	0	1	18200	18217	155	=`S1`	=`S1`
119	2020-11-09 05:16:30	0	1	18200	18217	156	=`S2`	=`S2`
120	2020-11-09 05:16:35	0	1	18200	18217	157	=`S3`	=`S3`
121	2020-11-09 05:16:42	0	1	18200	18217	158	=`S4`	=`S4`
122	2020-11-09 05:16:47	0	1	18200	18217	159	=`S5`	=`S5`
123	2020-11-09 05:16:52	0	1	18200	18217	160	=`S6	=`S6
124	2020-11-09 05:16:55	0	1	18200	18217	160	=`S6`	=`S6`
125	2020-11-09 05:34:35	0	1	18200	18228	161	39	39
126	2020-11-09 05:34:37	0	1	18200	18228	162	40	40
127	2020-11-09 05:34:40	0	1	18200	18228	163	41	41
128	2020-11-09 05:34:44	0	1	18200	18228	164	42	42
\.


--
-- Data for Name: _dbo_own_objfldprp; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_objfldprp (id_objfldprp, id_obj, id_objfld, width_in_pixels, id_own_user, id_own, in_date, up_date) FROM stdin;
1	200	205	125	0			
2	700	707	122	0			
3	700	706	135	0			
4	2300	2303	300	0			
5	2300	2301	77	0			
6	2300	2302	188	0			
7	2200	2213	300	0			
8	3300	3303	135	0			
9	3300	3302	107	0			
14	400	406	251	0			
15	3100	3104	667	0			
16	3100	3108	176	0			
17	0	0	0	0			
18	0	0	0	0			
19	0	0	0	0			
20	300	305	287	0	0	2018-06-07 16:46:12	2018-06-07 16:46:12
21	3100	3107	333	0	0	2018-06-07 17:04:42	2018-06-07 17:04:42
22	3100	3101	46	0	0	2018-06-07 17:05:08	2018-06-07 17:05:08
23	3100	3106	283	0	0	2018-06-26 14:23:35	2018-06-26 14:23:35
24	3100	3102	126	0	0	2018-06-26 15:51:21	2018-06-26 15:51:21
28	4100	4101	75	0	0	2018-07-12 01:17:01	2018-07-12 01:17:01
29	4100	4105	376	0	0	2018-07-12 01:17:18	2018-07-12 01:17:18
10	400	407	137	0			
11	2400	2403	200	0			
12	2400	2413	122	0			
13	2400	2414	117	0			
30	25300	25307	159	0	0	2020-03-30 20:25:35	2020-03-30 20:25:35
31	100	101	78	0	0	2020-03-31 00:40:37	2020-03-31 00:40:37
32	100	107	200	0	0	2020-03-31 00:41:05	2020-03-31 00:41:05
33	100	106	200	0	0	2020-03-31 00:41:13	2020-03-31 00:41:13
34	25300	25307	348	101	101	2020-03-31 02:55:39	2020-03-31 02:55:39
35	25300	25311	422	101	101	2020-03-31 04:30:48	2020-03-31 04:30:48
36	25300	25308	90	101	101	2020-04-01 05:15:43	2020-04-01 05:15:43
37	25300	25310	172	101	101	2020-04-01 05:15:54	2020-04-01 05:15:54
38	25300	25309	150	101	101	2020-04-01 05:15:59	2020-04-01 05:15:59
39	25300	25301	259	101	101	2020-04-01 05:41:55	2020-04-01 05:41:55
40	25300	25312	110	101	101	2020-04-01 05:42:22	2020-04-01 05:42:22
41	1800	1802	300	0	0	2020-04-02 01:57:31	2020-04-02 01:57:31
42	1800	1801	98	0	0	2020-04-02 01:57:33	2020-04-02 01:57:33
43	1800	1803	300	0	0	2020-04-02 01:57:42	2020-04-02 01:57:42
44	1400	1410	200	0	0	2020-04-03 03:03:37	2020-04-03 03:03:37
45	25300	25313	178	101	101	2020-04-06 11:15:26	2020-04-06 11:15:26
46	25300	25314	198	101	101	2020-04-06 11:15:52	2020-04-06 11:15:52
47	25300	25315	250	101	101	2020-05-07 05:16:12	2020-05-07 05:16:12
48	25300	25316	214	101	101	2020-05-20 16:43:50	2020-05-20 16:43:50
49	25300	25317	150	101	101	2020-05-20 16:44:32	2020-05-20 16:44:32
50	25300	0	30	101	101	2020-05-21 22:36:22	2020-05-21 22:36:22
51	4100	4107	132	0	0	2020-06-21 15:28:42	2020-06-21 15:28:42
52	15600	15607	200	0	0	2020-06-22 03:27:14	2020-06-22 03:27:14
53	15800	15807	250	0	0	2020-06-22 04:08:42	2020-06-22 04:08:42
54	15700	15707	200	0	0	2020-06-22 04:40:35	2020-06-22 04:40:35
55	15700	15710	150	0	0	2020-06-22 04:40:43	2020-06-22 04:40:43
56	15800	15810	150	0	0	2020-06-22 06:23:03	2020-06-22 06:23:03
57	15800	15810	150	101	101	2020-06-22 06:27:37	2020-06-22 06:27:37
58	15800	15807	250	101	101	2020-06-22 06:27:44	2020-06-22 06:27:44
59	15700	15710	158	101	101	2020-06-22 06:27:56	2020-06-22 06:27:56
60	15700	15707	360	101	101	2020-06-22 06:28:02	2020-06-22 06:28:02
61	15600	15607	250	101	101	2020-06-22 06:28:42	2020-06-22 06:28:42
62	15900	15908	305	101	101	2020-06-22 06:29:51	2020-06-22 06:29:51
63	15200	15207	146	101	101	2020-06-26 10:54:52	2020-06-26 10:54:52
64	15300	15307	107	101	101	2020-06-26 10:55:09	2020-06-26 10:55:09
65	15700	15711	107	101	101	2020-06-26 10:58:00	2020-06-26 10:58:00
66	15700	15712	65	101	101	2020-06-26 10:58:10	2020-06-26 10:58:10
67	15700	15713	99	101	101	2020-06-26 10:58:13	2020-06-26 10:58:13
68	15700	15715	155	101	101	2020-06-26 10:58:31	2020-06-26 10:58:31
69	15700	15716	400	101	101	2020-06-26 10:58:39	2020-06-26 10:58:39
70	15700	15717	200	101	101	2020-06-26 10:59:08	2020-06-26 10:59:08
71	15700	15719	120	101	101	2020-06-26 10:59:33	2020-06-26 10:59:33
72	15700	15720	120	101	101	2020-06-26 10:59:41	2020-06-26 10:59:41
73	15700	15721	400	101	101	2020-06-26 11:00:02	2020-06-26 11:00:02
74	15900	15907	60	101	101	2020-06-26 11:43:05	2020-06-26 11:43:05
75	17300	17307	63	101	101	2020-07-16 02:27:09	2020-07-16 02:27:09
76	17300	17308	500	101	101	2020-07-16 02:27:12	2020-07-16 02:27:12
77	17300	17309	256	101	101	2020-07-16 02:27:15	2020-07-16 02:27:15
78	17300	17301	158	101	101	2020-07-16 02:27:19	2020-07-16 02:27:19
79	17300	17310	300	101	101	2020-07-16 02:27:26	2020-07-16 02:27:26
80	17300	17311	37	101	101	2020-07-16 02:57:33	2020-07-16 02:57:33
81	17300	17317	200	101	101	2020-07-16 07:19:36	2020-07-16 07:19:36
82	16200	16207	219	101	101	2020-07-20 06:54:10	2020-07-20 06:54:10
83	16700	16703	127	101	101	2020-08-03 12:46:38	2020-08-03 12:46:38
84	16700	16704	118	101	101	2020-08-03 12:46:41	2020-08-03 12:46:41
85	17200	17206	213	101	101	2020-08-03 12:47:16	2020-08-03 12:47:16
86	16600	16603	137	101	101	2020-08-03 12:48:22	2020-08-03 12:48:22
87	16600	16604	120	101	101	2020-08-03 12:48:31	2020-08-03 12:48:31
88	16600	16601	153	101	101	2020-08-03 12:49:10	2020-08-03 12:49:10
89	16600	16621	150	101	101	2020-08-03 12:49:18	2020-08-03 12:49:18
90	15100	15113	171	101	101	2020-08-03 16:17:07	2020-08-03 16:17:07
91	15100	15114	156	101	101	2020-08-03 16:17:14	2020-08-03 16:17:14
92	15400	15407	75	101	101	2020-08-03 16:17:38	2020-08-03 16:17:38
93	17300	17319	117	101	101	2020-08-25 21:26:17	2020-08-25 21:26:17
94	16100	16109	95	101	101	2020-09-06 10:24:40	2020-09-06 10:24:40
95	200	203	230	0	0	2020-09-08 15:41:30	2020-09-08 15:41:30
96	17500	17512	239	0	0	2020-09-09 16:08:20	2020-09-09 16:08:20
97	17600	17612	128	0	0	2020-09-09 16:36:40	2020-09-09 16:36:40
98	18200	18210	81	0	0	2020-09-11 17:49:09	2020-09-11 17:49:09
99	18200	18212	89	0	0	2020-09-11 17:49:26	2020-09-11 17:49:26
100	15500	15507	144	0	0	2020-09-12 13:21:41	2020-09-12 13:21:41
101	18200	18208	218	201	201	2020-09-13 05:35:31	2020-09-13 05:35:31
102	18200	18211	148	0	0	2020-09-13 06:18:45	2020-09-13 06:18:45
103	18200	18208	232	0	0	2020-09-13 06:31:58	2020-09-13 06:31:58
\.


--
-- Data for Name: _dbo_own_objfldrule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_objfldrule (id_objfldrule, in_date, up_date, id_own, id_flag, id_area, id_obj, id_objfld, denyread, denywrite, id_own_user, id_objrule) FROM stdin;
\.


--
-- Data for Name: _dbo_own_objhide; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_objhide (id_objhide, id_own, id_obj, setid) FROM stdin;
0	0	0	0
\.


--
-- Data for Name: _dbo_own_objrule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_objrule (id_objrule, id_flag, id_own_user, id_area, id_obj, ruleselect, ruleupdate, ruleinsert, ruledelete, ruleupdateselect, ruleinsertcopy, ruleexportrecordone, ruleexportrecordall, in_date, up_date, id_own) FROM stdin;
1	0	1001	1	25200	-1	0	0	0	0	0	0	0	2018-07-12 01:39:04	2018-07-12 01:39:04	0
2	0	1001	1	25300	-1	0	0	0	0	0	0	0	2018-07-12 01:39:10	2018-07-12 01:39:10	0
3	0	1001	1	25400	-1	0	0	0	0	0	0	0	2018-07-12 01:39:16	2018-07-12 01:39:16	0
4	0	1001	1	25600	-1	0	0	0	0	0	0	0	2018-07-12 01:39:22	2018-07-12 01:39:22	0
5	0	1001	1	25100	-1	0	0	0	0	0	0	0	2018-07-12 01:39:28	2018-07-12 01:39:28	0
6	0	101	1	25100	-1	-1	-1	-1	0	0	-1	-1	2020-04-02 01:54:25	2020-04-02 01:54:25	0
7	0	101	1	25200	-1	-1	-1	-1	0	0	-1	-1	2020-04-02 01:54:40	2020-04-02 01:54:40	0
8	0	101	1	25300	-1	-1	-1	-1	0	0	-1	-1	2020-04-02 01:54:46	2020-04-02 01:54:46	0
9	0	101	1	25400	0	-1	-1	-1	0	0	-1	-1	2020-04-02 01:54:52	2020-04-02 01:54:52	0
10	0	101	1	25600	0	-1	-1	-1	0	0	-1	-1	2020-04-02 01:54:57	2020-04-02 01:54:57	0
11	0	101	1	25700	-1	-1	-1	-1	0	0	-1	-1	2020-04-06 09:11:01	2020-04-06 09:11:01	0
12	0	101	1	25800	0	-1	-1	-1	0	0	-1	-1	2020-04-06 09:57:07	2020-04-06 09:57:07	0
\.


--
-- Data for Name: _dbo_own_owngroup; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_owngroup (id_owngroup, in_date, up_date, id_own, id_flag, id_area, name_owngroup, descript) FROM stdin;
1	2010-04-07 05:32:29	2010-04-07 05:32:29	0	1	0	<ПУСТО>	
2	2010-04-07 05:32:29	2010-04-07 05:32:29	0	201	0	<РЕЗЕРВ>	
3	2010-04-07 05:32:29	2010-04-07 05:32:29	0	201	0	<ВСЕ>	
4	2010-04-07 06:07:42	2010-04-07 06:07:42	0	0	0	<ВСЕ ПОЛЬЗОВАТЕЛИ>	
5	2010-04-07 06:08:05	2010-04-07 06:08:05	0	0	0	АДМИНИСТРАЦИЯ	
6	2010-04-07 06:18:02	2010-04-07 06:18:02	0	0	0	РУКОВОДИТЕЛИ ПОДРАЗДЕЛЕНИЙ	
\.


--
-- Data for Name: _dbo_own_owngrouprow; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_owngrouprow (id_owngrouprow, in_date, up_date, id_own, id_flag, id_area, id_owngroup, id_own_set, descript) FROM stdin;
1	2010-04-07 05:41:00	2010-04-07 05:41:47	0	1	0	10	50	<СИСТЕМА>
2	2010-04-07 05:41:47	2010-04-07 05:41:47	0	201	0	1	0	<СИСТЕМА>
3	2010-04-07 05:41:47	2010-04-07 05:41:47	0	201	0	1	0	<СИСТЕМА>
\.


--
-- Data for Name: _dbo_own_ownlevel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_ownlevel (id_ownlevel, in_date, up_date, id_own, id_flag, id_area, id_own_set, id_own_papa) FROM stdin;
1	2017-09-26 01:58:17	2017-09-26 01:58:17	0	1	1	0	0
2	2017-09-26 01:58:17	2017-09-26 01:58:17	0	1	1	0	0
3	2017-09-26 01:58:17	2017-09-26 01:58:17	0	1	1	0	0
\.


--
-- Data for Name: _dbo_own_ownwork; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_ownwork (id_ownwork, date_ownwork, id_own, id_workplace, name_ownwork) FROM stdin;
\.


--
-- Data for Name: _dbo_own_prf; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_prf (id_prf, name, descript) FROM stdin;
1	Admin	Администратор
2	Auditor	Аудитор
3	Supervisor	Наблюдатель
4	User	Пользователь
0	SYS	Система
\.


--
-- Data for Name: _dbo_own_reference; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_reference (id_reference, in_date, up_date, id_own, id_flag, id_area, date_reference, id_obj_from, id_from, id_obj_to, id_to, descript) FROM stdin;
1	2010-12-13 01:45:15	2010-12-13 01:45:15	0	1	1	2010-12-13 01:45:15	0	0	0	0	
2	2010-12-13 01:45:15	2010-12-13 01:45:15	0	201	1	2010-12-13 01:45:15	0	0	0	0	
3	2010-12-13 01:45:15	2010-12-13 01:45:15	0	201	1	2010-12-13 01:45:15	0	0	0	0	
\.


--
-- Data for Name: _dbo_own_sendto; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_sendto (id_sendto, in_date, up_date, id_own, id_flag, id_area, id_obj, id_send, date_sendto, id_own_from, id_own_to, id_department, id_owngroup, dateset, dateview, descript, id_sendto_papa, report, datereport, is_reportset, reportdd) FROM stdin;
\.


--
-- Data for Name: _dbo_own_sendtosmtp; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_sendtosmtp (id_sendtosmtp, in_date, up_date, id_own, id_flag, id_area, date_sendtosmtp, descript, id_person, smtpaddress, id_obj, id_send, id_own_from, start_date, stop_date) FROM stdin;
\.


--
-- Data for Name: _dbo_own_solrule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_own_solrule (id_solrule, id_flag, id_area, id_sol, id_prf, in_date, up_date, id_own_user, id_own) FROM stdin;
1	0	1	7	4	2018-07-12 01:36:23	2018-07-12 01:36:23	1001	0
2	0	1	7	4	2018-07-12 01:36:45	2018-07-12 01:36:45	1201	0
3	0	1	7	4	2018-07-12 01:36:59	2018-07-12 01:36:59	1202	0
4	0	1	7	4	2018-07-12 01:36:23	2018-07-12 01:36:23	1002	0
5	0	1	7	4	2018-07-12 01:37:37	2018-07-12 01:37:37	1101	0
6	0	1	7	4	2018-07-12 01:37:37	2018-07-12 01:37:37	1102	0
7	0	1	7	1	2020-03-30 20:35:56	2020-03-30 20:35:56	101	0
8	0	1	7	4	2020-03-30 20:36:34	2020-03-30 20:36:34	102	0
10	0	1	7	4	2020-06-22 06:25:42	2020-06-22 06:25:42	104	0
11	0	1	7	4	2020-06-22 06:25:58	2020-06-22 06:25:58	103	0
12	0	1	8	1	2020-09-13 03:48:36	2020-09-13 03:48:36	201	0
\.


--
-- Data for Name: _dbo_pem_averagedata; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_averagedata (id_averagedata, statfunction, id_subjectrf, id_organization, id_grade, id_period, s1, s2, s3, s4, s5, s6, t1, t2, testscore, id_testlevel, id_report, s7, s8, id_parallel) FROM stdin;
55	AVG	14	2	0	1	1.36363636363636	4.09090909090909	0.727272727272727	0.818181818181818	4.0	1.59090909090909	11.0909090909091	3.36363636363636	48.0454545454545		3	1.04545454545455	0.818181818181818	9
110	AVG	14	33	0	2	0.0	1.0	2.0	1.5	2.0	0.5	4.25	2.75	47.75		5			10
165	AVG	36	41	0	2	2.10526315789474	2.78947368421053	0.578947368421053	0.842105263157895	1.42105263157895	0.0	4.15789473684211	3.57894736842105	43.4736842105263		8	0.0		5
220	AVG	36	96	0	2	2.69230769230769	3.23076923076923	1.0	1.30769230769231	2.84615384615385	1.07692307692308	5.69230769230769	7.07692307692308	55.0769230769231		8	0.615384615384615		5
275	AVG	36	151	0	2	2.66666666666667	2.0	1.16666666666667	0.666666666666667	1.33333333333333	0.166666666666667	4.5	3.83333333333333	46.3333333333333		8	0.333333333333333		5
330	AVG	42	206	0	2	2.36363636363636	2.36363636363636	0.772727272727273	0.909090909090909	1.59090909090909	0.0	4.0	4.22727272727273	44.8636363636364		8	0.227272727272727		5
385	AVG	42	261	0	2	1.81818181818182	1.95454545454545	0.772727272727273	0.454545454545455	1.63636363636364	0.0454545454545455	3.72727272727273	3.04545454545455	42.1818181818182		8	0.0909090909090909		5
440	AVG	48	316	0	2	2.85185185185185	2.48148148148148	1.22222222222222	1.22222222222222	2.74074074074074	0.222222222222222	6.25925925925926	4.7037037037037	51.8518518518519		8	0.222222222222222		5
495	AVG	70	369	0	2	2.11111111111111	3.66666666666667	1.55555555555556	1.22222222222222	2.66666666666667	0.222222222222222	5.44444444444444	6.0	52.8888888888889		8	0.0		5
550	AVG	36	57	0	2	5.16666666666667	6.16666666666667	5.0	4.66666666666667	6.33333333333333		11.6666666666667	9.33333333333333	58.0		9			5
605	AVG	36	112	0	2	5.53846153846154	6.15384615384615	5.30769230769231	5.92307692307692	7.30769230769231		10.8846153846154	12.0384615384615	60.6923076923077		9			5
660	AVG	42	167	0	2	3.41666666666667	5.04166666666667	3.625	3.20833333333333	4.0		8.875	6.41666666666667	50.9166666666667		9			5
715	AVG	42	222	0	2	4.45454545454545	4.86363636363636	2.77272727272727	2.86363636363636	4.81818181818182		8.36363636363636	6.59090909090909	50.6818181818182		9			5
770	AVG	42	277	0	2	4.5	5.25	3.0	2.875	4.25		8.625	7.0	50.625		9			5
825	AVG	48	332	0	2	4.65384615384615	5.15384615384615	4.5	4.15384615384615	5.15384615384615		10.4615384615385	8.0	55.3076923076923		9			5
880	AVG	70	385	0	2	3.45454545454545	4.68181818181818	3.40909090909091	4.0	4.63636363636364		9.18181818181818	6.36363636363636	51.5454545454545		9			5
935	AVG	14	9	39	2	1.91666666666667	1.08333333333333	0.0	1.5	1.08333333333333	0.166666666666667	2.75	3.0	52.0833333333333		4			8
990	AVG	14	29	93	2	0.0	1.0	1.33333333333333	2.66666666666667	2.33333333333333	0.666666666666667	3.66666666666667	4.33333333333333	48.0		5			10
1045	AVG	14	24	88	2	1.42857142857143	1.42857142857143	4.21428571428571	1.78571428571429	1.21428571428571	1.85714285714286	12.6428571428571	4.57142857142857	56.3571428571429		7	0.857142857142857	4.42857142857143	10
1100	AVG	36	82	143	2	2.61904761904762	3.57142857142857	1.04761904761905	1.52380952380952	2.80952380952381	0.714285714285714	6.76190476190476	5.90476190476191	55.0		8	0.380952380952381		5
1155	AVG	36	136	198	2	1.91304347826087	3.47826086956522	1.26086956521739	1.04347826086957	2.8695652173913	0.521739130434783	6.26086956521739	5.56521739130435	53.5652173913044		8	0.739130434782609		5
1210	AVG	42	191	253	2	3.37037037037037	4.85185185185185	1.59259259259259	1.77777777777778	3.40740740740741	1.0	8.59259259259259	7.44444444444444	62.4074074074074		8	0.037037037037037		5
1265	AVG	42	246	308	2	1.5	2.9	1.05	1.5	1.35	0.7	4.6	4.7	48.2		8	0.3		5
1320	AVG	48	298	363	2	2.72	3.2	1.16	1.2	2.4	0.08	6.28	4.56	51.52		8	0.08		5
1375	AVG	54	7	478	2	2.8	3.5	1.5	1.55	1.7	0.05	6.35	5.4	53.3		8	0.65		5
1430	AVG	70	397	464	2	2.0	2.125	0.875	1.0	1.125	0.125	4.125	3.125	43.5		8	0.0		5
1485	AVG	36	85	146	2	4.63636363636364	4.13636363636364	3.63636363636364	3.04545454545455	4.72727272727273		9.18181818181818	6.27272727272727	51.5909090909091		9			5
1540	AVG	36	139	201	2	4.38888888888889	4.61111111111111	4.05555555555556	4.83333333333333	4.88888888888889		10.2222222222222	7.66666666666667	54.6666666666667		9			5
1595	AVG	42	194	256	2	4.90909090909091	4.09090909090909	3.0	2.72727272727273	4.36363636363636		8.45454545454546	6.27272727272727	50.7272727272727		9			5
1650	AVG	42	249	311	2	2.55	3.15	1.3	2.1	2.3		5.65	3.45	38.8		9			5
1705	AVG	48	302	367	2	5.35714285714286	5.46428571428571	3.75	4.17857142857143	5.78571428571429		10.0714285714286	8.67857142857143	55.4642857142857		9			5
1760	AVG	70	346	413	2	3.88461538461538	5.07692307692308	2.53846153846154	2.73076923076923	4.0		8.80769230769231	5.42307692307692	49.3461538461538		9			5
1815	AVG	70	401	468	2	3.0	3.92857142857143	1.57142857142857	1.71428571428571	3.0		6.21428571428571	4.0	44.8571428571429		9			5
1868	COUNT	48	0	0	2	666.0	666.0	666.0	666.0	666.0	0.0	666.0	666.0		2.0	9	0.0	0.0	0
1921	COUNT	36	0	0	2	1036.0	1036.0	1036.0	1036.0	1036.0	0.0	1036.0	1036.0		2.0	9	0.0	0.0	5
1974	COUNT	14	3	0	1	4.0	4.0	4.0	4.0	4.0	4.0	4.0	4.0		2.0	3	4.0	4.0	9
2027	COUNT	14	25	0	2	12.0	12.0	12.0	12.0	12.0	12.0	12.0	12.0		2.0	4	0.0	0.0	8
2080	COUNT	14	9	0	2	7.0	7.0	7.0	7.0	7.0	0.0	7.0	7.0		1.0	6	0.0	0.0	8
2133	COUNT	14	17	0	2	5.0	5.0	5.0	5.0	5.0	0.0	5.0	5.0		3.0	6	0.0	0.0	8
2186	COUNT	14	21	0	2	14.0	14.0	14.0	14.0	14.0	14.0	14.0	14.0		3.0	7	14.0	14.0	10
2239	COUNT	36	89	0	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		1.0	8	1.0	0.0	5
2292	COUNT	36	39	0	2	13.0	13.0	13.0	13.0	13.0	13.0	13.0	13.0		2.0	8	13.0	0.0	5
2345	COUNT	36	96	0	2	6.0	6.0	6.0	6.0	6.0	6.0	6.0	6.0		2.0	8	6.0	0.0	5
2398	COUNT	36	151	0	2	4.0	4.0	4.0	4.0	4.0	4.0	4.0	4.0		2.0	8	4.0	0.0	5
2451	COUNT	36	91	0	2	3.0	3.0	3.0	3.0	3.0	3.0	3.0	3.0		3.0	8	3.0	0.0	5
2504	COUNT	42	153	0	2	12.0	12.0	12.0	12.0	12.0	12.0	12.0	12.0		1.0	8	12.0	0.0	5
2557	COUNT	42	211	0	2	9.0	9.0	9.0	9.0	9.0	9.0	9.0	9.0		1.0	8	9.0	0.0	5
2610	COUNT	42	264	0	2	12.0	12.0	12.0	12.0	12.0	12.0	12.0	12.0		1.0	8	12.0	0.0	5
2663	COUNT	42	190	0	2	16.0	16.0	16.0	16.0	16.0	16.0	16.0	16.0		2.0	8	16.0	0.0	5
2716	COUNT	42	243	0	2	9.0	9.0	9.0	9.0	9.0	9.0	9.0	9.0		2.0	8	9.0	0.0	5
2769	COUNT	42	171	0	2	20.0	20.0	20.0	20.0	20.0	20.0	20.0	20.0		3.0	8	20.0	0.0	5
2822	COUNT	42	228	0	2	7.0	7.0	7.0	7.0	7.0	7.0	7.0	7.0		3.0	8	7.0	0.0	5
2875	COUNT	48	293	0	2	4.0	4.0	4.0	4.0	4.0	4.0	4.0	4.0		1.0	8	4.0	0.0	5
2928	COUNT	48	284	0	2	15.0	15.0	15.0	15.0	15.0	15.0	15.0	15.0		2.0	8	15.0	0.0	5
2981	COUNT	48	337	0	2	6.0	6.0	6.0	6.0	6.0	6.0	6.0	6.0		2.0	8	6.0	0.0	5
3034	COUNT	48	334	0	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	8	1.0	0.0	5
3087	COUNT	70	385	0	2	2.0	2.0	2.0	2.0	2.0	2.0	2.0	2.0		1.0	8	2.0	0.0	5
3140	COUNT	70	379	0	2	9.0	9.0	9.0	9.0	9.0	9.0	9.0	9.0		2.0	8	9.0	0.0	5
3193	COUNT	70	379	0	2	2.0	2.0	2.0	2.0	2.0	2.0	2.0	2.0		3.0	8	2.0	0.0	5
3246	COUNT	36	74	0	2	5.0	5.0	5.0	5.0	5.0	0.0	5.0	5.0		1.0	9	0.0	0.0	5
3299	COUNT	36	142	0	2	6.0	6.0	6.0	6.0	6.0	0.0	6.0	6.0		1.0	9	0.0	0.0	5
3352	COUNT	36	81	0	2	8.0	8.0	8.0	8.0	8.0	0.0	8.0	8.0		2.0	9	0.0	0.0	5
3405	COUNT	36	137	0	2	11.0	11.0	11.0	11.0	11.0	0.0	11.0	11.0		2.0	9	0.0	0.0	5
3458	COUNT	36	94	0	2	1.0	1.0	1.0	1.0	1.0	0.0	1.0	1.0		3.0	9	0.0	0.0	5
3511	COUNT	42	156	0	2	8.0	8.0	8.0	8.0	8.0	0.0	8.0	8.0		1.0	9	0.0	0.0	5
3564	COUNT	42	213	0	2	7.0	7.0	7.0	7.0	7.0	0.0	7.0	7.0		1.0	9	0.0	0.0	5
3617	COUNT	42	267	0	2	4.0	4.0	4.0	4.0	4.0	0.0	4.0	4.0		1.0	9	0.0	0.0	5
3670	COUNT	42	193	0	2	8.0	8.0	8.0	8.0	8.0	0.0	8.0	8.0		2.0	9	0.0	0.0	5
3723	COUNT	42	247	0	2	9.0	9.0	9.0	9.0	9.0	0.0	9.0	9.0		2.0	9	0.0	0.0	5
3776	COUNT	42	175	0	2	6.0	6.0	6.0	6.0	6.0	0.0	6.0	6.0		3.0	9	0.0	0.0	5
3829	COUNT	42	232	0	2	1.0	1.0	1.0	1.0	1.0	0.0	1.0	1.0		3.0	9	0.0	0.0	5
3882	COUNT	48	298	0	2	2.0	2.0	2.0	2.0	2.0	0.0	2.0	2.0		1.0	9	0.0	0.0	5
3935	COUNT	48	293	0	2	15.0	15.0	15.0	15.0	15.0	0.0	15.0	15.0		2.0	9	0.0	0.0	5
3988	COUNT	48	287	0	2	17.0	17.0	17.0	17.0	17.0	0.0	17.0	17.0		3.0	9	0.0	0.0	5
4041	COUNT	70	343	0	2	8.0	8.0	8.0	8.0	8.0	0.0	8.0	8.0		1.0	9	0.0	0.0	5
4094	COUNT	70	398	0	2	10.0	10.0	10.0	10.0	10.0	0.0	10.0	10.0		1.0	9	0.0	0.0	5
4147	COUNT	70	394	0	2	4.0	4.0	4.0	4.0	4.0	0.0	4.0	4.0		2.0	9	0.0	0.0	5
4200	COUNT	70	393	0	2	4.0	4.0	4.0	4.0	4.0	0.0	4.0	4.0		3.0	9	0.0	0.0	5
4253	COUNT	54	8	23	1	3.0	3.0	3.0	3.0	3.0	0.0	3.0	3.0		2.0	2	0.0	0.0	7
4306	COUNT	14	21	53	2	13.0	13.0	13.0	13.0	13.0	13.0	13.0	13.0		1.0	4	0.0	0.0	8
4359	COUNT	14	9	72	2	7.0	7.0	7.0	7.0	7.0	7.0	7.0	7.0		1.0	5	0.0	0.0	10
4412	COUNT	14	16	46	2	9.0	9.0	9.0	9.0	9.0	0.0	9.0	9.0		1.0	6	0.0	0.0	8
4465	COUNT	14	35	70	2	5.0	5.0	5.0	5.0	5.0	0.0	5.0	5.0		2.0	6	0.0	0.0	8
4518	COUNT	14	28	92	2	12.0	12.0	12.0	12.0	12.0	12.0	12.0	12.0		2.0	7	12.0	12.0	10
4519	COUNT	14	29	93	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		2.0	7	1.0	1.0	10
4520	COUNT	14	30	94	2	2.0	2.0	2.0	2.0	2.0	2.0	2.0	2.0		2.0	7	2.0	2.0	10
4521	COUNT	14	31	95	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		2.0	7	1.0	1.0	10
4522	COUNT	14	33	96	2	2.0	2.0	2.0	2.0	2.0	2.0	2.0	2.0		2.0	7	2.0	2.0	10
4523	COUNT	14	9	71	2	9.0	9.0	9.0	9.0	9.0	9.0	9.0	9.0		3.0	7	9.0	9.0	10
4524	COUNT	14	9	72	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	7	1.0	1.0	10
4525	COUNT	14	17	79	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	7	1.0	1.0	10
4526	COUNT	14	19	81	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	7	1.0	1.0	10
4527	COUNT	14	21	82	2	14.0	14.0	14.0	14.0	14.0	14.0	14.0	14.0		3.0	7	14.0	14.0	10
4528	COUNT	14	24	86	2	16.0	16.0	16.0	16.0	16.0	16.0	16.0	16.0		3.0	7	16.0	16.0	10
4529	COUNT	14	24	87	2	13.0	13.0	13.0	13.0	13.0	13.0	13.0	13.0		3.0	7	13.0	13.0	10
4530	COUNT	14	24	88	2	10.0	10.0	10.0	10.0	10.0	10.0	10.0	10.0		3.0	7	10.0	10.0	10
4531	COUNT	14	25	89	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	7	1.0	1.0	10
4532	COUNT	14	26	90	2	6.0	6.0	6.0	6.0	6.0	6.0	6.0	6.0		3.0	7	6.0	6.0	10
4533	COUNT	14	27	91	2	2.0	2.0	2.0	2.0	2.0	2.0	2.0	2.0		3.0	7	2.0	2.0	10
4534	COUNT	14	28	92	2	1.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0		3.0	7	1.0	1.0	10
\.


--
-- Data for Name: _dbo_pem_grade; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_grade (id_grade, in_date, up_date, id_own, id_flag, id_area, name_grade, descript_grade, teacherfio, id_organization, id_subjectrf, id_parallel) FROM stdin;
0	2020-09-08 22:01:19	2020-09-08 22:01:19	0	1	1	<НЕОПРЕДЕЛЕНО>			1		0
2	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			2	14	8
3	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			3	14	8
4	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			4	14	8
5	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			5	54	8
6	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			6	54	8
7	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			7	54	8
8	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			7	54	8
9	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8В			7	54	8
10	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8И			7	54	8
11	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			8	54	8
12	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			8	54	8
13	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	7			2	14	7
14	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	7А			3	14	7
15	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	7Б			4	14	7
38	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			9	14	8
39	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			9	14	8
40	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			10	14	8
41	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			11	14	8
42	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			12	14	8
43	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			13	14	8
44	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			14	14	8
45	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			15	14	8
46	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			16	14	8
47	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			17	14	8
48	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			18	14	8
49	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			19	14	8
50	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			20	14	8
51	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			21	14	8
52	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			21	14	8
53	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8В			21	14	8
54	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			22	14	8
55	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			22	14	8
56	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			23	14	8
57	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			24	14	8
58	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			24	14	8
59	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8А			25	14	8
60	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8Б			25	14	8
61	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			26	14	8
62	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			27	14	8
63	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			28	14	8
64	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			29	14	8
65	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			30	14	8
66	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			31	14	8
67	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			32	14	8
68	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			33	14	8
69	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			34	14	8
70	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	8			35	14	8
71	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10А			9	14	10
72	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10Б			9	14	10
73	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			10	14	10
74	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			11	14	10
75	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			12	14	10
76	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			14	14	10
77	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			15	14	10
78	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			16	14	10
79	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			17	14	10
80	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			18	14	10
81	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			19	14	10
82	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10А			21	14	10
83	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10Б			21	14	10
84	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			22	14	10
85	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			23	14	10
86	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10А			24	14	10
87	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10Б			24	14	10
88	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10В			24	14	10
89	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			25	14	10
90	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			26	14	10
91	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			27	14	10
92	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			28	14	10
93	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			29	14	10
94	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			30	14	10
95	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			31	14	10
96	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	10			33	14	10
97	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			36	36	5
98	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			37	36	5
99	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			38	36	5
100	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5Б			39	36	5
101	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			40	36	5
102	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			41	36	5
103	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5В			42	36	5
104	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			43	36	5
105	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5В			44	36	5
106	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			45	36	5
107	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			46	36	5
108	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5Б			47	36	5
109	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5Б			48	36	5
110	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			49	36	5
111	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			50	36	5
112	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			51	36	5
113	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			52	36	5
114	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			53	36	5
115	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5			54	36	5
116	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			55	36	5
117	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			56	36	5
118	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5В			57	36	5
119	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			58	36	5
120	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5В			59	36	5
121	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5Б			60	36	5
122	2020-09-08 22:01:19	2020-09-08 22:01:19	0	0	1	5А			61	36	5
\.


--
-- Data for Name: _dbo_pem_learner; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_learner (id_learner, in_date, up_date, id_own, id_flag, id_area, name_learner, date_learner, descript_learner, id_grade, learner_id, id_organization) FROM stdin;
1	2020-09-08 22:15:04	2020-09-08 22:15:04	0	1	1	<НЕОПРЕДЕЛЕНО>			1		1
2	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Александрова Виктория Васильевна			2	14001253544	2
3	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Аянитова Виктория Денисовна			2	14001044784	2
4	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Боронова Алина Петровна			2	14001252753	2
5	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Бочкарева Сардаана Николаевна			2	14001742631	2
6	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Васильев Андрей Алексеевич			2	14001753097	2
7	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Васильев Денис Альбертович			2	14001878601	2
8	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Васильев Максим Юрьевич			2	14001953104	2
9	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Гаврильева Юлия Сергеевна			2	14001777932	2
10	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Гоголева Мария Альбертовна			2	14001488032	2
11	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Горохова Майя Сергеевна			2	14001078954	2
12	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Еремисов Айтал Владиславович			2	14001572673	2
13	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Жуковский Сергей Алексеевич			2	14001646056	2
14	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Заболотник Ольга Павловна			2	14001591884	2
15	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Захарова Надежда Андреевна			2	14001214266	2
16	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Индеев Денис Владимирович			2	14001631345	2
17	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Иннокентьева Алевтина Прокопьевна			2	14001216833	2
18	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Колодезникова Екатерина Алексеевна			2	14001112958	2
19	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Ксенофонтов Максим Геннадьевич			2	14001126253	2
20	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Куприянова Виктория Васильевна			2	14001205785	2
21	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Наумова Кристина Ильинична			2	14001918742	2
22	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Николаев Леонид Леонидович			2	14001927517	2
23	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Николаев Иван Иванович			2	14001411132	2
24	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Попова Амина Михайловна			2	14001685518	2
25	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Слепцов Григорий Александрович 			2	14001077302	2
26	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Татаринов Тимур Иннокентьевич			2	14001267368	2
27	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Тихонова Сильвия Алексеевна			2	14001262308	2
28	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Чебанов Святослав Сергеевич			2	14001596189	2
29	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Эверстова Розалия Петровна			2	14001063805	2
30	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Яковлев Владимир Алексеевич			2	14001640595	2
31	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Алексеева Антонина Васильевна			3	14002562596	3
32	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Бецанич Илья Андреевич			3	14002283186	3
33	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Семенов Владимир Федорович			3	14002901705	3
34	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Слепцова Анита Иннокентьевна			3	14002909735	3
35	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Тимофеев Юрий Семенович			3	14002822725	3
36	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Трифонов Петр Петрович			3	14002775576	3
37	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Цыбульский Игорь Андреевич			3	14002883567	3
38	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Яковенко Павел Никитич			3	14002004823	3
39	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Александров Степан Петрович			4	14003632174	4
40	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Андреев Максим Русланович			4	14003304862	4
41	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Аникин Максим Владимирович			4	14003124026	4
42	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Антонов Гаврил Гаврилович			4	14003909029	4
43	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Белоусов Иван Алексеевич			4	14003888054	4
44	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Бурнашев Владислав Васильевич			4	14003718306	4
45	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Васильев Андрей Александрович			4	14003812618	4
46	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Васильев Артур Алексеевич			4	14003781488	4
47	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Владимирова Виктория Александровна			4	14003487742	4
48	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Гаврильева Аина Семеновна			4	14003726426	4
49	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Герасимов Александр Константинович			4	14003701144	4
50	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Данилова Динара Ивановна			4	14003932055	4
51	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Данилова Сайаана Николаевна			4	14003229578	4
52	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Захаров Айтал Анатольевич			4	14003605798	4
53	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Захарова Инна Петровна			4	14003054779	4
54	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Канаева Алина Константиновна			4	14003482543	4
55	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Лебедев Денис Александрович			4	14003073195	4
56	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Назаров Виктор Андреевич			4	14003696948	4
57	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Никитина Юлия Петровна 			4	14003115732	4
58	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Николаев Радомир Любомирович			4	14003155183	4
59	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Павловский Владислав Витальевич			4	14003230904	4
60	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Платонова Виктория Валентиновна			4	14003977266	4
61	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Птицына Ролланна Петровна			4	14003213926	4
62	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Син Николай Юрьевич			4	14003726030	4
63	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Тен Руслан Дмитриевич			4	14003677106	4
64	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Федоров Александр Степанович			4	14003133813	4
65	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Федоров Максим Иванович			4	14003602641	4
66	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Федорова Елена Валерьевна			4	14003792917	4
67	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Федорова Мария Георгиевна			4	14003642355	4
68	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Бальчугов Григорий Сергеевич			5	54001154316	5
69	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Баскаков Андрей Владимирович			5	54001013029	5
70	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Броворниченко Светлана Сергеевна			5	54001209962	5
71	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Вагина Полина Владиславовна			5	54001006453	5
72	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Гаращенко Вадим Сергеевич			5	54001476471	5
73	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Гуляева Александра Витальевна			5	54001865943	5
74	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Доцу Дарья Вячеславовна			5	54001599238	5
75	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Зверева Виолетта Евгеньевна			5	54001322887	5
76	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Зенкова Олеся Сергеевна			5	54001813230	5
77	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Иванова Кристина Сергеевна			5	54001151160	5
78	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Коротеева Елизавета Викторовна			5	54001698442	5
79	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Кулешов Антон Дмитриевич			5	54001422277	5
80	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Куликов Тимур Максимович			5	54001441021	5
81	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Леонова Алла Евгеньевна			5	54001254176	5
82	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Маркова Елизавета Андреевна			5	54001597347	5
83	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Мелехина Алеся Вячеславна			5	54001602307	5
84	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Мирошник Николай Максимович			5	54001592263	5
85	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Пивоварова Алиса Алексеевна			5	54001540562	5
86	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Пикалова Александра Максимовна			5	54001425129	5
87	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Сбитнева Татьяна Алексеевна			5	54001473047	5
88	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Тверитина Наталья Вячеславовна			5	54001456021	5
89	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Толчеев Марк Владиславович			5	54001902168	5
90	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Ушакова Валерия Сергеевна			5	54001388185	5
91	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Черменев Геннадий Евгеньевич			5	54001254690	5
92	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Шаршавова Татьяна Дмитриевна			5	54001586334	5
93	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Шестакова Арина Сергеевна			5	54001863888	5
94	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Шишкина Анастасия Сергеевна			5	54001152519	5
95	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Афанасьев Аким Сергеевич			6	54002335746	6
96	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Злобин Дмитрий Сергеевич			6	54002354949	6
97	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Коваленко Павел Вячеславович			6	54002014847	6
98	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Кокин Андрей Иванович			6	54002699688	6
99	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Копту Анастасия Максимовна			6	54002306110	6
100	2020-09-08 22:15:04	2020-09-08 22:15:04	0	0	1	Лятковская Алина Алексеевна			6	54002298947	6
\.


--
-- Data for Name: _dbo_pem_namecells; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_namecells (id_namecells, in_date, up_date, id_own, id_flag, id_area, namecells, descript, insertformula, isnamevalue, id_obj_res, id_objfld_res, id_objfld_w1, text_w1, add_w2, id_objfld_w2, text_w2, add_w3, id_objfld_w3, text_w3, add_w4, id_objfld_w4, text_w4, id_objfld_w5, text_w5, add_w5, id_report, tabindex) FROM stdin;
1	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_Region	Название региона		1	15600	15607	15601	=DEFAULT	0	0		0	0		0	0				0	1	2
2	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_School	Название школы		1	17400	17407	17401	=DEFAULT	0	0		0	0		0	0				0	1	3
3	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL1	Уровень подготовки - Ниже базового		0	17900	17907	17901	=1	0	0		0	0		0	0				0	1	6
4	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL2	Уровень подготовки - Базовый		0	17900	17907	17901	=2	0	0		0	0		0	0				0	1	7
5	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL3	Уровень подготовки - Выше базового		0	17900	17907	17901	=3	0	0		0	0		0	0				0	1	8
6	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_R	Кол-во учеников на уровне 1 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=1	1	18102	=COUNT	18103	=DEFAULT	1	1	9
7	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_R	Кол-во учеников на уровне 2 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=2	1	18102	=COUNT	18103	=DEFAULT	1	1	10
8	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_R	Кол-во учеников на уровне 3 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=3	1	18102	=COUNT	18103	=DEFAULT	1	1	11
9	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_S	Кол-во учеников на уровне 1 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=1	0	0				0	1	12
10	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_S	Кол-во учеников на уровне 2 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=2	0	0				0	1	13
11	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_S	Кол-во учеников на уровне 3 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=3	0	0				0	1	14
12	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_R	Данные по разделу S1 (в регионе)		0	18100	18107	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	19
13	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_S	Данные по разделу S1 (в школе)		0	18100	18107	18102	=AVG	0	0		0	0		0	0				0	1	20
14	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_R	Данные по разделу S2 (в регионе)		0	18100	18108	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	21
15	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_S	Данные по разделу S2 (в школе)		0	18100	18108	18102	=AVG	0	0		0	0		0	0				0	1	22
16	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_R	Данные по разделу S3 (в регионе)		0	18100	18109	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	23
17	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_S	Данные по разделу S3 (в школе)		0	18100	18109	18102	=AVG	0	0		0	0		0	0				0	1	24
18	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_R	Данные по разделу S4 (в регионе)		0	18100	18110	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	25
19	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_S	Данные по разделу S4 (в школе)		0	18100	18110	18102	=AVG	0	0		0	0		0	0				0	1	26
20	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_R	Данные по разделу S5 (в регионе)		0	18100	18111	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	27
21	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_S	Данные по разделу S5 (в школе)		0	18100	18111	18102	=AVG	0	0		0	0		0	0				0	1	28
22	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S6_R	Данные по разделу S6 (в регионе)		0	18100	18112	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	29
23	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S6_S	Данные по разделу S6 (в школе)		0	18100	18112	18102	=AVG	0	0		0	0		0	0				0	1	30
24	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_R	Данные по разделу T1 (в регионе)		0	18100	18113	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	15
25	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_S	Данные по разделу T1 (в школе)		0	18100	18113	18102	=AVG	0	0		0	0		0	0				0	1	16
26	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_R	Данные по разделу T2 (в регионе)		0	18100	18114	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	1	17
27	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_S	Данные по разделу T2 (в школе)		0	18100	18114	18102	=AVG	0	0		0	0		0	0				0	1	18
28	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Period	Название периода сбора		0	17800	17807	17801	=DEFAULT	0	0		0	0		0	0		0		0	1	4
29	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Grade	Название класса		0	17500	17507	17501	=DEFAULT	0	0		0	0		0	0		0		0	1	5
30	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_ReportName	Название отчета (шаблона)		0	18300	18307	18301	=DEFAULT	0	0		0	0		0	0				0	1	1
31	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_ReportName	Название отчета (шаблона)		0	18300	18307	18301	=DEFAULT	0	0		0	0		0	0				0	2	1
93	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_ReportName	Название отчета (шаблона)		0	18300	18307	18301	=DEFAULT	0	0		0	0		0	0				0	4	1
94	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_Region	Название региона		1	15600	15607	15601	=DEFAULT	0	0		0	0		0	0				0	4	2
95	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_School	Название школы		1	17400	17407	17401	=DEFAULT	0	0		0	0		0	0				0	4	3
96	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Period	Название периода сбора		0	17800	17807	17801	=DEFAULT	0	0		0	0		0	0		0		0	4	4
97	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Grade	Название класса		0	17500	17507	17501	=DEFAULT	0	0		0	0		0	0		0		0	4	5
98	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL1	Уровень подготовки - Ниже базового		0	17900	17907	17901	=1	0	0		0	0		0	0				0	4	6
99	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL2	Уровень подготовки - Базовый		0	17900	17907	17901	=2	0	0		0	0		0	0				0	4	7
100	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL3	Уровень подготовки - Выше базового		0	17900	17907	17901	=3	0	0		0	0		0	0				0	4	8
32	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_Region	Название региона		1	15600	15607	15601	=DEFAULT	0	0		0	0		0	0				0	2	2
33	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_School	Название школы		1	17400	17407	17401	=DEFAULT	0	0		0	0		0	0				0	2	3
34	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Period	Название периода сбора		0	17800	17807	17801	=DEFAULT	0	0		0	0		0	0		0		0	2	4
35	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Grade	Название класса		0	17500	17507	17501	=DEFAULT	0	0		0	0		0	0		0		0	2	5
36	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL1	Уровень подготовки - Ниже базового		0	17900	17907	17901	=1	0	0		0	0		0	0				0	2	6
37	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL2	Уровень подготовки - Базовый		0	17900	17907	17901	=2	0	0		0	0		0	0				0	2	7
38	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL3	Уровень подготовки - Выше базового		0	17900	17907	17901	=3	0	0		0	0		0	0				0	2	8
39	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_R	Кол-во учеников на уровне 1 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=1	1	18102	=COUNT	18103	=DEFAULT	1	2	9
40	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_R	Кол-во учеников на уровне 2 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=2	1	18102	=COUNT	18103	=DEFAULT	1	2	10
41	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_R	Кол-во учеников на уровне 3 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=3	1	18102	=COUNT	18103	=DEFAULT	1	2	11
42	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_S	Кол-во учеников на уровне 1 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=1	0	0				0	2	12
43	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_S	Кол-во учеников на уровне 2 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=2	0	0				0	2	13
44	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_S	Кол-во учеников на уровне 3 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=3	0	0				0	2	14
45	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_R	Данные по разделу T1 (в регионе)		0	18100	18113	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	15
46	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_S	Данные по разделу T1 (в школе)		0	18100	18113	18102	=AVG	0	0		0	0		0	0				0	2	16
47	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_R	Данные по разделу T2 (в регионе)		0	18100	18114	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	17
48	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_S	Данные по разделу T2 (в школе)		0	18100	18114	18102	=AVG	0	0		0	0		0	0				0	2	18
49	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_R	Данные по разделу S1 (в регионе)		0	18100	18107	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	19
50	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_S	Данные по разделу S1 (в школе)		0	18100	18107	18102	=AVG	0	0		0	0		0	0				0	2	20
51	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_R	Данные по разделу S2 (в регионе)		0	18100	18108	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	21
52	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_S	Данные по разделу S2 (в школе)		0	18100	18108	18102	=AVG	0	0		0	0		0	0				0	2	22
53	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_R	Данные по разделу S3 (в регионе)		0	18100	18109	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	23
54	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_S	Данные по разделу S3 (в школе)		0	18100	18109	18102	=AVG	0	0		0	0		0	0				0	2	24
55	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_R	Данные по разделу S4 (в регионе)		0	18100	18110	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	25
56	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_S	Данные по разделу S4 (в школе)		0	18100	18110	18102	=AVG	0	0		0	0		0	0				0	2	26
57	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_R	Данные по разделу S5 (в регионе)		0	18100	18111	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	2	27
58	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_S	Данные по разделу S5 (в школе)		0	18100	18111	18102	=AVG	0	0		0	0		0	0				0	2	28
59	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_ReportName	Название отчета (шаблона)		0	18300	18307	18301	=DEFAULT	0	0		0	0		0	0				0	3	1
60	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_Region	Название региона		1	15600	15607	15601	=DEFAULT	0	0		0	0		0	0				0	3	2
61	2020-09-11 17:27:13	2020-09-11 17:27:13	0	0	1	P1_School	Название школы		1	17400	17407	17401	=DEFAULT	0	0		0	0		0	0				0	3	3
62	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Period	Название периода сбора		0	17800	17807	17801	=DEFAULT	0	0		0	0		0	0		0		0	3	4
63	2020-09-17 13:57:21	2020-09-17 13:57:21	0	0	1	P1_Grade	Название класса		0	17500	17507	17501	=DEFAULT	0	0		0	0		0	0		0		0	3	5
64	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL1	Уровень подготовки - Ниже базового		0	17900	17907	17901	=1	0	0		0	0		0	0				0	3	6
65	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL2	Уровень подготовки - Базовый		0	17900	17907	17901	=2	0	0		0	0		0	0				0	3	7
66	2020-09-13 05:34:39	2020-09-13 05:34:39	0	0	1	P1_LEVEL3	Уровень подготовки - Выше базового		0	17900	17907	17901	=3	0	0		0	0		0	0				0	3	8
67	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_R	Кол-во учеников на уровне 1 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=1	1	18102	=COUNT	18103	=DEFAULT	1	3	9
68	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_R	Кол-во учеников на уровне 2 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=2	1	18102	=COUNT	18103	=DEFAULT	1	3	10
69	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_R	Кол-во учеников на уровне 3 (в регионе)		0	18100	18113	18104	=0	1	18105	=0	1	18116	=3	1	18102	=COUNT	18103	=DEFAULT	1	3	11
70	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L1_S	Кол-во учеников на уровне 1 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=1	0	0				0	3	12
71	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L2_S	Кол-во учеников на уровне 2 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=2	0	0				0	3	13
72	2020-09-13 05:38:37	2020-09-13 05:38:37	0	0	1	P1_L3_S	Кол-во учеников на уровне 3 (в школе)		0	18100	18113	18105	=DEFAULT	1	18102	=COUNT	1	18116	=3	0	0				0	3	14
73	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_R	Данные по разделу T1 (в регионе)		0	18100	18113	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	15
74	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T1_S	Данные по разделу T1 (в школе)		0	18100	18113	18102	=AVG	0	0		0	0		0	0				0	3	16
75	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_R	Данные по разделу T2 (в регионе)		0	18100	18114	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	17
76	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_T2_S	Данные по разделу T2 (в школе)		0	18100	18114	18102	=AVG	0	0		0	0		0	0				0	3	18
77	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_R	Данные по разделу S1 (в регионе)		0	18100	18107	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	19
78	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S1_S	Данные по разделу S1 (в школе)		0	18100	18107	18102	=AVG	0	0		0	0		0	0				0	3	20
79	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_R	Данные по разделу S2 (в регионе)		0	18100	18108	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	21
80	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S2_S	Данные по разделу S2 (в школе)		0	18100	18108	18102	=AVG	0	0		0	0		0	0				0	3	22
81	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_R	Данные по разделу S3 (в регионе)		0	18100	18109	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	23
82	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S3_S	Данные по разделу S3 (в школе)		0	18100	18109	18102	=AVG	0	0		0	0		0	0				0	3	24
83	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_R	Данные по разделу S4 (в регионе)		0	18100	18110	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	25
84	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S4_S	Данные по разделу S4 (в школе)		0	18100	18110	18102	=AVG	0	0		0	0		0	0				0	3	26
85	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_R	Данные по разделу S5 (в регионе)		0	18100	18111	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	27
86	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S5_S	Данные по разделу S5 (в школе)		0	18100	18111	18102	=AVG	0	0		0	0		0	0				0	3	28
87	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S6_R	Данные по разделу S1 (в регионе)		0	18100	18112	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	29
88	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S6_S	Данные по разделу S1 (в школе)		0	18100	18112	18102	=AVG	0	0		0	0		0	0				0	3	30
89	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S7_R	Данные по разделу S2 (в регионе)		0	18100	18118	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	31
90	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S7_S	Данные по разделу S2 (в школе)		0	18100	18118	18102	=AVG	0	0		0	0		0	0				0	3	32
91	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S8_R	Данные по разделу S3 (в регионе)		0	18100	18119	18102	=AVG	1	18104	=0	1	18105	=0	0	0				0	3	33
92	2020-09-13 06:31:39	2020-09-13 06:31:39	0	0	1	P1_S8_S	Данные по разделу S3 (в школе)		0	18100	18119	18102	=AVG	0	0		0	0		0	0				0	3	34
\.


--
-- Data for Name: _dbo_pem_organization; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_organization (id_organization, in_date, up_date, id_own, id_flag, id_area, name_organization, descript_organization, id_municipality, id_educationtype, id_settlementtype, addressfact, directorfio, telephonecontact, email, site, id_subjectrf, organization_id) FROM stdin;
0	2020-09-08 21:43:26	2020-09-08 21:43:26	0	1	1	<НЕОПРЕДЕЛЕНО>											
2	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОБУ СОШ №1										14	14001
3	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОБУ СОШ №25										14	14002
4	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОБУ ФТЛ										14	14003
5	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №80										54	54001
6	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	Лицей №13										54	54002
7	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №5 с углубленным изучением английского языка										54	54003
8	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №1										54	54004
9	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБНОУ "Октемский НОЦ"										14	14004
10	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ  "Иситская СОШ"										14	14005
11	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "1 Жемконская СОШ им. П.С. Скрябина"										14	14006
12	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "2 Жемконская СОШ"										14	14007
13	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "3 Мальжагарская ООШ"										14	14008
14	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "5 Мальжагарская СОШ им. И.П.Никифорова"										14	14009
15	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "2 МАЛЬЖАГАРСКАЯ СОШ им. М. Е. Васильевой"										14	14010
16	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "БЕСТЯХСКАЯ СОШ"										14	14011
17	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Булгунняхтахская СОШ им. С.П.Ефремова"										14	14012
18	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Едяйская СОШ"										14	14013
19	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "КАЧИКАТСКАЯ СОШ"										14	14014
20	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Красноручейская ООШ"										14	14015
21	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Мохсоголлохская СОШ с УИОП"										14	14016
22	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Ойская СОШ с УИОП им А.В. Дмитриева с УИОП"										14	14017
23	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Октемская СОШ им. И.П.Шадрина"										14	14018
24	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Покровская СОШ №1 с УИОП им.И.М.Яковлева"										14	14019
25	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Покровская СОШ №2 с УИОП"										14	14020
26	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Покровская СОШ №3 -ОЦ с УИОП"										14	14021
27	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Покровская СОШ №4 с УИОП"										14	14022
28	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Покровская УМГ"										14	14023
29	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Синская СОШ"										14	14024
30	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Техтюрская СОШ им. А. Д. Широких"										14	14025
31	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ ТАСОШ										14	14026
32	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Тумульская ООШ"										14	14027
33	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Улах-Анская СОШ им. А.И.Притузова"										14	14028
34	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ "Хоточчунская ООШ"										14	14029
35	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКООУ "I Жемконская ООСШ-И"										14	14030
36	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ "Аннинский Лицей"										36	1001
37	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Архангельская СОШ"										36	1002
38	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Бобровская СОШ № 1										36	1003
39	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Хреновская СОШ №1										36	1004
40	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Богучарский лицей"										36	1005
41	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Богучарская СОШ №1"										36	1006
42	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Богучарская СОШ №2										36	1007
43	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Монастырщинская СОШ										36	1008
44	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №4										36	1009
45	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ БГО "Борисоглебская гимназия №1"										36	1010
46	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №5										36	1011
47	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Бутурлиновская СОШ										36	1012
48	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ В-Хавская СОШ №1										36	1013
49	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Мужичанская СОШ										36	1014
50	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Нововоронежская СОШ №4										36	1015
51	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Нововоронежская СОШ №3										36	1016
52	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Грибановская СОШ №3										36	1017
53	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Малогрибановская ООШ										36	1018
54	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Листопадовская СОШ										36	1019
55	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №61										36	1020
56	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ гимназия имени А.В.Кольцова										36	1021
57	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ №60										36	1022
58	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Заброденская СОШ										36	1023
59	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Калачеевская гимназия №1										36	1024
60	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Калачеевская СОШ № 6										36	1025
61	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Поселковая СОШ										36	1026
62	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Калачеевская СОШ № 1										36	1027
63	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Каменская СОШ №2										36	1028
64	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Каменская СОШ№1 с УИОП"										36	1029
65	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Кантемировский лицей										36	1030
66	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Митрофановская СОШ										36	1031
67	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Титаревская СОШ										36	1032
68	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Кузнецовская СОШ										36	1033
69	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Дзержинская СОШ										36	1034
70	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Запрудская СОШ										36	1035
71	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Каширская СОШ										36	1036
72	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Давыдовская СОШ с УИОП										36	1037
73	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ СОШ № 1										36	1038
74	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ СОШ № 12										36	1039
75	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Тресоруковская СОШ										36	1040
76	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Коломыцевская СОШ"										36	1041
77	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ СОШ № 10										36	1042
78	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Копанищенская СОШ										36	1043
79	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Вознесеновская СОШ										36	1044
80	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ СОШ № 15										36	1045
81	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Отрадненская СОШ										36	1046
82	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Масловская СОШ										36	1047
83	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Никольская СОШ"										36	1048
84	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Рыканская СОШ										36	1049
85	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОУ Новохоперская гимназия №1										36	1050
86	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Краснянская СОШ										36	1051
87	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОУ Новохоперская СОШ №91										36	1052
88	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ "Ярковская СОШ"										36	1053
89	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МОУ Елань-Коленовская СОШ №1										36	1054
90	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Елань-Коленовская СОШ №2										36	1055
91	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Новохарьковская СОШ										36	1056
92	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Шапошниковская СОШ										36	1057
93	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Степнянская СОШ										36	1058
94	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МБОУ Ольховатская СОШ										36	1059
95	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Петропавловская СОШ										36	1060
96	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Коротоякская СОШ										36	1061
97	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ СОШ №1										36	1062
98	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Покровская СОШ										36	1063
99	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ СОШ № 8										36	1064
100	2020-09-08 21:43:26	2020-09-08 21:43:26	0	0	1	МКОУ Воронцовская СОШ										36	1065
\.


--
-- Data for Name: _dbo_pem_organizationgroupforparallel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_organizationgroupforparallel (id_organizationgroupforparallel, in_date, up_date, id_own, id_flag, id_area, id_organization, id_period, id_parallel, id_report, groupnumber) FROM stdin;
1	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	9	2	8	10	3
2	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	10	2	8	10	1
3	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	11	2	8	10	2
0	2020-11-21 14:32:14	2020-11-21 14:32:14	0	1	1					
4	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	12	2	8	10	1
5	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	13	2	8	10	1
6	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	14	2	8	10	1
7	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	15	2	8	10	2
8	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	16	2	8	10	2
9	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	17	2	8	10	2
10	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	18	2	8	10	2
11	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	19	2	8	10	1
12	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	20	2	8	10	1
13	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	21	2	8	10	3
14	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	22	2	8	10	3
15	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	23	2	8	10	3
16	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	24	2	8	10	3
17	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	25	2	8	10	3
18	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	26	2	8	10	3
19	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	27	2	8	10	2
20	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	28	2	8	10	3
21	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	29	2	8	10	1
22	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	30	2	8	10	2
23	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	31	2	8	10	1
24	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	32	2	8	10	1
25	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	33	2	8	10	1
26	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	34	2	8	10	1
27	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	35	2	8	10	1
28	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	9	2	10	10	3
29	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	10	2	10	10	1
30	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	11	2	10	10	2
31	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	12	2	10	10	1
32	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	14	2	10	10	1
33	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	15	2	10	10	2
34	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	16	2	10	10	1
35	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	17	2	10	10	1
36	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	18	2	10	10	1
37	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	19	2	10	10	1
38	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	21	2	10	10	3
39	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	22	2	10	10	2
40	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	23	2	10	10	2
41	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	24	2	10	10	3
42	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	25	2	10	10	2
43	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	26	2	10	10	3
44	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	27	2	10	10	1
45	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	28	2	10	10	3
46	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	29	2	10	10	1
47	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	30	2	10	10	1
48	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	31	2	10	10	1
49	2020-11-21 14:32:14	2020-11-21 14:32:14	0	0	1	33	2	10	10	1
\.


--
-- Data for Name: _dbo_pem_parallel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_parallel (id_parallel, in_date, up_date, id_own, id_flag, id_area, name_parallel) FROM stdin;
1	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	1-е классы
2	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	2-е классы
3	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	3-е классы
0	2020-11-21 14:46:13	2020-11-21 14:46:13	0	1	1	<НЕОПРЕДЕЛЕНО>
4	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	4-е классы
5	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	5-е классы
6	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	6-е классы
7	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	7-е классы
8	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	8-е классы
9	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	9-е классы
10	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	10-е классы
11	2020-11-21 14:46:13	2020-11-21 14:46:13	0	0	1	11-е классы
\.


--
-- Data for Name: _dbo_pem_period; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_period (id_period, in_date, up_date, id_own, id_flag, id_area, name_period, descript_period, datestart, dateend) FROM stdin;
0	2020-09-09 18:59:52	2020-09-09 18:59:52	0	1	1	<НЕОПРЕДЕЛЕНО>			
1	2020-09-09 18:59:52	2020-09-09 18:59:52	0	0	1	Весна, 2020 год		2020-03-01 19:09:00	2020-05-31 19:09:00
2	2020-09-09 18:59:52	2020-09-09 18:59:52	0	0	1	Осень, 2020 год		2020-10-01 19:09:00	2020-05-31 19:09:00
\.


--
-- Data for Name: _dbo_pem_primarydata; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_primarydata (id_primarydata, in_date, up_date, id_own, id_flag, id_area, id_subjectrf, id_organization, id_grade, id_learner, id_period, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, testscore, id_testlevel, id_report, id_parallel) FROM stdin;
1	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	2	1	0	0	0	0	0	0	0	1	1	0	0	1	1	0	0	0	0	0	1	0	0	0	0	0	0	0	47	2	1	8
2	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	3	1	0	0	1	0	0	0	0	1	1	0	0	1	0	1	0	0	0	0	1	1	1	0	0	2	0	0	57	2	1	8
3	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	4	1	1	0	0	0	2	0	0	1	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	51	2	1	8
4	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	5	1	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	1	1	1	1	1	0	0	0	0	0	51	2	1	8
5	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	6	1	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	44	2	1	8
6	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	7	1	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	1	1	0	0	1	0	0	0	47	2	1	8
7	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	8	1	1	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	44	2	1	8
8	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	9	1	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	41	2	1	8
9	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	10	1	1	0	1	0	1	0	0	1	1	0	0	0	1	0	0	0	0	0	0	1	1	0	0	0	0	0	53	2	1	8
10	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	11	1	1	1	1	0	1	0	0	1	0	0	0	0	1	0	0	0	0	0	1	1	0	0	0	0	0	0	53	2	1	8
11	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	12	1	1	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	1	1	0	0	0	0	0	0	47	2	1	8
12	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	13	1	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	1	0	44	2	1	8
13	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	14	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	1	0	47	2	1	8
14	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	15	1	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	1	1	1	0	0	0	0	0	47	2	1	8
15	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	16	1	1	1	0	0	2	0	0	0	0	0	0	0	1	0	0	1	0	1	1	1	1	1	0	0	0	1	60	2	1	8
16	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	17	1	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	41	2	1	8
17	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	18	1	0	0	0	0	2	0	0	1	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	47	2	1	8
18	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	19	1	0	1	0	0	2	0	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	49	2	1	8
19	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	20	1	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	44	2	1	8
20	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	21	1	0	0	0	1	1	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	44	2	1	8
21	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	22	1	1	0	0	1	0	0	0	1	0	0	0	0	1	1	0	0	0	0	1	0	0	0	0	0	0	1	51	2	1	8
22	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	23	1	0	0	0	0	2	0	0	1	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	47	2	1	8
23	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	24	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	30	1	1	8
24	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	25	1	1	0	1	1	2	0	0	1	0	0	0	0	1	0	0	1	0	1	1	0	1	1	2	0	0	0	63	3	1	8
25	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	26	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	30	1	1	8
26	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	27	1	1	0	1	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	47	2	1	8
27	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	28	1	1	0	1	0	1	0	0	1	0	0	0	0	0	1	1	1	0	1	1	1	0	0	1	0	0	0	58	2	1	8
28	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	29	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	37	1	1	8
29	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	2	2	30	1	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	41	2	1	8
30	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	31	1	0	1	1	0	1	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	47	2	1	8
31	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	32	1	1	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	44	2	1	8
32	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	33	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	30	1	1	8
33	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	34	1	1	1	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	49	2	1	8
34	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	35	1	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	37	1	1	8
35	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	36	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	30	1	1	8
36	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	37	1	1	0	0	0	1	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	44	2	1	8
37	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	3	3	38	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	1	0	0	0	0	47	2	1	8
38	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	39	1	1	1	1	0	2	0	0	1	1	0	0	0	0	0	0	0	0	1	1	1	1	0	2	0	0	0	61	3	1	8
39	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	40	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	30	1	1	8
40	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	41	1	1	1	1	0	2	0	0	1	1	2	0	1	0	0	1	0	0	1	1	1	1	0	0	0	0	0	64	3	1	8
41	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	42	1	0	0	0	0	1	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	41	2	1	8
42	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	43	1	1	0	1	1	1	0	0	1	1	0	0	1	1	0	0	0	0	1	1	0	1	1	0	0	0	0	60	2	1	8
43	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	44	1	1	0	0	1	1	0	0	1	0	0	0	0	1	0	0	0	0	1	0	1	1	0	0	0	0	0	53	2	1	8
44	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	45	1	0	0	0	1	2	0	0	1	1	0	0	1	1	0	0	1	0	1	1	1	1	1	2	0	0	0	64	3	1	8
45	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	46	1	1	1	1	0	2	0	0	1	1	2	0	0	0	0	0	0	0	1	1	1	1	0	2	0	0	0	64	3	1	8
46	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	47	1	1	0	0	1	1	0	0	1	1	0	0	1	1	1	0	0	1	1	1	1	0	0	0	0	0	0	60	2	1	8
47	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	48	1	0	0	0	1	0	0	0	1	1	0	0	0	1	1	0	1	0	1	1	0	0	1	0	0	0	0	55	2	1	8
48	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	49	1	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	1	1	1	0	0	0	0	0	0	49	2	1	8
49	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	50	1	0	0	1	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	41	2	1	8
50	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	51	1	1	0	0	0	1	0	0	1	0	0	0	1	1	0	0	1	1	0	1	1	1	1	2	0	0	0	61	3	1	8
51	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	52	1	1	0	1	0	1	1	0	1	1	0	0	0	1	0	0	0	0	1	1	1	0	1	0	0	0	0	58	2	1	8
52	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	53	1	1	0	0	1	1	1	0	1	0	1	0	1	1	0	0	1	1	0	1	1	1	1	2	0	0	0	66	3	1	8
53	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	54	1	1	0	0	1	2	0	0	1	1	0	0	1	1	1	1	1	0	1	1	1	1	1	2	2	0	1	73	3	1	8
54	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	55	1	0	1	1	0	2	0	0	1	1	0	0	1	0	0	0	0	0	0	1	1	1	0	0	0	0	0	57	2	1	8
55	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	56	1	0	0	0	0	2	1	0	1	1	0	0	1	1	1	1	0	0	0	0	1	0	0	0	0	0	0	57	2	1	8
56	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	57	1	1	0	0	1	2	1	0	1	1	1	0	1	0	0	0	0	1	1	1	1	1	1	0	0	0	0	64	3	1	8
57	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	58	1	1	0	0	0	2	0	0	1	1	0	0	0	1	0	1	0	0	0	1	1	0	1	0	0	0	0	57	2	1	8
58	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	59	1	1	0	0	0	2	1	0	1	0	0	0	1	1	0	0	1	0	1	1	1	1	1	0	0	0	0	61	3	1	8
59	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	60	1	0	0	0	1	0	0	0	1	0	0	0	1	1	1	0	0	1	1	1	1	1	0	0	2	0	0	60	2	1	8
60	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	61	1	1	1	1	1	0	0	0	1	0	0	0	0	1	1	0	0	0	0	1	1	1	0	0	0	0	0	57	2	1	8
61	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	62	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	41	2	1	8
62	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	63	1	0	0	0	0	1	0	0	1	1	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	47	2	1	8
63	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	64	1	1	1	1	0	2	0	0	0	0	0	0	1	0	0	0	0	0	0	1	1	1	1	2	0	0	0	60	2	1	8
64	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	65	1	1	1	1	0	2	0	0	1	1	2	0	1	0	0	1	0	0	1	1	1	1	0	2	0	0	0	67	3	1	8
65	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	66	1	0	0	1	0	2	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	47	2	1	8
66	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	14	4	4	67	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	37	1	1	8
67	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	68	1	0	0	1	0	2	0	0	1	1	0	0	0	1	0	0	0	0	1	1	0	0	0	0	0	0	0	53	2	1	8
68	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	69	1	0	0	0	0	1	0	0	1	0	0	0	1	0	1	0	0	0	1	1	1	0	0	0	0	0	0	51	2	1	8
69	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	70	1	0	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	2	0	0	0	53	2	1	8
70	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	71	1	0	0	0	0	0	0	0	1	0	2	0	0	0	0	0	0	0	1	1	0	1	0	0	0	0	0	49	2	1	8
71	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	72	1	0	0	0	0	1	0	0	1	0	0	0	1	0	1	0	0	0	0	1	1	0	0	0	0	0	0	49	2	1	8
72	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	73	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	41	2	1	8
73	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	74	1	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	1	0	1	0	0	0	0	0	44	2	1	8
74	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	75	1	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	41	2	1	8
75	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	76	1	1	1	0	0	2	0	0	1	1	1	0	1	1	1	0	1	1	1	1	0	1	1	0	0	0	0	66	3	1	8
76	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	77	1	0	0	0	0	2	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	44	2	1	8
77	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	78	1	1	0	0	0	2	0	0	0	1	0	0	0	0	0	0	1	0	1	1	1	0	0	0	0	0	0	53	2	1	8
78	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	79	1	0	0	0	0	1	0	0	1	0	0	0	1	0	0	0	0	0	0	1	1	0	0	0	0	0	0	47	2	1	8
79	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	80	1	0	0	0	0	0	0	0	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	41	2	1	8
80	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	81	1	1	1	1	0	2	0	0	1	1	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	55	2	1	8
81	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	82	1	0	0	0	0	1	0	0	1	0	2	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	51	2	1	8
82	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	83	1	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	41	2	1	8
83	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	84	1	0	1	0	0	0	0	0	1	1	0	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	49	2	1	8
84	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	85	1	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	41	2	1	8
85	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	86	1	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	37	1	1	8
86	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	87	1	0	0	0	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	44	2	1	8
87	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	88	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	41	2	1	8
88	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	89	1	0	0	0	0	1	0	0	1	0	0	0	1	0	1	0	0	0	1	1	1	0	0	0	0	0	0	51	2	1	8
89	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	90	1	0	0	0	0	0	1	0	1	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	0	0	44	2	1	8
90	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	91	1	0	1	0	0	1	0	0	1	1	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	51	2	1	8
91	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	92	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	1	0	1	0	2	0	0	0	51	2	1	8
92	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	93	1	1	1	0	0	2	0	0	1	1	1	0	1	1	1	0	1	1	1	1	0	1	1	1	0	0	0	67	3	1	8
93	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	5	5	94	1	1	0	1	1	2	0	0	1	1	0	0	0	1	0	1	0	0	0	1	1	1	1	2	0	0	1	66	3	1	8
94	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	95	1	1	1	0	0	1	0	0	1	1	1	0	0	1	0	0	0	1	0	1	1	1	0	0	0	0	0	58	2	1	8
95	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	96	1	0	0	0	0	1	0	0	1	1	0	0	0	1	0	0	1	0	1	1	1	0	0	0	0	0	0	53	2	1	8
96	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	97	1	1	0	1	0	2	0	0	1	1	0	0	1	1	1	0	1	1	0	1	0	1	1	0	0	0	0	63	3	1	8
97	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	98	1	1	1	0	0	2	0	0	1	1	0	0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	55	2	1	8
98	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	99	1	1	0	0	1	1	0	0	1	0	0	0	0	1	1	1	1	0	0	1	1	1	0	0	0	0	0	58	2	1	8
99	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	100	1	1	1	1	0	1	0	0	1	0	0	0	0	1	1	0	1	1	1	1	1	1	1	0	0	0	0	63	3	1	8
100	2020-09-09 18:35:58	2020-09-09 18:35:58	0	0	1	54	6	6	101	1	0	0	0	1	1	0	0	1	1	0	0	0	0	0	0	0	1	1	1	0	0	0	0	0	0	0	51	2	1	8
\.


--
-- Data for Name: _dbo_pem_report; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_report (id_report, in_date, up_date, id_own, id_flag, id_area, name_report, date_report, descript_report) FROM stdin;
0	2020-11-01 17:09:30	2020-11-01 17:09:30	0	1	1		2020-11-01 17:09:30	
1	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Русский язык (8 класс) - старый шаблон	2020-03-01 17:09:00	
2	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Математика (7 класс) - старый шаблон	2020-10-01 17:09:00	
3	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Математика (9 класс) - старый шаблон	2020-10-01 17:09:00	
4	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Русский язык (8 класс)	2020-11-01 17:09:30	
5	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Русский язык (10 класс)	2020-11-05 17:09:00	
6	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Математика (8 класс)	2020-11-07 17:09:00	
7	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Математика (10 класс)	2020-11-09 17:09:00	
8	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Русский язык (5 класс)	2020-11-15 17:09:00	
9	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Математика (5 класс)	2020-11-15 17:09:00	
10	2020-11-01 17:09:30	2020-11-01 17:09:30	0	0	1	Директор школы (Русский язык, Математика) (8 класс, 10 класс)	2020-11-22 17:09:00	
\.


--
-- Data for Name: _dbo_pem_report_section; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_report_section (id_report_section, in_date, up_date, id_own, id_flag, id_area, name_report_section, namefield, id_report, itemsnumbers, maxscore) FROM stdin;
1	2020-11-02 00:14:34	2020-11-02 00:14:34	0	1	1					0
2	2020-11-02 00:14:34	2020-11-02 00:14:34	0	1	1	<РЕЗЕРВ>				0
3	2020-11-02 00:14:34	2020-11-02 00:14:34	0	1	1	<ВСЕ>				0
4	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	1-й (опорный) тип	T1	1	1;3;5;7;9;11;13;15;17;19;20;21;22	0
5	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	2-й (функциональный) тип	T2	1	2;4;6;8;10;12;14;16;18;23;24;25;26	0
6	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфемика и словообразование	S1	1	1;2;3;4	0
7	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Лексика и фразеология	S2	1	5;6;7;8	0
8	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Орфография	S3	1	9;10;11;12;15;16	0
9	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфология	S4	1	13;14;17;18;19;20;21;22;24	0
10	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Синтаксис и пунктуация	S5	1	23	0
11	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Текст	S6	1	25;26	0
12	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	1-й (опорный) тип	T1	2	1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20	0
13	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	2-й (функциональный) тип	T2	2	21;22;23;24;25	0
14	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Алгебраические выражения	S1	2	4;5;6;7;9;10	0
15	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Статистика и теория вероятности 	S2	2	2;3;12	0
16	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Уравнения и неравенства	S3	2	8;15;23;25	0
17	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числа и вычисления	S4	2	1;11;13;14;18;21	0
18	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Геометрия	S5	2	16;17;19;20;22;24	0
19	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	1-й (опорный) тип	T1	3	1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20	0
20	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	2-й (функциональный) тип	T2	3	21;22;23;24;25	0
21	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Алгебраические выражения	S1	3	2;3	0
22	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Геометрия	S2	3	16;17;18;19;20;21;22	0
23	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Координаты на прямой и плоскости 	S3	3	7;24	0
24	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Статистика и теория вероятности 	S4	3	15	0
25	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Уравнения и неравенства	S5	3	4;6;8;9;23;25	0
26	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Функции	S6	3	12;13;14	0
27	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числа и вычисления	S7	3	1;5	0
28	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числовая последовательность	S8	3	10;11	0
29	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	4	1;3;5;7;10;12;14;16;18;20;24	14
30	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 2-го типа	T2	4	2;4;6;8;9;11;13;15;17;19;21;22;23;25;26	27
31	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфемика	S1	4	1;2;3;4;5;6	7
32	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Лексика и фразеология	S2	4	7;8	2
33	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Орфография	S3	4	9	3
34	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфология	S4	4	10;11;12;13;14;15;16;17;18;19	17
35	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Синтаксис и пунктуация	S5	4	20;21;22;23	7
36	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Текст	S6	4	24;25;26	5
37	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	5	1;2;4;6;8;10;12;14;16;18	14
38	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 2-го типа	T2	5	3;5;7;9;11;13;15;17;19;20;21;22	17
39	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Орфоэпия	S1	5	1	1
40	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфемика	S2	5	2;3;4	3
41	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфология	S3	5	5;10;11;12;13	6
42	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Лексика	S4	5	6;7;8;9	7
43	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Синтаксис и пунктуация	S5	5	14;15;16;17;18;19;20	11
44	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Текст	S6	5	21;22	3
45	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	6	1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20	20
46	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	2-й (функциональный) тип	T2	6	21;22;23;24;25	10
47	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числа и вычисления	S1	6	1;11;13;14;18;21	7
48	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Статистика и теория вероятности	S2	6	2;3;12	3
49	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Алгебраические выражения	S3	6	4;5;6;7;9;10	6
50	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Уравнения и неравенства	S4	6	8;15;23;25	6
51	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Геометрия	S5	6	16;17;19;20;22;24	8
52	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	7	1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20	20
53	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 2-го типа	T2	7	21;22;23;24;25	10
54	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числа и вычисления	S1	7	1;5	2
55	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Алгебраические выражения	S2	7	2;3	2
56	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Уравнения и неравенства	S3	7	4;6;8;9;23;25	8
57	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Координаты на прямой и плоскости	S4	7	7;24	3
58	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числовые последовательности	S5	7	10;11	2
59	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Функции	S6	7	12;13;14	3
60	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Статистика и теория вероятностей	S7	7	15	1
61	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Геометрия	S8	7	16;17;18;19;20;21;22	9
62	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	8	1;3;5;6;7;9;11;13;15;18;20	13
63	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 2-го типа	T2	8	2;4;8;10;12;14;16;17;19;21;22	14
64	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Фонетика	S1	8	1;2;3;4	4
65	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Состав слова	S2	8	5;6;9;10;18	7
66	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Лексика	S3	8	7;8	2
67	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Морфология	S4	8	11;12;13;14	5
68	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Синтаксис и пунктуация	S5	8	15;16;20;21	5
69	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Орфография	S6	8	17;19	3
70	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Развитие речи (Текст)	S7	8	22	1
71	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 1-го типа	T1	9	1;2;3;4;5;6;8;9;10;11;13;15;16;17;18	15
72	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Средний балл за выполнение заданий 2-го типа	T2	9	7;12;14;19;20;21;22;23;24;25	20
73	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Статистика и теория вероятностей	S1	9	1;8;12;14;19;25	10
74	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Числа	S2	9	2;3;4;5;6;22	7
75	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Наглядная геометрия	S3	9	7;16;17;18;20;23	9
76	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Текстовые задачи	S4	9	9;10;11;13;15;21;24	9
77	2020-11-02 00:25:02	2020-11-02 00:25:02	0	0	1	Математическая грамотность 	S5	9	7;12;14;19;23;24;25	14
\.


--
-- Data for Name: _dbo_pem_sectiondata; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_sectiondata (id_sectiondata, id_subjectrf, id_organization, id_grade, id_learner, id_period, s1, s2, s3, s4, s5, s6, testscore, id_testlevel, t1, t2, id_report, s7, s8, id_parallel) FROM stdin;
89	54	5	5	90	1	0	2	0	2	0	0	44	2	1	3	1			8
90	54	5	5	91	1	1	2	3	1	0	0	51	2	3	4	1			8
91	54	5	5	92	1	1	0	1	3	2	0	51	2	3	4	1			8
92	54	5	5	93	1	2	3	4	7	1	0	67	3	9	8	1			8
93	54	5	5	94	1	3	3	2	5	2	1	66	3	11	5	1			8
94	54	6	6	95	1	2	2	2	5	0	0	58	2	8	3	1			8
95	54	6	6	96	1	0	2	2	4	0	0	53	2	5	3	1			8
96	54	6	6	97	1	2	3	3	6	0	0	63	3	10	4	1			8
97	54	6	6	98	1	2	3	2	2	0	0	55	2	5	4	1			8
98	54	6	6	99	1	2	2	2	5	0	0	58	2	7	4	1			8
99	54	6	6	100	1	3	2	1	8	0	0	63	3	9	5	1			8
100	54	6	6	101	1	1	2	1	3	0	0	51	2	4	3	1			8
101	54	6	6	102	1	4	2	1	7	2	0	66	3	8	8	1			8
102	54	6	6	103	1	2	3	1	4	2	0	60	2	8	4	1			8
103	54	6	6	104	1	3	2	3	5	0	0	61	3	9	4	1			8
104	54	6	6	105	1	0	3	0	4	0	0	51	2	6	1	1			8
105	54	6	6	106	1	3	3	3	6	0	0	64	3	11	4	1			8
106	54	6	6	107	1	2	3	2	3	0	0	57	2	6	4	1			8
107	54	6	6	108	1	3	3	1	3	2	0	60	2	8	4	1			8
108	54	6	6	109	1	1	3	1	2	2	0	55	2	6	3	1			8
109	54	7	7	110	1	1	0	1	1	0	0	41	2	2	1	1			8
110	54	7	7	111	1	0	0	1	1	0	0	37	1	1	1	1			8
111	54	7	7	112	1	1	1	0	1	0	0	41	2	2	1	1			8
112	54	7	7	113	1	1	1	0	1	0	0	41	2	2	1	1			8
113	54	7	7	114	1	2	1	1	1	0	0	47	2	4	1	1			8
114	54	7	7	115	1	0	2	0	2	0	0	44	2	2	2	1			8
115	54	7	7	116	1	1	0	1	4	1	1	53	2	3	5	1			8
116	54	7	7	117	1	0	2	0	2	0	0	44	2	3	1	1			8
117	54	7	7	118	1	0	1	0	0	0	0	30	1	0	1	1			8
118	54	7	7	119	1	0	2	0	1	0	0	41	2	3	0	1			8
119	54	7	7	120	1	0	0	0	2	0	1	41	2	2	1	1			8
120	54	7	7	121	1	1	1	0	2	0	0	44	2	2	2	1			8
121	54	7	7	122	1	0	2	0	5	0	0	51	2	6	1	1			8
122	54	7	7	123	1	0	0	0	1	0	0	30	1	1	0	1			8
123	54	7	7	124	1	1	2	4	7	2	0	66	3	8	8	1			8
124	54	7	7	125	1	0	1	0	3	0	0	44	2	2	2	1			8
125	54	7	7	126	1	1	3	1	3	2	0	57	2	7	3	1			8
126	54	7	7	127	1	1	1	3	5	0	0	57	2	6	4	1			8
127	54	7	7	128	1	0	2	0	0	0	0	37	1	2	0	1			8
128	54	7	7	129	1	0	0	0	2	0	0	37	1	1	1	1			8
129	54	7	7	130	1	0	2	1	3	0	0	49	2	4	2	1			8
130	54	7	7	131	1	0	0	0	1	0	0	30	1	1	0	1			8
131	54	7	7	132	1	3	2	3	3	2	0	61	3	7	6	1			8
132	54	7	7	133	1	1	2	0	0	0	0	41	2	2	1	1			8
133	54	7	7	134	1	0	0	0	0	0	0	0	1	0	0	1			8
134	54	7	8	135	1	1	2	1	2	0	0	49	2	3	3	1			8
135	54	7	8	136	1	0	1	2	2	0	0	47	2	3	2	1			8
136	54	7	8	137	1	1	2	2	5	0	1	58	2	6	5	1			8
137	54	7	8	138	1	3	1	1	3	0	0	53	2	5	3	1			8
138	54	7	8	139	1	1	3	0	3	0	0	51	2	5	2	1			8
139	54	7	8	140	1	4	2	3	6	0	0	64	3	9	6	1			8
140	54	7	8	141	1	1	1	0	1	0	0	41	2	3	0	1			8
141	54	7	8	142	1	0	1	2	2	2	0	51	2	3	4	1			8
142	54	7	8	143	1	0	1	0	2	0	0	41	2	1	2	1			8
143	54	7	8	144	1	1	0	1	1	0	0	41	2	1	2	1			8
144	54	7	8	145	1	1	1	0	0	0	0	37	1	0	2	1			8
145	54	7	8	146	1	2	2	0	4	0	0	53	2	6	2	1			8
146	54	7	8	147	1	0	1	0	0	0	0	30	1	0	1	1			8
147	54	7	8	148	1	2	1	0	4	2	0	55	2	5	4	1			8
148	54	7	8	149	1	3	2	1	1	0	0	51	2	6	1	1			8
149	54	7	8	150	1	0	0	0	2	0	0	37	1	2	0	1			8
150	54	7	8	151	1	0	0	0	5	2	0	51	2	4	3	1			8
151	54	7	8	152	1	0	1	0	2	0	0	41	2	2	1	1			8
152	54	7	8	153	1	0	1	0	2	0	0	41	2	1	2	1			8
153	54	7	8	154	1	1	3	0	0	0	0	44	2	3	1	1			8
154	54	7	8	155	1	2	1	0	2	0	0	47	2	1	4	1			8
155	54	7	8	156	1	0	2	3	2	0	0	51	2	5	2	1			8
156	54	7	8	157	1	0	3	1	6	2	0	60	2	6	6	1			8
157	54	7	8	158	1	0	0	2	4	0	0	49	2	3	3	1			8
158	54	7	8	159	1	3	2	1	4	0	0	57	2	7	3	1			8
159	54	7	9	160	1	0	1	0	2	0	0	41	2	2	1	1			8
160	54	7	9	161	1	0	1	0	2	0	0	41	2	2	1	1			8
161	54	7	9	162	1	2	2	1	4	0	0	55	2	3	6	1			8
162	54	7	9	163	1	1	0	0	0	0	0	30	1	1	0	1			8
163	54	7	9	164	1	1	1	1	5	0	0	53	2	6	2	1			8
164	54	7	9	165	1	3	2	2	3	0	0	57	2	8	2	1			8
165	54	7	9	166	1	2	2	3	4	0	0	58	2	6	5	1			8
166	54	7	9	167	1	1	2	0	5	0	0	53	2	6	2	1			8
167	54	7	9	168	1	1	2	1	4	0	0	53	2	5	3	1			8
168	54	7	9	169	1	3	3	4	6	2	0	69	3	10	8	1			8
169	54	7	9	170	1	0	1	0	3	0	0	44	2	2	2	1			8
170	54	7	9	171	1	0	0	1	3	0	0	44	2	3	1	1			8
171	54	7	9	172	1	2	1	3	6	0	0	60	2	8	4	1			8
172	54	7	9	173	1	2	3	2	2	0	0	55	2	6	3	1			8
173	54	7	9	174	1	3	2	3	4	0	0	60	2	7	5	1			8
174	54	7	9	175	1	2	1	0	3	0	0	49	2	5	1	1			8
175	54	7	9	176	1	1	2	2	3	0	0	53	2	6	2	1			8
176	54	7	9	177	1	2	0	1	1	0	1	47	2	3	2	1			8
265	14	3	14	266	1	2	1	0	4	3		44	2	10	0	2			7
266	14	3	14	267	1	4	1	2	5	1		49	2	13	0	2			7
267	14	3	14	268	1	3	1	3	1	1		42	2	7	2	2			7
268	14	3	14	269	1	1	2	1	3	3		44	2	8	2	2			7
269	14	3	14	270	1	4	2	6	4	3		56	2	15	4	2			7
270	14	4	15	271	1	4	1	4	4	4		54	2	15	2	2			7
271	14	4	15	272	1	5	1	1	6	3		53	2	14	2	2			7
272	14	4	15	273	1	5	1	3	3	3		52	2	13	2	2			7
273	14	4	15	274	1	5	1	3	3	2		50	2	12	2	2			7
274	14	4	15	275	1	5	1	2	4	6		55	2	16	2	2			7
275	14	4	15	276	1	5	1	4	7	5		60	2	16	6	2			7
276	14	4	15	277	1	5	2	3	3	6		56	2	15	4	2			7
\.


--
-- Data for Name: _dbo_pem_testlevel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_pem_testlevel (id_testlevel, in_date, up_date, id_own, id_flag, id_area, name_testlevel, descript_testlevel, setmin, setmax) FROM stdin;
1	2020-09-09 19:00:58	2020-09-09 19:00:58	0	0	1	Ниже базового			
2	2020-09-09 19:00:58	2020-09-09 19:00:58	0	0	1	Базовый			
3	2020-09-09 19:00:58	2020-09-09 19:00:58	0	0	1	Выше базового			
\.


--
-- Data for Name: _dbo_sys_area; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_area (id_area, name, descript) FROM stdin;
0	<WITHOUT AREA>	<ВНЕ ОБЛАСТЕЙ>
1	IOE	Институт образования (НИУ ВШЭ)
\.


--
-- Data for Name: _dbo_sys_colortheme; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_colortheme (id_colortheme, name, descript, red, green, blue) FROM stdin;
0	<ALL>	<ВСЕ>	0	0	0
1	White color	Белый цвет	255	255	255
2	DarkGrin color	Тёмно-серый цвет	61	66	74
3	LiteGrin color	Светло-серый цвет	247	247	247
4	Coral color	Коралловый цвет	255	85	96
\.


--
-- Data for Name: _dbo_sys_const; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_const (id_const, name, alias, setvalue, descript) FROM stdin;
0	<ALL>			<ВСЕ>
1	<NULL>	{!:NULL}	<ПУСТО>	Подпись для пустого значения
2	<SPACE>	{!:SPACE}	 	Пробел - Chr(32)
\.


--
-- Data for Name: _dbo_sys_docflowtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_docflowtype (id_docflowtype, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	Internal (links on ID document)	Внутренний (ссылки на ID документа)
2	External (e-mail on SMTP)	Внешний (почта на SMTP)
\.


--
-- Data for Name: _dbo_sys_doctext; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_doctext (id_doctext, descript, alltext) FROM stdin;
\.


--
-- Data for Name: _dbo_sys_doctype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_doctype (id_doctype, name, descript, fileextension) FROM stdin;
0	<ALL>	<НЕОПРЕДЕЛЕНО>	
11	MS EXCEL	Microsoft Excel	XLS
12	MS WORD	Microsoft Word	DOC
13	JPEG		JPG
\.


--
-- Data for Name: _dbo_sys_dtype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_dtype (id_dtype, bytesize, name, alias, descript, alias_mssqlserver, alias_msaccess) FROM stdin;
1	2	BOOLEAN	{$:BOOL}	Логический	BIT	BIT
2	1	BYTE	{$:BYTE}	Число (целое <256)	TINYINT	BYTE
3	4	LONG	{$:LONG}	Число (целое длинное)	INTEGER	INTEGER
4	8	DOUBLE	{$:DUBL}	Число ( с пл.точкой)	FLOAT	FLOAT
5	8	CURRENCY	{$:CURR}	Денежный	MONEY	MONEY
6	8	DATE	{$:DATE}	Дата/время	DATETIME	DATETIME
7	0	CHAR	{$:CHAR}	Текст (до 256 символов)	NVARCHAR	VARCHAR
8	-1	TEXT	{$:TEXT}	Текст (>=255 символов)	NVARCHAR(MAX)	MEMO
9	0	BINARY	{$:BINY}	Бинарный	VARBINARY(MAX)	IMAGE
0	0	UNKNOW	{$:UNKN}	<НЕОПРЕДЕЛЕННЫЙ>		
\.


--
-- Data for Name: _dbo_sys_flag; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_flag (id_flag, name, descript) FROM stdin;
0	<ALLUSE>	<Доступно>
1	<RESERVE>	<Резерв>
201	<DELETED>	<Удалено>
202	<DELETED2>	<Скрыто>
203	<LOST>	<Неизвестно>
101	<STOPED>	<Приостановлено>
2	<RESERVE2>	<Резерв2>
\.


--
-- Data for Name: _dbo_sys_frame; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_frame (id_frame, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	FRAME1	1 фрейм
2	FRAME2	2 фрейм
3	FRAME3	3 фрейм
4	FRAME4	4 фрейм
5	FRAME5	5 фрейм
6	FRAME6	6 фрейм
7	FRAME7	7 фрейм
8	FRAME8	8 фрейм
9	FRAME9	9 фрейм
\.


--
-- Data for Name: _dbo_sys_frameload; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_frameload (id_frameload, id_interface, toright, setpersent, setpixels, interfaces, id_framesch, id_frame, id_frame_to) FROM stdin;
0	0	0	0	0		0	0	0
1	19	0	0	40	{#:TOOL}	1	1	0
11	19	0	0	40	{#:TOOL}	2	1	0
2	23	0	0	0	{#:TREE}	1	2	1
3	21	0	80	0	{#:CLND},{#:GRID}	1	3	2
4	23	-1	50	0	{#:GRID},{#:TREE}	1	4	2
5	25	0	55	0	{#:CARD},{#:GRID}	1	5	3
12	23	0	0	0	{#:TREE}	2	2	1
13	25	-1	75	0	{#:CARD},{#:CLND},{#:GRID},{#:TREE}	2	3	2
14	21	0	30	0	{#:CARD},{#:CLND},{#:GRID},{#:TREE}	2	4	2
15	25	0	35	0	{#:CARD},{#:CLND},{#:GRID},{#:TREE}	2	5	3
6	23	-1	90	0	{#:GRID},{#:TREE}	1	6	5
7	25	0	20	0	{#:GRID},{#:TREE}	1	7	5
16	23	-1	15	0	{#:CARD},{#:CLND},{#:GRID},{#:TREE}	2	6	5
\.


--
-- Data for Name: _dbo_sys_framesch; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_framesch (id_framesch, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	TOP Schema Load Frames (7 items)	Схема загрузки (7 фреймов) стартового окна
2	Standard Schema Load Frames (6 items)	Стандартная схема загрузки (6 фреймов)
\.


--
-- Data for Name: _dbo_sys_frametool; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_frametool (id_frametool, descript, id_frame, id_interface, pixelheight, id_frametoolsch, id_framesch, pixelbuttoninterval, buttonsonleft, id_colortheme_fc, id_colortheme_bc) FROM stdin;
0		0	0	40	0	0	10	0	2	1
1	[ПОЛЬЗОВАТЕЛЬ]-->	1	19	40	1	1	10	0	2	1
21	[МОДУЛЬ]-->	1	19	40	2	2	10	-1	1	2
2	КОНТЕКСТ	2	23	40	8	1	10	0	2	1
9	КОНТАКТ-ЛИСТ	6	23	40	12	1	10	0	2	1
3		3	25	40	5	1	10	0	2	1
10		6	25	40	5	1	10	0	2	1
4	МАСШТАБ ВРЕМЕНИ	3	21	40	9	1	10	0	2	1
5	НОВЫЕ ПОСТУПЛЕНИЯ	4	23	40	10	1	10	0	2	1
6		4	25	40	5	1	10	0	2	1
7		5	25	40	11	1	10	0	2	1
8		5	24	40	6	1	10	-1	2	1
22	МЕНЮ:	2	23	40	3	2	10	0	2	1
23		3	23	40	4	2	10	0	2	1
24		3	25	40	5	2	10	0	2	1
25		3	24	40	6	2	10	-1	2	1
26		3	21	40	7	2	10	0	2	1
27		4	23	40	4	2	10	0	2	1
28		4	25	40	5	2	10	0	2	1
29		4	24	40	6	2	10	-1	2	1
30	[Календарь]	4	21	40	7	2	10	0	2	1
31		5	23	40	4	2	10	0	2	1
32		5	25	40	5	2	10	0	2	1
33		5	24	40	6	2	10	-1	2	1
34	[Календарь]	5	21	40	7	2	10	0	2	1
11	ВСЕ ПОЛУЧАТЕЛИ ДОКУМЕНТА	7	25	40	13	1	10	0	2	1
35	Зависимые объекты	6	23	40	14	2	10	0	2	1
\.


--
-- Data for Name: _dbo_sys_frametoolload; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_frametoolload (id_frametoolload, name, descript, id_res, unvisible, leftpixel, checkgroup, checkstatus, tabindex, id_frametoolsch) FROM stdin;
0	<ALL>	<ВСЕ>	0	0	0	0	0	0	0
41	New	Новый документ	153	0	0	0	0	1	5
42	Delete	Удалить документ	154	0	0	0	0	2	5
43	SortASC	Сортировка по возрастанию	155	0	5	0	0	3	5
44	SortDESC	Сортировка по убыванию	156	0	0	0	0	4	5
45	Find	Расширенный поиск	157	0	5	0	0	5	5
46	Filter	Добавить выделенное значение в фильтр	158	0	0	0	0	6	5
47	FilterClear	Очистить фильтр/поиск	159	0	0	0	0	7	5
48	MakeCopy	Создать копию по текущему образцу	160	0	5	0	0	8	5
49	SetAllValue	Вставить текущее значение в столбец	161	0	0	0	0	9	5
50	SumAll	Показывать суммы по столбцам	162	0	5	1	1	10	5
51	ToExcel	Экспорт таблицы в MS Excel	163	0	5	0	0	11	5
52	Rank	Порядок очереди	91	-1	5	0	0	12	5
1	SetSOL	Выбрать модуль	43	0	0	0	0	1	1
2	SetAREA	Выбрать область учета	40	0	0	0	0	2	1
21	Operation	ОПЕРАЦИИ	165	0	0	1	1	1	3
22	Object	ОБЪЕКТЫ УЧЕТА	166	0	0	1	0	2	3
23	Report	ОТЧЕТЫ	167	0	0	1	0	3	3
24	UserRule	ПРАВА ПОЛЬЗОВАТЕЛЕЙ	168	0	0	1	0	4	3
31	TableView	Табличный вид	76	0	0	0	0	1	4
32	ToExcel	Экспорт в MS Excel	96	0	0	0	0	2	4
61	GoToTable	Вернуться к таблице	65	0	0	0	0	1	6
62	PrevDoc	Перейти к предыдущему документу	67	0	0	0	0	2	6
63	NextDoc	Перейти к следующему документу	64	0	0	0	0	3	6
64	ToWord	Экспорт карточки в MS Word (для печати)	98	0	5	0	0	4	6
65	DocSave	Добавить связанный документ	80	0	5	0	0	5	6
66	DocOpen	Извлечь связанный документ	79	0	0	0	0	6	6
71	ForFrame1	Действует для верхней таблицы	53	0	0	1	0	1	7
72	ForFrame2	Действует для нижней таблицы	54	0	0	1	0	2	7
3	RefreshMetadata	Обновить программные настройки	123	0	0	0	0	3	1
4	ClientView	Анализ клиентской активности	124	0	0	0	0	4	1
81	TreeMessage	СООБЩЕНИЯ (краткие и срочные)	127	0	0	1	1	1	8
12	SetAREA	Выбрать область учета	151	0	0	0	0	2	2
13	RefreshMetadata	Обновить программные настройки	152	0	0	0	0	3	2
82	TreeLetter	ПИСЬМА (неформализованный документооборот)	125	0	0	1	0	2	8
84	TreeTask	ЗАДАЧИ (контроль исполнения)	128	-1	0	1	0	4	8
91	TimeSizeMonth	Масштаб времени - МЕСЯЦ	5	0	0	1	1	2	9
92	TimeSizeWeek7	Масштаб времени - НЕДЕЛЯ (7 дней)	6	0	0	1	0	3	9
93	TimeSizeWeek5	Масштаб времени - НЕДЕЛЯ (5 дней)	126	0	0	1	0	4	9
90	TimeSizeYear	Масштаб времени - ГОД	7	0	0	1	0	1	9
94	TimeSizeDay	Масштаб времени - ДЕНЬ	4	0	0	1	0	5	9
101	PropertySub	Настройка панели последних изменений	26	0	0	0	0	1	10
111	New	Новый документ	89	0	0	0	0	1	11
112	Delete	Удалить документ	21	-1	0	0	0	2	11
113	SortASC	Сортировка по возрастанию	94	0	5	0	0	3	11
114	SortDESC	Сортировка по убыванию	95	0	0	0	0	4	11
115	Find	Расширенный поиск	87	-1	5	0	0	5	11
116	Filter	Добавить выделенное значение в фильтр	82	-1	0	0	0	6	11
117	FilterClear	Очистить фильтр/поиск	122	-1	0	0	0	7	11
83	TreeDoc	ДОКУМЕНТЫ (корпоративный документооборот)	143	0	0	1	0	3	8
85	TreeTimer	ТАЙМЕРЫ (события и напоминания)	146	-1	0	1	0	5	8
11	SetSOL	Выбрать модуль	150	0	0	0	0	1	2
131	SortAsc	Сортировка по названию	94	0	0	1	1	1	12
132	SortTime	Сортировка по активности	149	0	0	1	0	2	12
133	ReListUser	Принудительное обновление Контакт-Листа	123	-1	5	0	0	3	12
141	New	Новый документ	89	-1	0	0	0	1	13
53	Reference	Ссылки	164	0	5	0	0	13	5
118	GetReference	Прикрепленные ссылки	100	0	5	0	0	8	11
95	TimeSizeDay	Пользовательский фильтр	22	-1	5	1	0	6	9
142	Delete	Удалить документ	21	-1	0	0	0	2	13
143	SortASC	Сортировка по возрастанию	94	0	5	0	0	3	13
144	SortDESC	Сортировка по убыванию	95	0	0	0	0	4	13
145	Find	Расширенный поиск	87	-1	5	0	0	5	13
146	Filter	Добавить выделенное значение в фильтр	82	-1	0	0	0	6	13
147	FilterClear	Очистить фильтр/поиск	122	-1	0	0	0	7	13
67	SendTo	Отправить документ адресатам по e-Mail	132	-1	5	0	0	7	6
148	SetAllFormula	Выполнить формулу столбца (поля) для всех строк	90	0	5	0	0	14	5
149	TableView	Табличный вид	76	0	0	0	0	1	14
\.


--
-- Data for Name: _dbo_sys_frametoolsch; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_frametoolsch (id_frametoolsch, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	ToolBar for TMRModuleToolBar	ПУ для модуля TMR
2	Standard ToolBar for StandardModuleToolBar	Стандартная ПУ для модуля
3	Standard ToolBar for TreeView-Context	Стандартная ПУ для интерфейса Дерева-Контекстов
5	Standard ToolBar for Table	Стандартная ПУ для интерфейса Таблицы
6	Standard ToolBar for CardForm	Стандартная ПУ для интерфейса Карточки
7	Standard ToolBar for Calendar	Стандартная ПУ для интерфейса Календаря
4	Standard ToolBar for TreeView	Стандартная ПУ для интерфейса Дерева
8	ToolBar for TreeView-Context TMR	ПУ для интерфейса Дерева-Контекста модуля TMR
9	ToolBar for TMR-Calendar TMR	ПУ для интерфейса Календаря модуля TMR
10	ToolBar for TreeView-Sub TMR	ПУ для интерфейса Дерева-Событий модуля TMR
11	ToolBar for Table Buttom TMR	ПУ для интерфейса Таблицы-Нижней модуля TMR
12	ToolBar for TreeView-User TMR	ПУ для интерфейса Дерева-Контактов модуля TMR
13	ToolBar for Table Buttom2 TMR	ПУ для интерфейса Таблицы-Нижней2 модуля TMR
14	Standard ToolBar for TreeView2	Стандартная ПУ для интерфейса Дерева2
\.


--
-- Data for Name: _dbo_sys_hash; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_hash (id_hash, name, key_to, id_obj, select_to, where_to, order_to, descript) FROM stdin;
18	ARE-ID	0	4300	SELECT * FROM SYS_AREA			
17	IFA-ALS	3	500	SELECT * FROM SYS_INTERFACE			
16	IFA-ID	0	500	SELECT * FROM SYS_INTERFACE			
15	RES-ID	0	2000	SELECT * FROM SYS_RES			
14	DTY-ID	0	100	SELECT * FROM SYS_DTYPE			
13	OOR-ARE:OBJ	3:4	5100	SELECT * FROM OWN_OBJRULE WHERE ID_FLAG=0 AND RuleSelect<>0 AND ID_OWN_USER={?:OwnID} ORDER BY ID_AREA, ID_OBJ	!SL!**!FR{5100}!WR{5110}=0!AD{5106}<>0!AD{5102}=??OwnID??	ID_AREA, ID_OBJ	
12	OOR-ID	0	5100	SELECT * FROM OWN_OBJRULE WHERE ID_FLAG=0 AND RuleSelect<>0 AND ID_OWN_USER={?:OwnID} ORDER BY ID_AREA, ID_OBJ	!SL!**!FR{5100}!WR{5110}=0!AD{5106}<>0!AD{5102}=??OwnID??	ID_AREA, ID_OBJ	
11	LNK-KFO	2	700	SELECT * FROM SYS_OBJLNK			
10	LNK-ID	0	700	SELECT * FROM SYS_OBJLNK			
9	FLD-NAM:PAP	3:5	400	SELECT * FROM SYS_OBJFLD ORDER BY ID_OBJ, TABINDEX	{304}=3	ID_OBJ_PAPA, TABINDEX	
8	FLD-ID	0	400	SELECT * FROM SYS_OBJFLD ORDER BY ID_OBJ, TABINDEX	{304}=3	ID_OBJ_PAPA, TABINDEX	
7	TBL-NAM	3	300	SELECT * FROM SYS_OBJ ORDER BY ID_SOL, DESCRIPT	{304}=2	ID_OBJ_PAPA, DESCRIPT	
6	TBL-ID	0	300	SELECT * FROM SYS_OBJ ORDER BY ID_SOL, DESCRIPT	{304}=2	ID_OBJ_PAPA, DESCRIPT	
5	MOD-NAM	1	200	SELECT * FROM SYS_SOL ORDER BY DESCRIPT	{304}=1	ID_OBJ_PAPA, DESCRIPT	
4	MOD-ID	0	200	SELECT * FROM SYS_SOL ORDER BY DESCRIPT	{304}=1	ID_OBJ_PAPA, DESCRIPT	
0	<ALL>						<ВСЕ>
1	OBJ-ID	0	300	SELECT * FROM SYS_OBJ			
2	NSP-ID	0	2700	SELECT * FROM SYS_NAMESPACE WHERE PREFIX IS NOT NULL			
3	OPR-ALS	3	2900	SELECT * FROM SYS_OPER WHERE ALIAS IS NOT NULL			
19	VAR-ALS	3	3000	SELECT * FROM SYS_VARIABLE WHERE ALIAS IS NOT NULL			55
20	OSR-ARE:SOL	2:3	5400	SELECT * FROM OWN_SOLRULE WHERE ID_FLAG=0 AND ID_OWN_USER={?:OwnID} ORDER BY ID_AREA, ID_SOL			
21	OWN-ID	0	4100	SELECT * FROM SYS_OWN			
22	FOOR-ID	0	5600	SELECT * FROM OWN_OBJFLDRULE WHERE ID_FLAG=0 AND ID_OWN_USER={?:OwnID} ORDER BY ID_AREA, ID_OBJ	!SL!**!FR{5100}!WR{5110}=0!AD{5106}<>0!AD{5102}=??OwnID??	ID_AREA, ID_OBJ	
23	FOOR-ARE:OBJ:FLD	5:6:7	5600	SELECT * FROM OWN_OBJFLDRULE WHERE ID_FLAG=0 AND ID_OWN_USER={?:OwnID} ORDER BY ID_AREA, ID_OBJ	!SL!**!FR{5100}!WR{5110}=0!AD{5106}<>0!AD{5102}=??OwnID??	ID_AREA, ID_OBJ	
\.


--
-- Data for Name: _dbo_sys_interface; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_interface (id_interface, name, descript, alias) FROM stdin;
0	<UNKNOW>	<НЕОПРЕДЕЛЕН>	<ALL>
25	Grid	Таблица	{#:GRID}
24	CardForm	Карточка (форма)	{#:CARD}
23	TreeView	Дерево (иерархия)	{#:TREE}
21	Calendar	Календарь	{#:CLND}
17	ProgressBar	Панель прогресса	{#:PRSS}
13	ListBox	Список	{#:LIST}
14	ComboBox	Выпадающий список	{#:COMB}
27	Schema	Схема	{#:SCHM}
26	Chart	Диаграмма	{#:CHRT}
28	Gantt	Диаграмма Ганта	{#:GANT}
1	Line	Линия	{#:LINE}
2	Label	Надпись	{#:LABL}
3	TextBox	Текстовое поле	{#:TEXT}
4	CommandButton	Командная кнопка	{#:BUTN}
5	CheckBox	Кнопка/Поле для галочки	{#:CHEK}
6	RadioButton	Кнопка/Поле выбора	{#:RADB}
9	HScrollBox	Поле прокрутки (горизонтальное)	{#:SCRH}
10	VScrollBox	Поле прокрутки (вертикальное)	{#:SCRV}
8	Slider	Ползунок выбора значения	{#:SLID}
11	FrameBox	Рамка (объединение элементов)	{#:FRAM}
15			{#:1515}
7	UpDown	Кнопки (вверх/вниз) выбора значения	{#:UPDN}
16	Tabbed	Закладки (объединения элементов)	{#:TABB}
12	Image	Картинка (изображение)	{#:IMAG}
18	StatusBar	Панель состояния	{#:STAT}
19	ToolBar	Панель инструментов	{#:TOOL}
20	MenuBar	Выпадающее (контекстное) меню	{#:MENU}
22			{#:2222}
\.


--
-- Data for Name: _dbo_sys_menu; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_menu (id_menu, name, descript, id_menugroup, level, id_menu_papa) FROM stdin;
0	<ALL>	<ВСЕ>	0	0	0
1			1	1	0
\.


--
-- Data for Name: _dbo_sys_menutype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_menutype (id_menutype, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	Operation	ОПЕРАЦИИ
2	Object	ОБЪЕКТЫ
3	Report	ОТЧЕТЫ
4	UserRule	ПРАВА ПОЛЬЗОВАТЕЛЕЙ
\.


--
-- Data for Name: _dbo_sys_namespace; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_namespace (id_namespace, name, descript, prefix, postfix, id_obj_alias) FROM stdin;
2	SQL	SQL:1999  (язык)	{s:	}	2900
1	XTOL	XTOL: Местный диалект (язык)	{x:	}	2900
0	<ALL>	<ВСЕ>			0
3	VBA	VB/VBA:6.0  (язык)	{v:	}	2900
5	CONST	Константы (системные)	{!:	}	600
6	VAR	Переменные (системные)	{?:	}	3000
11	INTERFACE	Интерфейсы (клиентские)	{#:	}	500
4	DATATYPE	Типы данных (системные)	{$:	}	100
7	reserv				0
8	SOLUTION	Решения (модули)	[m:	]	300
9	OBJECT	Объекты (таблицы)	[t:	]	300
10	FIELD	Поля (столбцы)	[f:	]	300
12					0
\.


--
-- Data for Name: _dbo_sys_obj; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_obj (id_obj, in_date, up_date, name, descript, id_sol, is_unused, deforderby, is_docflow, id_interface, id_objfld, id_docflowtype, rowsheight) FROM stdin;
5000	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_PRF	ПОЛЬЗОВАТЕЛЬСКИЕ ПРОФИЛИ	2	0		0	25			0
5100	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_OBJRULE	ПОЛЬЗОВАТЕЛИ: ПРАВА НА DWH-ОБЪЕКТЫ	2	0		0	25			0
5200	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_OBJHIDE	СКРЫТЫЕ СТРОКИ В ОБЪЕКТАХ	2	0		0	25			0
4200	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_FLAG	СИСТЕМНЫЕ ПОЛЯ: ФЛАГИ	1	0		0	25			0
4300	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_AREA	СИСТЕМНЫЕ ПОЛЯ: ОБЛАСТИ	1	0		0	25			0
9100	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_CNN	ПОДКЛЮЧЕНИЯ	2	0		0	25			0
9000	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_CNNSUB	ПОДКЛЮЧЕНИЯ: СОБЫТИЯ (СОСТОЯНИЯ)	2	0		0	25			0
9200	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_CNNLOG	ПОДКЛЮЧЕНИЯ: ЖУРНАЛ СОБЫТИЙ	2	0		0	25			0
9900	2009-01-01 00:00:00	2009-01-01 00:00:00	OWN_LOG	ЖУРНАЛ ЗАПИСИ ИЗМЕНЕНИЙ	2	0		0	25			0
1300	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_SCHLNK	СХЕМЫ ГЕНЕРАЦИИ: СВЯЗИ ОБЪЕКТОВ	1	0		0	25			0
100	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_DTYPE	СИСТЕМА: ТИПЫ ДАННЫХ	1	0		0	25			0
200	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_SOL	СИСТЕМА: МОДУЛИ	1	0		0	25			0
300	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OBJ	СИСТЕМА: DWH-ОБЪЕКТЫ (таблицы)	1	0		0	25			0
2000	2009-10-26 08:09:09	2009-10-26 08:09:09	SYS_RES	СИСТЕМА: РЕСУРСЫ (клиентские)	1	0		0	25			0
2100	2009-10-28 05:43:19	2009-10-28 05:43:19	SYS_FRAME	СИСТЕМА: ФРЕЙМЫ (клиентские)	1	0		0	25			0
2200	2009-10-28 06:02:06	2009-10-28 06:02:06	SYS_FRAMETOOLLOAD	ФРЕЙМЫ: Загрузка панелей инструментов	1	0		0	25			0
2400	2009-11-11 23:42:00	2009-11-11 23:42:00	SYS_FRAMETOOL	ФРЕЙМЫ: Панели инструментов для интерфейсов	1	0		0	25			0
0			<ALL>	<ВСЕ>	0	0		0	0			0
5400	2010-03-29 04:53:14	2010-03-29 04:53:14	OWN_SOLRULE	ПОЛЬЗОВАТЕЛИ: ПРАВА НА МОДУЛИ	2	0		0	25			0
5500	2010-03-31 03:59:12	2010-03-31 03:59:12	OWN_OWNWORK	ПОЛЬЗОВАТЕЛИ: ШТАТНЫЕ ЕДИНИЦЫ	2	0		0	25			0
12300	2010-03-31 04:09:45	2010-03-31 04:09:45	TMR_MESSAGE	СООБЩЕНИЯ	5	0		0	25			0
12400	2010-03-31 04:19:44	2010-03-31 04:19:44	TMR_LETTER	ПИСЬМА	5	0		-1	25			0
12500	2010-03-31 04:20:06	2010-03-31 04:20:06	TMR_TASK	ЗАДАЧИ	5	0		-1	25			0
12600	2010-04-07 05:32:29	2010-04-07 05:32:29	OWN_OWNGROUP	ПОЛЬЗОВАТЕЛИ: ГРУППЫ	2	0		0	25			0
12700	2010-04-07 05:41:46	2010-04-07 05:41:46	OWN_OWNGROUPROW	ПОЛЬЗОВАТЕЛИ: ГРУППЫ (СОСТАВ)	2	0		0	25			0
1000	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_SCH	СИСТЕМА: СХЕМЫ ГЕНЕРАЦИИ DWH-ОБЪЕКТОВ	1	0		0	25			0
1100	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_SCHALTER	СХЕМЫ ГЕНЕРАЦИИ: СТРОКИ (поля объектов)	1	0		0	25			0
1200	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_SCHINSERT	СХЕМЫ ГЕНЕРАЦИИ: ЗАПИСИ  В СТРОКИ	1	0		0	25			0
4100	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OWN	СИСТЕМНЫЕ ПОЛЯ: ПОЛЬЗОВАТЕЛИ	1	0		0	25			0
1500	2009-10-23 05:30:15	2009-10-23 05:30:15	SYS_DOCTYPE	ТИПЫ: ДОКУМЕНТОВ	1	0		0	25			0
1700	2009-10-23 05:40:06	2009-10-23 05:40:06	SYS_DOCTEXT	СИСТЕМА: ДОКУМЕНТЫ (содержание)	1	0		0	25			0
2800	2010-01-07 17:02:05	2010-01-07 17:02:05	SYS_OPERTYPE	ТИПЫ: ОПЕРАТОРОВ (языковых)	1	0		0	25			0
2500	2009-11-26 03:26:07	2009-11-26 03:26:07	SYS_MENUTYPE	ТИПЫ: МЕНЮ	1	0		0	25			0
13200	2010-05-04 13:04:40	2010-05-04 13:04:40	TMR_TIMER	ТАЙМЕРЫ	5	0		-1	25			0
2900	2010-01-07 17:10:21	2010-01-07 17:10:21	SYS_OPER	СИСТЕМА: ОПЕРАТОРЫ (языковые)	1	0		0	25			0
2700	2009-12-22 14:36:35	2009-12-22 14:36:35	SYS_NAMESPACE	СИСТЕМА: ПРОСТРАНСТВА ИМЕН	1	0		0	25			0
2600	2009-11-26 03:32:57	2009-11-26 03:32:57	SYS_MENU	СИСТЕМА: МЕНЮ (клиентские)	1	0		0	25			0
3000	2009-11-26 04:45:05	2009-11-26 04:45:05	SYS_VARIABLE	СИСТЕМА: ПЕРЕМЕННЫЕ (клиентские)	1	0		0	25			0
700	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OBJLNK	DWH-ОБЪЕКТЫ: СВЯЗИ	1	0		0	25			0
800	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OBJEVTTYPE	ТИПЫ: СОБЫТИЙ DWH-ОБЪЕКТОВ	1	0		0	25			0
900	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OBJEVT	DWH-ОБЪЕКТЫ: СОБЫТИЯ (СТРОКИ)	1	0		0	25			0
5300	2009-10-19 04:04:17	2009-10-19 04:04:17	OWN_OBJFLDPRP	ПОЛЬЗОВАТЕЛЬСКИЕ СВОЙСТВА ПОЛЕЙ (СТОЛБЦОВ)	2	0		0	25			0
1600	2009-10-23 05:15:09	2009-10-23 05:15:09	SYS_OBJDOC	DWH-ОБЪЕКТЫ: ССЫЛКИ НА ДОКУМЕНТЫ	1	0		0	25			0
2300	2009-11-11 22:00:59	2009-11-11 22:00:59	SYS_FRAMETOOLSCH	ФРЕЙМЫ: Схемы загрузки панелей инстументов	1	0		0	25			0
500	2009-10-25 04:25:51	2009-10-25 04:25:51	SYS_INTERFACE	СИСТЕМА: ИНТЕРФЕЙСЫ (клиентские)	1	0		0	25			0
1400	2009-10-25 05:04:23	2009-10-25 05:04:23	SYS_FRAMELOAD	ФРЕЙМЫ: Загрузка фреймов	1	0		0	25			0
1800	2009-10-26 02:59:10	2009-10-26 02:59:10	SYS_FRAMESCH	ФРЕЙМЫ: Схемы загрузки фреймов	1	0		0	25			0
1900	2009-10-26 07:39:02	2009-10-26 07:39:02	SYS_RESTYPE	ТИПЫ: РЕСУРСОВ	1	0		0	25			0
15100	2017-11-13 16:43:48	2017-11-13 16:43:48	YAK_GroupOperations	Групповые расчетные операции (SUM, AVG, MIN, MAX, COUNT)	7	-1		0	25	0	0	0
3100	2009-11-26 12:27:03	2009-11-26 12:27:03	SYS_HASH	СИСТЕМА: КОЛЛЕКЦИИ (общие)	1	0		0	25			0
600	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_CONST	СИСТЕМА: КОНСТАНТЫ (общие)	1	0		0	25			0
400	2009-01-01 00:00:00	2009-01-01 00:00:00	SYS_OBJFLD	СИСТЕМА: DWH-ОБЪЕКТЫ (поля таблиц)	1	0		0	25			0
13300	2010-09-27 06:15:22	2010-09-27 06:15:22	OWN_SENDTO	КОМУ (АДРЕСАТЫ в этой программе)	2	0		0	25			0
13400	2010-11-12 14:09:39	2010-11-12 14:09:39	OWN_OWNLEVEL	УРОВНИ УПРАВЛЕНИЯ	2	0		0	25			0
13500	2010-12-13 01:45:15	2010-12-13 01:45:15	OWN_REFERENCE	ССЫЛКИ НА ДОКУМЕНТЫ	2	0		0	25			0
6000	2011-02-04 11:15:44	2011-02-04 11:15:44	OWN_FLAGON	ФЛАГИ ОЖИДАНИЯ: ОБРАБОТКА	2	0		0	25			0
6100	2011-02-04 11:32:13	2011-02-04 11:32:13	OWN_FLAGONTYPE	ФЛАГИ ОЖИДАНИЯ: ТИПЫ ОБЪЕКТОВ	2	0		0	25			0
14500	2012-07-03 14:37:08	2012-07-03 14:37:08	OWN_SENDTOSMTP	КОМУ (АДРЕСАТЫ по e-mail)	2	0		0	25	0		0
3200	2012-07-04 00:43:44	2012-07-04 00:43:44	SYS_DOCFLOWTYPE	ТИПЫ: ПРОЦЕССОВ ДОКУМЕНТООБОРОТА	1	0		0	25	0		0
3300	2018-06-01 16:58:21	2018-06-01 16:58:21	SYS_COLORTHEME	СИСТЕМА: ЦВЕТОВЫЕ ТЕМЫ	1	0		0	25	0	0	0
5600	2018-06-04 15:11:10	2018-06-04 15:11:10	OWN_OBJFLDRULE	ПОЛЬЗОВАТЕЛИ: ИСКЛЮЧЕНИЯ ДЛЯ ПРАВ НА ПОЛЯ (СТОЛБЦЫ)	2	0		0	25	0	0	0
15200	2020-06-22 02:25:19	2020-06-22 02:25:19	ALL_EducationType	СПРАВОЧНИК: Тип общеобразовательной организации	3	0		0	25	0	0	0
15300	2020-06-22 02:28:19	2020-06-22 02:28:19	YAK_TransportAccess	СПРАВОЧНИК: Транспортная доступность	7	0		0	25	0	0	0
15400	2020-06-22 02:31:43	2020-06-22 02:31:43	YAK_ClusterSES	СПРАВОЧНИК: Кластер школы по СЭП	7	0		0	25	0	0	0
15500	2020-06-22 02:32:55	2020-06-22 02:32:55	ALL_SettlementType	СПРАВОЧНИК: Тип населенного пункта	3	0		0	25	0	0	0
15600	2020-06-22 02:33:58	2020-06-22 02:33:58	ALL_SubjectRF	СПРАВОЧНИК: Субъект Российской Федерации	3	0		0	25	0	0	0
15700	2020-06-22 02:38:37	2020-06-22 02:38:37	YAK_Organization	 ШКОЛА	7	0		0	25	0	0	0
15800	2020-06-22 02:40:03	2020-06-22 02:40:03	ALL_Municipality	СПРАВОЧНИК: Муниципальное образование	3	0		0	25	0	0	0
15900	2020-06-22 05:00:39	2020-06-22 05:00:39	YAK_Section1	РАЗДЕЛ1: Статистика по ученикам (ОГЭ, ЕГЭ, олимпиадники)	7	0		0	25	0	0	0
16000	2020-06-30 03:24:54	2020-06-30 03:24:54	YAK_Section2	РАЗДЕЛ2: Кадровое обеспечение	7	0		0	25	0	0	0
16100	2020-06-30 05:44:01	2020-06-30 05:44:01	YAK_Section3	РАЗДЕЛ3: Обучающиеся	7	0		0	25	0	0	0
16200	2020-06-30 06:23:59	2020-06-30 06:23:59	YAK_Section4	РАЗДЕЛ4: Дополнительное образование	7	0		0	25	0	0	0
16300	2020-06-30 07:01:18	2020-06-30 07:01:18	YAK_Section5	РАЗДЕЛ5: Материально-техническое оснащение	7	0		0	25	0	0	0
16400	2020-06-30 07:27:33	2020-06-30 07:27:33	YAK_Section6	РАЗДЕЛ6: Финансирование	7	0		0	25	0	0	0
16500	2020-06-30 07:46:31	2020-06-30 07:46:31	YAK_Section7	РАЗДЕЛ7: Прочие	7	0		0	25	0	0	0
16600	2020-07-14 08:25:09	2020-07-14 08:25:09	YAK_S1	Статистика по РАЗДЕЛУ1	7	0		0	25	0	0	0
16700	2020-07-14 08:29:53	2020-07-14 08:29:53	YAK_S2	Статистика по РАЗДЕЛУ2	7	0		0	25	0	0	0
16800	2020-07-14 08:30:09	2020-07-14 08:30:09	YAK_S3	Статистика по РАЗДЕЛУ3	7	0		0	25	0	0	0
16900	2020-07-14 08:30:25	2020-07-14 08:30:25	YAK_S4	Статистика по РАЗДЕЛУ4	7	0		0	25	0	0	0
17000	2020-07-14 08:55:24	2020-07-14 08:55:24	YAK_S5	Статистика по РАЗДЕЛУ5	7	0		0	25	0	0	0
17100	2020-07-14 08:31:00	2020-07-14 08:31:00	YAK_S6	Статистика по РАЗДЕЛУ6	7	0		0	25	0	0	0
17200	2020-07-14 08:31:13	2020-07-14 08:31:13	YAK_S7	Статистика по РАЗДЕЛУ7	7	0		0	25	0	0	0
17300	2020-07-16 02:06:04	2020-07-16 02:06:04	YAK_NameCells	Матрица проекции данных на целевые ячейки в бланке паспорта	7	0		0	25	0	0	0
17400	2020-09-08 21:41:47	2020-09-08 21:41:47	PEM_Organization	_ШКОЛА	8	0		0	25	0	0	0
17500	2020-09-08 22:01:17	2020-09-08 22:01:17	PEM_Grade	Класс	8	0		0	25	0	0	0
17600	2020-09-08 22:15:03	2020-09-08 22:15:03	PEM_Learner	Учащийся	8	0		0	25	0	0	0
17700	2020-09-09 16:46:08	2020-09-09 16:46:08	PEM_PrimaryData	Данные по учащимся (первичные)	8	0		0	25	0	0	0
18100	2020-09-10 17:11:49	2020-09-10 17:11:49	PEM_AverageData	Данные по учащимся (усредненные)	8	0		0	25	0	0	0
18200	2020-09-11 15:58:30	2020-09-11 15:58:30	PEM_NameCells	Матрица проекции данных на целевые ячейки в бланке отчета	8	0		0	25	0	0	0
17800	2020-09-09 18:59:50	2020-09-09 18:59:50	PEM_Period	Период сбора данных	8	0		0	25	0	0	0
17900	2020-09-09 19:00:56	2020-09-09 19:00:56	PEM_TestLevel	СПРАВОЧНИК: Уровень подготовки	8	0		0	25	0	0	0
18000	2020-09-10 16:14:46	2020-09-10 16:14:46	PEM_SectionData	Данные по учащимся (суммарные по разделам)	8	0		0	25	0	0	0
18500	2020-11-21 14:32:07	2020-11-21 14:32:07	PEM_OrganizationGroupForParallel	Группы школ по параллелям	8	0		0	25	0	0	0
18600	2020-11-21 14:46:11	2020-11-21 14:46:11	PEM_Parallel	СПРАВОЧНИК: Параллели классов	8	0		0	25	0	0	0
18300	2020-11-01 17:09:20	2020-11-01 17:09:20	PEM_Report	Отчет (шаблон)	8	0		0	25	0	0	0
18400	2020-11-02 00:14:31	2020-11-02 00:14:31	PEM_Report_Section	Отчет (шаблон) - разделы	8	0		0	25	0	0	0
\.


--
-- Data for Name: _dbo_sys_objdoc; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_objdoc (id_objdoc, id_own, id_obj, key_from, date_objdoc, id_doctype, filename, descript, id_doctext, filesize) FROM stdin;
0	0	0	0		0				
\.


--
-- Data for Name: _dbo_sys_objevt; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_objevt (id_objevt, id_obj, id_objevttype, numline, setline, id_fun) FROM stdin;
0	0	0	0	<ALL>	
\.


--
-- Data for Name: _dbo_sys_objevttype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_objevttype (id_objevttype, name, descript) FROM stdin;
3	BeforeAddRecord	ПЕРЕД добавлением записи
4	AfterAddRecord	ПОСЛЕ добавления записи
0	<ALL>	<ВСЕ>
2	AfterChangeValue	ПОСЛЕ изменения значения
5	BeforeRemoveRecord	ПЕРЕД удалением записи
6	AfterRemoveRecord	ПОСЛЕ удаления записи
1	BeforeChangeValue	ПЕРЕД изменением значения
\.


--
-- Data for Name: _dbo_sys_objfld; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_objfld (id_objfld, in_date, up_date, name, descript, id_obj, id_dtype, setsize, tabindex, id_objlnk, unvisible, unused, defvalue, defwidth, defformat, formula, is_list) FROM stdin;
15704	2020-06-22 02:38:39	2020-06-22 02:38:39	ID_OWN	Владелец	15700	3	4	4	616	-1	0	0	0			0
15705	2020-06-22 02:38:39	2020-06-22 02:38:39	ID_FLAG	Флаг	15700	3	4	5	617	-1	0	0	0			0
15706	2020-06-22 02:38:39	2020-06-22 02:38:39	ID_AREA	Область	15700	3	4	6	618	-1	0	0	0			0
15707	2020-06-22 02:38:39	2020-06-22 02:38:39	NAME_Organization	Название	15700	7	120	7	0	0	0		0			0
15712	2020-06-24 10:42:05	2020-06-24 10:42:05	ID_SettlementType	Тип населенного пункта	15700	3	4	12	629	0	0	0	0			0
15713	2020-06-24 10:43:51	2020-06-24 10:43:51	ID_TransportAccess	Транспортная доступность	15700	3	4	13	630	0	0	0	0			0
15801	2020-06-22 02:40:05	2020-06-22 02:40:05	ID_Municipality	Ключ	15800	3	4	1	0	-1	0		0			0
15802	2020-06-22 02:40:05	2020-06-22 02:40:05	IN_DATE	Дата созданиия	15800	6	8	2	0	-1	0	=NOW	0			0
15803	2020-06-22 02:40:05	2020-06-22 02:40:05	UP_DATE	Дата обновления	15800	6	8	3	0	-1	0	=NOW	0			0
15804	2020-06-22 02:40:05	2020-06-22 02:40:05	ID_OWN	Владелец	15800	3	4	4	619	-1	0	0	0			0
15805	2020-06-22 02:40:05	2020-06-22 02:40:05	ID_FLAG	Флаг	15800	3	4	5	620	-1	0	0	0			0
15806	2020-06-22 02:40:05	2020-06-22 02:40:05	ID_AREA	Область	15800	3	4	6	621	-1	0	0	0			0
15807	2020-06-22 02:40:05	2020-06-22 02:40:05	NAME_Municipality	Название	15800	7	50	8	0	0	0		0			0
15710	2020-06-22 04:24:45	2020-06-22 04:24:45	ID_Municipality	Муниципалитет (район)	15700	3	4	8	622	0	0	0	0			0
15809	2020-06-22 02:40:05	2020-06-22 02:40:05	DESCRIPT_Municipality	Описание	15800	7	255	9	0	0	0		0			0
15608	2020-06-22 03:14:45	2020-06-22 03:14:45	Code	Код	15600	7	2	8	0	0	0		0			0
3001	2009-11-26 04:45:05	2009-11-26 04:45:05	ID_VARIABLE	Ключ	3000	3	4	1	0	-1	0		0			0
3002	2009-11-26 04:45:05	2009-11-26 04:45:05	NAME	Название	3000	7	50	3	0	0	0		0			0
3003	2009-11-26 04:45:05	2009-11-26 04:45:05	DESCRIPT	Описание	3000	7	255	5	0	0	0		0			0
201	2009-01-01 00:00:00	2009-01-01 00:00:00	ID_SOL	Ключ	200	3	4	1	0	-1	0		0			0
13317	2010-10-03 08:48:59	2010-10-03 08:48:59	ID_OWN_FROM	Отправитель (пользователь)	13300	3	4	10	240	0	0	0	0			0
405	2009-01-01 00:00:00	2009-01-01 00:00:00	DESCRIPT	Описание	400	7	255	5	0	0	0		0			0
15711	2020-06-24 10:35:36	2020-06-24 10:35:36	ID_EducationType	Тип образовательной организации	15700	3	4	11	628	0	0	0	0			0
15714	2020-06-24 10:48:31	2020-06-24 10:48:31	ID_ClusterSES	Уровень школы по соц-экон статусу	15700	3	4	14	631	0	0	0	0			0
15715	2020-06-24 10:54:21	2020-06-24 10:54:21	ValueSES	Соц-экон статус (значение)	15700	4	8	15	0	0	0	0	0			0
15716	2020-06-24 10:55:45	2020-06-24 10:55:45	AddressFact	Фактический адрес	15700	7	255	16	0	0	0		0			0
15717	2020-06-24 10:56:36	2020-06-24 10:56:36	DirectorFIO	ФИО Директора	15700	7	100	17	0	0	0		0			0
15718	2020-06-24 10:59:37	2020-06-24 10:59:37	TelephoneContact	Контактный телефон	15700	7	20	18	0	0	0		0			0
15719	2020-06-24 11:00:34	2020-06-24 11:00:34	Email	Email адрес	15700	7	50	19	0	0	0		0			0
205	2012-09-09 23:24:25	2012-09-09 23:24:25	SavePathNetwork	Сетевой путь хранения документов	200	7	255	5	0	0	0		0			0
3108	2009-11-27 16:48:44	2009-11-27 16:48:44	ORDER_TO	Порядок сортировки элементов	3100	7	255	7	0	0	0		0			0
2706	2010-02-08 17:34:47	2010-02-08 17:34:47	ID_OBJ_ALIAS	Объект, содержащий псевдоним	2700	3	4	6	34	0	0	0	0			0
2406	2009-11-11 23:50:01	2009-11-11 23:50:01	PIXELHEIGHT	Высота панели (пиксели)	2400	3	4	6	0	0	0	40	0			0
2408	2009-11-12 00:02:51	2009-11-12 00:02:51	ID_FRAMESCH	Схема загрузки фреймов	2400	3	4	2	29	0	0	0	0			0
5115	2009-11-24 08:16:17	2009-11-24 08:16:17	RuleInsertCopy	Создание полной копии записи (кроме ID)	5100	1	2	15	0	0	0	0	0			0
3106	2009-11-27 16:37:30	2009-11-27 16:37:30	ID_OBJ	Объект для коллекции	3100	3	4	3	38	0	0	0	0			0
9107	2009-01-01 00:00:00	2009-01-01 00:00:00	IPAddress	IP адрес	9100	7	25	7	0	0	0		0			0
15720	2020-06-24 11:01:03	2020-06-24 11:01:03	Site	Сайт организации	15700	7	50	20	0	0	0		0			0
15721	2020-06-24 11:02:44	2020-06-24 11:02:44	DESCRIPT_Organization	(Само)описание	15700	8	-1	21	0	0	0		0			0
5203	2009-01-01 00:00:00	2009-01-01 00:00:00	ID_OBJ	Объект	5200	3	4	3	47	0	0	0	0			0
5402	2010-03-29 04:59:52	2010-03-29 04:59:52	ID_FLAG	Флаг	5400	3	4	5	60	-1	0	0	0			0
5403	2010-03-29 05:00:12	2010-03-29 05:00:12	ID_AREA	Область	5400	3	4	6	61	0	0	0	0			0
5404	2010-03-29 05:00:52	2010-03-29 05:00:52	ID_OWN_USER	Пользователь	5400	3	4	7	62	0	0	0	0			0
202	2009-01-01 00:00:00	2009-01-01 00:00:00	NAME	Название	200	7	50	2	0	0	0		0			0
1307	2009-01-01 00:00:00	2009-01-01 00:00:00	WHERE_TO	Условие подставновки	1300	7	255	7	0	0	0		0			0
303	2009-01-01 00:00:00	2009-01-01 00:00:00	UP_DATE	Дата/время обновления	300	6	8	3	0	-1	0	=NOW	0			0
601	2009-01-01 00:00:00	2009-01-01 00:00:00	ID_CONST	Ключ	600	3	4	1	0	-1	0		0			0
602	2009-01-01 00:00:00	2009-01-01 00:00:00	NAME	Название	600	7	50	2	0	0	0		0			0
603	2009-01-01 00:00:00	2009-01-01 00:00:00	ALIAS	Псевдоним	600	7	20	3	0	0	0		0			0
403	2009-01-01 00:00:00	2009-01-01 00:00:00	UP_DATE	Дата/время обновления	400	6	8	3	0	-1	0	=NOW	0			0
5405	2010-03-29 05:01:06	2010-03-29 05:01:06	ID_SOL	Модуль	5400	3	4	8	63	0	0	0	0			0
415	2010-04-04 07:14:01	2010-04-04 07:14:01	DEFFORMAT	Формат поля по умолчанию	400	7	50	15	0	0	0		0			0
701	2009-01-01 00:00:00	2009-01-01 00:00:00	ID_OBJLNK	Ключ	700	3	4	1	0	-1	0		0			0
9001	2009-01-01 00:00:00	2009-01-01 00:00:00	ID_CNNSUB	Ключ	9000	3	4	1	0	-1	0		0			0
404	2009-01-01 00:00:00	2009-01-01 00:00:00	NAME	Название	400	7	255	4	0	0	0		0			0
2213	2009-11-11 22:27:28	2009-11-11 22:27:28	ID_FRAMETOOLSCH	Схема загрузки панели инструментов	2200	3	4	4	27	0	0	0	0			0
9106	2009-01-01 00:00:00	2009-01-01 00:00:00	DATE_LastTime	Последнее соединение	9100	6	8	6	0	0	0		0	dd mmm hh:nn:ss		0
14511	2012-07-03 14:41:22	2012-07-03 14:41:22	SMTPAddress	e-mail	14500	7	30	11	0	0	0		0			0
14518	2012-07-06 12:22:15	2012-07-06 12:22:15	STOP_DATE	Дата окончания действия документа	14500	6	8	14	0	0	0		0			0
14516	2012-07-04 04:06:23	2012-07-04 04:06:23	ID_OWN_FROM	Отправитель (пользователь)	14500	3	4	7	309	0	0	0	0			0
12508	2010-03-31 04:20:06	2010-03-31 04:20:06	DATE_TASK	Дата документа	12500	6	8	8	0	0	0	=NOW	0			0
12509	2010-03-31 04:20:06	2010-03-31 04:20:06	DESCRIPT	Описание	12500	7	255	9	0	0	0		0			0
5505	2010-04-02 17:29:14	2010-04-02 17:29:14	NAME_OWNWORK	Название	5500	7	255	3	0	0	0		0			0
13209	2010-05-04 13:04:40	2010-05-04 13:04:40	DESCRIPT	Описание	13200	7	255	11	0	0	0		0			0
5109	2009-01-01 00:00:00	2009-01-01 00:00:00	RuleDelete	Удаление записи	5100	1	2	13	0	0	0	0	0			0
1802	2009-10-26 02:59:10	2009-10-26 02:59:10	NAME	Название	1800	7	50	2	0	0	0		0			0
2901	2010-01-07 17:10:21	2010-01-07 17:10:21	ID_OPER	Ключ	2900	3	4	1	0	-1	0		0			0
2902	2010-01-07 17:10:21	2010-01-07 17:10:21	NAME	Название	2900	7	50	6	0	0	0		0			0
12701	2010-04-07 05:41:46	2010-04-07 05:41:46	ID_OWNGROUPROW	Ключ	12700	3	4	1	0	-1	0		0			0
12609	2010-04-07 05:32:29	2010-04-07 05:32:29	DESCRIPT	Описание	12600	7	255	9	0	0	0		0			0
1904	2009-10-26 07:43:09	2009-10-26 07:43:09	ALIAS	Псевдоним	1900	7	20	2	0	0	0		0			0
2501	2009-11-26 03:26:07	2009-11-26 03:26:07	ID_MENUTYPE	Ключ	2500	3	4	1	0	-1	0		0			0
501	2009-10-25 04:25:51	2009-10-25 04:25:51	ID_INTERFACE	Ключ	500	3	4	1	0	-1	0		0			0
1401	2009-10-25 05:04:23	2009-10-25 05:04:23	ID_FRAMELOAD	Ключ	1400	3	4	1	0	-1	0		0			0
1404	2009-10-25 05:11:35	2009-10-25 05:11:35	ID_INTERFACE	Стартовый интерфейс	1400	3	4	4	20	0	0	0	0			0
1406	2009-10-25 08:04:05	2009-10-25 08:04:05	TORIGHT	Присоединять справа	1400	1	2	7	0	0	0	0	0			0
416	2014-02-24 10:55:16	2014-02-24 10:55:16	FORMULA	Формула	400	7	255	16	0	0	0		0			0
1906	2009-10-26 08:06:39	2009-10-26 08:06:39	FILEEXTENCION	Расширение файла	1900	7	10	3	0	0	0		0			0
106	2009-01-01 00:00:00	2009-01-01 00:00:00	ALIAS_MSSQLSERVER	SQL псевдоним в MS SQL-Server	100	7	50	6	0	0	0		0			0
107	2009-01-01 00:00:00	2009-01-01 00:00:00	ALIAS_MSACCESS	SQL псевдоним в MS ACCESS	100	7	50	7	0	0	0		0			0
3005	2009-11-26 04:47:38	2009-11-26 04:47:38	ID_DTYPE	Тип данных	3000	3	4	2	37	0	0	0	0			0
13304	2010-09-27 06:15:22	2010-09-27 06:15:22	ID_OWN	Владелец	13300	3	4	4	232	-1	0	0	0			0
13305	2010-09-27 06:15:22	2010-09-27 06:15:22	ID_FLAG	Флаг	13300	3	4	5	233	-1	0	0	0			0
1110	2009-01-01 00:00:00	2009-01-01 00:00:00	DEFVALUE	Значение (функция) по умолчанию	1100	7	50	10	0	0	0		0			0
2704	2010-01-25 17:39:48	2010-01-25 17:39:48	PREFIX	Префикс	2700	7	5	3	0	0	0		0			0
15307	2020-06-22 02:28:20	2020-06-22 02:28:20	NAME_TransportAccess	Название	15300	7	50	7	0	0	0		0			0
15308	2020-06-22 02:28:20	2020-06-22 02:28:20	DATE_TransportAccess	Дата документа	15300	6	8	8	0	0	0	=NOW	0			0
15309	2020-06-22 02:28:20	2020-06-22 02:28:20	DESCRIPT_TransportAccess	Описание	15300	7	255	9	0	0	0		0			0
15401	2020-06-22 02:31:46	2020-06-22 02:31:46	ID_ClusterSES	Ключ	15400	3	4	1	0	-1	0		0			0
15402	2020-06-22 02:31:46	2020-06-22 02:31:46	IN_DATE	Дата созданиия	15400	6	8	2	0	-1	0	=NOW	0			0
15403	2020-06-22 02:31:46	2020-06-22 02:31:46	UP_DATE	Дата обновления	15400	6	8	3	0	-1	0	=NOW	0			0
13306	2010-09-27 06:15:22	2010-09-27 06:15:22	ID_AREA	Область	13300	3	4	6	234	-1	0	0	0			0
12408	2010-10-13 00:43:18	2010-10-13 00:43:18	TEXT_LETTER	Содержание	12400	8	-1	8	0	0	0		0			0
13207	2010-05-04 13:04:40	2010-05-04 13:04:40	NAME_TIMER	Название	13200	7	50	8	0	0	0		0			0
13208	2010-05-04 13:04:40	2010-05-04 13:04:40	DATE_TIMER	Создан	13200	6	8	7	0	0	0	=NOW	0			0
13210	2010-05-04 13:06:54	2010-05-04 13:06:54	ID_OWN_FROM	ОТ	13200	3	4	9	230	0	0	0	0			0
2211	2009-10-28 07:40:41	2009-10-28 07:40:41	TABINDEX	Порядок вывода (слева направо)	2200	3	4	5	0	0	0	0	0			0
2302	2009-11-11 22:00:59	2009-11-11 22:00:59	NAME	Название	2300	7	50	3	0	0	0		0			0
15404	2020-06-22 02:31:46	2020-06-22 02:31:46	ID_OWN	Владелец	15400	3	4	4	607	-1	0	0	0			0
15405	2020-06-22 02:31:46	2020-06-22 02:31:46	ID_FLAG	Флаг	15400	3	4	5	608	-1	0	0	0			0
\.


--
-- Data for Name: _dbo_sys_objlnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_objlnk (id_objlnk, id_obj_from, id_objkey_from, id_obj_to, id_objkey_to, select_to, where_to, order_to) FROM stdin;
161	12300	12305	4200	4201	[f:4201], [f:4203]		
162	12300	12306	4300	4301	[f:4301], [f:4303]		
163	12400	12404	4100	4101	[f:4101], [f:4104]		
46	5200	5202	4100	4101	[f:4101], [f:4105]		
227	13200	13204	4100	4101	[f:4101], [f:4104]		
29	2400	2408	1800	1801	[f:1801], [f:1803]		
30	2400	2404	2100	2101	[f:2101], [f:2103]		
31	2400	2405	500	501	[f:501], [f:503]		
32	2400	2407	2300	2301	[f:2301], [f:2303]		
33	2600	2606	2600	2601	[f:2601], [f:2603]		
34	2700	2706	300	301	[f:301], [f:305]		
35	2900	2906	2700	2701	[f:2701], [f:2703]		
36	2900	2905	2800	2801	[f:2801], [f:2803]		
37	3000	3005	100	101	[f:101], [f:105]		
38	3100	3106	300	301	[f:301], [f:305]		
5	400	410	700	701	[f:701], [f:704]		
6	700	702	300	301	[f:301], [f:305]		
7	700	703	400	401	[f:401], [f:405]		
589	2400	2414	3300	3301	[f:3301], [f:3303]		
590	2400	2413	3300	3301	[f:3301], [f:3303]		
591	5600	5604	4100	4101	[f:4101], [f:4104]		
592	5600	5605	4200	4201	[f:4201], [f:4203]		
593	5600	5606	4300	4301	[f:4301], [f:4303]		
594	5600	5607	300	301	[f:301], [f:305]		
595	5600	5608	400	401	[f:401], [f:405]	[f:406]=GV([f:5607])	[f:409]
596	5400	5409	4100	4101	[f:4101], [f:4105]		
597	5300	5306	4100	4101	[f:4101], [f:4105]		
598	5100	5118	4100	4101	[f:4101], [f:4105]		
599	5600	5611	4100	4101	[f:4101], [f:4105]		
600	5600	5612	5100	5101	[f:5101], [f:5102], [f:5104]		
304	14500	14506	4300	4301	[f:4301], [f:4303]		
8	700	704	300	301	[f:301], [f:305]		
9	700	705	400	401	[f:401], [f:405]		
10	1100	1102	1000	1001	[f:1001], [f:1003]		
11	1100	1104	100	101	[f:101], [f:105]		
12	1200	1202	1000	1001	[f:1001], [f:1003]		
13	1200	1203	1100	1101	[f:1101], [f:1108]		
14	1300	1302	1000	1001	[f:1001], [f:1003]		
15	1300	1303	1100	1101	[f:1101], [f:1108]		
308	14500	14514	300	301	[f:301], [f:304], [f:305]		
164	12400	12405	4200	4201	[f:4201], [f:4203]		
165	12400	12406	4300	4301	[f:4301], [f:4303]		
166	12500	12504	4100	4101	[f:4101], [f:4104]		
167	12500	12505	4200	4201	[f:4201], [f:4203]		
168	12500	12506	4300	4301	[f:4301], [f:4303]		
169	12300	12309	4100	4101	[f:4101], [f:4105]		[f:4105]
178	12700	12706	4300	4301	[f:4301], [f:4303]		
179	12700	12708	12600	12601	[f:12601], [f:12607]		
180	12700	12709	4100	4101	[f:4101], [f:4105]		
26	2000	2004	1900	1901	[f:1901], [f:1904]		
27	2200	2213	2300	2301	[f:2301], [f:2303]		
28	2200	2204	2000	2001	[f:2001], [f:2002]		
232	13300	13304	4100	4101	[f:4101], [f:4104]		
233	13300	13305	4200	4201	[f:4201], [f:4203]		
234	13300	13306	4300	4301	[f:4301], [f:4303]		
235	13300	13307	300	301	[f:301], [f:305]		
236	13300	13310	4100	4101	[f:4101], [f:4105]		[f:4105]
238	13300	13312	12600	12601	[f:12601], [f:12607]		[f:12607]
239	13300	13316	13300	13301	[f:13301], [f:13309]		
580	15100	15104	4100	4101	[f:4101], [f:4104]		
581	15100	15105	4200	4201	[f:4201], [f:4203]		
582	15100	15106	4300	4301	[f:4301], [f:4303]		
583	15100	15110	300	301	[f:301], [f:304], [f:305]		
584	15100	15111	400	401	[f:401], [f:404], [f:405]	[f:406]=GV([f:15110])	[f:409]
585	15100	15112	400	401	[f:401], [f:404], [f:405]	[f:406]=GV([f:15110])	[f:409]
586	15100	15113	300	301	[f:301], [f:304], [f:305]		
587	15100	15114	400	401	[f:401], [f:404], [f:405]	[f:406]=GV([f:15113])	[f:409]
588	15100	15115	400	401	[f:401], [f:404], [f:405]	[f:406]=GV([f:15113])	[f:409]
175	12600	12606	4300	4301	[f:4301], [f:4303]		
176	12700	12704	4100	4101	[f:4101], [f:4104]		
16	1300	1304	300	301	[f:301], [f:305]		
17	1300	1305	400	401	[f:401], [f:405]		
18	1400	1411	1800	1801	[f:1801], [f:1803]		
19	1400	1412	2100	2101	[f:2101], [f:2103]		
20	1400	1404	500	501	[f:501], [f:503]		
21	1400	1413	2100	2101	[f:2101], [f:2103]		
22	1600	1602	4100	4101	[f:4101], [f:4105]		
242	13400	13404	4100	4101	[f:4101], [f:4104]		
243	13400	13405	4200	4201	[f:4201], [f:4203]		
244	13400	13406	4300	4301	[f:4301], [f:4303]		
247	13500	13504	4100	4101	[f:4101], [f:4104]		
248	13500	13505	4200	4201	[f:4201], [f:4203]		
249	13500	13506	4300	4301	[f:4301], [f:4303]		
277	300	310	500	501	[f:501], [f:502]		[f:502]
228	13200	13205	4200	4201	[f:4201], [f:4203]		
229	13200	13206	4300	4301	[f:4301], [f:4303]		
230	13200	13210	4100	4101	[f:4101], [f:4105]		
240	13300	13317	4100	4101	[f:4101], [f:4105]		[f:4105]
241	12300	12310	4100	4101	[f:4101], [f:4105]		[f:4105]
245	13400	13407	4100	4101	[f:4101], [f:4105]		[f:4105]
246	13400	13408	4100	4101	[f:4101], [f:4105]		[f:4105]
252	6000	6002	4100	4101	[f:4101], [f:4105]		
253	6100	6104	300	301	[f:301], [f:304], [f:305]		[f:304]
254	6000	6004	6100	6101	[f:6101], [f:6102], [f:6103]		
157	9200	9210	200	201	[f:201], [f:203]		
158	5500	5503	4100	4101	[f:4101], [f:4105]		
160	12300	12304	4100	4101	[f:4101], [f:4104]		
23	1600	1603	300	301	[f:301], [f:305]		
24	1600	1606	1500	1501	[f:1501], [f:1503]		
25	1600	1609	1700	1701	[f:1701], [f:1702]		
\.


--
-- Data for Name: _dbo_sys_oper; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_oper (id_oper, name, descript, alias, id_opertype, id_namespace, rang) FROM stdin;
1215	VALUE	ЗНАЧЕНИЕ	{s:V}	1	2	0
1158	PREPARE			1	2	0
1159	PRESERVE			1	2	0
1160	PRIMARY			1	2	0
1161	PRIOR			1	2	0
1162	PRIVILEGES			1	2	0
1163	PROCEDURE			1	2	0
1164	PUBLIC			1	2	0
1165	READ			1	2	0
1166	REAL			1	2	0
1167	REFERENCES			1	2	0
1168	RELATIVE			1	2	0
1169	RESTRICT			1	2	0
1170	REVOKE			1	2	0
1171	RIGHT	СПРАВА	{s:RT}	1	2	0
1279	SIGNAL			1	2	0
1280	SIMILAR			1	2	0
1281	SQLEXCEPTION			1	2	0
1282	SQLWARNING			1	2	0
1283	STRUCTURE			1	2	0
1284	TEST			1	2	0
1285	THERE			1	2	0
1286	TRIGGER			1	2	0
1287	TYPE			1	2	0
1288	UNDER			1	2	0
1289	VARIABLE			1	2	0
1290	VIRTUAL			1	2	0
1291	VISIBLE			1	2	0
1292	WAIT			1	2	0
1106	INNER			1	2	0
1107	INPUT			1	2	0
1108	INSENSITIVE			1	2	0
1109	INSERT	ВСТАВИТЬ	{s:INS}	1	2	0
1110	INT			1	2	0
1273	ROUTINE			1	2	0
1274	ROW			1	2	0
1275	SAVEPOINT			1	2	0
1276	SEARCH			1	2	0
1191	SUM	СУММА	{s:SUM}	5	2	0
1192	SYSTEM_USER			1	2	0
1193	TABLE	ТАБЛИЦА		1	2	0
1194	TEMPORARY			1	2	0
1195	THEN			1	2	0
1196	TIME	ВРЕМЯ		1	2	0
1138	NUMERIC			1	2	0
1139	NEXT			1	2	0
1004	ALL	ВСЕ	{s:ALL}	1	2	0
1005	ALLOCATE			1	2	0
1006	ALTER	ИЗМЕНИТЬ	{s:AL}	1	2	0
1007	AND	И	{s:A}	4	2	0
1008	ANY			1	2	0
1009	ARE			1	2	0
1010	AS	КАК	{s:AS}	1	2	0
1206	TRUE	ИСТИНА	{s:TRU}	1	2	0
1207	UNION	ОБЪЕДИНИТЬ	{s:UN}	1	2	0
1208	UNIQUE	УНИКАЛЬНОСТЬ		1	2	0
2001	(	Начало объединения	{v:(}	1	3	1
2002	)	Окончание объединения	{v:)}	1	3	2
1277	SENSITIVE			1	2	0
1278	SEQUENCE			1	2	0
1231	BEFORE			1	2	0
1232	BOOLEAN			1	2	0
1260	PARAMETERS			1	2	0
1261	PENDANT			1	2	0
1262	PREORDER			1	2	0
1239	DICTIONARY			1	2	0
1240	EACH			1	2	0
1241	ELSEIF			1	2	0
1242	EQUALS			1	2	0
1243	GENERAL			1	2	0
1244	IF			1	2	0
1245	IGNORE			1	2	0
1246	LEAVE			1	2	0
1247	LESS			1	2	0
1012	ASSERTION			1	2	0
1013	AT			1	2	0
1014	AUTHORIZATION			1	2	0
1015	AVG	СРЕДНЕЕ	{s:AVG}	5	2	0
1067	DIAGNOSTICS			1	2	0
1068	DISCONNECT			1	2	0
1069	DISTINCT	ОТЛИЧАЮЩИЙСЯ	{s:DIST}	1	2	0
1070	DOMAIN			1	2	0
1071	DOUBLE			1	2	0
1072	DROP	РАЗРУШИТЬ	{s:DR}	1	2	0
8	+	Сложение	+	2	1	8
9	-	Вычитание	-	2	1	9
10	&	Конкатенация (слияние)	&	2	1	10
11	<	Меньше	<	3	1	11
12	<=	Меньше или равно	<=	3	1	12
13	>	Больше	>	3	1	13
14	>=	Больше или равно	>=	3	1	14
15	=	Равно	=	3	1	15
16	<>	Не равно	<>	3	1	16
17	LIKE	Подобно	LIKE	3	1	17
18	NOT	Отрицание	NOT	4	1	18
19	AND	И	AND	4	1	19
20	OR	ИЛИ	OR	4	1	20
21	XOR	Исключающее ИЛИ	XOR	4	1	21
22	EQV	Эквивалентность	EQV	4	1	22
23	IMP	Импликация	IMP	4	1	23
\.


--
-- Data for Name: _dbo_sys_opertype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_opertype (id_opertype, name, descript) FROM stdin;
0	<ALL>	<ВСЕ>
1	GENERAL	Языковые операторы
2	ARITHMETIC	Арифметические операторы
3	COMPARISON	Операторы сравнения
4	LOGIC	Логические операторы
5	FUNCTION	Функции (встроенные в язык)
\.


--
-- Data for Name: _dbo_sys_own; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_own (id_own, id_prf, login, name, descript, id_area, domainuser) FROM stdin;
101	4	1	1	Горбовский Ростислав Викторович	1	rgorbovskiy
102	4	2	2	Бысик Надежда Викторовна	1	nbysik
0	0	`	sa	<СИСТЕМА>	1	vkorotkov
103	4	3	3	Звягинцев Роман Станиславович	1	rzvyagincev
104	4	4	4	Алексеев Максим Александрович	1	maalekseev
201	4	5	5	Саляхутдинова Диана Расимовна	1	dsalyahutdinova
\.


--
-- Data for Name: _dbo_sys_res; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_res (id_res, name, descript, id_restype) FROM stdin;
122	Fun_Filter_Clear		1
123	Fun_Refresh		1
124	Computer_Station		1
125	Letter		1
126	Calendar_Week5		1
127	Megafon		1
128	Task		1
129	Task_Input		1
130	Task_Output		1
131	Letter_Input		1
132	Letter_Output		1
133	Megafon_Input		1
134	Megafon_Output		1
135	Men_Grey		1
136	Men_GreyDark		1
137	Smile_Smile		1
138	Smile_GaGaGa		1
139	Smile_Wow		1
140	Smile_Nostalgia		1
141	Smile_Cry		1
142	Smile_Fury		1
143	Doc		1
144	Doc_Input		1
145	Doc_Output		1
146	Timer		1
147	Timer_Input		1
148	Timer_Output		1
100	Z_Relation_Set		1
101	Z_Res_Childs		1
102	Z_Res_Childs_From		1
103	Z_Res_Childs_To		1
104	Z_Rule_Minus		1
105	Z_Rule_Plus		1
106	Z_SADT_Child		1
107	Z_SADT_DataStore		1
108	Z_SADT_DFD		1
109	Z_SADT_ExternalReference		1
110	Z_SADT_IDEF0		1
111	Z_SADT_IDEF3		1
112	Z_SADT_Junction		1
113	Z_SADT_Link		1
114	Z_SADT_Parent		1
115	Z_SADT_Referent		1
116	Z_SADT_Text		1
117	Z_Sign_Exclamation		1
118	Z_Sign_Minus		1
119	Z_Sign_Plus		1
120	Z_Sign_Question		1
121	Z_Sign_Sum		1
99	Z_Relation_Delete		1
98	Z_Prog_MSWord		1
97	Z_Prog_MSExcel_Func		1
96	Z_Prog_MSExcel		1
95	Z_Fun_Sort_DESC		1
94	Z_Fun_Sort_ASC		1
93	Z_Fun_Service		1
92	Z_Fun_Refresh		1
91	Z_Fun_Rank		1
90	Z_Fun_Properties		1
89	Z_Fun_New		1
88	Z_Fun_LastX		1
87	Z_Fun_Find		1
86	Z_Fun_Double		1
85	Z_Fun_Delete		1
84	Z_Fun_CopyPaste		1
83	Z_Filter_Sub		1
82	Z_Filter_Set		1
81	Z_Filter_Clear		1
80	Z_File_Save		1
79	Z_File_Load		1
78	Z_File_Import		1
77	Z_File_Export		1
76	Z_Face_Table		1
75	Z_Face_Calendar		1
74	Z_Face_Calc		1
73	Z_Check_Yes		1
72	Z_Check_No		1
71	Z_Box_Plus		1
70	Z_Box_Check		1
69	Z_Book_Write		1
68	Z_Book_Read		1
67	Z_Arrow_Up		1
66	Z_Arrow_Right		1
65	Z_Arrow_Left		1
64	Z_Arrow_Down		1
63	Z_Arrow		1
62	Z_123		1
61	Z_9		1
60	Z_8		1
59	Z_7		1
58	Z_6		1
57	Z_5		1
56	Z_4		1
55	Z_3		1
54	Z_2		1
53	Z_1		1
52	Z_0		1
51	User_Set		1
50	User_Group		1
49	User_Delete		1
\.


--
-- Data for Name: _dbo_sys_restype; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_restype (id_restype, name, descript, alias, catalog, fileextencion) FROM stdin;
0	<ALL>	<ВСЕ>			
1	icofile:16*16	Файлы иконок 16*16 пиксел	ICO16	\\ICO\\16	ICO
2	icofile:32*32	Файлы иконок 32*32 пиксел	ICO32	\\ICO\\32	ICO
\.


--
-- Data for Name: _dbo_sys_sch; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_sch (id_sch, name, descript) FROM stdin;
1	SYSTEM SCHEMA	Системная схема
2	STANDARD USER SCHEMA	Стандартная пользовательская схема
0	<ALL>	<ВСЕ>
\.


--
-- Data for Name: _dbo_sys_schalter; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_schalter (id_schalter, id_sch, tabindex, id_dtype, setsyze, name, setparam, descript, unvisible, defvalue) FROM stdin;
1	1	1	3	4	ID_?	NOT NULL UNIQUE	Ключ	-1	
2	1	2	7	50	NAME		Название	0	
3	1	3	7	255	DESCRIPT		Описание	0	
4	2	1	3	4	ID_?	NOT NULL UNIQUE	Ключ	-1	
5	2	2	6	8	IN_DATE		Дата созданиия	-1	=NOW
6	2	3	6	8	UP_DATE		Дата обновления	-1	=NOW
7	2	4	3	4	ID_OWN		Владелец	-1	0
8	2	5	3	4	ID_FLAG		Флаг	-1	0
9	2	6	3	4	ID_AREA		Область	-1	0
10	2	7	7	50	NAME_?		Название	0	
11	2	8	6	8	DATE_?		Дата документа	0	=NOW
12	2	9	7	255	DESCRIPT_?		Описание	0	
0	0	0	0	0	<ALL>		<ВСЕ>	0	
\.


--
-- Data for Name: _dbo_sys_schinsert; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_schinsert (id_schinsert, id_sch, id_schalter, numrecord, setvalue) FROM stdin;
0	0	0	0	<ALL>
1	1	2	0	<ALL>
2	1	3	0	<ВСЕ>
3	2	8	1	1
4	2	10	1	<ПУСТО>
5	2	8	2	1
6	2	10	2	<РЕЗЕРВ>
7	2	8	3	1
8	2	10	3	<ВСЕ>
\.


--
-- Data for Name: _dbo_sys_schlnk; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_schlnk (id_schlnk, id_sch, id_schalter, id_obj_to, id_objkey_to, select_to, where_to, order_to) FROM stdin;
0	0	0	0	0	<ALL>		
1	2	7	4100	4101	[f:4101], [f:4104]		
2	2	8	4200	4201	[f:4201], [f:4203]		
3	2	9	4300	4301	[f:4301], [f:4303]		
\.


--
-- Data for Name: _dbo_sys_sol; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_sol (id_sol, name, descript, unused, id_framesch, savepathnetwork, savepathlocal) FROM stdin;
0	<ALL>	<ВСЕ>	0	0		
5	TMR	ТАЙМ-МЕНЕДЖМЕНТ	0	1	\\\\PM-DB\\PLX_DOC\\TMR	
7	YAK	САД-ШКОЛ	0	2	\\\\PM-DB\\PLX_DOC\\YAK	
1	SYS	АДМИНИСТРИРОВАНИЕ	0	2	\\\\PM-DB\\PLX_DOC\\SYS	
3	ALL	ОБЩИЕ РЕСУРСЫ	0	2	\\\\PM-DB\\PLX_DOC\\ALL	
2	OWN	ПОЛЬЗОВАТЕЛЬСКИЕ РЕСУРСЫ	0	2	\\\\PM-DB\\PLX_DOC\\OWN	
8	PEM	ЦЕНТР ПСИХОМЕТРИКИ И ИЗМЕРЕНИЙ в образовании		2	\\\\PM-DB\\PLX_DOC\\PEM	
\.


--
-- Data for Name: _dbo_sys_variable; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_sys_variable (id_variable, name, descript, alias, id_dtype) FROM stdin;
7	AreaID	ID текущей области	{?:AreaID}	3
6	ModuleName	Имя текущего модуля	{?:ModuleName}	7
5	OwnModProf	Профиль пользователя текущего модуля	{?:OwnModProf}	2
4	OwnSysProf	Системный профиль пользователя	{?:OwnSysProf}	2
3	OwnDescript	Описание пользователя	{?:OwnDescript}	7
2	OwnID	ID пользователя	{?:OwnID}	3
1	CompName	Имя клиентского компьютера	{?:CompName}	7
0	<ALL>	<ВСЕ>		0
8	IPAddressLocal	Локальный IP адрес	{?:IPAddressLocal}	7
9	ClientAppVersion	Версия клиентского приложения	{?:ClientAppVersion}	7
\.


--
-- Data for Name: _dbo_tmp_num; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_tmp_num (id_num) FROM stdin;
1943
1944
2987
2988
1879
1880
1881
1882
1883
1884
1885
1886
1887
1888
1889
1890
1891
1892
1893
1894
1895
1896
1897
1898
1899
1900
1901
1902
1903
1904
1905
1906
1907
1908
1909
1910
1911
1912
1955
1956
1957
1958
1959
1960
1961
1962
1963
1964
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
1877
1878
1999
2000
2001
2002
2003
2004
2005
2006
\.


--
-- Data for Name: _dbo_tmr_letter; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_tmr_letter (id_letter, in_date, up_date, id_own, id_flag, id_area, date_letter, text_letter) FROM stdin;
\.


--
-- Data for Name: _dbo_tmr_message; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_tmr_message (id_message, in_date, up_date, id_own, id_flag, id_area, name_message, date_message, id_own_from, id_own_to, is_apimsgbox, dateview) FROM stdin;
1	2016-01-19 18:02:47	2016-01-19 18:02:47	0	0	1	привет!	2016-01-19 18:02:47	0	4	0	2016-01-19 18:04:45
3	2016-02-05 15:35:19	2016-02-05 15:35:19	0	0	1	Собственно тут встроееный чат есть )))	2016-02-05 15:35:19	0	5	0	
4	2016-02-05 16:12:19	2016-02-05 16:12:19	0	0	1	v-korotkov@yandex.ru	2016-02-05 16:12:19	0	5	0	
7	2016-02-05 17:23:51	2016-02-05 17:23:51	0	0	1	Да, есть такое - забыл разлочить поле для копирования...	2016-02-05 17:23:51	0	5	0	
2	2016-01-19 18:04:49	2016-01-19 18:04:49	4	0	1	!	2016-01-19 18:04:49	4	0	0	2016-01-19 18:05:06
5	2016-02-05 16:16:16	2016-02-05 16:16:16	5	0	1	Получил) Только не копируется отсюда (	2016-02-05 16:16:16	5	0	0	2016-02-05 17:22:59
6	2016-02-05 16:18:31	2016-02-05 16:18:31	5	0	1	Отправил вам во внешнюю, чтобы был мой адрес, если что пишите..	2016-02-05 16:18:31	5	0	0	2016-02-05 17:22:51
8	2017-02-01 17:45:41	2017-02-01 17:45:41	1003	0	1	Привет, это пользователь тест3	2017-02-01 17:45:41	1003	0	0	2017-02-01 17:45:56
9	2017-02-01 17:46:08	2017-02-01 17:46:08	0	0	1	привет!	2017-02-01 17:46:08	0	1003	0	
10	2017-04-06 15:49:23	2017-04-06 15:49:23	1001	0	1	s	2017-04-06 15:49:23	1001	1003	0	
\.


--
-- Data for Name: _dbo_tmr_task; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_tmr_task (id_task, in_date, up_date, id_own, id_flag, id_area, name_task, date_task, descript) FROM stdin;
3	2010-03-31 04:20:06	2010-03-31 04:20:06	0	201	0	<ВСЕ>	2010-03-31 04:20:06	
2	2010-03-31 04:20:06	2010-03-31 04:20:06	0	201	0	<РЕЗЕРВ>	2010-03-31 04:20:06	
1	2010-03-31 04:20:06	2010-03-31 04:20:06	0	1	0	<ПУСТО>	2010-03-31 04:20:06	
\.


--
-- Data for Name: _dbo_tmr_timer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_tmr_timer (id_timer, in_date, up_date, id_own, id_flag, id_area, name_timer, date_timer, descript, id_own_from, id_ownto) FROM stdin;
1	2010-05-04 13:04:40	2010-05-04 13:04:40	0	1	0	<ПУСТО>	2010-05-04 13:04:40			
2	2010-05-04 13:04:40	2010-05-04 13:04:40	0	201	0	<РЕЗЕРВ>	2010-05-04 13:04:40			
3	2010-05-04 13:04:41	2010-05-04 13:04:41	0	201	0	<ВСЕ>	2010-05-04 13:04:41			
\.


--
-- Data for Name: _dbo_yak_clusterses; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_clusterses (id_clusterses, in_date, up_date, id_own, id_flag, id_area, name_clusterses, date_clusterses, descript_clusterses) FROM stdin;
0	2020-06-22 02:31:46	2020-06-22 02:31:46	0	1	1	<НЕОПРЕДЕЛЕНО>	2020-06-22 02:31:46	
1	2020-06-22 02:31:46	2020-06-22 02:31:46	0	0	1	Высокий	2020-06-22 02:31:46	
2	2020-06-22 02:31:46	2020-06-22 02:31:46	0	0	1	Средний	2020-06-22 02:31:46	
3	2020-06-22 02:31:46	2020-06-22 02:31:46	0	0	1	Низкий	2020-06-22 02:31:46	
\.


--
-- Data for Name: _dbo_yak_groupoperations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_groupoperations (id_groupoperations, in_date, up_date, id_own, id_flag, id_area, name_groupoperations, date_groupoperations, descript, id_obj_data, id_objfld_data, id_link_data, id_obj_update, id_objfld_update, id_link_update, groupoperationstype) FROM stdin;
1	2020-06-30 14:55:47	2020-06-30 14:55:47	0	0	1		2020-06-30 14:55:47		15900	16009	16001				SUM
\.


--
-- Data for Name: _dbo_yak_namecells; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_namecells (id_namecells, in_date, up_date, id_own, id_flag, id_area, namecells, descript, id_obj_res, id_objfld_res, isnamevalue, id_objfld_w1, text_w1, add_w2, id_objfld_w2, text_w2, insertformula, add_w3, id_objfld_w3, text_w3, add_w4, id_objfld_w4, text_w4) FROM stdin;
1	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A01	Раздел 0. Основная информация: Название школы	15700	15707	0												
2	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A02	Раздел 0. Основная информация: Тип школы	15700	15711	1												
3	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A03	Раздел 0. Основная информация: Социально-экономическое положение (СЭП)*: * может быть высоким, средним и низким. Чем выше уровень - тем выше ожидания от результатов работы школы, а ниже - тем в большей поддержке она нуждается.	15700	15714	1												
4	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A04	Раздел 0. Основная информация: Адрес школы	15700	15716	0												
5	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A05	Раздел 0. Основная информация: Директор школы	15700	15717	0												
6	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A06	Раздел 0. Основная информация: Телефон школы	15700	15718	0												
7	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A07	Раздел 0. Основная информация: Адрес официального сайта школы в сети интернет:	15700	15720	0												
8	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P0_A08	Раздел 0. Основная информация: Официальный адрес электронной почты школы	15700	15719	0												
9	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A01	Раздел I. Основная информация: Значения сводного индекса в группе школ: Название уровня СЭП	15700	15714	1										0	0	
10	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A02	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2017 Максимум	16600	16621	0	16605	=2017	1	16602	=MAX		1	16603	=DEFAULT	1	16604	=DEFAULT
11	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A03	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2017 Минимум	16600	16621	0	16605	=2017	1	16602	=MIN		1	16603	=DEFAULT	1	16604	=DEFAULT
12	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A04	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2017 Среднее	16600	16621	0	16605	=2017	1	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
13	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A05	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2018 Максимум	16600	16621	0	16605	=2018	1	16602	=MAX		1	16603	=DEFAULT	1	16604	=DEFAULT
14	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A06	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2018 Минимум	16600	16621	0	16605	=2018	1	16602	=MIN		1	16603	=DEFAULT	1	16604	=DEFAULT
15	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A07	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2018 Среднее	16600	16621	0	16605	=2018	1	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
16	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A08	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2019 Максимум	16600	16621	0	16605	=2019	1	16602	=MAX		1	16603	=DEFAULT	1	16604	=DEFAULT
17	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A09	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2019 Минимум	16600	16621	0	16605	=2019	1	16602	=MIN		1	16603	=DEFAULT	1	16604	=DEFAULT
18	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A10	Раздел I. Основная информация: Значения сводного индекса в группе школ: 2019 Среднее	16600	16621	0	16605	=2019	1	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
19	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A11	Раздел I. Основная информация: 2017 Школа - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	15900	15928	0	15909	=2017	0	0								
20	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A12	Раздел I. Основная информация: 2018 Школа - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	15900	15928	0	15909	=2018	0	0								
21	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A13	Раздел I. Основная информация: 2019 Школа - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	15900	15928	0	15909	=2019	0	0								
22	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A14	Раздел I. Основная информация: 2021 Школа - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	15900	15928	0	15909	=2021	0	0								
27	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A19	Раздел I. Основные факты о школе: количество сотрудников	16000	16009	0	0		0	0								
28	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A20	Раздел I. Основные факты о школе: количество пед. работников	16000	16012	0	0		0	0								
29	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A21	Раздел I. Основные факты о школе: из них учителя	16000	16013	0	0		0	0								
30	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A22	Раздел I. Основные факты о школе: количество учеников	16100	16109	0	0		0	0								
31	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A23	Раздел I. Основные факты о школе: из них девочки	16100	16110	0	0		0	0								
32	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A24	Раздел I. Основные факты о школе: количество учеников на 1 учителя	0	0	0	0		0	0		=P1_A22/P1_A21						
23	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A15	Раздел I. Основная информация: 2017 Группа СЭП - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	16600	16621	0	16605	=2017	0	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
24	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A16	Раздел I. Основная информация: 2018 Группа СЭП - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	16600	16621	0	16605	=2018	0	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
25	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A17	Раздел I. Основная информация: 2019 Группа СЭП - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	16600	16621	0	16605	=2019	0	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
26	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A18	Раздел I. Основная информация: 2021 Группа СЭП - Динамика значений сводного индекса школы и его целевое значение к 2021 году:	16600	16621	0	16605	=2021	0	16602	=AVG		1	16603	=DEFAULT	1	16604	=DEFAULT
33	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A25	Раздел I. Основные факты о школе: процент идущих в 10-й класс	16100	16128	0	0		0	0								
34	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A26	Раздел I. Основные факты о школе: процент поступающих в учреждения СПО	16100	16130	0	0		0	0								
35	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A27	Раздел I. Основные факты о школе: процент поступающих в учреждения ВО	16100	16129	0	0		0	0								
36	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A28	Раздел I. Основные факты о школе: процент охваченных ДО	16200	16210	0	0		0	0		={?:FromSQL}/P1_A22						
37	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A29	Раздел I. Основные факты о школе: процент не охваченных ДО, но желающих ходить на ДО	16200	16211	0	0		0	0		={?:FromSQL}/P1_A22						
38	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A30	Раздел I. Основные факты о школе: процент хотящих заниматься на другой программе ДО	16200	16212	0	0		0	0		={?:FromSQL}/P1_A22						
39	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A31	Раздел I. Основные факты о школе: количество мест в кабинете ОИВТ	16300	16309	0	0		0	0								
40	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A32	Раздел I. Основные факты о школе: скорость интернета	16300	16310	0	0		0	0								
41	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A33	Раздел I. Основные факты о школе: потребность в капитальном ремонте	16300	16311	0	0		0	0								
42	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A34_1	Раздел I. Основные факты о школе: фонд з/п руководящих кадров	16400	16412	0	0		0	0								
43	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A34	Раздел I. Основные факты о школе: средняя з/п руководящих кадров	16000	16010	0	0		0	0		=P1_A34_1/12/{?:FromSQL}						
44	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A35_1	Раздел I. Основные факты о школе: фонд з/п учителей	16400	16414	0	0		0	0								
45	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A35	Раздел I. Основные факты о школе: средняя з/п учителей	16000	16011	0	0		0	0		=P1_A35_1/12/{?:FromSQL}						
46	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P1_A36	Раздел I. Основные факты о школе: отношение средней  з/п руководящих кадров к з/п учителей	0	0	0	0		0	0		=P1_A34/P1_A35						
47	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A01	Раздел II. Кадровое обеспечение: количество сотрудников	16000	16009	0	0		0	0								
48	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A02	Раздел II. Кадровое обеспечение: количество пед. работников	16000	16012	0	0		0	0								
49	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A03	Раздел II. Кадровое обеспечение: из них учителя	16000	16013	0	0		0	0								
50	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A04	Раздел II. Кадровое обеспечение: численность учителей в возрасте моложе 25 лет: Школа	16000	16015	0	0		0	0								
51	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A05	Раздел II. Кадровое обеспечение: численность учителей в возрасте 25-29: Школа	16000	16016	0	0		0	0								
52	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A06	Раздел II. Кадровое обеспечение: численность учителей в возрасте 30-34: Школа	16000	16017	0	0		0	0								
53	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A07	Раздел II. Кадровое обеспечение: численность учителей в возрасте 35-39: Школа	16000	16018	0	0		0	0								
54	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A08	Раздел II. Кадровое обеспечение: численность учителей в возрасте 40-44: Школа	16000	16019	0	0		0	0								
55	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A09	Раздел II. Кадровое обеспечение: численность учителей в возрасте 45-49: Школа	16000	16020	0	0		0	0								
56	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A10	Раздел II. Кадровое обеспечение: численность учителей в возрасте 50-54: Школа	16000	16021	0	0		0	0								
57	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A11	Раздел II. Кадровое обеспечение: численность учителей в возрасте 55-59: Школа	16000	16022	0	0		0	0								
58	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A12	Раздел II. Кадровое обеспечение: численность учителей в возрасте 60-64: Школа	16000	16023	0	0		0	0								
59	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A13	Раздел II. Кадровое обеспечение: численность учителей в возрасте 65 и старше: Школа	16000	16024	0	0		0	0								
60	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A14	Раздел II. Кадровое обеспечение: численность учителей в возрасте моложе 25 лет: Группа СЭП	16700	16712	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
88	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A42	Раздел II. Кадровое обеспечение: процент учителей старше 55: Район	0	0	0	0		0	0		=(P2_A31+P2_A32+P2_A33)/P2_A66						
61	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A15	Раздел II. Кадровое обеспечение: численность учителей в возрасте 25-29: Группа СЭП	16700	16713	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
62	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A16	Раздел II. Кадровое обеспечение: численность учителей в возрасте 30-34: Группа СЭП	16700	16714	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
63	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A17	Раздел II. Кадровое обеспечение: численность учителей в возрасте 35-39: Группа СЭП	16700	16715	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
64	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A18	Раздел II. Кадровое обеспечение: численность учителей в возрасте 40-44: Группа СЭП	16700	16716	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
65	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A19	Раздел II. Кадровое обеспечение: численность учителей в возрасте 45-49: Группа СЭП	16700	16717	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
66	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A20	Раздел II. Кадровое обеспечение: численность учителей в возрасте 50-54: Группа СЭП	16700	16718	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
67	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A21	Раздел II. Кадровое обеспечение: численность учителей в возрасте 55-59: Группа СЭП	16700	16719	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
68	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A22	Раздел II. Кадровое обеспечение: численность учителей в возрасте 60-64: Группа СЭП	16700	16720	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
69	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A23	Раздел II. Кадровое обеспечение: численность учителей в возрасте 65 и старше: Группа СЭП	16700	16721	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
70	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A24	Раздел II. Кадровое обеспечение: численность учителей в возрасте моложе 25 лет: Район	16700	16712	0	16702	=AVG	1	16703	=DEFAULT		0	0				
71	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A25	Раздел II. Кадровое обеспечение: численность учителей в возрасте 25-29: Район	16700	16713	0	16702	=AVG	1	16703	=DEFAULT		0	0				
72	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A26	Раздел II. Кадровое обеспечение: численность учителей в возрасте 30-34: Район	16700	16714	0	16702	=AVG	1	16703	=DEFAULT		0	0				
73	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A27	Раздел II. Кадровое обеспечение: численность учителей в возрасте 35-39: Район	16700	16715	0	16702	=AVG	1	16703	=DEFAULT		0	0				
74	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A28	Раздел II. Кадровое обеспечение: численность учителей в возрасте 40-44: Район	16700	16716	0	16702	=AVG	1	16703	=DEFAULT		0	0				
75	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A29	Раздел II. Кадровое обеспечение: численность учителей в возрасте 45-49: Район	16700	16717	0	16702	=AVG	1	16703	=DEFAULT		0	0				
76	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A30	Раздел II. Кадровое обеспечение: численность учителей в возрасте 50-54: Район	16700	16718	0	16702	=AVG	1	16703	=DEFAULT		0	0				
77	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A31	Раздел II. Кадровое обеспечение: численность учителей в возрасте 55-59: Район	16700	16719	0	16702	=AVG	1	16703	=DEFAULT		0	0				
78	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A32	Раздел II. Кадровое обеспечение: численность учителей в возрасте 60-64: Район	16700	16720	0	16702	=AVG	1	16703	=DEFAULT		0	0				
79	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A33	Раздел II. Кадровое обеспечение: численность учителей в возрасте 65 и старше: Район	16700	16721	0	16702	=AVG	1	16703	=DEFAULT		0	0				
80	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A34	Раздел II. Кадровое обеспечение: средний возраст учителей: Школа	0	0	0	0		0	0		=SUMPRODUCT(R[-13]C:R[-4]C;R[-13]C[3]:R[-4]C[3])/P2_A03						
81	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A35	Раздел II. Кадровое обеспечение: средний возраст учителей: Группа СЭП	0	0	0	0		0	0		=SUMPRODUCT(R[-13]C:R[-4]C;R[-13]C[2]:R[-4]C[2])/P2_A65						
82	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A36	Раздел II. Кадровое обеспечение: средний возраст учителей: Район	0	0	0	0		0	0		=SUMPRODUCT(R[-13]C:R[-4]C;R[-13]C[1]:R[-4]C[1])/P2_A66						
83	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A37	Раздел II. Кадровое обеспечение: процент учителей моложе 35: Школа	0	0	0	0		0	0		=(P2_A04+P2_A05+P2_A06)/P2_A03						
84	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A38	Раздел II. Кадровое обеспечение: процент учителей моложе 35: Группа СЭП	0	0	0	0		0	0		=(P2_A14+P2_A15+P2_A16)/P2_A65						
85	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A39	Раздел II. Кадровое обеспечение: процент учителей моложе 35: Район	0	0	0	0		0	0		=(P2_A24+P2_A25+P2_A26)/P2_A66						
86	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A40	Раздел II. Кадровое обеспечение: процент учителей старше 55: Школа	0	0	0	0		0	0		=(P2_A11+P2_A12+P2_A13)/P2_A03						
87	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A41	Раздел II. Кадровое обеспечение: процент учителей старше 55: Группа СЭП	0	0	0	0		0	0		=(P2_A21+P2_A22+P2_A23)/P2_A65						
89	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A43	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем до 3 лет: Школа	16000	16025	0	0		0	0								
90	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A44	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 3 до 5 лет: Школа	16000	16026	0	0		0	0								
91	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A45	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 5 до 10 лет: Школа	16000	16027	0	0		0	0								
92	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A46	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 10 до 15 лет: Школа	16000	16028	0	0		0	0								
93	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A47	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 15 до 20 лет: Школа	16000	16029	0	0		0	0								
94	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A48	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем 20 и более лет: Школа	16000	16030	0	0		0	0								
95	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A49	Раздел II. Кадровое обеспечение: Кол-во учителей, без педстажа: Школа	16000	16031	0	0		0	0								
96	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A50	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем до 3 лет: Группа СЭП	16700	16722	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
97	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A51	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 3 до 5 лет: Группа СЭП	16700	16723	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
98	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A52	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 5 до 10 лет: Группа СЭП	16700	16724	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
99	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A53	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 10 до 15 лет: Группа СЭП	16700	16725	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
100	2020-07-16 02:26:57	2020-07-16 02:26:57	101	0	1	P2_A54	Раздел II. Кадровое обеспечение: Кол-во учителей, с педстажем от 15 до 20 лет: Группа СЭП	16700	16726	0	16702	=AVG	1	16703	=DEFAULT		1	16704	=DEFAULT			
\.


--
-- Data for Name: _dbo_yak_organization; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_organization (id_organization, in_date, up_date, id_own, id_flag, id_area, name_organization, id_municipality, id_educationtype, id_settlementtype, id_transportaccess, id_clusterses, valueses, addressfact, directorfio, telephonecontact, email, site, descript_organization) FROM stdin;
1	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ АСОШ им. Слепцова А.Е.	1											
2	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Белогорская гимназия им. Н.Н. Ефимова	1											
3	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБУОО Белогорская СОШ им. В.П. Ефимова	1											
4	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Майорская СОШ	1											
5	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Мугурдахская СОШ им. В.Н. Дохунаева	1											
6	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Уолбутская СОШ им. С.Ф. Маркова	1											
7	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Урасалахская СОШ	1											
8	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Алданский лицей	2											
9	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Гимназия г. Алдан	2											
10	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Гимназия п. Н.Куранах	2											
11	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 1 г. Алдан	2											
12	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 2 г. Алдан	2											
13	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 20 с. Хатыстыр	2											
14	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 23 г. Томмот	2											
15	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 36 г. Томмот	2											
16	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 4 п. Нижний Куранах	2											
17	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 5	2											
18	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 6 г. Томмот	2											
19	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 8 г. Томмот	2											
20	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ № 9 г. Алдан	2											
21	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ СОШ УИОП г. Алдан	2											
22	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 10 .п. Лебединый	2											
23	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 13	2											
24	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 34 с. Якокит	2											
25	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 37 .с.Угоян	2											
26	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 7 .с. Кутана	2											
27	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 11 .с. Чагда	2											
28	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 25 .с. Б.Нимныр	2											
29	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКООУТСШИ г. Томмот	2											
30	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ ВОШ г. Алдан	2											
31	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 38 .р/о Угут	2											
32	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ СОШ № 40 р/о Амма	2											
33	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ЧСОШ им. А.Г.Чикачева	3											
34	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МОУ ОСОШ	3											
35	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МОУ РУООШ	3											
36	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МОУ БООШ	3											
37	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Абагинская СОШ	4											
38	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Алтанская СОШ	4											
39	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Амгино-Нахаринская СОШ	4											
40	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Амгинская СОШ №1 им. В.Г. Короленко	4											
41	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Амгинская СОШ №2	4											
42	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Амгинский лицей имени академика Л.В. Киренского	4											
43	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Бетюнская СОШ	4											
44	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Болугурская СОШ	4											
45	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Майская СОШ им.Е.Л.Чистякова	4											
46	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Мэндигинская СОШ им. П.И.Караканова	4											
47	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Сатагайская СОШ	4											
48	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Соморсунская СОШ	4											
49	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Сулгачинская СОШ	4											
50	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Чакырская СОШ	4											
51	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Чапчылганская СОШ	4											
52	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Эмисская СОШим.В.М.Новикова-Кюннюк Урастырова МРАмгинский улус(район)	4											
53	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Сэргэ-Бэсская ООШ	4											
54	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ АУГ	5											
55	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Саскылахская СОШ	5											
56	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Юрюнг-Хаинская СОШ	5											
57	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Арктическая гимназия	6											
58	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ БОРОГОНСКАЯ СОШ	6											
59	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Быковская СОШ	6											
60	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Кюсюрская СОШ	6											
61	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Таймылырская СОШ	6											
62	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ТСОШ №1	6											
63	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ТСОШ №2 МО Булунский улус (район)	6											
64	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Хара-УлахскаяСОШ	6											
65	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Балаганнахская ООШ	7											
66	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ВВСОШ №2 им. М.Т. Егорова	7											
67	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ВВСОШ №4	7											
68	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ВВСОШ им. Ю.Н. Прокопьева	7											
69	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Верхневилюйская СОШ им. И. Барахова	7											
70	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Дюллюкинская СОШ	7											
71	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Кэнтикская СОШ	7											
72	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Магасская СОШ	7											
73	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Оргетская СОШ им. Т.И. Петрова	7											
74	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Оросунская СОШ	7											
75	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Сургулукская СОШ имени братьев Боескоровых	7											
76	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Тамалаканская СОШ	7											
77	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Тобуинская СОШ	7											
78	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Харбалахская СОШ	7											
79	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Хоринская СОШ им. Г.Н. Чиряева	7											
80	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ-Намская СОШ	7											
81	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Ботулинская СОШ	7											
82	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Кырыкыйская ООШ им. С.Е. Дадаскинова	7											
83	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Мэйикская ООШ	7											
84	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Онхойская ООШ им. С.П. Федотова	7											
85	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Быраканская ООШ	7											
86	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ Хомустахская ООШ им. Н.А. Габышева	7											
87	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ АСАОШ	8											
88	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ЗВ(С)ОШ	8											
89	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ ЗСОШ	8											
90	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОО УСОШ	8											
91	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МКОУ НСОШ им.Текки Одулока	8											
92	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Арылахская СОШ МО Верхоянский район РС (Я)	9											
93	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Батагайская СОШ МО Верхоянский район РС (Я)	9											
94	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Боронукская СОШ МО Верхоянский район РС (Я)	9											
95	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Борулахская СОШ МО Верхоянский район РС (Я)	9											
96	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Дулгалахская СОШ им.И.И.Котельникова МО Верхоянский район РС (Я)	9											
97	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Сартанская СОШ МО Верхоянский район РС (Я)	9											
98	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Суордахская СОШ МО Верхоянский район РС (Я)	9											
99	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Табалахская СОШ МО Верхоянский район РС (Я)	9											
100	2020-06-22 04:26:59	2020-06-22 04:26:59	0	0	1	МБОУ  Эгинская СОШ МО Верхоянский район РС (Я)	9											
\.


--
-- Data for Name: _dbo_yak_s1; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s1 (id_s1, statfunction, id_municipality, id_clusterses, yearset, d01, d02, d03, d04, d05, d06, d07, d08, d09, d10, d11, d12, d13, d14, d15, summaryindex) FROM stdin;
1	AVG	32	0	2017	1.0	0.984903381642512	0.163195620804316	0.887037037037037	0.165387806210816	0.967218771566598	0.642970596231466	1.0	0.752993027271874	0.202534751573213	0.996153846153846	0.3902089636963	0.024465811965812	0.0036231884057971	0.0131728778467909	0.573639160016226
2	AVG	32	0	2018	1.0	0.973879723879724	0.248911175047539	0.778808864265928	0.0983621334036846	1.0	0.764997187156278	1.0	0.80673047626608	0.185661510659963	0.998857142857143	0.338309351467246	0.0525251872310696	0.021274742865652	0.0112584175084175	0.571734958702918
3	AVG	32	0	2019	0.987603305785124	0.952409481487022	0.160029540176599	0.926293005240374	0.125860104807473	0.956200941915228	0.636148177219606	0.997100737100737	0.760879982486244	0.19215809609358	0.95223952125565	0.341941166739079	0.0651021700376539	0.00748106060606061	0.0163825757575758	0.583418933417278
4	AVG	32		2017	1.0	0.777777777777778	0.0	0.666666666666667	0.0	0.666666666666667	0.222222222222222							0.0	0.0	
5	AVG	32		2018																
6	AVG	32		2019	0.727272727272727	0.545454545454545	0.0	1.0	0.0	0.7	0.2							0.0	0.0	
7	AVG	32	1	2017	1.0	1.0	0.314378478664193	0.971693121693122	0.355447152737793	0.984126984126984	0.621712018140589	1.0	0.809738756613756	0.233134920634921	1.0	0.452678571428571	0.062962962962963	0.0119047619047619	0.0279761904761905	0.722073980361696
8	AVG	32	1	2018	1.0	0.996138996138996	0.448984698984699	0.933673469387755	0.176757369614512	1.0	0.905194805194805	1.0	0.824604497669513	0.258290806201023	0.995238095238095	0.405100893258788	0.0930492709904475	0.0268201875344732	0.0353835978835979	0.699143766978431
9	AVG	32	1	2019	1.0	0.966952165481577	0.239004405180876	0.963203463203463	0.187538651824366	0.989010989010989	0.795604395604396	0.996138996138996	0.779896922442328	0.227966528081735	0.96000228338938	0.420458133849297	0.112917509346081	0.0139880952380952	0.0514880952380953	0.680723717099144
10	AVG	32	2	2017	1.0	0.984375	0.0855203823953824	0.925	0.0394736842105264	0.982142857142857	0.716600529100529	1.0	0.771964399237126	0.185644910644911	1.0	0.314537925735265	0.00303030303030303	0.0	0.0133928571428571	0.586643302079403
11	AVG	32	2	2018	1.0	0.991071428571429	0.22914411976912	0.672587719298246	0.0789473684210526	1.0	0.628363476800977	1.0	0.789285714285714	0.154734848484848	1.0	0.324101731601732	0.0643722943722944	0.00378787878787879	0.0	0.596344587008159
12	AVG	32	2	2019	1.0	0.986111111111111	0.180952380952381	0.836734693877551	0.118367346938776	0.979591836734694	0.519982993197279	0.995454545454545	0.744223048456919	0.235017804775869	0.937890134059489	0.322155599776567	0.0260508308895406	0.00833333333333334	0.0	0.597443356269445
13	AVG	32	3	2017	1.0	1.0	0.124098124098124	0.79047619047619	0.142857142857143	0.976190476190476	0.64018759018759	1.0	0.691975308641975	0.202777777777778	0.988888888888889	0.441049382716049	0.025	0.0	0.0	0.594624209403992
14	AVG	32	3	2018	1.0	0.931972789115646	0.0714285714285714	0.720238095238095	0.0	1.0	0.780952380952381	1.0	0.814197530864198	0.171604938271605	1.0	0.309567901234568	0.0123456790123457	0.0357142857142857	0.0	0.547070732143869
15	AVG	32	3	2019	1.0	0.958333333333333	0.0666666666666667	1.0	0.0625	0.933333333333333	0.658333333333333	1.0	0.765061327561327	0.107251082251082	0.963383838383838	0.297970779220779	0.0720779220779221	0.0	0.0	0.603403134605824
16	MIN	32	0	2017	1.0	0.777777777777778	0.0	0.4	0.0	0.666666666666667	0.222222222222222	1.0	0.5	0.0	0.9	0.0	0.0	0.0	0.0	0.370370388031006
17	MIN	32	0	2018	1.0	0.666666666666667	0.0	0.0	0.0	1.0	0.0	1.0	0.333333333333333	0.0	0.971428571428571	0.0	0.0	0.0	0.0	0.388888915379842
18	MIN	32	0	2019	0.727272727272727	0.545454545454545	0.0	0.5	0.0	0.6	0.2	0.954545454545455	0.5	0.0	0.774193548387097	0.0	0.0	0.0	0.0	0.352525260713365
19	MIN	32		2017	1.0	0.777777777777778	0.0	0.666666666666667	0.0	0.666666666666667	0.222222222222222							0.0	0.0	
20	MIN	32		2018																
21	MIN	32		2019	0.727272727272727	0.545454545454545	0.0	1.0	0.0	0.7	0.2							0.0	0.0	
22	MIN	32	1	2017	1.0	1.0	0.0	0.851851851851852	0.0	0.888888888888889	0.333333333333333	1.0	0.571428571428571	0.0833333333333333	1.0	0.416666666666667	0.0	0.0	0.0	0.599319712320964
23	MIN	32	1	2018	1.0	0.972972972972973	0.0833333333333333	0.75	0.0	1.0	0.727272727272727	1.0	0.615384615384615	0.0769230769230769	0.971428571428571	0.157894736842105	0.0	0.0	0.0	0.564791997273763
24	MIN	32	1	2019	1.0	0.875	0.0	0.875	0.0	0.923076923076923	0.5	0.972972972972973	0.588235294117647	0.0	0.838709677419355	0.129032258064516	0.0	0.0	0.0	0.539539400736491
25	MIN	32	2	2017	1.0	0.875	0.0	0.6	0.0	0.857142857142857	0.428571428571429	1.0	0.5	0.0	1.0	0.0	0.0	0.0	0.0	0.481666660308838
26	MIN	32	2	2018	1.0	0.928571428571429	0.0	0.0	0.0	1.0	0.0	1.0	0.333333333333333	0.0	1.0	0.0	0.0	0.0	0.0	0.472222232818604
27	MIN	32	2	2019	1.0	0.888888888888889	0.0	0.5	0.0	0.857142857142857	0.285714285714286	0.954545454545455	0.5	0.0	0.774193548387097	0.0	0.0	0.0	0.0	0.465656566619873
28	MIN	32	3	2017	1.0	1.0	0.0	0.4	0.0	0.833333333333333	0.333333333333333	1.0	0.5	0.0	0.9	0.0	0.0	0.0	0.0	0.444444457689921
29	MIN	32	3	2018	1.0	0.666666666666667	0.0	0.5	0.0	1.0	0.5	1.0	0.333333333333333	0.0	1.0	0.0	0.0	0.0	0.0	0.388888915379842
30	MIN	32	3	2019	1.0	0.75	0.0	1.0	0.0	0.6	0.2	1.0	0.555555555555556	0.0	0.818181818181818	0.0	0.0	0.0	0.0	0.407407402992249
31	MAX	32	0	2017	1.0	1.0	0.7	1.0	1.0	1.0	1.0	1.0	1.0	0.666666666666667	1.0	1.0	0.1875	0.05	0.107142857142857	0.820753924051921
32	MAX	32	0	2018	1.0	1.0	0.888888888888889	1.0	0.631578947368421	1.0	1.0	1.0	1.0	1.0	1.0	1.0	0.3	0.25	0.111111111111111	0.818025843302409
33	MAX	32	0	2019	1.0	1.0	0.5	1.0	0.458333333333333	1.0	1.0	1.0	1.0	0.666666666666667	1.0	0.722222222222222	0.444444444444444	0.0666666666666667	0.266666666666667	0.919644991556803
34	MAX	32		2017	1.0	0.777777777777778	0.0	0.666666666666667	0.0	0.666666666666667	0.222222222222222							0.0	0.0	
35	MAX	32		2018																
36	MAX	32		2019	0.727272727272727	0.545454545454545	0.0	1.0	0.0	0.7	0.2							0.0	0.0	
37	MAX	32	1	2017	1.0	1.0	0.7	1.0	0.758620689655172	1.0	0.857142857142857	1.0	0.933333333333333	0.375	1.0	0.5	0.1875	0.05	0.0833333333333333	0.899368731180827
38	MAX	32	1	2018	1.0	1.0	0.888888888888889	1.0	0.4	1.0	1.0	1.0	1.0	0.5	1.0	0.85	0.3	0.125	0.111111111111111	0.903422609965007
39	MAX	32	1	2019	1.0	1.0	0.466666666666667	1.0	0.458333333333333	1.0	1.0	1.0	0.9	0.444444444444444	1.0	0.722222222222222	0.444444444444444	0.0666666666666667	0.266666666666667	0.952895991007487
40	MAX	32	2	2017	1.0	1.0	0.285714285714286	1.0	0.315789473684211	1.0	1.0	1.0	1.0	0.6	1.0	0.6	0.0333333333333333	0.0	0.107142857142857	0.771582412719727
41	MAX	32	2	2018	1.0	1.0	0.545454545454545	1.0	0.631578947368421	1.0	0.857142857142857	1.0	1.0	0.454545454545455	1.0	0.8	0.2	0.0303030303030303	0.0	0.843098386128743
42	MAX	32	2	2019	1.0	1.0	0.5	1.0	0.428571428571429	1.0	0.6875	1.0	1.0	0.666666666666667	1.0	0.666666666666667	0.166666666666667	0.0666666666666667	0.0	0.708602650960286
43	MAX	32	3	2017	1.0	1.0	0.2	1.0	1.0	1.0	0.909090909090909	1.0	1.0	0.666666666666667	1.0	1.0	0.125	0.0	0.0	0.777777751286825
44	MAX	32	3	2018	1.0	1.0	0.25	1.0	0.0	1.0	1.0	1.0	1.0	1.0	1.0	1.0	0.111111111111111	0.25	0.0	0.666666666666667
45	MAX	32	3	2019	1.0	1.0	0.2	1.0	0.25	1.0	1.0	1.0	1.0	0.333333333333333	1.0	0.571428571428571	0.285714285714286	0.0	0.0	0.833333253860474
\.


--
-- Data for Name: _dbo_yak_s2; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s2 (id_s2, statfunction, id_municipality, id_clusterses, yearset, p01, p02, p03, p04, p05, p06, p07, p08, p09, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38) FROM stdin;
1	AVG	32	0	2019	55.3703703703704	3.42592592592593	22.2370370370370	30.1481481481481	22.9259259259259	18.4814814814815	1.444444444444440	2.51851851851852	3.00000000000000	2.18518518518519	2.55555555555556	1.92592592592593	3.00000000000000	3.33333333333333	2.00000000000000	0.962962962962963	2.37037037037037	1.70370370370370	2.92592592592593	2.11111111111111	2.11111111111111	11.33333333333330	0.370370370370370	0.740740740740741	0.925925925925926	0.1851851851851850	0.037037037037037	0.111111111111111	11.00000000000000	5.00000000000000	20.3333333333333	20.1851851851852	2.48148148148148	2.40740740740741	0.0	2.07407407407407	1.481481481481480	1.185185185185190
2	AVG	32	1	2019	79.2857142857143	5.71428571428571	29.5142857142857	40.8571428571429	29.4285714285714	23.8571428571429	0.857142857142857	3.14285714285714	4.42857142857143	2.71428571428571	4.28571428571429	2.00000000000000	4.85714285714286	3.28571428571429	2.71428571428571	1.142857142857140	2.28571428571429	1.85714285714286	3.42857142857143	3.14285714285714	3.00000000000000	15.14285714285710	0.571428571428571	0.857142857142857	1.428571428571430	0.5714285714285710	0.142857142857143	0.000000000000000	17.00000000000000	4.85714285714286	27.5714285714286	27.5714285714286	1.71428571428571	1.71428571428571	0.0	4.14285714285714	3.571428571428570	3.142857142857140
3	AVG	32	2	2019	52.2727272727273	2.81818181818182	22.3363636363636	29.5454545454545	23.0909090909091	19.0000000000000	2.090909090909090	2.81818181818182	2.81818181818182	2.45454545454545	2.00000000000000	1.90909090909091	3.00000000000000	3.90909090909091	1.18181818181818	0.909090909090909	2.90909090909091	1.90909090909091	3.18181818181818	1.81818181818182	1.81818181818182	11.00000000000000	0.454545454545455	0.727272727272727	0.727272727272727	0.0909090909090909	0.000000000000000	0.272727272727273	10.36363636363640	5.36363636363636	20.4545454545455	20.3636363636364	2.54545454545455	2.45454545454545	0.0	1.27272727272727	0.636363636363636	0.272727272727273
4	AVG	32	3	2019	40.5555555555556	2.38888888888889	16.4555555555556	22.5555555555556	17.6666666666667	13.6666666666667	1.111111111111110	1.66666666666667	2.11111111111111	1.44444444444444	1.88888888888889	1.88888888888889	1.55555555555556	2.66666666666667	2.44444444444444	0.888888888888889	1.77777777777778	1.33333333333333	2.22222222222222	1.66666666666667	1.77777777777778	8.77777777777778	0.111111111111111	0.666666666666667	0.777777777777778	0.0000000000000000	0.000000000000000	0.000000000000000	7.11111111111111	4.66666666666667	14.5555555555556	14.2222222222222	3.00000000000000	2.88888888888889	0.0	1.44444444444444	0.888888888888889	0.777777777777778
\.


--
-- Data for Name: _dbo_yak_s3; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s3 (id_s3, statfunction, id_municipality, id_clusterses, yearset, s01, s02, s03, s04, s05, s06, s07, s08, s09, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25) FROM stdin;
1	AVG	32	0	2019	181.1851851851850	89.9629629629630	179.8148148148150	72.1481481481482	84.2592592592593	23.40740740740740	7.25925925925926	2.296296296296300	3.88888888888889	1.074074074074070	1.370370370370370	0.629629629629630	0.703703703703704	0.037037037037037	108.4074074074070	54.4074074074074	4.74074074074074	5.55555555555556	13.29629629629630	0.632222222222222	0.279259259259259	0.409629629629630	4.25925925925926	5.14444444444444	0.412592592592593
2	AVG	32	1	2019	334.8571428571430	168.2857142857140	332.8571428571430	129.1428571428570	154.5714285714290	49.14285714285710	12.28571428571430	4.428571428571430	6.00000000000000	1.857142857142860	2.000000000000000	1.285714285714290	0.714285714285714	0.000000000000000	204.4285714285710	119.7142857142860	18.28571428571430	21.42857142857140	29.14285714285710	0.915714285714286	0.597142857142857	0.351428571428571	4.28571428571429	4.60000000000000	0.504285714285714
3	AVG	32	2	2019	167.1818181818180	82.9090909090909	166.7272727272730	70.7272727272727	76.5454545454545	19.45454545454550	7.45454545454545	2.090909090909090	4.36363636363636	1.000000000000000	0.454545454545455	0.000000000000000	0.454545454545455	0.000000000000000	96.4545454545455	46.5454545454545	0.00000000000000	0.00000000000000	10.45454545454550	0.601818181818182	0.193636363636364	0.500000000000000	4.54545454545455	5.54545454545455	0.445454545454545
4	AVG	32	3	2019	78.7777777777778	37.6666666666667	76.7777777777778	29.5555555555556	39.0000000000000	8.22222222222222	3.11111111111111	0.888888888888889	1.66666666666667	0.555555555555556	2.000000000000000	0.888888888888889	1.000000000000000	0.111111111111111	48.3333333333333	13.2222222222222	0.00000000000000	0.00000000000000	4.44444444444444	0.448888888888889	0.136666666666667	0.344444444444444	3.88888888888889	5.07777777777778	0.301111111111111
\.


--
-- Data for Name: _dbo_yak_s4; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s4 (id_s4, statfunction, id_municipality, id_clusterses, yearset, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60) FROM stdin;
2	AVG	32	1	2019	198.2857142857140	143.4285714285710	54.8571428571429	139.2857142857140	0.0	23.57142857142860	29.7142857142857	27.57142857142860	3.428571428571430	30.5714285714286	26.42857142857140	10.14285714285710	15.42857142857140	19.00000000000000	6.14285714285714	2.857142857142860	13.85714285714290	4.00000000000000	20.85714285714290	11.14285714285710	6.28571428571429	11.57142857142860	6.57142857142857	0.285714285714286	1.4285714285714300	1.142857142857140	3.28571428571429	6.00000000000000	22.28571428571430	0.0	22.28571428571430	27.85714285714290	12.85714285714290	4.14285714285714	26.57142857142860	19.57142857142860	4.85714285714286	10.00000000000000	20.00000000000000	9.14285714285714	14.57142857142860	10.57142857142860	7.85714285714286	12.57142857142860	15.28571428571430	6.14285714285714	8.42857142857143	6.85714285714286	2.285714285714290	6.142857142857140	11.28571428571430	3.28571428571429	6.14285714285714	10.14285714285710	23.285714285714300	20.85714285714290	27.42857142857140	7.71428571428571	13.28571428571430	18.14285714285710
3	AVG	32	2	2019	82.2727272727273	63.1818181818182	19.0909090909091	61.4545454545455	0.0	7.63636363636364	12.6363636363636	7.18181818181818	0.909090909090909	13.5454545454545	10.63636363636360	4.54545454545455	5.81818181818182	8.45454545454546	2.63636363636364	2.363636363636360	1.54545454545455	1.45454545454545	11.18181818181820	2.00000000000000	1.27272727272727	3.54545454545455	2.00000000000000	0.272727272727273	0.0909090909090909	0.363636363636364	2.00000000000000	2.27272727272727	5.72727272727273	0.0	6.18181818181818	8.36363636363636	5.27272727272727	1.54545454545455	6.00000000000000	5.54545454545455	1.09090909090909	2.90909090909091	5.54545454545455	2.45454545454545	2.09090909090909	2.63636363636364	3.54545454545455	5.18181818181818	4.18181818181818	1.63636363636364	2.00000000000000	1.09090909090909	0.727272727272727	0.818181818181818	4.18181818181818	1.09090909090909	1.54545454545455	1.90909090909091	4.454545454545450	8.00000000000000	27.36363636363640	7.54545454545455	4.72727272727273	8.81818181818182
4	AVG	32	3	2019	50.8888888888889	38.5555555555556	12.3333333333333	37.6666666666667	0.0	5.88888888888889	10.8888888888889	12.00000000000000	1.444444444444440	10.4444444444444	8.77777777777778	3.77777777777778	6.33333333333333	4.33333333333333	2.77777777777778	0.444444444444444	2.66666666666667	2.44444444444444	7.44444444444444	1.77777777777778	1.11111111111111	2.88888888888889	1.88888888888889	0.222222222222222	0.2222222222222220	0.888888888888889	1.22222222222222	1.11111111111111	3.77777777777778	0.0	7.88888888888889	8.33333333333333	5.22222222222222	1.44444444444444	7.33333333333333	7.33333333333333	2.55555555555556	2.77777777777778	6.77777777777778	3.88888888888889	4.77777777777778	3.00000000000000	3.33333333333333	3.66666666666667	3.33333333333333	1.77777777777778	2.22222222222222	1.44444444444444	1.000000000000000	0.666666666666667	4.00000000000000	1.11111111111111	1.77777777777778	2.44444444444444	0.444444444444444	1.33333333333333	2.44444444444444	0.00000000000000	0.00000000000000	2.88888888888889
1	AVG	32	0	2019	101.8888888888890	75.7777777777778	26.1111111111111	73.7037037037037	0.0	11.18518518518520	16.4814814814815	14.07407407407410	1.740740740740740	16.9259259259259	14.11111111111110	5.74074074074074	8.48148148148148	9.81481481481481	3.59259259259259	1.851851851851850	5.11111111111111	2.44444444444444	12.44444444444440	4.29629629629630	2.51851851851852	5.40740740740741	3.14814814814815	0.259259259259259	0.4814814814814810	0.740740740740741	2.07407407407407	2.85185185185185	9.37037037037037	0.0	10.92592592592590	13.40740740740740	7.22222222222222	2.18518518518519	11.77777777777780	9.77777777777778	2.55555555555556	4.70370370370370	9.70370370370370	4.66666666666667	6.22222222222222	4.81481481481481	4.59259259259259	6.59259259259259	6.77777777777778	2.85185185185185	3.74074074074074	2.70370370370370	1.222222222222220	2.148148148148150	5.96296296296296	1.66666666666667	2.81481481481481	4.22222222222222	8.000000000000000	9.11111111111111	19.07407407407410	5.07407407407407	5.37037037037037	9.25925925925926
\.


--
-- Data for Name: _dbo_yak_s5; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s5 (id_s5, statfunction, id_municipality, id_clusterses, yearset, m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30) FROM stdin;
1	AVG	32	0	2019	10.7407407407407	4.66666666666667	0.481481481481481	2560.03703703704	1380.666666666670	415.037037037037	0.666666666666667	0.666666666666667	0.962962962962963	1.29629629629630	0.925925925925926	0.444444444444444	1.0	0.407407407407407	0.592592592592593	0.777777777777778	0.814814814814815	0.740740740740741	1.0	0.777777777777778	0.703703703703704	0.444444444444444	0.888888888888889	1.0	0.592592592592593	0.592592592592593	1.0	0.777777777777778	0.962962962962963	1.0
2	AVG	32	1	2019	12.4285714285714	5.42857142857143	0.571428571428571	4146.85714285714	2082.857142857140	659.428571428571	1.000000000000000	1.000000000000000	0.857142857142857	1.42857142857143	0.857142857142857	0.571428571428571	1.0	0.571428571428571	0.714285714285714	1.000000000000000	1.000000000000000	0.714285714285714	1.0	1.000000000000000	0.571428571428571	0.571428571428571	1.000000000000000	1.0	0.285714285714286	0.571428571428571	1.0	0.857142857142857	1.000000000000000	1.0
3	AVG	32	2	2019	11.0909090909091	4.54545454545455	0.454545454545455	2183.09090909091	1346.909090909090	323.454545454545	0.545454545454545	0.545454545454545	1.000000000000000	1.45454545454545	0.909090909090909	0.454545454545455	1.0	0.363636363636364	0.454545454545455	0.727272727272727	0.727272727272727	0.818181818181818	1.0	0.727272727272727	0.818181818181818	0.454545454545455	0.818181818181818	1.0	0.727272727272727	0.727272727272727	1.0	0.727272727272727	0.909090909090909	1.0
4	AVG	32	3	2019	9.0000000000000	4.22222222222222	0.444444444444444	1786.55555555556	875.777777777778	336.888888888889	0.555555555555556	0.555555555555556	1.000000000000000	1.00000000000000	1.000000000000000	0.333333333333333	1.0	0.333333333333333	0.666666666666667	0.666666666666667	0.777777777777778	0.666666666666667	1.0	0.666666666666667	0.666666666666667	0.333333333333333	0.888888888888889	1.0	0.666666666666667	0.444444444444444	1.0	0.777777777777778	1.000000000000000	1.0
\.


--
-- Data for Name: _dbo_yak_s6; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s6 (id_s6, statfunction, id_municipality, id_clusterses, yearset, f01, f02, f03, f04, f05, f06, f07, f08, f09, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30) FROM stdin;
1	AVG	32	0	2019	603982.148148148	511744.9629	32893.0259	3008.4740	21193.8259	17484.7259	597.7148	391.0666	372.1666	53498.5407	43633.6000	9306.6185	17.4222	3789.8481	53486.5925	43627.3296	9303.6185	17.4222	5418.3629	52098.5037	54422.6555	0.0000	38222.7222	16199.9333	1655.4259	114.8481	627.9185	912.6592	953.7592	0.0000
2	AVG	32	1	2019	677737.714285714	757906.5714	48656.3857	5003.5142	30862.4714	25378.0857	431.3428	360.8285	354.4714	77381.6000	64689.8000	11537.0714	19.5142	1135.2142	77381.6000	64689.8000	11537.0714	19.5142	1135.2142	75247.5857	78635.1142	0.0000	54960.5571	23674.5571	2710.4571	0.0000	1171.2571	1539.2000	1597.9428	0.0000
3	AVG	32	2	2019	937032.181818182	675614.3636	31944.7181	2938.2363	20879.1909	17186.0727	380.8636	91.8545	49.5090	50772.9636	42001.6272	8500.5909	30.3454	4227.7454	50743.6363	41986.2363	8493.2272	30.3454	8225.0090	49167.0818	51493.5181	0.0000	36246.8272	15246.6909	1787.1454	281.9000	502.8545	1002.3909	913.4454	0.0000
4	AVG	32	3	2019	139555.555555556	120001.1111	21791.6777	1542.6222	14058.3222	11710.4666	992.1555	780.2888	780.2888	38254.0888	29251.1888	8556.9666	0.0000	5319.3555	38254.0888	29251.1888	8556.9666	0.0000	5319.3555	37676.5111	39170.8000	0.0000	27619.3888	11551.4111	673.8555	0.0000	358.1777	315.6777	502.0000	0.0000
\.


--
-- Data for Name: _dbo_yak_s7; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_s7 (id_s7, statfunction, id_municipality, id_clusterses, yearset, o01, o02, o03, o04) FROM stdin;
1	AVG	32	0	2019	18.70370370370370	37.0370370370370	8.37037037037037	83.0370370370370
2	AVG	32	1	2019	40.42857142857140	80.7142857142857	12.28571428571430	174.1428571428570
3	AVG	32	2	2019	9.36363636363636	29.2727272727273	7.00000000000000	77.1818181818182
4	AVG	32	3	2019	13.22222222222220	12.5555555555556	7.00000000000000	19.3333333333333
\.


--
-- Data for Name: _dbo_yak_section1; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section1 (id_section1, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, d01, d02, d03, d04, d05, d06, d07, d08, d09, d10, d11, d12, d13, d14, d15, id_municipality, id_clusterses, summaryindex) FROM stdin;
1	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	1	2017	1.0	1.0	0.125	1.0	0.0	1.0	0.166666666666667	1.0	1.0	0.111111111111111	1.0	0.111111111111111	0.0	0.0	0.0	1		
2	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	2	2017	1.0	1.0	0.08	1.0	0.0	1.0	0.625	1.0	0.789473684210526	0.157894736842105	1.0	0.789473684210526	0.157894736842105	0.0	0.0	1		
3	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	3	2017	1.0	1.0	0.0			1.0	0.0	0.888888888888889	0.111111111111111	0.0	0.666666666666667	0.0	0.0	0.0	0.0	1		
4	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	4	2017	1.0	1.0	0.2	1.0	0.0	1.0	1.0	1.0	0.857142857142857	0.285714285714286	1.0	0.428571428571429	0.0	0.0	0.0	1		
5	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	5	2017	1.0	1.0	0.0	1.0	0.0	1.0	0.428571428571429	1.0	0.666666666666667	0.0	1.0	0.0	0.0	0.0	0.0	1		
6	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	6	2017	1.0	1.0	1.0	1.0	0.0	1.0	1.0	1.0	1.0	0.75	1.0	0.5	0.0	0.0	0.0	1		
7	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	7	2017	1.0	0.888888888888889	0.0	0.0	0.0	1.0	0.111111111111111	1.0	1.0	0.125	1.0	0.375	0.0	0.0	0.0	1		
8	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	8	2017	1.0	1.0	0.304347826086957	0.875	0.0625	0.956521739130435	0.608695652173913	1.0	0.96969696969697	0.303030303030303	1.0	0.393939393939394	0.0303030303030303	0.0	0.0	2		
9	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	9	2017	1.0	1.0	0.294117647058824	1.0	0.181818181818182	1.0	0.882352941176471	1.0	0.931034482758621	0.241379310344828	1.0	0.758620689655172	0.0689655172413793	0.0	0.0588235294117647	2		
10	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	10	2017	1.0	1.0	0.352941176470588	0.928571428571429	0.357142857142857	1.0	1.0	1.0	0.8	0.28	1.0	0.68	0.16	0.0	0.0588235294117647	2		
11	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	11	2017	1.0	1.0	0.318181818181818	0.714285714285714	0.285714285714286	1.0	0.727272727272727	1.0	0.904109589041096	0.273972602739726	1.0	0.383561643835616	0.0821917808219178	0.0	0.0	2		
12	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	12	2017	1.0	0.956521739130435	0.173913043478261	0.818181818181818	0.0	0.956521739130435	0.695652173913043	1.0	0.571428571428571	0.2	1.0	0.371428571428571	0.0	0.0	0.0	2		
13	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	13	2017	1.0	1.0	0.0714285714285714	0.714285714285714	0.0	1.0	0.642857142857143	1.0	0.8	0.3	1.0	0.25	0.0	0.0714285714285714	0.0714285714285714	2		
14	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	14	2017	1.0	1.0	0.111111111111111	0.0	0.0	0.888888888888889	0.333333333333333	1.0	0.777777777777778	0.222222222222222	1.0	0.222222222222222	0.0	0.0	0.0	2		
15	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	15	2017	1.0	1.0	0.4	1.0	0.0	0.8	0.8	1.0	0.875	0.25	1.0	0.25	0.0	0.0	0.0	2		
16	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	16	2017	1.0	1.0	0.5	1.0	0.222222222222222	1.0	1.0	1.0	0.764705882352941	0.176470588235294	1.0	0.411764705882353	0.0882352941176471	0.0	0.0	2		
17	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	17	2017	1.0	1.0	0.384615384615385	1.0	0.222222222222222	1.0	0.846153846153846	1.0	0.6	0.15	1.0	0.25	0.05	0.0	0.0	2		
18	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	18	2017	1.0	1.0	0.444444444444444	0.8	0.2	1.0	0.777777777777778	1.0	0.846153846153846	0.384615384615385	1.0	0.692307692307692	0.0769230769230769	0.0	0.0	2		
19	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	19	2017	1.0	1.0	0.333333333333333	1.0	0.428571428571429	1.0	0.833333333333333	1.0	0.769230769230769	0.230769230769231	1.0	0.384615384615385	0.0384615384615385	0.0	0.0	2		
20	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	20	2017	1.0	0.857142857142857	0.285714285714286	0.8	0.0	1.0	0.714285714285714	1.0	0.666666666666667	0.125	1.0	0.375	0.0	0.0	0.0	2		
21	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	21	2017	1.0	1.0	0.181818181818182	0.571428571428571	0.0	1.0	0.727272727272727	1.0	0.882352941176471	0.235294117647059	1.0	0.5	0.0294117647058824	0.0	0.0	2		
22	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	22	2017	1.0	1.0	0.666666666666667	0.75	0.0	1.0	0.666666666666667	1.0	0.857142857142857	0.142857142857143	1.0	0.571428571428571	0.142857142857143	0.0	0.0	2		
23	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	23	2017	1.0	1.0	0.333333333333333	1.0	0.0	1.0	1.0	1.0	1.0	0.5	1.0	0.75	0.25	0.0	0.0	2		
24	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	24	2017								1.0	0.5	0.0	1.0	0.0	0.0			2		
25	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	25	2017	1.0	0.666666666666667	0.0	1.0	0.0	1.0	0.833333333333333	1.0	0.0	0.0	1.0	0.0	0.0	0.0	0.0	2		
26	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	26	2017	1.0	1.0	0.0	0.5	0.0	1.0	0.375	1.0	0.75	0.0	1.0	0.0	0.0	0.0	0.0	2		
27	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	27	2017																2		
28	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	28	2017	1.0	1.0	0.333333333333333			1.0	0.333333333333333	1.0	0.5	0.5	1.0	0.0	0.0	0.0	0.0	2		
29	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	29	2017								1.0	0.727272727272727	0.181818181818182	1.0	0.818181818181818	0.0909090909090909			2		
30	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	30	2017																2		
31	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	31	2017																2		
32	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	32	2017																2		
33	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	33	2017	1.0	1.0	0.0476190476190476	1.0	0.0	1.0	0.555555555555556	0.947368421052632	0.631578947368421	0.0526315789473684	1.0	0.210526315789474	0.0	0.0	0.0	3		
34	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	34	2017	1.0	1.0	0.0			1.0	0.333333333333333	1.0	0.333333333333333	0.333333333333333	1.0	1.0	0.0	0.0	0.0	3		
35	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	35	2017																3		
36	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	36	2017								1.0	0.5	0.0	1.0	0.5	0.0			3		
37	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	37	2017	1.0	0.9	0.1	1.0	0.333333333333333	1.0	0.6	1.0	0.833333333333333	0.222222222222222	1.0	0.388888888888889	0.0	0.1	0.0	4		
38	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	38	2017	1.0	1.0	0.428571428571429	1.0	0.25	1.0	0.857142857142857	1.0	0.833333333333333	0.666666666666667	1.0	0.5	0.166666666666667	0.0	0.0	4		
39	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	39	2017	1.0	1.0	0.2	1.0	0.666666666666667	1.0	1.0	1.0	0.7	0.0	1.0	0.4	0.0	0.0	0.0	4		
40	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	40	2017	1.0	0.978723404255319	0.148936170212766	0.62962962962963	0.0740740740740741	0.872340425531915	0.446808510638298	1.0	0.69047619047619	0.0714285714285714	1.0	0.238095238095238	0.0	0.0	0.0851063829787234	4		
41	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	41	2017	1.0	1.0	0.157894736842105	0.833333333333333	0.0	0.882352941176471	0.588235294117647	1.0	0.926829268292683	0.268292682926829	1.0	0.463414634146341	0.0	0.0	0.0526315789473684	4		
42	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	42	2017	1.0	1.0	0.392857142857143	0.956521739130435	0.391304347826087	0.964285714285714	0.892857142857143	1.0	0.8	0.2	1.0	0.571428571428571	0.171428571428571	0.0714285714285714	0.107142857142857	4		
88	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	88	2017																8		
43	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	43	2017	1.0	1.0	0.0	1.0	0.0	0.8	0.2	1.0	0.375	0.0625	0.9375	0.125	0.0	0.2	0.0	4		
44	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	44	2017	1.0	1.0	0.285714285714286	0.888888888888889	0.111111111111111	0.75	0.375	1.0	0.423076923076923	0.115384615384615	1.0	0.461538461538462	0.0	0.0	0.0	4		
45	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	45	2017	1.0	1.0	1.0	1.0	0.5	1.0	1.0	1.0	1.0	0.4	1.0	0.4	0.0	0.0	0.0	4		
46	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	46	2017	1.0	1.0	0.25	1.0	0.0	1.0	0.5	1.0	1.0	0.0	1.0	0.666666666666667	0.0	0.0	0.0	4		
47	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	47	2017	1.0	1.0	0.0	1.0	0.0	1.0	0.6	1.0	0.769230769230769	0.307692307692308	1.0	0.384615384615385	0.0769230769230769	0.0	0.0	4		
48	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	48	2017	0.928571428571429	0.857142857142857	0.0714285714285714	1.0	0.111111111111111	1.0	0.0	1.0	0.7	0.1	1.0	0.5	0.1	0.0	0.0	4		
49	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	49	2017	1.0	0.833333333333333	0.0	1.0	0.0	1.0	0.833333333333333	1.0	0.444444444444444	0.111111111111111	1.0	0.111111111111111	0.0	0.0	0.0	4		
50	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	50	2017	1.0	0.5	0.0			1.0	0.0	1.0	1.0	0.333333333333333	1.0	0.333333333333333	0.333333333333333	0.0	0.0	4		
51	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	51	2017	1.0	1.0	0.0	1.0	0.0	0.75	0.75	1.0	0.5	0.0	1.0	0.25	0.0	0.25	0.0	4		
52	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	52	2017	1.0	1.0	0.0	0.4	0.0	0.888888888888889	0.333333333333333	1.0	0.7	0.1	1.0	0.3	0.0	0.0	0.0	4		
53	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	53	2017								1.0	0.6	0.0	1.0	0.0	0.0			4		
54	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	54	2017	1.0	1.0	0.25	1.0	0.0	1.0	0.625	1.0	0.666666666666667	0.222222222222222	1.0	0.444444444444444	0.0	0.0	0.0	5		
55	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	55	2017	1.0	1.0	0.0	0.666666666666667	0.0	1.0	1.0	1.0	0.666666666666667	0.25	1.0	0.25	0.0	0.0	0.0	5		
56	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	56	2017	1.0	0.933333333333333	0.0	0.833333333333333	0.0	0.866666666666667	0.4	1.0	0.5	0.0	1.0	0.1	0.0	0.0	0.0	5		
57	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	57	2017	1.0	1.0	0.470588235294118	1.0	0.555555555555556	1.0	1.0	1.0	0.869565217391304	0.347826086956522	1.0	0.260869565217391	0.130434782608696	0.0	0.0	6		
58	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	58	2017	1.0	0.714285714285714	0.0	0.0	0.0	1.0	0.0	1.0	0.8	0.0	1.0	0.0	0.0	0.0	0.0	6		
59	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	59	2017	1.0	1.0	0.0	1.0	0.0	1.0	0.0	1.0	0.666666666666667	0.0	1.0	0.333333333333333	0.0	0.0	0.0	6		
60	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	60	2017	1.0	0.785714285714286	0.142857142857143	1.0	0.2	1.0	0.357142857142857	1.0	0.652173913043478	0.304347826086957	1.0	0.391304347826087	0.0	0.0	0.0	6		
61	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	61	2017	1.0	0.833333333333333	0.0	1.0	0.0	1.0	0.5	1.0	0.714285714285714	0.285714285714286	1.0	0.428571428571429	0.0	0.0	0.0	6		
62	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	62	2017	1.0	1.0	0.222222222222222	0.0	0.0	1.0	0.222222222222222	1.0	0.416666666666667	0.0	0.916666666666667	0.0833333333333333	0.0	0.0	0.111111111111111	6		
63	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	63	2017	1.0	1.0	0.0			1.0	1.0	1.0	1.0	0.5	1.0	0.0	0.0	0.0	0.0	6		
64	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	64	2017	1.0	1.0	0.0			1.0	0.4	1.0	0.75	0.125	1.0	0.25	0.0	0.0	0.0	6		
65	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	65	2017	0.9375	0.9375	0.0	0.666666666666667	0.0	0.9375	0.5625	1.0	0.0	0.0	1.0	0.0	0.0	0.0	0.0	7		
66	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	66	2017	0.961538461538462	0.692307692307692	0.0	0.166666666666667	0.0	0.923076923076923	0.269230769230769	0.833333333333333	0.111111111111111	0.0	0.611111111111111	0.0555555555555556	0.0	0.0	0.0	7		
67	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	67	2017	1.0	0.789473684210526	0.0526315789473684	0.666666666666667	0.0	0.823529411764706	0.176470588235294	1.0	0.5	0.0	0.909090909090909	0.0909090909090909	0.0	0.0	0.0526315789473684	7		
68	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	68	2017	1.0	1.0	0.0			0.666666666666667	0.0	1.0	0.75	0.0	1.0	0.0	0.0	0.0	0.0	7		
69	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	69	2017	1.0	0.914285714285714	0.0	0.875	0.0	0.885714285714286	0.285714285714286	0.96969696969697	0.393939393939394	0.0606060606060606	0.909090909090909	0.121212121212121	0.0	0.0	0.0	7		
70	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	70	2017	1.0	0.777777777777778	0.0	0.666666666666667	0.0	1.0	0.111111111111111	1.0	0.7	0.1	1.0	0.3	0.1	0.0	0.0	7		
71	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	71	2017	0.888888888888889	0.888888888888889	0.0	1.0	0.0	0.777777777777778	0.555555555555556	1.0	0.444444444444444	0.0	1.0	0.111111111111111	0.0	0.0	0.0	7		
72	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	72	2017	1.0	1.0	0.1	1.0	0.0	1.0	0.3	1.0	0.8	0.1	1.0	0.3	0.0	0.0	0.0	7		
73	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	73	2017	0.8	0.6	0.0	1.0	0.0	0.75	0.25	1.0	0.571428571428571	0.0	1.0	0.142857142857143	0.0	0.0	0.0	7		
74	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	74	2017	1.0	0.8	0.0	1.0	0.0	1.0	0.8	1.0	0.333333333333333	0.0	1.0	0.0	0.0	0.0	0.0	7		
75	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	75	2017	1.0	1.0	0.0	0.666666666666667	0.0	1.0	0.4	1.0	1.0	0.0	1.0	0.833333333333333	0.0	0.0	0.0	7		
76	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	76	2017	1.0	1.0	0.0	1.0	0.0	1.0	0.25	1.0	0.7	0.2	1.0	0.3	0.0	0.0	0.0	7		
77	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	77	2017	1.0	1.0	0.0	1.0	0.142857142857143	1.0	1.0	1.0	0.5	0.0	1.0	1.0	0.0	0.0	0.0	7		
78	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	78	2017	1.0	1.0	0.0	0.666666666666667	0.0	1.0	0.888888888888889	1.0	0.6	0.0	1.0	0.6	0.0	0.0	0.0	7		
79	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	79	2017	1.0	0.807692307692308	0.0769230769230769	0.727272727272727	0.0909090909090909	0.894736842105263	0.210526315789474	1.0	0.724137931034483	0.172413793103448	1.0	0.586206896551724	0.0344827586206897	0.0	0.0	7		
80	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	80	2017	1.0	1.0	0.0	1.0	0.0	0.888888888888889	0.555555555555556	1.0	0.545454545454545	0.0909090909090909	1.0	0.272727272727273	0.0	0.0	0.0	7		
81	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	81	2017								1.0	0.3	0.1	1.0	0.3	0.0			7		
82	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	82	2017								1.0	0.5	0.0	1.0	0.0	0.0			7		
83	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	83	2017								1.0	0.25	0.0	1.0	0.5	0.0			7		
84	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	84	2017								1.0	0.272727272727273	0.0	1.0	0.272727272727273	0.0			7		
85	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	85	2017								1.0	0.333333333333333	0.0	1.0	0.0	0.0			7		
86	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	86	2017																7		
87	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	87	2017								1.0	0.571428571428571	0.0	1.0	0.428571428571429	0.142857142857143			8		
89	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	89	2017	1.0	1.0	0.0	0.666666666666667	0.0	1.0	0.476190476190476	1.0	0.611111111111111	0.222222222222222	1.0	0.444444444444444	0.0	0.0	0.0	8		
90	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	90	2017								1.0	0.5	0.0	1.0	0.5	0.0			8		
91	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	91	2017	1.0	0.666666666666667	0.0	1.0	1.0	1.0	0.666666666666667	1.0	1.0	0.333333333333333	1.0	0.666666666666667	0.333333333333333	0.0	0.0	8		
92	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	92	2017	1.0	1.0	0.166666666666667	0.25	0.0	0.833333333333333	0.333333333333333	1.0	0.461538461538462	0.0769230769230769	1.0	0.230769230769231	0.0	0.0	0.0	9		
93	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	93	2017	1.0	1.0	0.12	1.0	0.5	0.95	0.55	1.0	0.661538461538462	0.2	1.0	0.323076923076923	0.0153846153846154	0.0	0.0	9		
94	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	94	2017	1.0	1.0	0.0	0.833333333333333	0.0	1.0	0.875	1.0	1.0	0.0	1.0	0.714285714285714	0.0	0.0	0.0	9		
95	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	95	2017	1.0	1.0	0.0	1.0	0.0	0.8	0.4	1.0	0.625	0.25	1.0	0.5	0.125	0.0	0.0	9		
96	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	96	2017	1.0	1.0	0.0	0.666666666666667	0.0	1.0	0.333333333333333	1.0	1.0	0.666666666666667	1.0	0.666666666666667	0.333333333333333	0.0	0.0	9		
97	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	97	2017	1.0	0.8	0.0	1.0	0.0	1.0	1.0	1.0	0.777777777777778	0.111111111111111	1.0	0.444444444444444	0.0	0.0	0.0	9		
98	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	98	2017	1.0	1.0	0.0	1.0	0.0	0.666666666666667	0.333333333333333	1.0	0.5	0.0	1.0	0.0	0.0	0.0	0.0	9		
99	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	99	2017	0.91304347826087	0.695652173913043	0.130434782608696	0.833333333333333	0.166666666666667	0.91304347826087	0.478260869565217	1.0	0.411764705882353	0.117647058823529	1.0	0.411764705882353	0.0588235294117647	0.0	0.0	9		
100	2020-06-22 06:06:13	2020-06-22 06:06:13	0	0	1	100	2017	1.0	0.75	0.0			1.0	0.25	1.0	0.3	0.1	1.0	0.2	0.0	0.0	0.0	9		
\.


--
-- Data for Name: _dbo_yak_section2; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section2 (id_section2, in_date, up_date, id_own, id_flag, id_area, yearset, p01, p03, p04, p05, p06, p07, p08, p09, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31, p32, p33, p34, p35, p36, p37, p38, id_organization, p02, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 03:24:56	2020-06-30 03:24:56	0	1	1																																										
1	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	108	42.7	59	44	37	3	8	7	3	4	3	5	5	3	3	4	1	5	5	3	23	3	1	2	1	0	0	21	13	43	43	1	1	0	2	2	1	461	6.0	32	1
2	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	66	32.7	40	33	28	1	2	4	6	6	1	6	5	2	0	2	2	3	4	5	17	0	1	2	1	0	0	23	0	28	28	5	5	0	2	1	1	462	6.0	32	1
3	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	110	49.5	61	48	41	1	5	10	3	5	3	10	3	5	3	4	5	6	5	5	22	1	1	2	1	1	0	27	7	44	44	4	4	0	11	11	9	463	6.0	32	1
4	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	31	17.8	20	18	15	0	3	0	1	2	2	3	5	0	2	0	1	2	1	1	12	1	0	1	0	0	1	14	2	17	17	1	1	0	2	2	2	464	1.0	32	2
5	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	26	11.9	12	11	7	0	0	7	0	0	0	0	0	2	2	0	0	6	1	0	4	0	0	1	0	0	0	5	2	11	11	0	0	0	6	6	6	465	4.0	32	1
6	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	89	38.5	52	42	34	1	8	4	3	3	4	11	6	1	1	1	5	5	3	1	27	0	1	1	0	0	0	20	9	37	37	5	5	0	0	0	0	459	6.5	32	2
7	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	43	21.7	29	26	22	0	0	3	3	3	1	3	2	7	4	0	1	3	5	2	15	0	1	1	0	0	0	13	6	22	20	4	4	0	5	5	5	453	1.5	32	3
8	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	116	53.1	72	55	45	3	3	10	6	6	3	5	13	3	3	5	2	10	6	2	28	2	3	2	1	0	1	24	12	49	49	6	6	0	5	2	0	458	7.0	32	2
9	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	51	21.8	29	23	18	1	3	7	2	0	2	3	2	0	3	2	3	7	1	0	10	0	1	1	0	0	0	9	6	22	22	1	1	0	0	0	0	460	4.0	32	2
10	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	122	32.0	51	29	20	1	5	0	4	7	0	4	5	3	0	3	2	2	4	4	14	0	1	1	1	0	0	18	5	29	29	0	0	0	3	2	2	449	8.0	32	1
11	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	48	19.4	31	27	20	1	6	3	1	4	2	3	3	4	0	2	4	5	0	2	14	0	1	1	0	0	0	6	15	22	22	5	5	0	2	2	2	467	3.0	32	3
12	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	36	17.0	22	18	14	0	1	5	1	2	3	2	4	0	0	1	0	4	1	3	9	0	0	1	0	0	0	9	5	16	16	2	2	0	0	0	0	469	2.0	32	3
13	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	51	19.8	30	21	16	0	0	3	1	4	6	3	3	1	0	2	2	0	2	3	12	0	1	1	0	0	0	11	5	19	19	1	1	0	3	1	1	451	5.0	32	1
14	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	72	18.0	33	20	18	0	2	0	2	4	1	6	2	3	0	1	1	2	1	1	14	0	1	1	0	0	0	14	2	19	19	1	1	0	2	2	2	454	5.0	32	1
15	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	36	19.2	19	17	16	0	3	3	1	0	2	2	3	3	0	1	3	2	2	0	9	0	0	0	0	0	0	9	2	15	15	2	2	0	1	0	0	450	2.0	32	2
16	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	42	17.4	21	17	14	2	1	1	3	1	2	1	3	2	1	2	2	3	1	0	8	1	0	1	0	0	0	8	1	16	16	1	1	0	0	0	0	452	3.1	32	3
17	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	42	18.0	20	18	13	6	0	1	2	3	0	4	1	1	0	7	0	2	1	0	6	2	1	1	0	0	0	8	0	16	15	2	2	0	3	3	1	457	3.0	32	2
18	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	60	20.3	35	21	17	2	2	1	4	2	1	1	4	3	1	2	2	1	1	5	10	0	1	1	0	0	1	12	5	18	18	3	3	0	0	0	0	468	2.0	32	2
19	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	45	18.1	28	22	18	4	1	3	2	1	3	2	5	1	0	6	1	0	2	5	8	0	1	1	0	0	0	11	3	20	20	2	1	0	1	0	0	466	2.9	32	3
20	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	52	16.7	25	17	14	0	5	0	0	1	2	0	4	5	0	1	2	2	0	0	12	0	2	1	0	0	0	5	4	12	11	4	4	0	2	0	0	471	2.0	32	3
21	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	52	16.1	24	17	13	4	3	2	0	2	3	2	1	0	0	5	3	1	2	2	4	0	1	0	0	0	0	4	5	16	16	1	1	0	0	0	0	455	2.0	32	2
22	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	19	15.7	17	12	8	1	1	1	0	3	2	1	1	2	0	1	1	0	4	1	5	0	1	0	0	0	0	2	5	9	9	3	3	0	0	0	0	456	1.0	32	3
23	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	52	10.0	17	10	6	0	0	1	2	1	1	0	1	1	3	0	0	2	2	1	5	0	0	1	0	0	0	6	2	8	8	2	2	0	2	0	0	473	5.0	32	3
24	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	28	12.1	13	10	7	2	0	2	1	1	1	2	1	0	0	3	1	1	0	2	3	0	0	0	0	0	0	4	1	6	6	4	4	0	1	1	0	475	1.0	32	3
25	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	33	15.5	20	17	14	2	2	3	3	1	2	1	2	1	0	2	1	4	3	4	3	0	0	0	0	0	0	5	11	14	14	3	2	0	2	0	0	470	1.5	32	2
26	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	29	12.2	16	12	11	2	1	0	3	2	2	0	1	1	0	2	1	1	0	2	6	0	0	1	0	0	0	3	5	10	10	2	2	0	1	0	0	472	1.0	32	2
27	2020-06-30 03:24:57	2020-06-30 03:24:57	0	0	1	2019	36	13.2	18	14	13	2	3	0	2	1	0	1	5	0	0	5	0	0	0	3	6	0	0	0	0	0	0	6	2	11	11	2	2	0	0	0	0	476	1.0	32	2
\.


--
-- Data for Name: _dbo_yak_section3; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section3 (id_section3, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, s01, s02, s03, s04, s05, s06, s07, s08, s09, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 05:44:03	2020-06-30 05:44:03	0	1	1																												32	1
1	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	461	2019	578	291	577	206	275	96	20	8	8	4	1	1	0	0	371	133	0	0	44	1.0	0.49	0.46	5.0	5.2	0.5	32	1
2	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	462	2019	454	231	454	193	194	67	9	3	4	2	0	0	0	0	261	48	0	0	31	0.81	0.54	0.35	5.0	5.6	0.7	32	1
3	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	463	2019	538	272	525	266	207	52	38	15	16	7	13	8	5	0	264	259	0	0	0	1.0	0.52	0.48	5.0	5.0	0.3	32	1
4	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	464	2019	139	63	139	52	65	22	7	1	5	1	0	0	0	0	87	87	0	0	22	1.0	0.56	0.33	5.0	5.8	0.2	32	2
5	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	465	2019	128	66	128	0	97	31	0	0	0	0	0	0	0	0	128	51	128	0	31	1.0	0.8	0.07	5.0	5.2	0.9	32	1
6	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	459	2019	345	166	345	165	152	28	15	7	7	1	0	0	0	0	180	98	0	0	28	1.0	0.29	0.57	5.0	5.9	0.1	32	2
7	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	453	2019	107	44	107	44	48	15	12	4	5	3	0	0	0	0	63	0	0	0	0	0.69	0.33	0.5	5.0	5.7	0.7	32	3
8	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	458	2019	772	400	767	324	356	87	43	10	28	5	5	0	5	0	448	203	0	0	31	0.62	0.5	0.47	5.0	5.6	0.6	32	2
9	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	460	2019	212	101	212	88	90	34	8	3	2	3	0	0	0	0	124	124	0	0	34	0.79	0.18	0.73	5.0	5.1	0.5	32	2
10	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	449	2019	301	145	301	91	147	63	6	3	3	0	0	0	0	0	210	150	0	150	63	1.0	0.68	0.26	5.0	5.3	0.7	32	1
11	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	467	2019	124	63	106	45	53	8	0	0	0	0	18	8	9	1	71	0	0	0	0	0.6	0.4	0.6	5.0	6.7	0.1	32	3
12	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	469	2019	113	54	113	47	50	16	6	1	3	2	0	0	0	0	66	0	0	0	0	1.0	0.0	0.5	0.0	0.0	0.01	32	3
13	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	451	2019	161	80	161	65	78	18	9	1	8	0	0	0	0	0	96	96	0	0	18	1.0	0.55	0.44	0.0	0.0	0.03	32	1
14	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	454	2019	184	93	184	83	84	17	4	1	3	0	0	0	0	0	101	101	0	0	17	0.6	0.6	0.4	5.0	5.9	0.4	32	1
15	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	450	2019	82	41	82	33	41	8	1	1	0	0	0	0	0	0	49	0	0	0	0	0.66	0.0	1.0	5.0	6.0	0.4	32	2
16	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	452	2019	92	45	92	40	40	12	0	0	0	0	0	0	0	0	52	52	0	0	12	0.75	0.5	0.5	5.0	6.1	0.2	32	3
17	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	457	2019	94	46	94	37	41	16	2	0	2	0	0	0	0	0	57	0	0	0	0	0.8	0.6	0.4	5.0	7.2	0.5	32	2
18	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	468	2019	54	22	54	17	23	14	2	0	1	1	0	0	0	0	37	0	0	0	0	1.0	0.0	1.0	5.0	6.7	0.6	32	2
19	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	466	2019	108	56	108	41	53	14	3	2	1	0	0	0	0	0	67	67	0	0	28	0.0	0.0	0.0	5.0	6.3	0.3	32	3
20	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	471	2019	56	30	56	23	26	7	0	0	0	0	0	0	0	0	33	0	0	0	0	0.0	0.0	0.0	5.0	6.9	0.3	32	3
21	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	455	2019	63	33	63	28	30	5	0	0	0	0	0	0	0	0	35	0	0	0	0	0.75	0.0	1.0	0.0	0.0	0.0	32	2
22	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	456	2019	41	20	41	13	26	2	1	1	0	0	0	0	0	0	28	0	0	0	0	1.0	0.0	1.0	5.0	6.4	0.4	32	3
23	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	473	2019	40	17	40	0	40	0	6	0	6	0	0	0	0	0	40	0	0	0	0	0.0	0.0	0.0	0.0	0.0	0.1	32	3
24	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	475	2019	28	10	28	13	15	0	0	0	0	0	0	0	0	0	15	0	0	0	0	0.0	0.0	0.0	5.0	7.6	0.6	32	3
25	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	470	2019	30	12	30	9	21	0	1	0	1	0	0	0	0	0	21	0	0	0	0	0.0	0.0	0.0	5.0	5.4	0.7	32	2
26	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	472	2019	22	12	22	12	10	0	1	0	1	0	0	0	0	0	10	0	0	0	0	0.0	0.0	0.0	5.0	6.2	0.6	32	2
27	2020-06-30 05:56:32	2020-06-30 05:56:32	0	0	1	476	2019	26	16	26	13	13	0	2	1	1	0	0	0	0	0	13	0	0	0	0	0.0	0.0	0.0	5.0	7.1	0.7	32	2
\.


--
-- Data for Name: _dbo_yak_section4; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section4 (id_section4, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, a01, a02, a03, a04, a05, a06, a07, a08, a09, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 06:24:01	2020-06-30 06:24:01	0	1	1																																																																
1	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	461	2019	374	243	131	226	0	53	49	39	13	41	27	20	23	20	16	5	27	4	14	7	4	14	5	0	2	1	6	13	48	0	43	53	12	8	50	53	13	20	38	16	27	20	16	13	19	10	12	14	4	7	24	6	10	13	4	3	52	3	3	25	32	1
2	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	462	2019	233	155	78	151	0	16	33	23	3	40	22	13	14	20	4	1	6	3	11	4	12	10	14	0	3	0	0	10	38	0	25	28	12	3	20	17	7	10	18	11	10	7	7	14	15	10	10	6	2	8	5	2	6	20	0	0	6	0	25	45	32	1
3	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	463	2019	250	190	60	190	0	30	34	45	1	49	31	15	19	30	12	3	15	9	64	15	1	9	9	0	2	0	1	3	24	0	30	43	23	6	37	29	8	18	25	12	23	21	9	13	24	12	15	9	4	8	16	5	11	15	145	120	75	50	50	45	32	1
4	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	464	2019	57	46	11	45	0	2	23	8	0	1	0	1	5	9	0	0	1	2	6	2	3	8	7	1	0	0	1	9	6	0	3	2	2	0	6	7	1	3	9	1	1	2	3	2	3	1	1	0	1	1	1	0	1	0	0	13	54	0	8	1	32	2
5	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	465	2019	83	44	39	44	0	6	2	8	3	7	3	2	5	4	1	0	8	0	3	1	2	6	0	0	2	0	1	4	10	0	5	15	5	1	14	7	2	3	19	6	14	8	5	6	5	3	7	7	2	6	10	2	3	4	0	0	20	0	0	7	32	1
6	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	459	2019	247	169	78	169	0	46	39	23	8	45	12	4	15	20	7	10	9	1	37	7	0	7	2	0	0	0	2	0	17	0	23	33	22	2	28	28	3	12	22	9	7	7	10	23	11	6	11	3	1	2	13	3	1	8	10	11	70	0	0	2	32	2
7	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	453	2019	82	57	25	56	0	3	32	7	0	15	17	6	4	5	4	0	3	3	3	1	2	1	0	0	0	0	0	3	3	0	13	8	4	1	17	7	3	3	15	4	12	6	5	10	13	1	2	1	1	1	7	1	4	3	0	4	2	0	0	23	32	3
8	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	458	2019	83	59	24	59	0	5	8	1	0	4	20	6	7	14	7	6	2	1	12	1	1	0	0	0	0	2	0	1	3	0	9	7	5	0	10	2	0	1	3	3	3	4	5	11	6	2	0	1	0	1	3	0	1	3	9	8	39	83	27	49	32	2
9	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	460	2019	231	165	66	165	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	26	0	0	16	32	2
10	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	449	2019	195	160	35	160	0	15	36	23	3	32	37	5	19	23	0	8	10	9	37	37	18	34	10	1	1	1	12	10	21	0	32	22	13	7	24	16	3	9	17	10	15	7	8	17	27	5	9	7	1	10	13	3	10	10	0	0	0	0	0	1	32	1
11	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	467	2019	50	39	11	39	0	11	11	9	3	8	7	0	2	1	4	1	0	7	11	0	0	3	1	0	0	0	0	0	6	0	7	10	6	2	6	4	2	1	3	2	1	3	1	1	2	2	2	1	0	0	3	0	1	2	0	1	6	0	0	0	32	3
12	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	469	2019	112	82	30	80	0	7	18	14	2	13	11	9	13	2	4	2	11	7	23	9	3	6	7	0	1	4	3	6	13	0	21	24	9	2	16	15	7	6	14	8	12	6	10	6	5	4	4	4	4	1	11	3	5	7	0	3	6	0	0	2	32	3
13	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	451	2019	50	43	7	40	0	16	11	13	0	10	7	1	3	0	1	0	0	0	7	6	1	4	2	1	0	1	0	0	5	0	4	11	3	2	8	4	1	4	6	3	3	1	3	10	6	2	2	2	0	1	5	3	0	3	3	2	15	0	3	2	32	1
14	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	454	2019	203	169	34	164	0	29	43	42	1	35	58	15	25	36	9	3	31	3	10	8	6	4	6	0	0	5	3	2	10	0	17	23	22	2	33	11	0	6	17	6	10	10	7	15	11	1	4	3	3	3	6	2	3	6	11	21	24	1	12	2	32	1
15	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	450	2019	44	36	8	34	0	11	7	7	1	19	8	7	7	3	1	1	1	2	9	1	1	7	1	1	1	1	4	7	6	0	7	10	3	0	7	6	0	3	5	5	3	6	1	8	5	1	1	1	0	0	2	2	1	1	0	0	4	0	0	0	32	2
16	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	452	2019	77	63	14	59	0	22	7	30	1	19	7	4	5	6	2	1	3	1	4	3	1	2	2	0	1	0	2	0	4	0	7	7	10	0	10	14	0	7	11	4	7	0	4	6	2	2	4	1	0	0	1	2	0	2	4	4	7	0	0	1	32	3
17	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	457	2019	83	78	5	67	0	16	19	8	0	26	26	7	3	20	0	2	0	1	11	5	4	4	4	0	0	1	1	3	6	0	4	7	3	3	4	3	0	0	4	1	4	2	5	2	3	3	1	1	0	2	5	0	5	2	17	21	36	0	0	2	32	2
18	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	468	2019	40	32	8	32	0	0	10	1	0	9	10	1	4	2	6	1	0	6	8	5	2	5	3	0	0	0	1	4	5	0	8	7	8	3	3	1	1	1	3	1	1	1	3	3	3	2	3	0	1	2	6	1	2	1	1	3	16	0	1	2	32	2
19	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	466	2019	46	28	18	28	0	0	5	6	0	10	8	5	5	3	0	0	1	0	7	0	0	2	0	0	0	0	2	0	4	0	4	3	3	2	2	5	1	0	2	4	3	3	2	5	1	1	2	2	1	0	3	0	1	4	0	0	0	0	0	0	32	3
20	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	471	2019	42	36	6	36	0	1	12	18	2	11	16	6	15	10	3	0	0	1	10	0	2	6	2	0	0	1	1	0	2	0	8	11	6	1	8	12	6	6	9	4	3	5	4	1	5	3	4	2	0	1	9	1	3	0	0	0	0	0	0	0	32	3
21	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	455	2019	55	51	4	47	0	4	17	13	1	14	11	13	14	7	2	2	2	0	14	0	2	3	0	0	0	0	0	1	11	0	6	14	6	4	4	9	4	5	9	3	1	3	5	4	7	1	2	2	3	0	8	2	1	3	0	18	27	0	8	6	32	2
22	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	456	2019	24	23	1	22	0	6	9	13	5	15	8	4	9	4	7	0	3	1	2	0	0	2	1	2	0	2	0	0	0	0	8	9	8	5	4	5	3	2	5	8	3	4	3	3	2	2	2	2	2	2	2	3	2	1	0	0	1	0	0	0	32	3
23	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	473	2019	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	32	3
24	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	475	2019	25	19	6	19	0	3	4	11	0	3	5	0	4	8	1	0	3	2	7	3	2	4	4	0	0	1	3	1	2	0	3	3	1	0	3	4	1	0	2	1	2	0	1	1	0	1	0	0	1	1	0	0	0	3	0	0	0	0	0	0	32	3
25	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	470	2019	25	24	1	23	0	0	10	4	0	11	12	7	7	8	3	1	1	3	10	1	0	2	1	1	0	0	5	0	4	0	1	0	1	2	1	1	2	0	0	2	2	1	3	0	3	0	0	2	0	0	3	0	1	1	1	10	6	0	8	11	32	2
26	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	472	2019	18	13	5	13	0	0	0	8	0	4	4	1	1	0	2	2	1	0	0	0	1	1	1	0	0	0	2	0	3	0	3	5	2	1	1	1	0	3	2	0	0	1	1	2	2	1	1	0	1	0	0	1	1	0	9	0	7	0	0	0	32	2
27	2020-06-30 06:43:03	2020-06-30 06:43:03	0	0	1	476	2019	22	22	0	22	0	0	6	6	0	16	14	3	1	10	1	1	0	0	16	0	0	2	3	0	0	0	6	0	2	0	4	7	6	2	2	3	1	4	4	2	1	2	3	2	3	1	2	2	1	1	5	3	3	2	2	0	16	0	0	8	32	2
\.


--
-- Data for Name: _dbo_yak_section5; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section5 (id_section5, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 07:01:20	2020-06-30 07:01:20	0	1	1					0				0	0	0		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0		
1	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	461	2019	22	7	1	4236	3010	378	1	1	1	1	1	0	1	0	0	1	1	1	1	1	1	0	1	1	0	1	1	1	1	1	32	1
2	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	462	2019	11	5	0	2830	1141	279	1	1	1	1	1	0	1	0	1	1	1	0	1	1	0	0	1	1	0	1	1	1	1	1	32	1
3	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	463	2019	18	5	0	6975	2537	857	1	1	1	4	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	32	1
4	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	464	2019	7	5	1	1941	1188	707	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	32	2
5	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	465	2019	2	5	0	1826	1375	166	1	1	1	0	0	1	1	1	0	1	1	0	1	1	0	0	1	1	1	1	1	1	1	1	32	1
6	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	459	2019	24	5	1	3507	1384	740	1	1	1	1	1	0	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	32	2
7	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	453	2019	11	5	1	3399	1256	932	1	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	32	3
8	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	458	2019	20	5	1	5731	2948	599	1	1	1	1	1	0	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	32	2
9	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	460	2019	10	5	0	3150	2525	611	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	0	1	1	1	1	32	2
10	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	449	2019	13	7	1	7670	4148	2023	1	1	0	2	1	1	1	0	1	1	1	1	1	1	0	1	1	1	0	1	1	1	1	1	32	1
11	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	467	2019	10	5	1	1426	703	140	1	1	1	0	1	0	1	0	0	1	1	1	1	1	1	0	1	1	1	1	1	1	1	1	32	3
12	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	469	2019	14	4	0	1456	1198	258	0	0	1	1	1	1	1	0	0	1	1	0	1	1	1	0	0	1	0	0	1	1	1	1	32	3
13	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	451	2019	10	5	1	2669	1200	224	1	1	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	1	0	1	1	32	1
14	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	454	2019	11	4	1	2822	1169	689	1	1	1	2	1	0	1	1	1	1	1	1	1	1	1	1	1	1	0	0	1	1	1	1	32	1
15	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	450	2019	7	7	1	2120	1885	128	1	1	1	3	1	1	1	1	0	1	1	0	1	1	1	0	1	1	1	0	1	1	1	1	32	2
16	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	452	2019	14	5	1	3239	1639	391	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	1	32	3
17	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	457	2019	15	5	0	1995	1716	23	1	1	1	1	1	1	1	0	1	1	1	1	1	0	1	0	1	1	0	1	1	1	1	1	32	2
18	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	468	2019	9	4	0	2292	1208	122	1	1	1	1	1	0	1	0	0	1	0	1	1	0	1	0	1	1	1	1	1	1	1	1	32	2
19	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	466	2019	9	5	1	2249	883	401	1	1	1	0	1	0	1	1	1	1	1	1	1	0	1	0	1	1	1	0	1	0	1	1	32	3
20	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	471	2019	4	4	0	835	572	200	0	0	1	0	1	0	1	0	1	0	0	0	1	0	0	0	1	1	1	1	1	1	1	1	32	3
21	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	455	2019	6	4	1	1344	708	288	0	0	1	1	1	0	1	1	0	0	0	1	1	0	0	1	1	1	0	0	1	0	1	1	32	2
22	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	456	2019	8	1	0	1038	795	23	0	0	1	1	1	0	1	0	0	0	1	0	1	0	0	0	1	1	1	1	1	0	1	1	32	3
23	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	473	2019	5	5	0	1663	631	621	1	1	1	4	1	0	1	0	1	1	1	1	1	1	1	1	1	1	1	0	1	1	1	1	32	3
24	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	475	2019	6	4	0	774	205	66	0	0	1	1	1	0	1	1	1	0	0	1	1	1	0	0	1	1	0	0	1	1	1	1	32	3
25	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	470	2019	5	4	0	562	410	77	0	0	1	0	1	0	1	0	0	0	1	0	1	1	1	1	0	1	1	1	1	0	1	1	32	2
26	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	472	2019	4	4	0	639	237	218	0	0	1	1	0	1	1	0	0	0	0	1	1	1	0	0	0	1	0	1	1	0	1	1	32	2
27	2020-06-30 07:14:41	2020-06-30 07:14:41	0	0	1	476	2019	15	2	0	733	607	45	0	0	1	5	1	0	1	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	1	32	2
\.


--
-- Data for Name: _dbo_yak_section6; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section6 (id_section6, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, f01, f02, f03, f04, f05, f06, f07, f08, f09, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 07:27:35	2020-06-30 07:27:35	0	1	1																																		
1	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	461	2019	977000.0	1066000.0000	66161.7000	6025.3000	42389.7000	36106.4000	0.0000	0.0000	0.0000	98246.9000	87939.4000	9230.4000	0.0000	1077.1000	98246.9000	87939.4000	9230.4000	0.0000	1077.1000	96580.8000	103203.0000	0.0000	76379.4000	26823.6000	3121.2000	0.0000	717.0000	2404.2000	1270.0000	0.0000	32	1
2	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	462	2019	892731.0	921946.0000	45522.1000	5670.9000	31509.6000	27700.0000	411.0000	207.3000	192.7000	67271.3000	60438.9000	6180.1000	0.0000	652.3000	67271.3000	60438.9000	6180.1000	0.0000	652.3000	65868.8000	69316.2000	0.0000	54500.0000	14816.2000	2101.8000	0.0000	611.3000	1490.5000	1349.5000	0.0000	32	1
3	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	463	2019	800000.0	500000.0000	63552.3000	5445.8000	41713.9000	35075.6000	0.0000	0.0000	0.0000	97034.5000	86623.5000	10302.0000	0.0000	109.0000	97034.5000	86623.5000	10302.0000	0.0000	109.0000	95392.2000	96692.2000	0.0000	71220.9000	25471.3000	2129.3000	0.0000	826.8000	1302.5000	691.9000	0.0000	32	1
4	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	464	2019	159000.0	353000.0000	21223.7000	1242.3000	15412.4000	14793.0000	599.9000	328.5000	328.5000	31205.5000	28114.2000	3076.1000	0.0000	43876.0000	31205.5000	28114.2000	3076.1000	0.0000	43876.0000	30840.2000	32456.2000	0.0000	24553.4000	7902.8000	598.4000	0.0000	250.0000	348.4000	175.0000	0.0000	32	2
5	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	465	2019	0.0	435747.0000	19638.0000	3111.0000	12727.9000	12160.7000	810.6000	563.0000	533.1000	28654.4000	25778.6000	2838.2000	0.0000	37.6000	28654.4000	25778.6000	2838.2000	0.0000	37.6000	28399.1000	29591.2000	0.0000	23848.6000	5742.6000	400.4000	0.0000	140.5000	259.9000	98.3000	0.0000	32	1
6	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	459	2019	450000.0	200000.0000	54720.8000	5539.2000	36641.8000	33063.9000	0.0000	0.0000	0.0000	81864.0000	72051.3000	9379.9000	333.8000	99.0000	81864.0000	72051.3000	9379.9000	333.8000	99.0000	80207.5000	85982.7000	0.0000	65160.8000	20821.9000	2502.5000	0.0000	949.7000	1552.8000	988.8000	0.0000	32	2
7	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	453	2019	250000.0	35000.0000	24318.9000	1281.2000	19146.1000	17708.9000	0.0000	0.0000	0.0000	41568.5000	31820.6000	7886.6000	0.0000	1861.3000	41568.5000	31820.6000	7886.6000	0.0000	1861.3000	40940.0000	40737.8000	0.0000	29166.0000	11571.8000	628.5000	0.0000	305.2000	323.3000	202.2000	0.0000	32	3
8	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	458	2019	10000.0	100000.0000	91418.9000	9477.9000	60711.3000	47649.2000	2051.2000	437.7000	40.3000	126663.4000	118644.7000	7916.6000	0.0000	102.1000	126340.8000	118475.4000	7835.6000	0.0000	44072.0000	124457.8000	130618.6000	0.0000	97530.8000	33087.8000	2684.6000	0.0000	1339.2000	1345.4000	4599.0000	0.0000	32	2
9	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	460	2019	8631100.0	236900.0000	32172.0000	4989.0000	20977.0000	18022.0000	394.0000	54.0000	54.0000	49349.4000	43752.4000	5379.6000	0.0000	217.4000	49349.4000	43752.4000	5379.6000	0.0000	217.4000	48556.2000	51363.6000	0.0000	39728.1000	11635.5000	1068.9000	0.0000	543.2000	525.7000	679.8000	0.0000	32	2
10	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	449	2019	669796.0	308041.0000	76632.1000	7342.1000	43637.6000	31069.5000	1755.5000	1755.5000	1755.5000	121765.1000	100524.8000	17497.3000	136.6000	3606.4000	121765.1000	100524.8000	17497.3000	136.6000	3606.4000	120036.3000	125319.6000	0.0000	80597.1000	44722.5000	2333.9000	0.0000	1284.5000	1049.4000	5779.6000	0.0000	32	1
11	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	467	2019	300000.0	600000.0000	28829.7000	1427.0000	23025.5000	21500.9000	7148.7000	7022.6000	7022.6000	41941.9000	38378.5000	3551.2000	0.0000	43873.0000	41941.9000	38378.5000	3551.2000	0.0000	43873.0000	41150.2000	43045.5000	0.0000	35480.8000	7564.7000	797.7000	0.0000	394.8000	402.9000	157.0000	0.0000	32	3
12	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	469	2019	290000.0	230000.0000	16479.8000	1417.7000	10663.6000	9542.8000	0.0000	0.0000	0.0000	29522.5000	22399.7000	7047.9000	0.0000	74.9000	29522.5000	22399.7000	7047.9000	0.0000	74.9000	28703.7000	30121.7000	0.0000	19614.2000	10507.5000	1099.8000	0.0000	396.5000	703.3000	215.2000	0.0000	32	3
13	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	451	2019	500000.0	1600000.0000	30579.2000	4043.3000	20744.8000	17958.3000	0.0000	0.0000	0.0000	57970.5000	41705.8000	14602.1000	0.0000	1662.6000	57970.5000	41705.8000	14602.1000	0.0000	1662.6000	52819.3000	55548.5000	0.0000	37190.3000	18358.2000	5464.4000	0.0000	3586.4000	1878.0000	838.2000	0.0000	32	1
14	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	454	2019	904637.0	473612.0000	38509.3000	3386.2000	23313.8000	17576.1000	42.3000	0.0000	0.0000	70728.5000	49817.6000	20109.4000	0.0000	801.5000	70728.5000	49817.6000	20109.4000	0.0000	801.5000	67636.6000	70775.1000	0.0000	40987.6000	29787.5000	3422.2000	0.0000	1032.3000	2389.9000	1158.1000	0.0000	32	1
15	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	450	2019	150000.0	500000.0000	21516.7000	1851.3000	14758.7000	13180.4000	420.9000	136.2000	67.8000	43586.0000	28573.6000	14743.2000	0.0000	269.2000	43586.0000	28573.6000	14743.2000	0.0000	269.2000	38294.9000	39669.7000	0.0000	25895.8000	13773.9000	5296.1000	3100.9000	468.7000	1726.5000	615.2000	0.0000	32	2
16	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	452	2019	416000.0	215010.0000	20429.1000	2038.9000	11406.3000	10618.9000	320.0000	0.0000	0.0000	37851.8000	26043.3000	11010.8000	0.0000	797.7000	37851.8000	26043.3000	11010.8000	0.0000	797.7000	37175.7000	38462.3000	0.0000	20139.5000	18322.8000	967.0000	0.0000	513.7000	453.3000	1685.4000	0.0000	32	3
17	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	457	2019	169882.0	4980421.0000	21696.1000	2910.4000	11889.1000	11359.9000	0.0000	0.0000	0.0000	37761.8000	28884.4000	8178.7000	0.0000	698.7000	37761.8000	28884.4000	8178.7000	0.0000	698.7000	36972.9000	38545.4000	0.0000	25068.8000	13476.6000	944.3000	0.0000	369.7000	574.6000	298.7000	0.0000	32	2
18	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	468	2019	157236.0	900.0000	31144.4000	2035.4000	18212.2000	12368.0000	0.0000	0.0000	0.0000	55543.4000	40697.1000	14440.2000	0.0000	406.1000	55543.4000	40697.1000	14440.2000	0.0000	406.1000	54474.1000	56316.0000	0.0000	33776.1000	22539.9000	1185.9000	0.0000	435.6000	750.3000	768.0000	0.0000	32	2
19	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	466	2019	0.0	0.0000	16395.3000	1077.1000	10724.0000	10724.0000	0.0000	0.0000	0.0000	35314.9000	25268.6000	9215.8000	0.0000	830.5000	35314.9000	25268.6000	9215.8000	0.0000	830.5000	34740.2000	36489.7000	0.0000	22140.7000	14349.0000	769.0000	0.0000	769.0000	0.0000	839.2000	0.0000	32	3
20	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	471	2019	0.0	0.0000	25974.5000	1391.1000	16664.3000	11637.2000	0.0000	0.0000	0.0000	46738.7000	33556.5000	13105.0000	0.0000	77.2000	46738.7000	33556.5000	13105.0000	0.0000	77.2000	46253.1000	47466.9000	0.0000	28383.6000	19083.3000	485.6000	0.0000	320.0000	165.6000	537.7000	0.0000	32	3
21	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	455	2019	290444.0	206079.0000	24779.0000	1602.0000	15621.6000	11000.0000	0.0000	0.0000	0.0000	44034.9000	32852.7000	10774.2000	0.0000	408.0000	44034.9000	32852.7000	10774.2000	0.0000	408.0000	40132.5000	41955.2000	0.0000	28343.8000	13611.4000	4062.1000	0.0000	500.5000	3561.6000	731.5000	0.0000	32	2
22	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	456	2019	0.0	0.0000	23329.8000	977.5000	14275.7000	10836.7000	0.0000	0.0000	0.0000	41670.7000	32368.0000	9172.2000	0.0000	130.5000	41670.7000	32368.0000	9172.2000	0.0000	130.5000	40871.0000	42307.4000	0.0000	26956.0000	15351.4000	824.1000	0.0000	287.5000	536.6000	461.6000	0.0000	32	3
23	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	473	2019	0.0	0.0000	27113.7000	3581.7000	12628.4000	6996.3000	1292.2000	0.0000	0.0000	46892.6000	35088.9000	11631.6000	0.0000	172.1000	46892.6000	35088.9000	11631.6000	0.0000	172.1000	46849.4000	50687.1000	0.0000	50687.1000	0.0000	43.2000	0.0000	0.0000	43.2000	0.0000	0.0000	32	3
24	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	475	2019	0.0	0.0000	13254.3000	691.4000	7991.0000	5828.5000	168.5000	0.0000	0.0000	22785.2000	18336.6000	4391.6000	0.0000	57.0000	22785.2000	18336.6000	4391.6000	0.0000	57.0000	22405.3000	23218.8000	0.0000	16006.6000	7212.2000	449.8000	0.0000	236.9000	212.9000	419.7000	0.0000	32	3
25	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	470	2019	26000.0	200000.0000	17640.6000	1121.5000	11831.2000	9130.7000	0.0000	0.0000	0.0000	27419.1000	22830.7000	4479.1000	0.0000	109.3000	27419.1000	22830.7000	4479.1000	0.0000	109.3000	26863.3000	27608.7000	0.0000	19736.3000	7872.4000	568.4000	0.0000	245.4000	323.0000	449.8000	0.0000	32	2
26	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	472	2019	51692.0	324458.0000	17079.0000	784.9000	12207.6000	9301.3000	451.1000	0.0000	0.0000	28109.9000	22238.5000	5751.6000	0.0000	119.8000	28109.9000	22238.5000	5751.6000	0.0000	119.8000	27552.4000	28400.8000	0.0000	18985.9000	9414.9000	414.9000	0.0000	201.6000	213.3000	408.3000	0.0000	32	2
27	2020-06-30 07:37:30	2020-06-30 07:37:30	0	0	1	476	2019	212000.0	330000.0000	18000.7000	766.7000	11408.2000	9178.4000	272.4000	54.0000	54.0000	32965.2000	23378.3000	9387.3000	0.0000	199.6000	32965.2000	23378.3000	9387.3000	0.0000	199.6000	32486.1000	33511.8000	0.0000	19935.3000	13576.5000	332.5000	0.0000	227.8000	104.7000	333.8000	0.0000	32	2
\.


--
-- Data for Name: _dbo_yak_section7; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_section7 (id_section7, in_date, up_date, id_own, id_flag, id_area, id_organization, yearset, o01, o02, o03, o04, id_municipality, id_clusterses) FROM stdin;
0	2020-06-30 07:46:34	2020-06-30 07:46:34	0	1	1								
1	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	461	2019	68	131	5	392	32	1
2	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	462	2019	82	121	38	193	32	1
3	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	463	2019	66	153	0	218	32	1
4	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	464	2019	16	37	9	41	32	2
5	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	465	2019	3	16	5	82	32	1
6	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	459	2019	26	50	30	148	32	2
7	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	453	2019	16	27	6	45	32	3
8	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	458	2019	32	166	32	530	32	2
9	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	460	2019	0	0	0	0	32	2
10	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	449	2019	41	77	17	197	32	1
11	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	467	2019	34	39	23	49	32	3
12	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	469	2019	15	24	21	36	32	3
13	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	451	2019	7	25	10	80	32	1
14	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	454	2019	16	42	11	57	32	1
15	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	450	2019	5	18	0	37	32	2
16	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	452	2019	47	13	13	41	32	3
17	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	457	2019	19	13	1	26	32	2
18	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	468	2019	1	11	1	19	32	2
19	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	466	2019	0	0	0	0	32	3
20	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	471	2019	0	0	0	0	32	3
21	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	455	2019	2	6	0	16	32	2
22	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	456	2019	7	10	0	3	32	3
23	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	473	2019	0	0	0	0	32	3
24	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	475	2019	0	0	0	0	32	3
25	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	470	2019	0	11	0	13	32	2
26	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	472	2019	2	5	4	10	32	2
27	2020-06-30 07:54:10	2020-06-30 07:54:10	0	0	1	476	2019	0	5	0	9	32	2
\.


--
-- Data for Name: _dbo_yak_transportaccess; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dbo_yak_transportaccess (id_transportaccess, in_date, up_date, id_own, id_flag, id_area, name_transportaccess, date_transportaccess, descript_transportaccess) FROM stdin;
0	2020-06-22 02:28:20	2020-06-22 02:28:20	0	1	1		2020-06-22 02:28:20	
1	2020-06-22 02:28:20	2020-06-22 02:28:20	0	0	1	Доступная	2020-06-22 02:28:20	
2	2020-06-22 02:28:20	2020-06-22 02:28:20	0	0	1	Труднодоступная	2020-06-22 02:28:20	
\.


--
-- PostgreSQL database dump complete
--
