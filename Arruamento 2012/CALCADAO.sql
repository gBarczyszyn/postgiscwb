SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE ippucarruamento2012.calcadao (gid serial,
tipo varchar(50),
nome varchar(75),
shape_area numeric,
shape_len numeric);
ALTER TABLE ippucarruamento2012.calcadao ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('ippucarruamento2012','calcadao','geom','4326','MULTIPOLYGON',2);
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'1.56024177000e+003','2.54638758000e+002','0106000020E6100000010000000103000000010000000600000000000852558E24410000EFB174695B410000E8CCF78E24410000939260695B410000007BD68E2441000018BE5E695B410000780FD78E24410000187E5F695B410000D89E428E244100000E5772695B4100000852558E24410000EFB174695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'2.26952675000e+003','2.69644678000e+002','0106000020E6100000010000000103000000010000000A00000000008066658124410000C6F55F665B4100006032C2812441000053B55A665B4100001800008224410000D03C57665B4100009814108224410000C65556665B41000070383882244100002C1C54665B410000B8992882244100004BB14F665B41000090B11782244100007A9E50665B4100001800008224410000E5EA51665B410000D81E57812441000093325B665B4100008066658124410000C6F55F665B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'1.85743901000e+003','2.71964815000e+002','0106000020E6100000010000000103000000010000000A0000000000D89E1D8F24410000EFD12E6A5B410000683F0E8F2441000009FB336A5B4100009894118F2441000060BF356A5B410000889AF88F24410000910F2F6A5B4100003805F18F24410000DB832B6A5B410000C864A58F24410000A0A92D6A5B410000A8066D8F2441000065432F6A5B4100009814538F244100000300306A5B410000A0EB3E8F244100000E97306A5B410000D89E1D8F24410000EFD12E6A5B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'1.02543393000e+003','2.04661704000e+002','0106000020E6100000010000000103000000010000000800000000003885829024410000E59A426A5B410000C0705B9024410000609F2C6A5B410000580A48902441000089CB2C6A5B41000030AE5090244100007E84316A5B41000060614C90244100002CAC316A5B410000A8425290244100009302356A5B410000B8196B9024410000F918436A5B4100003885829024410000E59A426A5B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'9.47124470000e+002','2.01438594000e+002','0106000020E6100000010000000103000000010000000C0000000000A892B490244100004625246A5B4100005019BA902441000094AF246A5B410000E08BBC90244100003EF9246A5B410000389ABD90244100006241256A5B4100001815BE90244100004394256A5B4100001815BE902441000000E1256A5B410000F0A3BD90244100006D1E266A5B410000A8C25490244100002C6C296A5B410000C0705E90244100002C0C2C6A5B410000903D0391244100004B01276A5B410000A846E6902441000070A7256A5B410000A892B490244100004625246A5B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'2.47912989000e+003','3.15003328000e+002','0106000020E61000000100000001030000000100000007000000000000D1109C24410000DCF7FF6B5B410000086C4D9C244100006628076C5B41000060E11F9C24410000D02CF06B5B410000B8992C9C244100000E47EF6B5B41000070B8DE9B244100000370E46B5B410000A0EBFA9B2441000060EFF36B5B41000000D1109C24410000DCF7FF6B5B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'1.92351830000e+003','3.19938133000e+002','0106000020E6100000010000000103000000010000000F000000000018807C8D24410000D04C90695B41000050B33E8E24410000DBD377695B410000C0702C8E24410000745D75695B410000A06B6A8D244100009DA98D695B410000A0EB688D24410000A7D08D695B4100001029678D24410000D0EC8D695B410000780F658D2441000055F88D695B410000E0F5628D2441000003F08D695B410000F023618D244100000ED78D695B41000010A95F8D24410000EFB18D695B410000D81E7E8D24410000E54A91695B41000048DC7C8D244100009D1991695B41000038057C8D2441000003E090695B410000A8C27B8D24410000899B90695B41000018807C8D24410000D04C90695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'6.55216411000e+003','8.94200065000e+002','0106000020E6100000010000000103000000010000002D000000000000FB879024410000D0FCC6695B410000B8197090244100004BC1CB695B410000A06B2B91244100009382D5695B41000080E62D91244100006AA6D5695B410000588A2F91244100002CCCD5695B41000048DC309124410000A700D6695B4100003805329124410000A740D6695B4100007038339124410000B287D6695B410000503334912441000003D0D6695B410000D89E3491244100004B21D7695B41000080663491244100009D69D7695B41000000FB139124410000DB53E7695B410000007B139124410000EF81E7695B41000090BD1291244100007EA4E7695B41000050B3119124410000EFC1E7695B410000E84C1091244100000ED7E7695B41000008520E91244100000EE7E7695B410000B8190C912441000037E3E7695B410000B81931912441000089CBE8695B410000A0EB2B9124410000DBE3E7695B41000018804C91244100002C4CD7695B4100001800A0912441000055A8DB695B41000070385F9224410000DBA3E5695B410000780F6092244100000EC7E5695B410000D89E609224410000E5EAE5695B41000048DC609224410000890BE6695B41000070B8609224410000F928E6695B4100003885719224410000D0ECE0695B410000B8196792244100000360E1695B4100001029DA9124410000602FDA695B410000F0A3AE9124410000B2D7D7695B410000007B5691244100009332D3695B41000028D77F91244100000330C0695B410000A8426A912441000089EBBE695B41000070386991244100005578BF695B41000028D73F91244100009392D1695B4100007038BA9024410000DBA3CA695B410000302E9C9024410000F9F8C8695B410000485C8A9024410000B207C8695B410000780F89902441000074EDC7695B410000F02388902441000022C5C7695B41000070B8879024410000F9A8C7695B410000E075879024410000A780C7695B410000007B8790244100002C3CC7695B41000000FB879024410000D0FCC6695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'7.28974620000e+002','1.22710732000e+002','0106000020E6100000010000000103000000010000000700000000009894798C24410000C6857E695B410000E0F55D8C244100006A9682695B410000A0EB8F8C244100002C9C88695B410000E0F58F8C244100007E8489695B4100001800B08C244100000ED785695B410000A0EB788C2441000093727F695B4100009894798C24410000C6857E695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'2.14772466000e+003','2.10297693000e+002','0106000020E6100000010000000103000000010000000C0000000000A06BD48F244100009DB9BD695B410000F0A3BB8F244100004B21C5695B4100008066BC8F244100009DE9C4695B4100001029BD8F24410000B2C7C4695B410000A0EBBD8F24410000DBB3C4695B41000090BDBE8F244100000EA7C4695B41000000FBBF8F24410000609FC4695B4100002857C18F24410000B2A7C4695B4100006061409024410000A7A0CB695B410000D89E5A90244100005548C4695B410000007B5790244100007E84C4695B410000A06BD48F244100009DB9BD695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'2.16458723000e+003','3.10514076000e+002','0106000020E6100000010000000103000000010000000B0000000000C847829324410000609FF4695B41000090BD8F932441000060FFF0695B410000800CBC922441000038F7E5695B410000903D9792244100002C0CE4695B410000F02396922441000041EAE3695B410000007B959224410000DBB3E3695B41000068339592244100002285E3695B41000080669592244100009352E3695B4100008066889224410000604FE8695B410000D89E8D9224410000D0DCE7695B410000C847829324410000609FF4695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'7.95466465000e+003','9.32269116000e+002','0106000020E61000000100000001030000000100000033000000000038B88C8D244100008166B3695B410000E075CF8D24410000BCBEAA695B410000A0EB118E24410000417AAE695B410000007B148E244100005548AF695B410000101C268E24410000A03BAB695B4100000828038F2441000053CDB6695B41000010A9F68E244100003793BA695B41000008D2A08F24410000F938C3695B410000485CB88F244100000380BC695B410000A0B8B78F24410000639FBC695B410000A8BDB68F2441000025C5BC695B41000080B3B58F2441000044EABC695B410000708AB48F24410000FD08BD695B410000A83DB38F24410000A019BD695B410000A0E6B18F24410000AB20BD695B4100008061B08F24410000AB20BD695B4100003800AF8F24410000C915BD695B4100001076198F24410000F271B5695B4100001024208F24410000BF6EB4695B410000B08F078F24410000C915B2695B410000A0E65A8F244100000750A7695B410000885A8C8F24410000783CA1695B4100006061748F2441000082B49D695B4100001029758F244100000ED79D695B4100001880758F2441000074FD9D695B4100001880758F24410000D02C9E695B4100001029758F2441000082549E695B410000C8C7748F24410000606F9E695B41000030AE738F24410000189E9E695B410000588AE88E24410000188EB0695B410000302EE78E2441000037B3B0695B41000010A9E58E2441000074CDB0695B410000D8F0E38E24410000D0DCB0695B410000A0EBE18E244100006AE6B0695B4100001880E08E24410000F9E8B0695B410000A842DF8E2441000093E2B0695B410000D81E648E24410000C685AA695B410000903D0B8E24410000EFA1A5695B410000F875068E244100006A56A5695B410000588A058E24410000C645A5695B41000040D7048E24410000742DA5695B4100008838048E244100002C0CA5695B4100003805048E244100002CDCA4695B410000F023048E2441000082A4A4695B410000F875048E244100000E87A4695B41000000FB048E24410000D05CA4695B410000C8C7058E24410000743DA4695B410000782DF78D244100007425A6695B410000008DDF8D244100007C52A3695B4100001035788D2441000025AEB0695B41000038B88C8D244100008166B3695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'6.27450510000e+002','1.57396399000e+002','0106000020E61000000100000001030000000100000009000000000090BD078F2441000074CDFB695B410000C8C7018F24410000F908FE695B410000F033828F24410000DE63036A5B41000060E18B8F244100009312016A5B410000B8998A8F244100004B31016A5B41000080E6888F24410000413A016A5B410000C847878F244100009D39016A5B410000C070858F24410000D02C016A5B41000090BD078F2441000074CDFB695B41');
INSERT INTO ippucarruamento2012.calcadao (tipo,nome,shape_area,shape_len,geom) VALUES ('CALÇADÃO',NULL,'2.50628080000e+003','5.51464992000e+002','0106000020E6100000010000000103000000010000003500000000002857A28F244100004B61026A5B410000D8F09A8F244100009D39056A5B410000588A9B8F24410000890B056A5B410000A8429C8F2441000082E4046A5B410000903D9D8F2441000037C3046A5B41000018809E8F2441000074AD046A5B41000040D79F8F244100000EA7046A5B410000A842A18F24410000BCAE046A5B41000008525F90244100006AA60C6A5B41000038855090244100000300116A5B41000048C33C9024410000C6CD166A5B410000F8F5539024410000893B186A5B410000E8CC6A90244100008274116A5B410000A842719024410000411A116A5B41000020D2E090244100002295156A5B410000A06BE890244100009D79166A5B410000D044D6902441000069A9116A5B410000486ED69024410000E3C6116A5B4100001880D69024410000C0E4116A5B410000107AD69024410000AD02126A5B410000485CD690244100006320126A5B410000E826D69024410000923D126A5B410000A0DAD59024410000F259126A5B4100003878D590244100003C75126A5B4100005000D590244100002B8F126A5B4100008874D490244100007AA7126A5B41000038D6D39024410000F1BD126A5B410000A026D390244100004BD2126A5B410000C067D2902441000061E4126A5B410000709BD1902441000002F4126A5B410000B0C3D090244100000301136A5B410000B8E2CF9024410000440B136A5B410000C8FACE9024410000AD12136A5B410000D80DCE90244100002817136A5B410000B81ECD9024410000AB18136A5B410000682FCC90244100003517136A5B4100009042CB9024410000C412136A5B410000705ACA90244100006B0B136A5B410000E84C7F90244100005C29106A5B410000D0B7719024410000F5A30F6A5B41000018D5989024410000E843056A5B410000F8829C9024410000C6C4036A5B410000485C7C902441000074ED026A5B410000B0147F9024410000B257036A5B410000B8996A90244100003773096A5B410000188069902441000082B4096A5B41000020D2679024410000DBF3096A5B410000E8CC659024410000D01C0A6A5B41000090BD6390244100002C2C0A6A5B4100001029619024410000182E0A6A5B410000F8755D9024410000412A0A6A5B410000B8195A902441000037130A6A5B4100002857A28F244100004B61026A5B41');
CREATE INDEX calcadao_geom_gist ON ippucarruamento2012.calcadao USING GIST (geom);
COMMIT;