CREATE TABLE if not exists timetable.subjects (
	s_name text,
	max_h int,
	hours map<text, int>,
	s_sem int,
	s_week map<text, frozen <map<text, int>>>,
	PRIMARY KEY ((s_name), s_sem)
);


CREATE TABLE if not exists timetable.teachers (
	t_name text,
	max_hours int,
	groups int,
	subjects list<text>,
	PRIMARY KEY ((t_name), groups)
);


CREATE TABLE if not exists timetable.groups (
	g_name text,
	sem int,
	num int,
	hours_week int,
	PRIMARY KEY ((g_name), sem, num)
);


CREATE TABLE if not exists timetable.auditoriums (
	a_name text,
	a_type text,
	a_subjects map<text, boolean>,
	state boolean,
	a_time timestamp,
	PRIMARY KEY ((a_name), a_time, a_type)
);
