--현재 생성된 모든 인덱스 보기
SELECT INDEX_NAME, TABLE_NAME, INDEX_TYPE
FROM USER_INDEXES;

--티켓 결제 테이블에서 회원ID를 보조인덱스로 설정
CREATE INDEX idx_ticket_mem_id ON ticket_payment (mem_id);
--유니폼 결제 테이블에서 유니폼 종류를 보조인덱스로 설정
CREATE INDEX idx_uniform_type ON Uniform_Payment (uniform_type);
