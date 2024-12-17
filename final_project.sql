CREATE TABLE 교수 (
	PRIMARY KEY (교번),
	교수명	VARCHAR(50)
);

CREATE TABLE 강의실 (
	PRIMARY KEY (강의실번호	),
	좌석수	INT
);

CREATE TABLE 교과목 (
	PRIMARY KEY (과목번호),
	과목명	VARCHAR(50)
);

CREATE TABLE 학생 (
	PRIMARY KEY(학번),
	학생명	VARCHAR(50)
);