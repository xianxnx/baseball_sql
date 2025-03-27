BEGIN
   FOR rec IN (SELECT table_name FROM user_tables) LOOP
      EXECUTE IMMEDIATE 'DROP TABLE ' || rec.table_name || ' CASCADE CONSTRAINTS';
   END LOOP;
END;
/

--코칭스태프 테이블 생성
CREATE TABLE staff (
    staff_id NUMBER PRIMARY KEY, -- 스태프 식별 번호
    staff_num NUMBER,
    staff_pos VARCHAR2(20),      -- 스태프 별 포지션
    staff_name VARCHAR2(20)      -- 스태프 이름
);

CREATE CLUSTER match_cluster (
    match_date DATE
)
SIZE 512;  -- 각 클러스터의 블록 크기 지정
CREATE TABLE match (
    match_id NUMBER PRIMARY KEY,
    away_team VARCHAR2(30),
    match_result VARCHAR(5),
    home_away VARCHAR(10),
    match_date DATE UNIQUE,
    match_location VARCHAR(15)
) CLUSTER match_cluster (match_date);


INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3001, 'KT위즈', '패', '홈', TO_DATE('2024-10-05 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3002, 'KT위즈', '승', '홈', TO_DATE('2024-10-06 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3003, 'KT위즈', '승', '어웨이', TO_DATE('2024-10-08 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '수원');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3004, 'KT위즈', '패', '어웨이', TO_DATE('2024-10-09 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '수원');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3005, 'KT위즈', '승', '홈', TO_DATE('2024-10-11 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3006, '삼성라이온즈', '패', '패', TO_DATE('2024-10-13 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '대구');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3007, '삼성라이온즈', '패', '어웨이', TO_DATE('2024-10-15 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '대구');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3008, '삼성라이온즈', '승', '홈', TO_DATE('2024-10-17 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3009, '삼성라이온즈', '패', '홈', TO_DATE('2024-10-19 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3010, '기아타이거즈', NULL, '홈', TO_DATE('2024-10-21 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '잠실');
INSERT INTO match (match_id, away_team, match_result, home_away, match_date, match_location)
VALUES (3011, '기아타이거즈', NULL, '어웨이', TO_DATE('2024-10-23 14:00:11', 'YYYY-MM-DD HH24:MI:SS'), '광주');


--경기 테이블 생성
CREATE TABLE match (
    match_id NUMBER PRIMARY KEY,         -- 경기ID
    away_team VARCHAR(30),               -- 상대 팀
    match_result VARCHAR(5),             -- 경기 결과 (승/패)
    home_away VARCHAR(10),                -- 홈/어웨이
    match_date DATE UNIQUE,                      -- 경기 날짜 (시간 포함)
    match_location VARCHAR(15)           -- 경기 장소
);

--선수 테이블 생성
CREATE TABLE player (
    player_id NUMBER CHECK(player_id BETWEEN 1000 AND 2000) PRIMARY KEY, -- 선수 식별 번호
    player_name VARCHAR2(20) NOT NULL, -- 선수 이름
    player_number NUMBER UNIQUE NOT NULL, -- 선수 등번호
    player_birth DATE NOT NULL, -- 선수 생년월일
    player_nation VARCHAR2(30) NOT NULL -- 선수 국적
);

--투수기록 테이블 생성
CREATE TABLE Pitcher_Record (
    player_id NUMBER,                -- 선수ID
    match_id NUMBER,                 -- 경기ID
    inning NUMBER,                   -- 이닝
    hits NUMBER,                     -- 피안타수
    runs NUMBER,                     -- 실점수
    earned NUMBER,                   -- 자책수
    hit_by_pitch NUMBER,             -- 사구수
    strikeout NUMBER,                -- 삼진수
    homerun_allowed NUMBER,          -- 피홈런수
    batter NUMBER,                   -- 상대한 타자수
    at_bats NUMBER,                  -- 타수
    number_of_pitch NUMBER,         -- 투구수
    PRIMARY KEY (player_id, match_id) -- 선수ID와 경기ID를 조합하여 기본키 설정
);

--타자기록 테이블 생성
CREATE TABLE Batter_Record (
    player_id NUMBER(5),               -- 선수 식별 번호
    match_id NUMBER(5),                -- 경기 식별 번호
    hitter NUMBER(3),                  -- 선수 타수
    score NUMBER(3),                   -- 선수 득점수
    hits NUMBER(3),                    -- 선수 안타수
    RBIs NUMBER(3),                    -- 선수 타점수
    homeruns NUMBER(3),                -- 선수 홈런수
    balls NUMBER(3),                   -- 선수 볼넷수
    strikeout NUMBER(3),               -- 선수 삼진수
    stolen_bases NUMBER(3),            -- 선수 도루수
    batting_average NUMBER(5, 3),      -- 선수 타율 (소수점 3자리까지 저장)
    CONSTRAINT Batter_Record_PK PRIMARY KEY (player_id, match_id),  -- Primary key constraint
    CONSTRAINT Batter_Record_FK_player FOREIGN KEY (player_id) REFERENCES player (player_id),  -- 외래키: player 테이블의 player_id
    CONSTRAINT Batter_Record_FK_match FOREIGN KEY (match_id) REFERENCES match (match_id) -- 외래키: game 테이블의 match_id
);


--코치선수포지션 테이블 생성
CREATE TABLE coachplayer_pos (
    coachplayerpos_id VARCHAR(5) PRIMARY KEY,  -- 선수코치포지션ID
    player_pos VARCHAR(20),                   -- 선수 포지션
    coach_pos VARCHAR(20)                     -- 코치 포지션
);

--계약 테이블 생성
CREATE TABLE contract (
    contract_id NUMBER CHECK (contract_id BETWEEN 5000 AND 6000) PRIMARY KEY, -- 계약 ID (5000~6000)
    player_id NUMBER NOT NULL, -- 선수 ID
    player_salary NUMBER NOT NULL, -- 선수 연봉
    contract_start DATE NOT NULL, -- 계약 시작일
    FOREIGN KEY (player_id) REFERENCES player(player_id) -- 선수 테이블과의 외래 키 관계
);

--포지션 테이블 생성
CREATE TABLE position (
    player_id NUMBER(4),        -- 선수 식별 번호 (예: 1001)
    player_pos VARCHAR(20)      -- 선수 별 포지션 (예: 외야수)
);

--유니폼 정보 테이블 생성
CREATE TABLE Uniform_Details (
    uniformdetails_id NUMBER PRIMARY KEY, -- 고유한 유니폼 상세 ID
    uniform_type VARCHAR2(40), -- 유니폼 종류
    in_stock CHAR(2) NOT NULL, -- 품절 유무
    uniform_size NUMBER NOT NULL CHECK (uniform_size IN (85, 90, 95, 100, 105, 110, 115, 120)), -- 사이즈
    player_id NUMBER, -- 선수 식별 번호
    uniform_price NUMBER DEFAULT 59000, -- 가격
    
    FOREIGN KEY (player_id) REFERENCES player(player_id)
);

--회원 테이블 생성
CREATE TABLE Member (
    mem_id NUMBER CHECK (mem_id BETWEEN 2000 AND 2999) PRIMARY KEY, -- 회원 아이디 번호
    mem_name VARCHAR2(80) NOT NULL, -- 회원 이름
    mem_email VARCHAR2(80) UNIQUE NOT NULL, -- 회원 이메일
    mem_phonenum NUMBER UNIQUE NOT NULL, -- 회원 전화번호
    mem_startdate DATE NOT NULL, -- 가입일
    season_pass CHAR(5) DEFAULT 'N', -- 정기권 유무
    mem_age NUMBER NOT NULL -- 회원 나이
);

--유니폼 결제 테이블 생성
CREATE TABLE Uniform_Payment (
    order_id NUMBER PRIMARY KEY, -- 고유한 주문번호
    mem_id NUMBER CHECK (mem_id BETWEEN 2000 AND 2999) NOT NULL, 
    uniform_size NUMBER NOT NULL CHECK (uniform_size IN (85, 90, 95, 100, 105, 110, 115, 120)), 
    uniform_type VARCHAR2(40) NOT NULL, 
    player_id NUMBER, -- 선수 식별 번호 (NULL 허용)
    uniform_state VARCHAR2(20) NOT NULL, 
    payment_date DATE NOT NULL,
    uniformdetails_id NUMBER,
    FOREIGN KEY (mem_id) REFERENCES Member(mem_id),
    FOREIGN KEY (uniformdetails_id) REFERENCES Uniform_Details(uniformdetails_id)
);

--티켓 결제 테이블 생성
CREATE TABLE ticket_payment (
    payment_id NUMBER CHECK(payment_id BETWEEN 9000 AND 9999) PRIMARY KEY NOT NULL,
    mem_id NUMBER NOT NULL,
    seat_block NUMBER NOT NULL,
    ticket_state VARCHAR(20),
    payment_date DATE NOT NULL,
    match_date DATE NOT NULL,
    FOREIGN KEY (mem_id) REFERENCES Member(mem_id),
    FOREIGN KEY (match_date) REFERENCES Match(match_date)
);

--티켓가격 테이블 생성
CREATE TABLE TicketValue (
    ticket_id number not NULL,
    ticket_color VARCHAR(15) NOT NULL,
    ticket_price number,
    age VARCHAR(20) NOT NULL,
    weekdays_weekend VARCHAR(10) NOT NULL,
    PRIMARY KEY (ticket_id)
);
