--
-- Name: uw_ajaxupload_handles; Type: SEQUENCE; Schema: frap; Owner: www/frap
--

CREATE SEQUENCE uw_ajaxupload_handles
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: uw_ajaxupload_scratch; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_ajaxupload_scratch (
    uw_handle bigint NOT NULL,
    uw_filename text,
    uw_mimetype text NOT NULL,
    uw_content bytea NOT NULL,
    uw_created timestamp without time zone NOT NULL
);


--
-- Name: uw_ann_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_ann_listeners (
    uw_channel bigint NOT NULL
);


--
-- Name: uw_ann_post; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_ann_post (
    uw_title text NOT NULL,
    uw_body text NOT NULL,
    uw_poster text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_globalforum_adminlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_globalforum_adminlisteners (
    uw_who bigint NOT NULL
);


--
-- Name: uw_globalforum_loggedinlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_globalforum_loggedinlisteners (
    uw_who bigint NOT NULL,
    uw_private text NOT NULL
);


--
-- Name: uw_globalforum_message; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_globalforum_message (
    uw_thread timestamp without time zone NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL
);


--
-- Name: uw_globalforum_readonlylisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_globalforum_readonlylisteners (
    uw_who bigint NOT NULL
);


--
-- Name: uw_globalforum_threads; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_globalforum_threads (
    uw_thread timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL,
    uw_closed boolean NOT NULL,
    uw_private boolean NOT NULL
);


--
-- Name: uw_lab; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lab (
    uw_labnum bigint NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_description text NOT NULL
);


--
-- Name: uw_labforum_adminlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labforum_adminlisteners (
    uw_labnum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_labforum_loggedinlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labforum_loggedinlisteners (
    uw_labnum bigint NOT NULL,
    uw_who bigint NOT NULL,
    uw_private text NOT NULL
);


--
-- Name: uw_labforum_message; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labforum_message (
    uw_labnum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL
);


--
-- Name: uw_labforum_readonlylisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labforum_readonlylisteners (
    uw_labnum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_labforum_threads; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labforum_threads (
    uw_labnum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL,
    uw_closed boolean NOT NULL,
    uw_private boolean NOT NULL
);


--
-- Name: uw_labsub_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labsub_listeners (
    uw_labnum bigint NOT NULL,
    uw_username text,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_labsub_submission; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_labsub_submission (
    uw_labnum bigint NOT NULL,
    uw_username text NOT NULL,
    uw_filename text,
    uw_content bytea NOT NULL,
    uw_mimetype text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_lecture; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lecture (
    uw_lecturenum bigint NOT NULL,
    uw_lecturetitle text NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_description text NOT NULL
);


--
-- Name: uw_lectureforum_adminlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lectureforum_adminlisteners (
    uw_lecturenum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_lectureforum_loggedinlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lectureforum_loggedinlisteners (
    uw_lecturenum bigint NOT NULL,
    uw_who bigint NOT NULL,
    uw_private text NOT NULL
);


--
-- Name: uw_lectureforum_message; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lectureforum_message (
    uw_lecturenum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL
);


--
-- Name: uw_lectureforum_readonlylisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lectureforum_readonlylisteners (
    uw_lecturenum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_lectureforum_threads; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lectureforum_threads (
    uw_lecturenum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL,
    uw_closed boolean NOT NULL,
    uw_private boolean NOT NULL
);


--
-- Name: uw_lecturesub_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lecturesub_listeners (
    uw_lecturenum bigint NOT NULL,
    uw_username text,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_lecturesub_submission; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_lecturesub_submission (
    uw_lecturenum bigint NOT NULL,
    uw_username text NOT NULL,
    uw_filename text,
    uw_content bytea NOT NULL,
    uw_mimetype text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_officehours; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_officehours (
    uw_ohuser text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_possibleofficehourstime; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_possibleofficehourstime (
    uw_time timestamp without time zone NOT NULL
);


--
-- Name: uw_private_admincal_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_admincal_listeners (
    uw_kind text NOT NULL,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_private_editpossoh_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_editpossoh_listeners (
    uw_channel bigint NOT NULL
);


--
-- Name: uw_private_edituser_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_edituser_listeners (
    uw_channel bigint NOT NULL
);


--
-- Name: uw_private_grades_fg_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_grades_fg_listeners (
    uw_channel bigint NOT NULL
);


--
-- Name: uw_private_grades_fg_ranges; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_grades_fg_ranges (
    uw_min bigint NOT NULL,
    uw_max bigint NOT NULL,
    uw_grade text NOT NULL
);


--
-- Name: uw_private_grades_fg_specialcase; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_grades_fg_specialcase (
    uw_username text NOT NULL,
    uw_grade text NOT NULL
);


--
-- Name: uw_private_ohpoll_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_ohpoll_listeners (
    uw_username text NOT NULL,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_private_ohpoll_vote; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_private_ohpoll_vote (
    uw_time timestamp without time zone NOT NULL,
    uw_username text NOT NULL,
    uw_votes bigint NOT NULL
);


--
-- Name: uw_pset; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_pset (
    uw_psetnum bigint NOT NULL,
    uw_released timestamp without time zone NOT NULL,
    uw_due timestamp without time zone NOT NULL,
    uw_gradesdue timestamp without time zone NOT NULL,
    uw_instructions text NOT NULL
);


--
-- Name: uw_psetforum_adminlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetforum_adminlisteners (
    uw_psetnum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_psetforum_loggedinlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetforum_loggedinlisteners (
    uw_psetnum bigint NOT NULL,
    uw_who bigint NOT NULL,
    uw_private text NOT NULL
);


--
-- Name: uw_psetforum_message; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetforum_message (
    uw_psetnum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL
);


--
-- Name: uw_psetforum_readonlylisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetforum_readonlylisteners (
    uw_psetnum bigint NOT NULL,
    uw_who bigint NOT NULL
);


--
-- Name: uw_psetforum_threads; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetforum_threads (
    uw_psetnum bigint NOT NULL,
    uw_thread timestamp without time zone NOT NULL,
    uw_who text NOT NULL,
    uw_text text NOT NULL,
    uw_closed boolean NOT NULL,
    uw_private boolean NOT NULL
);


--
-- Name: uw_psetgrade; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetgrade (
    uw_psetnum bigint NOT NULL,
    uw_psetstudent text NOT NULL,
    uw_grader text NOT NULL,
    uw_when timestamp without time zone NOT NULL,
    uw_grade bigint NOT NULL,
    uw_comment text NOT NULL
);


--
-- Name: uw_psetgrade_specificlisteners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetgrade_specificlisteners (
    uw_psetnum bigint NOT NULL,
    uw_psetstudent text NOT NULL,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_psetspec_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetspec_listeners (
    uw_psetnum bigint NOT NULL,
    uw_username text,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_psetspec_submission; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetspec_submission (
    uw_psetnum bigint NOT NULL,
    uw_username text NOT NULL,
    uw_filename text,
    uw_content bytea NOT NULL,
    uw_mimetype text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_psetsub_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetsub_listeners (
    uw_psetnum bigint NOT NULL,
    uw_username text,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_psetsub_submission; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_psetsub_submission (
    uw_psetnum bigint NOT NULL,
    uw_username text NOT NULL,
    uw_hours bigint NOT NULL,
    uw_suggestions text NOT NULL,
    uw_filename text,
    uw_content bytea NOT NULL,
    uw_mimetype text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_publiccal_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_publiccal_listeners (
    uw_kind text NOT NULL,
    uw_channel bigint NOT NULL
);


--
-- Name: uw_sm_step; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_sm_step (
    uw_step text NOT NULL
);


--
-- Name: uw_smu_listeners; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_smu_listeners (
    uw_channel bigint NOT NULL
);


--
-- Name: uw_spring2016_notables; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_spring2016_notables (
    uw_notable text NOT NULL,
    uw_when timestamp without time zone NOT NULL
);


--
-- Name: uw_user; Type: TABLE; Schema: frap; Owner: www/frap; Tablespace: 
--

CREATE TABLE uw_user (
    uw_kerberos text NOT NULL,
    uw_mitid text NOT NULL,
    uw_username text NOT NULL,
    uw_password text,
    uw_isinstructor boolean NOT NULL,
    uw_ista boolean NOT NULL,
    uw_isstudent boolean NOT NULL,
    uw_hasdropped boolean NOT NULL,
    uw_units text NOT NULL,
    uw_subjectnum text NOT NULL,
    uw_sectionnum text NOT NULL,
    uw_lastname text NOT NULL,
    uw_firstname text NOT NULL,
    uw_middleinitial text NOT NULL,
    uw_islistener boolean DEFAULT false NOT NULL
);


--
-- Name: uw_ajaxupload_handles; Type: SEQUENCE SET; Schema: frap; Owner: www/frap
--

SELECT pg_catalog.setval('uw_ajaxupload_handles', 442, true);


--
-- Data for Name: uw_ajaxupload_scratch; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_ajaxupload_scratch (uw_handle, uw_filename, uw_mimetype, uw_content, uw_created) FROM stdin;
\.


--
-- Data for Name: uw_ann_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_ann_listeners (uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_ann_post; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_ann_post (uw_title, uw_body, uw_poster, uw_when) FROM stdin;
\.


--
-- Data for Name: uw_globalforum_adminlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_globalforum_adminlisteners (uw_who) FROM stdin;
\.


--
-- Data for Name: uw_globalforum_loggedinlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_globalforum_loggedinlisteners (uw_who, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_globalforum_message; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_globalforum_message (uw_thread, uw_when, uw_who, uw_text) FROM stdin;
\.


--
-- Data for Name: uw_globalforum_readonlylisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_globalforum_readonlylisteners (uw_who) FROM stdin;
\.


--
-- Data for Name: uw_globalforum_threads; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_globalforum_threads (uw_thread, uw_who, uw_text, uw_closed, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_lab; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lab (uw_labnum, uw_when, uw_description) FROM stdin;
1	2016-02-10 14:30:00	<p>Defining an interpreters for a simple language</p>\n\n<p>Defining and verifying a compiler to another language</p>\n
2	2016-02-17 14:30:00	<p>Tentatively: constructing explicit state machines and verifying invariants for them</p>\n
3	2016-02-24 14:30:00	<p>Tentatively: practice with brute-force model checking and some simple abstractions</p>\n
4	2016-03-02 14:30:00	<p>Tentatively: operational semantics for fancier language features, like nondeterminism and exceptions</p>\n
5	2016-03-09 14:30:00	<p>Tentatively: practice with a few classic abstract domains</p>\n
6	2016-03-16 14:30:00	<p>Tentatively: practice with more simple types, including pair, variant, and recursive types</p>\n
7	2016-03-30 14:30:00	<p>Tenatively: practice typing some more side-effecting language features, including arrays, exceptions, and first-class continuations</p>\n
8	2016-04-06 14:30:00	<p>Tentatively: practice verifying some programs with Hoare logic</p>\n
9	2016-04-13 14:30:00	<p>Tentatively: verifying some mixed functional-imperative programs with Hoare logic</p>\n
13	2016-05-11 14:30:00	<p>Tentatively: practice specifying and verifying pi-calculus programs</p>\n
12	2016-05-04 14:30:00	<p>Tentatively: practice verifying programs with Concurrent Separation Logic</p>\n
11	2016-04-27 14:30:00	<p>Tentatively: modeling a variety of imperative concurrency approaches with operational semantics</p>\n
\.


--
-- Data for Name: uw_labforum_adminlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labforum_adminlisteners (uw_labnum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_labforum_loggedinlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labforum_loggedinlisteners (uw_labnum, uw_who, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_labforum_message; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labforum_message (uw_labnum, uw_thread, uw_when, uw_who, uw_text) FROM stdin;
\.


--
-- Data for Name: uw_labforum_readonlylisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labforum_readonlylisteners (uw_labnum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_labforum_threads; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labforum_threads (uw_labnum, uw_thread, uw_who, uw_text, uw_closed, uw_private) FROM stdin;
1	2016-02-10 18:33:39	David G Kaufman	Proof automation with generated variable names	f	f
\.


--
-- Data for Name: uw_labsub_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labsub_listeners (uw_labnum, uw_username, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_labsub_submission; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_labsub_submission (uw_labnum, uw_username, uw_filename, uw_content, uw_mimetype, uw_when) FROM stdin;
\.


--
-- Data for Name: uw_lecture; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lecture (uw_lecturenum, uw_lecturetitle, uw_when, uw_description) FROM stdin;
3	Inductively Defined Relations and Rule Induction	2016-02-16 14:30:00	
4	Model Checking and Abstraction	2016-02-22 14:30:00	
5	Operational Semantics	2016-02-29 14:30:00	
6	Abstract Interpretation and Dataflow Analysis	2016-03-07 14:30:00	
7	Lambda Calculus, Simple Types, and the Syntactic Approach to Type Soundness	2016-03-14 14:30:00	
10	Deep Embeddings, Shallow Embeddings, and Options In Between	2016-04-11 14:30:00	
12	Operational Semantics for Concurrent Programs, Illustrated with Partial-Order Reduction for Model Checking	2016-04-25 14:30:00	
14	Pi-Calculus and Behavioral Refinement: Verifying Message-Passing Functional Programs	2016-05-09 14:30:00	
11	Separation Logic: Verifying Pointer Programs	2016-04-20 14:30:00	
9	Hoare Logic: Verifying Imperative Programs	2016-04-04 14:30:00	<p>Guest lecture (Adam away)</p>\n
8	Typing Mutable References	2016-03-28 14:30:00	
13	Concurrent Separation Logic: Verifying Shared-Memory Programs	2016-05-02 14:30:00	
1	Introduction to Coq: Datatypes, Recursion, Induction, and Rewriting	2016-02-03 14:30:00	<p>Related reading: Book Chapter 2</p>\n
2	Defining and Reasoning About Simple Interpreters and Compilers	2016-02-08 14:30:00	<p>Reading: book Chapter 3</p>\n
\.


--
-- Data for Name: uw_lectureforum_adminlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lectureforum_adminlisteners (uw_lecturenum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_lectureforum_loggedinlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lectureforum_loggedinlisteners (uw_lecturenum, uw_who, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_lectureforum_message; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lectureforum_message (uw_lecturenum, uw_thread, uw_when, uw_who, uw_text) FROM stdin;
\.


--
-- Data for Name: uw_lectureforum_readonlylisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lectureforum_readonlylisteners (uw_lecturenum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_lectureforum_threads; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lectureforum_threads (uw_lecturenum, uw_thread, uw_who, uw_text, uw_closed, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_lecturesub_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lecturesub_listeners (uw_lecturenum, uw_username, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_lecturesub_submission; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_lecturesub_submission (uw_lecturenum, uw_username, uw_filename, uw_content, uw_mimetype, uw_when) FROM stdin;
\.


--
-- Data for Name: uw_officehours; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_officehours (uw_ohuser, uw_when) FROM stdin;
Peng Wang	2016-02-16 16:00:00
Peng Wang	2016-02-22 16:30:00
Peng Wang	2016-02-29 16:00:00
Peng Wang	2016-03-07 16:00:00
Peng Wang	2016-03-14 16:00:00
Peng Wang	2016-03-28 16:00:00
Peng Wang	2016-04-04 16:00:00
Peng Wang	2016-04-11 16:00:00
Peng Wang	2016-04-25 16:00:00
Peng Wang	2016-05-02 16:00:00
Peng Wang	2016-05-09 16:00:00
Adam Chlipala	2016-02-26 17:00:00
Adam Chlipala	2016-03-18 17:00:00
Adam Chlipala	2016-04-01 17:00:00
Adam Chlipala	2016-04-15 17:00:00
Adam Chlipala	2016-04-22 17:00:00
Adam Chlipala	2016-04-29 17:00:00
Adam Chlipala	2016-05-06 17:00:00
Adam Chlipala	2016-03-10 17:00:00
\.


--
-- Data for Name: uw_possibleofficehourstime; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_possibleofficehourstime (uw_time) FROM stdin;
2016-02-08 10:00:00
2016-02-08 11:00:00
2016-02-08 12:00:00
2016-02-08 13:00:00
2016-02-08 16:00:00
2016-02-09 10:00:00
2016-02-09 11:00:00
2016-02-09 12:00:00
2016-02-09 13:00:00
2016-02-09 14:00:00
2016-02-09 15:00:00
2016-02-10 10:00:00
2016-02-10 11:00:00
2016-02-10 12:00:00
2016-02-10 13:00:00
2016-02-11 10:00:00
2016-02-11 11:00:00
2016-02-11 12:00:00
2016-02-11 13:00:00
2016-02-11 14:00:00
2016-02-11 15:00:00
2016-02-11 16:00:00
2016-02-11 17:00:00
2016-02-11 18:00:00
2016-02-11 19:00:00
2016-02-12 10:00:00
2016-02-12 11:00:00
2016-02-12 12:00:00
2016-02-12 13:00:00
2016-02-12 14:00:00
2016-02-12 15:00:00
2016-02-12 16:00:00
2016-02-12 17:00:00
2016-02-12 18:00:00
2016-02-12 19:00:00
2016-02-08 17:00:00
2016-02-08 18:00:00
2016-02-08 19:00:00
2016-02-09 17:00:00
2016-02-09 18:00:00
2016-02-09 19:00:00
2016-02-10 16:00:00
2016-02-10 17:00:00
2016-02-10 18:00:00
2016-02-10 19:00:00
\.


--
-- Data for Name: uw_private_admincal_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_admincal_listeners (uw_kind, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_private_editpossoh_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_editpossoh_listeners (uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_private_edituser_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_edituser_listeners (uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_private_grades_fg_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_grades_fg_listeners (uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_private_grades_fg_ranges; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_grades_fg_ranges (uw_min, uw_max, uw_grade) FROM stdin;
98	100	Aplus/
89	90	A/
85	85	Aminus/
78	78	Bplus/
\.


--
-- Data for Name: uw_private_grades_fg_specialcase; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_grades_fg_specialcase (uw_username, uw_grade) FROM stdin;
\.


--
-- Data for Name: uw_private_ohpoll_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_ohpoll_listeners (uw_username, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_private_ohpoll_vote; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_private_ohpoll_vote (uw_time, uw_username, uw_votes) FROM stdin;
\.


--
-- Data for Name: uw_pset; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_pset (uw_psetnum, uw_released, uw_due, uw_gradesdue, uw_instructions) FROM stdin;
1	2016-02-10 16:00:00	2016-02-17 14:30:00	2016-02-24 14:30:00	<p>Interpreter, compiler, and related proofs for a simple language</p>\n
2	2016-02-17 16:00:00	2016-02-24 14:30:00	2016-03-02 14:30:00	<p>Tentatively: constructions and invariant verification for concurrent state machines</p>\n
3	2016-02-24 16:00:00	2016-03-02 14:30:00	2016-03-09 14:30:00	<p>Tentatively: model checking some concurrent programs, using clever abstractions</p>\n
4	2016-03-02 16:00:00	2016-03-09 14:30:00	2016-03-16 14:30:00	<p>Tentatively: verify a compiler for a Turing-complete language, using operational semantics</p>\n
5	2016-03-09 16:00:00	2016-03-16 14:30:00	2016-03-30 14:30:00	<p>Tentatively: implement and verify a taint-tracking analysis, which helps ensure lack of information leakage</p>\n
6	2016-03-16 16:00:00	2016-03-30 14:30:00	2016-04-06 14:30:00	<p>Tentatively: polymorphism with universal and existential types</p>\n
7	2016-03-30 16:00:00	2016-04-06 14:30:00	2016-04-16 14:30:00	<p>Tentatively: subtyping</p>\n
8	2016-04-06 16:00:00	2016-04-13 14:30:00	2016-04-20 14:30:00	<p>Tentatively: extending Hoare logic to handle recursive functions, using it to verify a tricky example or two</p>\n
9	2016-04-13 16:00:00	2016-04-20 14:30:00	2016-04-27 14:30:00	<p>Tentatively: extending Hoare logic with support for pointers</p>\n
10	2016-04-20 16:00:00	2016-04-27 14:30:00	2016-05-04 14:30:00	<p>Tentatively: verifying a few programs with separation logic</p>\n
11	2016-04-27 16:00:00	2016-05-04 14:30:00	2016-05-11 14:30:00	<p>Tenatively: case study model-checking a medium-sized concurrent program</p>\n
12	2016-05-04 16:00:00	2016-05-11 14:30:00	2016-05-18 14:30:00	<p>Tentatively: proving soundness of rely-guarantee logic and applying it to an example</p>\n
0	2016-02-03 16:00:00	2016-02-10 16:00:00	2016-02-17 14:30:00	<p>Some exercises with proofs about lists</p>\n
\.


--
-- Data for Name: uw_psetforum_adminlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetforum_adminlisteners (uw_psetnum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_psetforum_loggedinlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetforum_loggedinlisteners (uw_psetnum, uw_who, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_psetforum_message; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetforum_message (uw_psetnum, uw_thread, uw_when, uw_who, uw_text) FROM stdin;
\.


--
-- Data for Name: uw_psetforum_readonlylisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetforum_readonlylisteners (uw_psetnum, uw_who) FROM stdin;
\.


--
-- Data for Name: uw_psetforum_threads; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetforum_threads (uw_psetnum, uw_thread, uw_who, uw_text, uw_closed, uw_private) FROM stdin;
\.


--
-- Data for Name: uw_psetgrade; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetgrade (uw_psetnum, uw_psetstudent, uw_grader, uw_when, uw_grade, uw_comment) FROM stdin;
\.


--
-- Data for Name: uw_psetgrade_specificlisteners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetgrade_specificlisteners (uw_psetnum, uw_psetstudent, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_psetspec_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetspec_listeners (uw_psetnum, uw_username, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_psetspec_submission; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetspec_submission (uw_psetnum, uw_username, uw_filename, uw_content, uw_mimetype, uw_when) FROM stdin;
\.


--
-- Data for Name: uw_psetsub_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetsub_listeners (uw_psetnum, uw_username, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_psetsub_submission; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_psetsub_submission (uw_psetnum, uw_username, uw_hours, uw_suggestions, uw_filename, uw_content, uw_mimetype, uw_when) FROM stdin;
\.


--
-- Data for Name: uw_publiccal_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_publiccal_listeners (uw_kind, uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_sm_step; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_sm_step (uw_step) FROM stdin;
SteadyState/
\.


--
-- Data for Name: uw_smu_listeners; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_smu_listeners (uw_channel) FROM stdin;
\.


--
-- Data for Name: uw_spring2016_notables; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_spring2016_notables (uw_notable, uw_when) FROM stdin;
Registration Day	2016-02-01 12:00:00
First Day of Classes	2016-02-02 12:00:00
Registration Deadline	2016-02-05 12:00:00
Presidents Day - Holiday	2016-02-15 12:00:00
Monday Schedule of Classes	2016-02-16 12:00:00
Add Date	2016-03-04 12:00:00
Spring Vacation	2016-03-21 12:00:00
Spring Vacation	2016-03-22 12:00:00
Spring Vacation	2016-03-23 12:00:00
Spring Vacation	2016-03-24 12:00:00
Spring Vacation	2016-03-25 12:00:00
Campus Preview Weekend	2016-04-07 12:00:00
Campus Preview Weekend	2016-04-08 12:00:00
Campus Preview Weekend	2016-04-09 12:00:00
Campus Preview Weekend	2016-04-10 12:00:00
Patriots Day - Vacation	2016-04-18 12:00:00
Patriots Day - Vacation	2016-04-19 12:00:00
Drop Date	2016-04-21 12:00:00
Last Day of Classes	2016-05-12 12:00:00
\.


--
-- Data for Name: uw_user; Type: TABLE DATA; Schema: frap; Owner: www/frap
--

COPY uw_user (uw_kerberos, uw_mitid, uw_username, uw_password, uw_isinstructor, uw_ista, uw_isstudent, uw_hasdropped, uw_units, uw_subjectnum, uw_sectionnum, uw_lastname, uw_firstname, uw_middleinitial, uw_islistener) FROM stdin;
adamc		Adam Chlipala	\N	t	f	f	f							f
wangpeng		Peng Wang	\N	f	t	f	f							f
\.


--
-- Name: uw_ajaxupload_scratch_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_ajaxupload_scratch
    ADD CONSTRAINT uw_ajaxupload_scratch_pkey PRIMARY KEY (uw_handle);


--
-- Name: uw_ann_post_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_ann_post
    ADD CONSTRAINT uw_ann_post_pkey PRIMARY KEY (uw_when);


--
-- Name: uw_globalforum_message_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_globalforum_message
    ADD CONSTRAINT uw_globalforum_message_pkey PRIMARY KEY (uw_when, uw_thread);


--
-- Name: uw_lab_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lab
    ADD CONSTRAINT uw_lab_pkey PRIMARY KEY (uw_labnum);


--
-- Name: uw_lab_when; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lab
    ADD CONSTRAINT uw_lab_when UNIQUE (uw_when);


--
-- Name: uw_labforum_message_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_labforum_message
    ADD CONSTRAINT uw_labforum_message_pkey PRIMARY KEY (uw_labnum, uw_thread, uw_when);


--
-- Name: uw_labsub_submission_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_labsub_submission
    ADD CONSTRAINT uw_labsub_submission_pkey PRIMARY KEY (uw_username, uw_labnum, uw_when);


--
-- Name: uw_lecture_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lecture
    ADD CONSTRAINT uw_lecture_pkey PRIMARY KEY (uw_lecturenum);


--
-- Name: uw_lecture_when; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lecture
    ADD CONSTRAINT uw_lecture_when UNIQUE (uw_when);


--
-- Name: uw_lectureforum_message_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lectureforum_message
    ADD CONSTRAINT uw_lectureforum_message_pkey PRIMARY KEY (uw_lecturenum, uw_thread, uw_when);


--
-- Name: uw_lecturesub_submission_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_lecturesub_submission
    ADD CONSTRAINT uw_lecturesub_submission_pkey PRIMARY KEY (uw_username, uw_lecturenum, uw_when);


--
-- Name: uw_officehours_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_officehours
    ADD CONSTRAINT uw_officehours_pkey PRIMARY KEY (uw_when);


--
-- Name: uw_possibleofficehourstime_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_possibleofficehourstime
    ADD CONSTRAINT uw_possibleofficehourstime_pkey PRIMARY KEY (uw_time);


--
-- Name: uw_private_grades_fg_ranges_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_private_grades_fg_ranges
    ADD CONSTRAINT uw_private_grades_fg_ranges_pkey PRIMARY KEY (uw_max, uw_min);


--
-- Name: uw_private_grades_fg_specialcase_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_private_grades_fg_specialcase
    ADD CONSTRAINT uw_private_grades_fg_specialcase_pkey PRIMARY KEY (uw_username);


--
-- Name: uw_private_ohpoll_vote_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_private_ohpoll_vote
    ADD CONSTRAINT uw_private_ohpoll_vote_pkey PRIMARY KEY (uw_time, uw_username);


--
-- Name: uw_pset_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_pset
    ADD CONSTRAINT uw_pset_pkey PRIMARY KEY (uw_psetnum);


--
-- Name: uw_psetforum_message_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_psetforum_message
    ADD CONSTRAINT uw_psetforum_message_pkey PRIMARY KEY (uw_psetnum, uw_thread, uw_when);


--
-- Name: uw_psetgrade_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_psetgrade
    ADD CONSTRAINT uw_psetgrade_pkey PRIMARY KEY (uw_when, uw_psetnum, uw_psetstudent, uw_grader);


--
-- Name: uw_psetspec_submission_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_psetspec_submission
    ADD CONSTRAINT uw_psetspec_submission_pkey PRIMARY KEY (uw_username, uw_psetnum, uw_when);


--
-- Name: uw_psetsub_submission_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_psetsub_submission
    ADD CONSTRAINT uw_psetsub_submission_pkey PRIMARY KEY (uw_username, uw_psetnum, uw_when);


--
-- Name: uw_spring2016_notables_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_spring2016_notables
    ADD CONSTRAINT uw_spring2016_notables_pkey PRIMARY KEY (uw_when);


--
-- Name: uw_user_pkey; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_user
    ADD CONSTRAINT uw_user_pkey PRIMARY KEY (uw_kerberos);


--
-- Name: uw_user_username; Type: CONSTRAINT; Schema: frap; Owner: www/frap; Tablespace: 
--

ALTER TABLE ONLY uw_user
    ADD CONSTRAINT uw_user_username UNIQUE (uw_username);


--
-- Name: uw_labforum_message_parent; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_labforum_message
    ADD CONSTRAINT uw_labforum_message_parent FOREIGN KEY (uw_labnum) REFERENCES uw_lab(uw_labnum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_labsub_submission_key; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_labsub_submission
    ADD CONSTRAINT uw_labsub_submission_key FOREIGN KEY (uw_labnum) REFERENCES uw_lab(uw_labnum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_labsub_submission_user; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_labsub_submission
    ADD CONSTRAINT uw_labsub_submission_user FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_lectureforum_message_parent; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_lectureforum_message
    ADD CONSTRAINT uw_lectureforum_message_parent FOREIGN KEY (uw_lecturenum) REFERENCES uw_lecture(uw_lecturenum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_lecturesub_submission_key; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_lecturesub_submission
    ADD CONSTRAINT uw_lecturesub_submission_key FOREIGN KEY (uw_lecturenum) REFERENCES uw_lecture(uw_lecturenum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_lecturesub_submission_user; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_lecturesub_submission
    ADD CONSTRAINT uw_lecturesub_submission_user FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_private_grades_fg_specialcase_key; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_private_grades_fg_specialcase
    ADD CONSTRAINT uw_private_grades_fg_specialcase_key FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_private_ohpoll_vote_choice; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_private_ohpoll_vote
    ADD CONSTRAINT uw_private_ohpoll_vote_choice FOREIGN KEY (uw_time) REFERENCES uw_possibleofficehourstime(uw_time) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_private_ohpoll_vote_voter; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_private_ohpoll_vote
    ADD CONSTRAINT uw_private_ohpoll_vote_voter FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_psetforum_message_parent; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetforum_message
    ADD CONSTRAINT uw_psetforum_message_parent FOREIGN KEY (uw_psetnum) REFERENCES uw_pset(uw_psetnum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_psetgrade_grader; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetgrade
    ADD CONSTRAINT uw_psetgrade_grader FOREIGN KEY (uw_grader) REFERENCES uw_user(uw_username) ON UPDATE CASCADE;


--
-- Name: uw_psetgrade_psetnum; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetgrade
    ADD CONSTRAINT uw_psetgrade_psetnum FOREIGN KEY (uw_psetnum) REFERENCES uw_pset(uw_psetnum) ON UPDATE CASCADE;


--
-- Name: uw_psetgrade_student; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetgrade
    ADD CONSTRAINT uw_psetgrade_student FOREIGN KEY (uw_psetstudent) REFERENCES uw_user(uw_username) ON UPDATE CASCADE;


--
-- Name: uw_psetspec_submission_key; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetspec_submission
    ADD CONSTRAINT uw_psetspec_submission_key FOREIGN KEY (uw_psetnum) REFERENCES uw_pset(uw_psetnum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_psetspec_submission_user; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetspec_submission
    ADD CONSTRAINT uw_psetspec_submission_user FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_psetsub_submission_key; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetsub_submission
    ADD CONSTRAINT uw_psetsub_submission_key FOREIGN KEY (uw_psetnum) REFERENCES uw_pset(uw_psetnum) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: uw_psetsub_submission_user; Type: FK CONSTRAINT; Schema: frap; Owner: www/frap
--

ALTER TABLE ONLY uw_psetsub_submission
    ADD CONSTRAINT uw_psetsub_submission_user FOREIGN KEY (uw_username) REFERENCES uw_user(uw_username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
