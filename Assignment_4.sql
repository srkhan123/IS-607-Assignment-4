--
-- Assignment4.sql
--


DROP TABLE IF EXISTS tblOrg;	-- Organization Chart

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblOrg
(
  EmployeeID 	Serial, 
  Name	 	VARCHAR,
  SupervisorID 	int,
  JobTitle 	VARCHAR
);

INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Steve Jobs', NULL, 'Chief Executive Officer (CEO)');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Timothy Cook', 1, 'Chief Operating Officer (COO)');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Jeffrey Williams', 2, 'SVP, Operations');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Jonathan Ive', 1, 'SVP,Industrial Design');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Ronald Johnson', 1, 'SVP, Retail');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Scott Forstall', 1, 'SVP, iOS Software');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Phillp Schiller', 1, 'SVP, Marketing');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Peter Openheimer', 1, 'SVP, Chief Financial Officer (CFO)');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Bruce Sewell', 1, 'SVP, General Counsel');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Bob Mansfield', 2, 'SVP, MAC Hardware Engineering');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Joel Poolny', 1, 'VP, HR');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Hiroki Asai', 1, 'VP, Creative Director');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Eddy Cue', 1, 'VP, Internet Services');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Craig Federighi', 1, 'VP, MAC Software Engineering');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Andy Miller', 1, 'VP, Mobile Advertising/ IAO');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Katie Cotton', 1, 'VP, Communications');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Micheal Fanger', 2, 'VP, iPhone Sales');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Douglas Beck', 2, 'VP, Apple Japan');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Jennifer Bailey', 2, 'VP, Online Stores');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('William Frederick', 3, 'VP, Fulfillment');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Rita Lane', 3, 'VP, Operations');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Sabih Khan', 3, 'VP, Operations');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Deirore O''Brian', 3, 'SVP, Operations');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Jerry McDougal', 5, 'SVP, Retail');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Henri Lamiraux', 6, 'VP, Engineering iOS Apps');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Greg Gilley',5, 'VP, Video Apps');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Roger Rosner', 5, 'VP, Productivity Apps');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Isabelle Ge Mahe', 6, 'VP, iOS Wireless Software');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Kim Vorrath', 6, 'VP, Program Management');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Jeff Robin', 13, 'VP, Consumer Apps');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Max Paley', 14, 'VP, Audio/ Video');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Simon Patience', 14, 'VP, Core OS');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Bud Tribble', 14, 'VP, MAC Software Technology');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Brian Croll', 7, 'VP, MAC Software Marketing');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Ron Okamoto', 7, 'VP, Developer Relations');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('David Moody', 7, 'VP, MAC Marketing');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Micheal Tchao', 7, 'VP, iPad Marketing');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Greg Joswiak', 7, 'VP, iPhone Marketing');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Betsy Rafael', 8, 'VP, Controller');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Gary Wipfler', 8, 'VP, Treasurer');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('John Theriault', 9, 'VP, Global Security');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Dan Riccio', 10, 'VP, iPad');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('David Tupman', 10, 'VP, Hardware Engineering, iPhone/iPad');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Steve Zadesky',10, 'VP, iPhone/ iPad Design');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('Micheal Culbert', 10, 'VP, Architecture');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('John Couch', 2, 'VP, Education Sales');
INSERT INTO tblOrg ( Name, SupervisorID, JobTitle ) VALUES ('John Brandon', 2, 'VP Channel Sales');

select tblorg.employeeid, tblorg.Name, tblorg.JobTitle as Job_title, --tblorg2.employeeid as Supervisorid, 
	tblorg2.name as Supervisor_Name, tblorg2.jobtitle as Supervisor_Title
from tblorg left outer join tblorg tblOrg2 
	on tblorg.supervisorid = tblorg2.employeeid
order by employeeid




------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
