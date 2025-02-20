create table device
(
    id          int auto_increment
        primary key,
    device_id   int          null,
    has_charger bit          null,
    position    varchar(255) null,
    region      varchar(255) null
);

INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (1, 2022001990, true, '南一（最靠近农行和餐厅的）', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (2, 2022002003, true, '南二', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (3, 2022002005, true, '南三', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (4, 2022001981, true, '南四', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (5, 2022002001, true, '南五', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (6, 2022001988, true, '南六', '枣园中部');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (7, 2022001617, true, '左一（靠近体育场）', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (8, 2022001637, true, '左二', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (9, 2022001643, true, '左三', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (10, 2022001632, true, '左四', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (11, 2022001645, true, '左五', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (12, 2022001619, true, '左六', '枣园北部左边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (13, 2022001649, true, '右一（距离宿舍北门最近）', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (14, 2022001644, true, '右二', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (15, 2022001660, true, '右三', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (16, 2022001652, true, '右四', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (17, 2022001663, true, '右五', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (18, 2022001659, true, '右六', '枣园北部右边');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (19, 2022001621, true, '左1', '榴园宿舍后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (20, 2022001641, true, '左2', '榴园宿舍后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (21, 2022001642, true, '左3', '榴园宿舍后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (22, 2022001647, true, '左4', '榴园宿舍后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (23, 2022001658, true, '左1', '榴园信息技术学院后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (24, 2022001629, true, '左2', '榴园信息技术学院后');
INSERT INTO lynucharge.device (id, device_id, has_charger, position, region) VALUES (25, 2022001633, true, '左3（靠近G1）', '榴园信息技术学院后');
