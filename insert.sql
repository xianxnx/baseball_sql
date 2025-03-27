--코칭스태프 데이터 삽입
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1001, '감독', '염경엽', 85);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1002, '투수', '김광삼', 99);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1003, '투수', '장진용', 93);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1004, '타격', '모창민', 97);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1005, '타격', '김재율', 94);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1006, '수비', '김일경', 73);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1007, '작전', '박용근', 84);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1008, '주루', '정수성', 83);
INSERT INTO staff (staff_id, staff_pos, staff_name, staff_num) VALUES (1009, '배터리', '박경완', 80);

--경기 테이블 데이터 삽입
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

--투수기록
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '엔스'), 3001, 5.35, 5, 3, 3, 2, 6, 1, 22, 20, 87);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3001, 1.65, 0, 0, 0, 1, 1, 0, 4, 3, 17);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3001, 2, 1, 0, 0, 0, 3, 0, 7, 7, 27);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '임찬규'), 3002, 5.35, 7, 2, 1, 0, 4, 0, 23, 22, 92);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3002, 1.65, 1, 0, 0, 2, 2, 0, 8, 6, 28);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3002, 1, 0, 0, 0, 0, 1, 0, 3, 3, 11);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3002, 1, 1, 0, 0, 2, 1, 0, 6, 4, 29);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '최원태'), 3003, 2.65, 5, 3, 2, 1, 4, 0, 14, 12, 65);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '손주영'), 3003, 5.35, 2, 0, 0, 0, 7, 0, 17, 17, 64);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3003, 0.35, 2, 2, 2, 0, 0, 1, 3, 3, 12);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3003, 0.65, 0, 0, 0, 0, 0, 0, 2, 2, 4);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '엔스'), 3004, 3.35, 6, 4, 4, 2, 3, 1, 18, 16, 72);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3004, 1.35, 1, 1, 1, 1, 1, 1, 6, 4, 32);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3004, 1, 1, 0, 0, 2, 1, 0, 6, 4, 22);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '함덕주'), 3004, 1.35, 0, 0, 0, 0, 1, 0, 4, 4, 15);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3004, 2, 3, 0, 0, 0, 4, 0, 9, 9, 32);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '백승현'), 3004, 1, 2, 1, 1, 2, 0, 0, 8, 4, 15);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '정우영'), 3004, 0.65, 1, 0, 0, 0, 1, 0, 3, 3, 8);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '임찬규'), 3005, 6, 3, 1, 1, 2, 4, 0, 22, 20, 89);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '손주영'), 3005, 2, 0, 0, 0, 1, 4, 0, 7, 6, 29);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3005, 1, 0, 0, 0, 1, 1, 0, 3, 2, 16);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '최원태'), 3006, 3, 7, 5, 5, 0, 3, 2, 16, 15, 50);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3006, 1, 1, 0, 0, 0, 0, 0, 3, 3, 9);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3006, 0.35, 1, 2, 2, 1, 1, 1, 3, 2, 15);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '정우영'), 3006, 0.65, 2, 0, 0, 0, 0, 0, 4, 4, 12);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김유영'), 3006, 1, 0, 0, 0, 1, 1, 0, 4, 3, 14);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '백승현'), 3006, 0.35, 1, 1, 1, 1, 0, 0, 3, 1, 11);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '이지강'), 3006, 0.65, 0, 0, 0, 2, 1, 0, 4, 1, 24);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '이종준'), 3006, 0, 2, 2, 2, 0, 0, 0, 2, 2, 9);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김대현'), 3006, 1, 0, 0, 0, 2, 2, 0, 5, 2, 22);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '손주영'), 3007, 4.35, 5, 4, 3, 2, 5, 1, 18, 16, 93);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3007, 0.65, 2, 1, 1, 0, 0, 1, 3, 3, 11);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '함덕주'), 3007, 0, 1, 1, 1, 0, 1, 0, 2, 1, 10);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3007, 1, 1, 0, 0, 1, 0, 4, 4, 15);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김유영'), 3007, 0, 2, 2, 2, 0, 0, 1, 2, 2, 5);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '백승현'), 3007, 1, 1, 1, 0, 0, 1, 4, 4, 12);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '정우영'), 3007, 0.35, 0, 1, 1, 1, 0, 0, 2, 1, 12);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '이종준'), 3007, 0.65, 2, 0, 0, 0, 0, 0, 4, 4, 12);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '임찬규'), 3008, 5.35, 3, 0, 0, 1, 4, 0, 20, 19, 84);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '에르난데스'), 3008, 3.65, 2, 0, 0, 1, 5, 0, 14, 13, 60);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '엔스'), 3009, 6, 1, 0, 0, 2, 8, 0, 21, 18, 103);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '손주영'), 3009, 1.65, 1, 1, 1, 0, 2, 1, 6, 6, 25);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '김진성'), 3009, 1, 1, 0, 0, 2, 0, 0, 6, 4, 23);
INSERT INTO Pitcher_Record (player_id, match_id, inning, hits, runs, earned, hit_by_pitch, strikeout, homerun_allowed, batter, at_bats, number_of_pitch)
VALUES ((SELECT player_id FROM player WHERE player_name = '유영찬'), 3009, 0.35, 0, 0, 0, 0, 0, 0, 1, 1, 5);

--타자기록
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기' AND ROWNUM = 1), 3001, 4, 1, 1, 0, 0, 0, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '신민재' AND ROWNUM = 1), 3001, 3, 1, 2, 0, 0, 1, 0, 2, 0.667)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴' AND ROWNUM = 1), 3001, 4, 0, 1, 1, 0, 0, 1, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '문보경' AND ROWNUM = 1), 3001, 4, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '오지환' AND ROWNUM = 1), 3001, 3, 0, 1, 0, 0, 1, 0, 1, 0.333)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '김대원' AND ROWNUM = 1), 3001, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '김현수' AND ROWNUM = 1), 3001, 4, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '박동원' AND ROWNUM = 1), 3001, 3, 0, 0, 0, 0, 0, 2, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '박해민' AND ROWNUM = 1), 3001, 3, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
        VALUES ((SELECT player_id FROM player WHERE player_name = '문성주' AND ROWNUM = 1), 3001, 3, 0, 0, 0, 0, 0, 0, 0, 0)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3002, 4, 1, 1, 1, 0, 1, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3002, 4, 0, 2, 3, 0, 1, 0, 1, 0.571)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3002, 4, 0, 1, 0, 0, 1, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3002, 4, 0, 0, 0, 0, 1, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3002, 4, 1, 2, 0, 0, 0, 2, 0, 0.429)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3002, 4, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3002, 2, 2, 1, 1, 0, 2, 0, 0, 0.2)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3002, 3, 2, 1, 0, 0, 0, 0, 1, 0.167)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3002, 3, 1, 2, 1, 0, 0, 0, 1, 0.333)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3003, 4, 1, 1, 2, 0, 0, 1, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3003, 4, 1,1,0,0,1,1,1,0.455)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3003, 5,1,3,3,1,0,2,0,0.385)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3003, 4,0,0,0,0,0,1,0,0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3003, 4, 1,2,1,1,1,1,0,0.333)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3003, 4, 0,0,0,0,1,0,0,0.273)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3003,3,0,1,0,0,0,0,0,0.091)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '최승민'), 3003, 0,1,0,0,0,0,0,0,0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '이영빈'), 3003, 2,0,1,0,0,1,0,0,0.375)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3003, 4, 1, 1, 0, 0, 0, 1, 0, 0.2)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3003, 2, 0, 1, 0, 0, 1, 0, 0, 0.375)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3004, 6, 0, 2, 0, 0, 0, 2, 0, 0.278)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3004, 5, 0, 1, 0, 0, 0, 2, 0, 0.375)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3004, 4, 0, 0, 0, 0, 1, 0, 0, 0.294)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3004, 3, 0, 0, 0, 0, 2, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3004, 4, 0, 0, 0, 0, 0, 1, 0, 0.231)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '최승민'), 3004, 0, 1, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '허도환'), 3004, 1, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3004, 5, 2, 2, 0, 0, 0, 0, 0, 0.313)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3004, 4, 1, 3, 2, 1, 0, 0, 0, 0.267)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김대원'), 3004, 0, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '이영빈'), 3004, 1, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3004, 4, 1, 1, 1, 0, 0, 0, 0, 0.214)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3004, 5, 0, 2, 1, 0, 0, 0, 1, 0.385)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3005, 4, 0, 1, 0, 0, 0, 1, 0, 0.273)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3005, 4, 2, 1, 0, 0, 0, 1, 1, 0.35)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3005, 3, 1, 1, 2, 0, 0, 0, 0, 0.3)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3005, 4, 0, 1, 0, 0, 0, 1, 0, 0.3)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3005, 4, 0, 1, 1, 0, 0, 0, 0, 0.263)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '최승민'), 3005, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3005, 4, 0, 1, 0, 0, 0, 0, 0, 0.053)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3005, 2, 0, 0, 0, 0, 1, 0, 0, 0.2)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3005, 3, 1, 1, 0, 0, 0, 0, 1, 0.235)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3005, 3, 0, 1, 1, 0, 0, 0, 0, 0.375)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3006, 5, 0, 0, 0, 0, 0, 0, 0, 0.222)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3006, 5, 0, 2, 1, 0, 0, 0, 0, 0.36)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3006, 3, 0, 0, 0, 0, 1, 1, 0, 0.261)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3006, 2, 0, 0, 0, 0, 1, 0, 0, 0.238)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3006, 4, 1, 1, 1, 1, 0, 0, 0, 0.292)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3006, 4, 1, 1, 0, 0, 0, 1, 0, 0.087)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3006, 4, 0, 0, 0, 0, 0, 1, 0, 0.158)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3006, 3, 1, 1, 0, 0, 1, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3006, 3, 1, 1, 0, 0, 0, 0, 0, 0.368)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김범석'), 3006, 1, 0, 0, 0, 0, 0, 1, 0, 0)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3007, 5, 1, 2, 0, 0, 0, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3007, 3, 1, 2, 0, 0, 1, 0, 0, 0.393)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '구본혁'), 3007, 1, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3007, 5, 0, 1, 0, 0, 0, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3007, 4, 1, 1, 4, 1, 1, 0, 0, 0.24)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3007, 4, 0, 1, 0, 0, 0, 1, 0, 0.286)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김대원'), 3007, 1, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3007, 4, 0, 1, 0, 0, 0, 1, 0, 0.111)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3007, 2, 0, 1, 0, 0, 1, 0, 0, 0.19)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '이주헌'), 3007, 1, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3007, 3, 1, 1, 1, 1, 0, 0, 0, 0.261)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김범석'), 3007, 1, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '이영빈'), 3007, 3, 1, 1, 0, 0, 0, 0, 0, 0.2)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3008, 2, 0, 1, 1, 0, 1, 0, 0, 0.265)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3008, 3, 0, 0, 0, 0, 1, 0, 0, 0.355)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3008, 3, 0, 0, 0, 0, 1, 0, 0, 0.226)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3008, 4, 0, 1, 0, 0, 0, 2, 0, 0.241)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3008, 2, 0, 0, 0, 0, 1, 1, 0, 0.267)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3008, 3, 0, 1, 0, 0, 0, 1, 0, 0.133)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3008, 2, 1, 0, 0, 0, 1, 0, 0, 0.174)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3008, 2, 0, 0, 0, 0, 2, 0, 0, 0.24)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3008, 3, 0, 2, 0, 0, 0, 0, 0, 0.409)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김대원'), 3008, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SELECT * FROM dual;
INSERT ALL
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '홍창기'), 3009, 2, 0, 0, 0, 0, 0, 0, 0, 0.25)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '신민재'), 3009, 4, 0, 0, 0, 0, 0, 0, 0, 0.314)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오스틴'), 3009, 4, 0, 0, 0, 0, 2, 0, 0, 0.2)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김현수'), 3009, 3, 0, 0, 0, 0, 0, 0, 0, 0.219)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '오지환'), 3009, 3, 0, 1, 0, 0, 0, 0, 0, 0.273)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문보경'), 3009, 2, 0, 1, 0, 0, 0, 0, 0, 0.156)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '최승민'), 3009, 0, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '구본혁'), 3009, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박동원'), 3009, 3, 0, 0, 0, 0, 2, 0, 0, 0.154)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '박해민'), 3009, 3, 0, 0, 0, 0, 1, 0, 0, 0.214)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '문성주'), 3009, 2, 0, 1, 0, 0, 0, 0, 0, 0.417)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '김대원'), 3009, 0, 0, 0, 0, 0, 0, 1, 0, 0)
    INTO Batter_Record (player_id, match_id, hitter, score, hits, RBIs, homeruns, balls, strikeout, stolen_bases, batting_average)
    VALUES ((SELECT player_id FROM player WHERE player_name = '이영빈'), 3009, 1, 0, 0, 0, 0, 0, 0, 0, 0.167)
SELECT * FROM dual;

--코치선수포지션 데이터 삽입
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6001', '감독', '투수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6002', '감독', '포수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6003', '감독', '내야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6004', '감독', '외야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6005', '투수', '투수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6006', '타격', '외야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6007', '타격', '내야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6008', '수비', '외야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6009', '수비', '내야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6010', '작전', '내야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6011', '작전', '외야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6012', '주루', '내야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6013', '주루', '외야수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6014', '배터리', '투수');
INSERT INTO coachplayer_pos (coachplayerpos_id, coach_pos, player_pos) VALUES ('6015', '배터리', '포수');

--포지션 데이터 삽입
INSERT ALL
    INTO position (player_id, player_pos) VALUES (1001, '투수')
    INTO position (player_id, player_pos) VALUES (1002, '투수')
    INTO position (player_id, player_pos) VALUES (1003, '투수')
    INTO position (player_id, player_pos) VALUES (1004, '투수')
    INTO position (player_id, player_pos) VALUES (1005, '투수')
    INTO position (player_id, player_pos) VALUES (1006, '투수')
    INTO position (player_id, player_pos) VALUES (1007, '투수')
    INTO position (player_id, player_pos) VALUES (1008, '투수')
    INTO position (player_id, player_pos) VALUES (1009, '투수')
    INTO position (player_id, player_pos) VALUES (1010, '투수')
    INTO position (player_id, player_pos) VALUES (1013, '투수')
    INTO position (player_id, player_pos) VALUES (1014, '투수')
    INTO position (player_id, player_pos) VALUES (1015, '투수')
    INTO position (player_id, player_pos) VALUES (1016, '투수')
    INTO position (player_id, player_pos) VALUES (1017, '투수')
    INTO position (player_id, player_pos) VALUES (1018, '투수')
    INTO position (player_id, player_pos) VALUES (1019, '투수')
    INTO position (player_id, player_pos) VALUES (1020, '투수')
    INTO position (player_id, player_pos) VALUES (1021, '투수')
    INTO position (player_id, player_pos) VALUES (1022, '투수')
    INTO position (player_id, player_pos) VALUES (1023, '투수')
    INTO position (player_id, player_pos) VALUES (1024, '투수')
    INTO position (player_id, player_pos) VALUES (1025, '투수')
    INTO position (player_id, player_pos) VALUES (1026, '투수')
    INTO position (player_id, player_pos) VALUES (1027, '투수')
    INTO position (player_id, player_pos) VALUES (1028, '투수')
    INTO position (player_id, player_pos) VALUES (1029, '투수')
    INTO position (player_id, player_pos) VALUES (1030, '포수')
    INTO position (player_id, player_pos) VALUES (1031, '포수')
    INTO position (player_id, player_pos) VALUES (1032, '포수')
    INTO position (player_id, player_pos) VALUES (1033, '포수')
    INTO position (player_id, player_pos) VALUES (1034, '포수')
    INTO position (player_id, player_pos) VALUES (1035, '내야수')
    INTO position (player_id, player_pos) VALUES (1036, '내야수')
    INTO position (player_id, player_pos) VALUES (1037, '내야수')
    INTO position (player_id, player_pos) VALUES (1038, '내야수')
    INTO position (player_id, player_pos) VALUES (1039, '내야수')
    INTO position (player_id, player_pos) VALUES (1040, '내야수')
    INTO position (player_id, player_pos) VALUES (1041, '내야수')
    INTO position (player_id, player_pos) VALUES (1042, '내야수')
    INTO position (player_id, player_pos) VALUES (1043, '내야수')
    INTO position (player_id, player_pos) VALUES (1044, '내야수')
    INTO position (player_id, player_pos) VALUES (1045, '내야수')
    INTO position (player_id, player_pos) VALUES (1046, '내야수')
    INTO position (player_id, player_pos) VALUES (1047, '내야수')
    INTO position (player_id, player_pos) VALUES (1048, '외야수')
    INTO position (player_id, player_pos) VALUES (1049, '외야수')
    INTO position (player_id, player_pos) VALUES (1050, '외야수')
    INTO position (player_id, player_pos) VALUES (1051, '외야수')
    INTO position (player_id, player_pos) VALUES (1052, '외야수')
    INTO position (player_id, player_pos) VALUES (1053, '외야수')
    INTO position (player_id, player_pos) VALUES (1054, '외야수')
    INTO position (player_id, player_pos) VALUES (1055, '외야수')
    INTO position (player_id, player_pos) VALUES (1056, '외야수')
SELECT * FROM dual;
