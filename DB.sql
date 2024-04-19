DROP DATABASE IF EXISTS `JMY_project`;
CREATE DATABASE `JMY_project`;
USE `JMY_project`;

# article 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# member 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(20) NOT NULL,
    loginPw CHAR(80) NOT NULL,
    `authLevel` SMALLINT(2) UNSIGNED DEFAULT 3 COMMENT '권한 레벨 (3=일반,7=관리자)',
    `name` CHAR(20) NOT NULL,
    nickname CHAR(20) NOT NULL,
    cellphoneNum CHAR(20) NOT NULL,
    email CHAR(50) NOT NULL,
    delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '탈퇴 여부 (0=탈퇴 전, 1=탈퇴 후)',
    delDate DATETIME COMMENT '탈퇴 날짜'
);


# article TD 생성
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목1',
`body` = '내용1';


INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목3',
`body` = '내용3';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목4',
`body` = '내용4';

# member TD 생성
# (관리자)
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
`authLevel` = 7,
`name` = '관리자',
nickname = '관리자',
cellphoneNum = '01012341234',
email = 'abcd@gmail.com';

# (일반)
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '회원1',
nickname = '회원1',
cellphoneNum = '01043214321',
email = 'abcde@gmail.com';

# (일반)
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '회원2',
nickname = '회원2',
cellphoneNum = '01056785678',
email = 'abcdef@gmail.com';

ALTER TABLE article ADD COLUMN memberId INT(10) UNSIGNED NOT NULL AFTER updateDate;

UPDATE article
SET memberId = 1
WHERE memberId = 0;

UPDATE article
SET memberId = 2
WHERE id IN (1,2);

UPDATE article
SET memberId = 3
WHERE id IN (3,4);


# board 테이블 생성
CREATE TABLE board(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    `code` CHAR(50) NOT NULL UNIQUE COMMENT 'notice(공지사항), free(자유), QnA(질의응답) ...',
    `name` CHAR(20) NOT NULL UNIQUE COMMENT '게시판 이름',
    delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '삭제 여부 (0=삭제 전, 1=삭제 후)',
    delDate DATETIME COMMENT '삭제 날짜'
);

# board TD 생성
INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'NOTICE',
`name` = '공지사항';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'FREE',
`name` = '자유';

INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'QnA',
`name` = '질의응답';

ALTER TABLE article ADD COLUMN boardId INT(10) UNSIGNED NOT NULL AFTER `memberId`;

UPDATE article
SET boardId = 1
WHERE boardId = 0;

UPDATE article
SET boardId = 1
WHERE id IN (1,2);

UPDATE article
SET boardId = 2
WHERE id = 3;

UPDATE article
SET boardId = 3
WHERE id = 4;

ALTER TABLE article ADD COLUMN hitCount INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `body`;

# reactionPoint 테이블 생성
CREATE TABLE reactionPoint(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    relTypeCode CHAR(50) NOT NULL COMMENT '관련 데이터 타입 코드',
    relId INT(10) NOT NULL COMMENT '관련 데이터 번호',
    `point` INT(10) NOT NULL
);

# reactionPoint 테스트 데이터 생성
# 1번 회원이 1번 글에 싫어요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
relTypeCode = 'article',
relId = 1,
`point` = -1;

# 1번 회원이 2번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
relTypeCode = 'article',
relId = 2,
`point` = 1;

# 2번 회원이 1번 글에 싫어요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
relTypeCode = 'article',
relId = 1,
`point` = -1;

# 2번 회원이 2번 글에 싫어요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
relTypeCode = 'article',
relId = 2,
`point` = -1;

# 3번 회원이 1번 글에 좋아요
INSERT INTO reactionPoint
SET regDate = NOW(),
updateDate = NOW(),
memberId = 3,
relTypeCode = 'article',
relId = 1,
`point` = 1;

# article 테이블에 좋아요 관련 컬럼 추가
ALTER TABLE article ADD COLUMN goodReactionPoint INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE article ADD COLUMN badReactionPoint INT(10) UNSIGNED NOT NULL DEFAULT 0;

# update join -> 기존 게시물의 good,bad RP 값을 RP 테이블에서 가져온 데이터로 채운다
UPDATE article AS A
INNER JOIN (
    SELECT RP.relTypeCode,RP.relId,
    SUM(IF(RP.point > 0, RP.point, 0)) AS goodReactionPoint,
    SUM(IF(RP.point < 0, RP.point * -1, 0)) AS badReactionPoint
    FROM reactionPoint AS RP
    GROUP BY RP.relTypeCode, RP.relId
) AS RP_SUM
ON A.id = RP_SUM.relId
SET A.goodReactionPoint = RP_SUM.goodReactionPoint,
A.badReactionPoint = RP_SUM.badReactionPoint;

# 댓글 테이블 생성
CREATE TABLE reply (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    relTypeCode CHAR(30) NOT NULL COMMENT '관련데이터타입코드',
    relId INT(10) UNSIGNED NOT NULL COMMENT '관련데이터번호',
    `body` TEXT NOT NULL
);

# 댓글 테스트데이터 생성
INSERT INTO reply
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
relTypeCode = 'article',
relId = 1,
`body` = '댓글 1';

INSERT INTO reply
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
relTypeCode = 'article',
relId = 1,
`body` = '댓글 2';

INSERT INTO reply
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
relTypeCode = 'article',
relId = 1,
`body` = '댓글 3';

INSERT INTO reply
SET regDate = NOW(),
updateDate = NOW(),
memberId = 3,
relTypeCode = 'article',
relId = 2,
`body` = '댓글 4';

# reply 테이블에 좋아요 관련 컬럼 추가
ALTER TABLE reply ADD COLUMN goodReactionPoint INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE reply ADD COLUMN badReactionPoint INT(10) UNSIGNED NOT NULL DEFAULT 0;


# themePlace 테이블 생성
CREATE TABLE themePlace(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` TEXT COMMENT '명칭',
    region TEXT COMMENT '지역',
    roadLocation TEXT COMMENT '소재지도로',
    latitude DOUBLE COMMENT '위도',
    longitude DOUBLE COMMENT '경도',
    phoneNumber TEXT COMMENT '전화번호',
    `body` TEXT COMMENT '내용',    
    price TEXT COMMENT '비용',
    imgAdr TEXT COMMENT '이미지주소',
    `type` TEXT COMMENT '타입'
);

# festival 테이블 생성
CREATE TABLE festival(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` TEXT COMMENT '명칭',
    `period` TEXT COMMENT '기간',
    region TEXT COMMENT '지역',
    roadLocation TEXT COMMENT '소재지도로',
    latitude DOUBLE COMMENT '위도',
    longitude DOUBLE COMMENT '경도',
    phoneNumber TEXT COMMENT '전화번호',
    `body` TEXT COMMENT '내용',    
    price TEXT COMMENT '비용',
    homePage TEXT COMMENT '홈페이지',
    imgAdr TEXT COMMENT '이미지주소',
    imgAdrs TEXT COMMENT '이미지모음'
);


CREATE TABLE festival_images (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    festival_id INT(10) UNSIGNED NOT NULL,
    image_url TEXT,
    FOREIGN KEY (festival_id) REFERENCES festival(id)
);

# 파일 테이블 추가
CREATE TABLE genFile (
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, # 번호
  regDate DATETIME DEFAULT NULL, # 작성날짜
  updateDate DATETIME DEFAULT NULL, # 갱신날짜
  delDate DATETIME DEFAULT NULL, # 삭제날짜
  delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0, # 삭제상태(0:미삭제,1:삭제)
  relTypeCode CHAR(50) NOT NULL, # 관련 데이터 타입(article, member)
  relId INT(10) UNSIGNED NOT NULL, # 관련 데이터 번호
  originFileName VARCHAR(100) NOT NULL, # 업로드 당시의 파일이름
  fileExt CHAR(10) NOT NULL, # 확장자
  typeCode CHAR(20) NOT NULL, # 종류코드 (common)
  type2Code CHAR(20) NOT NULL, # 종류2코드 (attatchment)
  fileSize INT(10) UNSIGNED NOT NULL, # 파일의 사이즈
  fileExtTypeCode CHAR(10) NOT NULL, # 파일규격코드(img, video)
  fileExtType2Code CHAR(10) NOT NULL, # 파일규격2코드(jpg, mp4)
  fileNo SMALLINT(2) UNSIGNED NOT NULL, # 파일번호 (1)
  fileDir CHAR(20) NOT NULL, # 파일이 저장되는 폴더명
  PRIMARY KEY (id),
  KEY relId (relTypeCode,relId,typeCode,type2Code,fileNo)
);


###############################################

INSERT INTO festival_images (festival_id, image_url) VALUES
(1, 'https://cdn.pickmoa.net/news/photo/202403/5489_11363_144.jpg'),
(1, 'https://cdn.pickmoa.net/news/photo/202403/5489_11366_248.jpg'),
(1, 'https://www.ccnnews.co.kr/news/photo/202403/327171_407535_60.jpg'),
(1, 'https://cdn.newscj.com/news/photo/202403/3116546_3139328_1613.png'),
(2, 'https://is1-ssl.mzstatic.com/image/thumb/Ym5PjvgawfiRlo_8-Uyg0Q/1200x675.jpg'),
(2, 'https://entertainimg.kbsmedia.co.kr/cms/uploads/BBSIMAGE_20230527072303_a7e78c181fae7e02967762eaac69bf9e.jpg'),
(2, 'https://img.newspim.com/news/2024/03/07/2403071114530680.jpg'),
(2, 'https://newsimg-hams.hankookilbo.com/2024/03/04/e10e2a6e-0b4b-429c-861d-1441e42549a4.jpg'),
(3, 'https://www.newstnt.com/news/photo/202304/264857_271440_4344.jpg'),
(3, 'https://www.goodmorningcc.com/news/photo/202303/286351_314083_1026.jpg'),
(3, 'https://mblogthumb-phinf.pstatic.net/MjAyMzAzMjhfMTE0/MDAxNjc5OTI5NTE2ODg2.ligQKnDnGFchlVFSDGelKB0dAQZxC4mszoq9HZ6angQg.7GqA2abTncojOmjDxRyhbi1D8FnWkAFL-0xVLknAIz0g.JPEG.kso8888/SE-9dfab5fe-7b82-4e9f-98d2-e13f69da79f6.jpg?type=w800'),
(3, 'https://blog.kakaocdn.net/dn/bYo9MU/btr5RSV5bo8/8PTD0dq1rpaB5f8NJmwoZ0/img.jpg'),
(4, 'https://cdn.dtnews24.com/news/photo/202209/731879_338123_2743.jpg'),
(4, 'https://www.daejeontoday.com/news/photo/201903/541285_192161_5837.jpg'),
(4, 'https://lh3.googleusercontent.com/proxy/GzqcAYJmiQ17FIGdSbJmpRr71gcpi1kBQCEL0vf2FQaWvdg9aG3ozO-88F0HMpwSfGFPAEbgfSpb9ott_dAR2W4HKuz78R65jVzYeh8hMiAgrVg'),
(4, 'https://www.newstnt.com/news/photo/202209/225730_229687_123.jpg'),
(5, 'https://cdn.safetimes.co.kr/news/photo/202205/110852_94190_3328.jpg'),
(5, 'https://www.jbnews.com/news/photo/202305/1393519_1204663_610.jpg'),
(5, 'https://cdn.daejonilbo.com/news/photo/201505/1169501_176975_1342.jpg'),
(5, 'https://www.newstnt.com/news/photo/202305/274383_281360_1650.png'),
(6, 'https://file.mk.co.kr/meet/yonhap/2023/03/11/image_readtop_2023_193989_0_190212.jpg'),
(6, 'https://cdn.agrinet.co.kr/news/photo/202303/316760_50976_4624.jpg'),
(6, 'https://lh3.googleusercontent.com/proxy/DBzrSPLvLr9OXheLvB-vrWZdCr9mnIR8X3HDwWyUkhDrvZFiZI9BDJvY6Wttp-3ao7V0UtGnf1C6s8Re6ERay3n6gY4nWltc3tpfj0LH6IyB2aCA'),
(6, 'https://cdn.localtoday.co.kr/news/photo/202303/207554_207566_631.jpg'),
(7, 'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202204/21/b14ee7e0-380a-4ae0-9484-0fbc8eb9aaf8.jpg/_ir_/resize/1280'),
(7, 'https://www.goodmorningcc.com/news/photo/202303/286557_314351_13.jpg'),
(7, 'https://cdn.ngonews.kr/news/photo/201704/94262_29371_4115.jpg'),
(7, 'https://cdn.ggilbo.com/news/photo/201604/276604_206324_0102.jpg'),
(8, 'https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/1210586149/B.jpg?669000000'),
(8, 'https://img.khan.co.kr/news/2018/02/19/l_2018021901002161200178421.jpg'),
(8, 'https://www.sbnnews.co.kr/data/photos/20230310/art_16782551616766_0ec05d.jpg'),
(8, 'https://tong.visitkorea.or.kr/cms/resource/45/2948745_image2_1.jpg'),
(9, 'https://www.hongseong.go.kr/thumbnail/tursmCn/TUCN_2023101804022176516.jpg'),
(9, 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/86e5f381-79ef-4581-8676-a1e5b1610f35_1.JPG'),
(9, 'https://ojsfile.ohmynews.com/CT_T_IMG/2024/0120/IE003251450_LT.jpg'),
(9, 'https://img.asiatoday.co.kr/file/2024y/01m/11d/2024011101001239000068551.jpg'),
(10, 'https://tong.visitkorea.or.kr/cms/resource/15/2445115_image2_1.jpg'),
(10, 'https://www.ffestival.co.kr/img_up/shop_pds/kp575/design/my_xml/2022121531671093270.jpg'),
(10, 'https://image.여기유.com/content_festival/2020011608535515791324350851.jpg'),
(10, 'https://tong.visitkorea.or.kr/cms/resource/15/2445115_image2_1.jpg'),
(11, 'https://www.ehom.kr/news//2023/09/05/c2c6fdcc76f7ace1de372b5bc62be1be092910.jpg'),
(11, 'https://image.여기유.com/content_festival/2023091814445616950158966872.jpg'),
(11, 'https://cdn.eachj.co.kr/news/photo/202309/10652_18173_587.png'),
(11, 'data:image/jpeg;base64,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'),
(12, 'https://lh3.googleusercontent.com/proxy/7Ru0Xhp41przepLnjQiodQU7srg2uUWYp_xkTYT5-lKylO7zUrzwNRWp_ugZ8Ii3ye1xYC1ScA7pkotk3xSLj6dT5Sv5dSQbTXYhGaipBNWjeWpcgppCVXhXlQFA'),
(12, 'https://image.newsis.com/2022/03/30/NISI20220330_0000962997_web.jpg'),
(12, 'https://cdn.eronnews.co.kr/news/photo/202303/21791_35414_3056.jpg'),
(12, 'https://mblogthumb-phinf.pstatic.net/MjAyMjAzMjZfODcg/MDAxNjQ4MjgxNzk4NzM2.IXZDW808MgYZY7WkTqSertGuq1eEKGyTlytXBYKZx_Mg.HP3hkB24H2l-pBxfnDwNixwM63b_9sBb9MxTzcYX_a0g.JPEG.jinok0411/1648281795733.jpg?type=w800'),
(13, 'https://image.newsis.com/2024/02/23/NISI20240223_0001486233_web.jpg'),
(13, 'https://image.여기유.com/content_festival/2023030308431616778005962970.jpg'),
(13, 'https://t1.daumcdn.net/cfile/blog/99B90D3D5AD428552C'),
(13, 'https://image.dnews.co.kr/photo/photo/2011/04/04/201104041640501360511-2-25411.jpg'),
(14, 'https://img.seoul.co.kr/img/upload/2023/04/24/SSC_20230424000633.jpg'),
(14, 'https://www.dangjin.go.kr/uloads_clone/tursmCn/920_TUCN_201701120747060726.jpg'),
(14, 'https://www.glctimes.com/news/photo/202304/7433_9287_5446.jpg'),
(14, 'https://dn.joongdo.co.kr/mnt/images/file/2019y/04m/07d/2019040701000789600030911.jpg'),
(15, 'https://www.goodmorningcc.com/news/photo/202204/267569_287234_4213.jpg'),
(15, 'https://cdn.dailycc.net/news/photo/201204/88992_177606_816.JPG'),
(15, 'https://www.cctimes.kr/news/photo/201304/328533_107568_195.jpg'),
(15, 'https://mblogthumb-phinf.pstatic.net/MjAyMzA0MTdfMjc2/MDAxNjgxNzI4MDk2MTU4.6t1h87P_eFov1zwvboKWaeyqvDN1k0AsEI2WdVCuzE4g.USMWU3AXB9XBe1czBZpuvsFRdRdNas81ehtPiYCxTVUg.JPEG.seoul-lee1m/SE-ce347c5e-0ead-4bc6-af45-e7c78588d995.jpg?type=w800'),
(16, 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/7bb92f39-bc94-44fc-94fb-13c974770bdf_5.png'),
(16, 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/7bb92f39-bc94-44fc-94fb-13c974770bdf_6.png'),
(16, 'https://cdn.cctoday.co.kr/news/photo/202308/2182840_619878_3502.png'),
(16, 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/6d336733-0aff-46ee-8413-89db8fc7e832_10.JPG'),
(17, 'https://cnc.cacf.or.kr/_prog/download/index.php?d_type=1&filename=20230302093816_0082wjde46uy0i7qam2iutfsrf0i8f.jpg&func_gbn_cd=cult_evnt&site_dvs_cd=main'),
(17, 'https://img5.yna.co.kr/etc/inner/KR/2019/04/12/AKR20190412102100063_01_i_P4.jpg'),
(17, 'https://img0.yna.co.kr/etc/inner/KR/2020/04/21/AKR20200421127200063_02_i_P4.jpg'),
(17, 'https://www.ffestival.co.kr/img_up/shop_pds/kp575/bbs/dump_content/7a66198b746421a07c703b878d068c422314181.jpg'),
(18, 'https://www.ccnnews.co.kr/news/photo/202305/295566_368598_5037.jpg'),
(18, 'https://cdn.imweb.me/upload/S2020112077da751d9e507/ab7199ac15205.jpg'),
(18, 'https://www.newsprime.co.kr/data/photos/cdn/20230521/art_602463_1685248228.jpg'),
(18, 'https://www.ccnewsp.com/news/photo/202305/4163_4893_2625.jpg'),
(19, 'https://tong.visitkorea.or.kr/cms/resource/54/3109654_image2_1.jpg'),
(19, 'https://tong.visitkorea.or.kr/cms/resource/52/3109652_image2_1.jpg'),
(19, 'https://image.newsis.com/2023/04/04/NISI20230404_0001233855_web.jpg'),
(19, 'https://festivalgogo.co.kr/wp-content/uploads/2024/03/%EB%B2%9A%EA%BD%83%EC%B6%95%EC%A0%9C3-1024x762.jpg'),
(20, 'https://cdn.jbnews.com/news/photo/201903/1240749_1039230_2637.jpg'),
(20, 'https://www.munhwatoday.co.kr/data/photos/20230207/art_16767662943531_32e48e.jpg'),
(20, 'https://dimg.donga.com/wps/NEWS/IMAGE/2018/03/29/89374676.1.jpg'),
(20, 'https://www.sisats.com/news/photo/201603/img_country13_2507.jpg'),
(21, 'https://image.여기유.com/content_festival/2020011311475315788836739743.jpg'),
(21, 'https://image.여기유.com/content_festival/2020011311474715788836676082.jpg'),
(21, 'https://image.여기유.com/content_festival/2022062309573916559458595806.jpg'),
(21, 'https://image.newdaily.co.kr/site/data/img/2018/10/02/2018100200176_0.jpg'),
(22, 'https://cdn.dynews.co.kr/news/photo/201806/411881_71382_05.jpg'),
(22, 'https://www.inews365.com/data/photos/20180937/art_15367284973636.jpg'),
(22, 'https://dimg.donga.com/wps/NEWS/IMAGE/2018/08/29/91742430.1.jpg'),
(22, 'https://cdn.cbinews.co.kr/news/photo/201808/124161_65228_3144.jpg');

SELECT * FROM themePlace;

SELECT * FROM themePlace
WHERE region LIKE '충북%'
AND `type` = '공원';

SELECT * FROM themePlace
WHERE region = '대전'
AND `type` = '휴양림';

SELECT * FROM recreationalForest;

			SELECT *
			FROM festival
			WHERE id = 1
			
						SELECT *
			FROM festival F
			INNER JOIN festival_images I
			ON F.id = I.festival_id
			WHERE F.id = 1

SELECT * FROM festival;

SELECT * FROM festival_images;

SELECT * FROM parkPlace;

SELECT * FROM article;

SELECT * FROM `member`;

SELECT * FROM `board`;

SELECT * FROM reactionPoint;

SELECT * FROM `genFile`;

SELECT festival.*, festival_images.image_url 
FROM festival 
LEFT JOIN festival_images ON festival.id = festival_images.festival_id 
WHERE festival.id = 1;

SELECT festival.*, festival_images.image_url 
FROM festival 
LEFT JOIN festival_images ON festival.id = festival_images.festival_id
WHERE region LIKE '충북%';


SELECT *
FROM recreationalForest
WHERE region = '대전'


INSERT INTO article
(
    regDate, updateDate, memberId, boardId, title, `body`
)
SELECT NOW(),NOW(), FLOOR(RAND() * 2) + 2, FLOOR(RAND() * 3) + 1, CONCAT('제목_',RAND()), CONCAT('내용_',RAND())
FROM article;

UPDATE article 
SET title = '제목5'
WHERE id = 5;

UPDATE article 
SET title = '제목11'
WHERE id = 6;

UPDATE article 
SET title = '제목45'
WHERE id = 7;

SELECT FLOOR(RAND() * 2) + 2

SELECT FLOOR(RAND() * 3) + 1


SHOW FULL COLUMNS FROM `member`;
DESC `member`;



SELECT LAST_INSERT_ID();

SELECT *
FROM article AS A
WHERE 1

	AND boardId = 1

			AND A.title LIKE CONCAT('%','0000','%')
			OR A.body LIKE CONCAT('%','0000','%')

ORDER BY id DESC

SELECT COUNT(*)
FROM article AS A
WHERE 1
AND boardId = 1
AND A.title LIKE CONCAT('%','0000','%')
OR A.body LIKE CONCAT('%','0000','%')
ORDER BY id DESC


SELECT hitCount
FROM article
WHERE id = 374;

SELECT A.*
FROM article AS A
WHERE A.id = 1

SELECT A.*, M.nickname AS extra__writer
FROM article AS A
INNER JOIN `member` AS M
ON A.memberId = M.id
WHERE A.id = 1

# LEFT JOIN
SELECT A.*, M.nickname AS extra__writer, RP.point
FROM article AS A
INNER JOIN `member` AS M
ON A.memberId = M.id
LEFT JOIN reactionPoint AS RP
ON A.id = RP.relId AND RP.relTypeCode = 'article'
GROUP BY A.id
ORDER BY A.id DESC;

# 서브쿼리
SELECT A.*,
IFNULL(SUM(RP.point),0) AS extra__sumReactionPoint,
IFNULL(SUM(IF(RP.point > 0, RP.point, 0)),0) AS extra__goodReactionPoint,
IFNULL(SUM(IF(RP.point < 0, RP.point, 0)),0) AS extra__badReactionPoint
FROM (
    SELECT A.*, M.nickname AS extra__writer 
    FROM article AS A
    INNER JOIN `member` AS M
    ON A.memberId = M.id
    ) AS A
LEFT JOIN reactionPoint AS RP
ON A.id = RP.relId AND RP.relTypeCode = 'article'
GROUP BY A.id
ORDER BY A.id DESC;

# 조인
SELECT A.*, M.nickname AS extra__writer,
IFNULL(SUM(RP.point),0) AS extra__sumReactionPoint,
IFNULL(SUM(IF(RP.point > 0, RP.point, 0)),0) AS extra__goodReactionPoint,
IFNULL(SUM(IF(RP.point < 0, RP.point, 0)),0) AS extra__badReactionPoint
FROM article AS A
INNER JOIN `member` AS M
ON A.memberId = M.id
LEFT JOIN reactionPoint AS RP
ON A.id = RP.relId AND RP.relTypeCode = 'article'
GROUP BY A.id
ORDER BY A.id DESC;


SELECT *, COUNT(*)
FROM reactionPoint AS RP
GROUP BY RP.relTypeCode,RP.relId

SELECT IF(RP.point > 0, '큼','작음')
FROM reactionPoint AS RP
GROUP BY RP.relTypeCode,RP.relId

# 각 게시물의 좋아요, 싫어요 갯수
SELECT RP.relTypeCode, RP.relId,
SUM(IF(RP.point > 0,RP.point,0)) AS goodReactionPoint,
SUM(IF(RP.point < 0,RP.point * -1,0)) AS badReactionPoint
FROM reactionPoint AS RP
GROUP BY RP.relTypeCode,RP.relId

DROP DATABASE IF EXISTS `JMY_project`;
CREATE DATABASE `JMY_project`;
USE `JMY_project`;