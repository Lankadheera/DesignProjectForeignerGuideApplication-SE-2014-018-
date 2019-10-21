

CREATE TABLE `backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `backup_name` text NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(200) NOT NULL,
  `brand_image` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO brand VALUES("1","Apple","");
INSERT INTO brand VALUES("2","Asus","");
INSERT INTO brand VALUES("3","Dell","");
INSERT INTO brand VALUES("4","Canon","");
INSERT INTO brand VALUES("5","Hitach","");
INSERT INTO brand VALUES("6","HTC","");
INSERT INTO brand VALUES("7","Sony","");
INSERT INTO brand VALUES("8","Samsung","");
INSERT INTO brand VALUES("9","Huawei","");
INSERT INTO brand VALUES("10","Lenovo","");
INSERT INTO brand VALUES("11","Nokia","");





CREATE TABLE `cart` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `cart_price` double NOT NULL,
  `time_id` varchar(200) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO cart VALUES("26","34","2","26000","","1","3");
INSERT INTO cart VALUES("26","36","2","130","","1","3");
INSERT INTO cart VALUES("27","36","1","65","","1","3");
INSERT INTO cart VALUES("28","6","1","1","","1","3");
INSERT INTO cart VALUES("29","36","1","65","","1","3");
INSERT INTO cart VALUES("30","36","1","65","","1","3");
INSERT INTO cart VALUES("31","36","1","65","","1","3");
INSERT INTO cart VALUES("32","36","1","65","","1","3");





CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(200) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO category VALUES("1","Mobile Phones");
INSERT INTO category VALUES("2","Computers and tablets");
INSERT INTO category VALUES("3","TVs");
INSERT INTO category VALUES("4","Cameras");
INSERT INTO category VALUES("5","Audio and MP3");
INSERT INTO category VALUES("6","Electronic Home Appliances");





CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `name_en` varchar(45) DEFAULT NULL,
  `name_si` varchar(45) DEFAULT NULL,
  `name_ta` varchar(45) DEFAULT NULL,
  `sub_name_en` varchar(45) DEFAULT NULL,
  `sub_name_si` varchar(45) DEFAULT NULL,
  `sub_name_ta` varchar(45) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cities_districts1_idx` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1847 DEFAULT CHARSET=utf8;

INSERT INTO cities VALUES("1","1","Akkaraipattu","???????????","","","","","32400","7.2167","81.85");
INSERT INTO cities VALUES("2","1","Ambagahawatta","????????","","","","","90326","7.4","81.3");
INSERT INTO cities VALUES("3","1","Ampara","??????","???????","","","","32000","7.2833","81.6667");
INSERT INTO cities VALUES("4","1","Bakmitiyawa","??????????","","","","","32024","7.026268","81.633832");
INSERT INTO cities VALUES("5","1","Deegawapiya","????????","","","","","32006","7.2833","81.6667");
INSERT INTO cities VALUES("6","1","Devalahinda","???????","","","","","32038","7.1889","81.5778");
INSERT INTO cities VALUES("7","1","Digamadulla Weeragoda","?????????? ??????","","","","","32008","7.2833","81.6667");
INSERT INTO cities VALUES("8","1","Dorakumbura","????????","","","","","32104","7.358849","81.280133");
INSERT INTO cities VALUES("9","1","Gonagolla","????????","","","","","32064","7.449853","81.618014");
INSERT INTO cities VALUES("10","1","Hulannuge","????????","","","","","32514","7.4","81.3");
INSERT INTO cities VALUES("11","1","Kalmunai","???????","","","","","32300","7.413897","81.826718");
INSERT INTO cities VALUES("12","1","Kannakipuram","???????????","","","","","32405","7.2167","81.85");
INSERT INTO cities VALUES("13","1","Karativu","??????","","","","","32250","7.3833","81.8333");
INSERT INTO cities VALUES("14","1","Kekirihena","?????????","","","","","32074","7.490724","81.310836");
INSERT INTO cities VALUES("15","1","Koknahara","???????","","","","","32035","7.184832","81.555806");
INSERT INTO cities VALUES("16","1","Kolamanthalawa","??????????","","","","","32102","7.351733","81.249913");
INSERT INTO cities VALUES("17","1","Komari","??????","","","","","32418","6.976958","81.78883");
INSERT INTO cities VALUES("18","1","Lahugala","??????","","","","","32512","7.415566","81.33954");
INSERT INTO cities VALUES("19","1","lmkkamam","??????????","","","","","32450","7.1125","81.8542");
INSERT INTO cities VALUES("20","1","Mahaoya","????","","","","","32070","7.535248","81.351145");
INSERT INTO cities VALUES("21","1","Marathamune","?????????","","","","","32314","7.45","81.8167");
INSERT INTO cities VALUES("22","1","Namaloya","???????","","","","","32037","7.1889","81.5778");
INSERT INTO cities VALUES("23","1","Navithanveli","???????????","","","","","32308","7.4333","81.7833");
INSERT INTO cities VALUES("24","1","Nintavur","?????????","","","","","32340","7.35","81.85");
INSERT INTO cities VALUES("25","1","Oluvil","??????","","","","","32360","7.2833","81.85");
INSERT INTO cities VALUES("26","1","Padiyatalawa","????????","","","","","32100","7.4","81.2333");
INSERT INTO cities VALUES("27","1","Pahalalanda","???????","","","","","32034","7.21752","81.578714");
INSERT INTO cities VALUES("28","1","Panama","????","","","","","32508","6.812201","81.712237");
INSERT INTO cities VALUES("29","1","Pannalagama","???????","","","","","32022","7.0667","81.6167");
INSERT INTO cities VALUES("30","1","Paragahakele","????????","","","","","32031","7.25669","81.609526");
INSERT INTO cities VALUES("31","1","Periyaneelavanai","?????????????","","","","","32316","7.434002","81.814169");
INSERT INTO cities VALUES("32","1","Polwaga Janapadaya","?????? ?????","","","","","32032","7.1889","81.5778");
INSERT INTO cities VALUES("33","1","Pottuvil","????????","","","","","32500","6.8667","81.8333");
INSERT INTO cities VALUES("34","1","Sainthamaruthu","????????????","","","","","32280","7.3833","81.8333");
INSERT INTO cities VALUES("35","1","Samanthurai","????????","???????????","","","","32200","7.3833","81.8333");
INSERT INTO cities VALUES("36","1","Serankada","???????","","","","","32101","7.464517","81.263599");
INSERT INTO cities VALUES("37","1","Tempitiya","?????????","","","","","32072","7.610374","81.429907");
INSERT INTO cities VALUES("38","1","Thambiluvil","??????????","","","","","32415","7.132227","81.819074");
INSERT INTO cities VALUES("39","1","Tirukovil","?????????","","","","","32420","7.1167","81.85");
INSERT INTO cities VALUES("40","1","Uhana","???","","","","","32060","7.363281","81.637746");
INSERT INTO cities VALUES("41","1","Wadinagala","???????","","","","","32039","7.127849","81.56922");
INSERT INTO cities VALUES("42","1","Wanagamuwa","??????","","","","","32454","7.1125","81.8542");
INSERT INTO cities VALUES("43","2","Angamuwa","??????","","","","","50248","8.177645","80.205048");
INSERT INTO cities VALUES("44","2","Anuradhapura","??????????","","","","","50000","8.35","80.3833");
INSERT INTO cities VALUES("45","2","Awukana","?????","","","","","50169","7.9753","80.5266");
INSERT INTO cities VALUES("46","2","Bogahawewa","???????","","","","","50566","8.328993","80.251702");
INSERT INTO cities VALUES("47","2","Dematawewa","???????","","","","","50356","8.357373","80.870087");
INSERT INTO cities VALUES("48","2","Dimbulagala","????????","","","","","51031","7.9167","80.55");
INSERT INTO cities VALUES("49","2","Dutuwewa","???????","","","","","50393","8.65","80.5167");
INSERT INTO cities VALUES("50","2","Elayapattuwa","??????????","","","","","50014","8.413522","80.318148");
INSERT INTO cities VALUES("51","2","Ellewewa","????????","","","","","51034","7.9167","80.55");
INSERT INTO cities VALUES("52","2","Eppawala","???????","","","","","50260","8.1167","80.7333");
INSERT INTO cities VALUES("53","2","Etawatunuwewa","???????????","","","","","50584","8.5595","80.5476");
INSERT INTO cities VALUES("54","2","Etaweeragollewa","???????????","","","","","50518","8.613962","80.539713");
INSERT INTO cities VALUES("55","2","Galapitagala","???????","","","","","32066","8.089843","80.685528");
INSERT INTO cities VALUES("56","2","Galenbindunuwewa","??????????????","","","","","50390","8.5833","80.55");
INSERT INTO cities VALUES("57","2","Galkadawala","???????","","","","","50006","8.412861","80.378175");
INSERT INTO cities VALUES("58","2","Galkiriyagama","???????????","","","","","50120","7.9414","80.565");
INSERT INTO cities VALUES("59","2","Galkulama","???????","","","","","50064","8.270414","80.506526");
INSERT INTO cities VALUES("60","2","Galnewa","??????","","","","","50170","8.2","80.3667");
INSERT INTO cities VALUES("61","2","Gambirigaswewa","?????????????","","","","","50057","8.4667","80.3667");
INSERT INTO cities VALUES("62","2","Ganewalpola","?????????","","","","","50142","8.090528","80.628195");
INSERT INTO cities VALUES("63","2","Gemunupura","?????????","","","","","50224","8.0667","80.6833");
INSERT INTO cities VALUES("64","2","Getalawa","??????","","","","","50392","8.6167","80.5333");
INSERT INTO cities VALUES("65","2","Gnanikulama","????????","","","","","50036","8.297336","80.431753");
INSERT INTO cities VALUES("66","2","Gonahaddenawa","???????????","","","","","50554","8.5333","80.5083");
INSERT INTO cities VALUES("67","2","Habarana","????","","","","","50150","8.047531","80.748664");
INSERT INTO cities VALUES("68","2","Halmillawa Dambulla","???????? ??????","","","","","50124","7.9474","80.594");
INSERT INTO cities VALUES("69","2","Halmillawetiya","?????????????","","","","","50552","8.35","80.2667");
INSERT INTO cities VALUES("70","2","Hidogama","????????","","","","","50044","8.250421","80.418663");
INSERT INTO cities VALUES("71","2","Horawpatana","??????????","","","","","50350","8.4333","80.8667");
INSERT INTO cities VALUES("72","2","Horiwila","???????","","","","","50222","8.0667","80.6833");
INSERT INTO cities VALUES("73","2","Hurigaswewa","??????????","","","","","50176","8.1333","80.3667");
INSERT INTO cities VALUES("74","2","Hurulunikawewa","????????????","","","","","50394","8.6167","80.5333");
INSERT INTO cities VALUES("75","2","Ihala Puliyankulama","??? ???????????","","","","","61316","8.153213","80.559989");
INSERT INTO cities VALUES("76","2","Kagama","???","","","","","50282","8.061465","80.478039");
INSERT INTO cities VALUES("77","2","Kahatagasdigiliya","?????????????","","","","","50320","8.4167","80.6833");
INSERT INTO cities VALUES("78","2","Kahatagollewa","??????????","","","","","50562","8.45","80.65");
INSERT INTO cities VALUES("79","2","Kalakarambewa","???????","","","","","50288","8.0833","80.4667");
INSERT INTO cities VALUES("80","2","Kalaoya","?????","","","","","50226","8.0667","80.6833");
INSERT INTO cities VALUES("81","2","Kalawedi Ulpotha","??????? ??????","","","","","50556","8.5333","80.5083");
INSERT INTO cities VALUES("82","2","Kallanchiya","??????","","","","","50454","8.45","80.55");
INSERT INTO cities VALUES("83","2","Kalpitiya","????????","","","","","61360","8.2333","79.7667");
INSERT INTO cities VALUES("84","2","Kalukele Badanagala","??????? ??????","","","","","51037","7.9167","80.55");
INSERT INTO cities VALUES("85","2","Kapugallawa","????????","","","","","50370","8.4233","80.6783");
INSERT INTO cities VALUES("86","2","Karagahawewa","???????","","","","","50232","8.23416","80.322772");
INSERT INTO cities VALUES("87","2","Kashyapapura","??????????","","","","","51032","7.9167","80.55");
INSERT INTO cities VALUES("88","2","Kebithigollewa","?????????????","","","","","50500","8.5333","80.4833");
INSERT INTO cities VALUES("89","2","Kekirawa","???????","","","","","50100","8.037462","80.59801");
INSERT INTO cities VALUES("90","2","Kendewa","???????","","","","","50452","8.4833","80.6");
INSERT INTO cities VALUES("91","2","Kiralogama","???????","","","","","50259","8.19407","80.37012");
INSERT INTO cities VALUES("92","2","Kirigalwewa","??????????","","","","","50511","8.537767","80.556651");
INSERT INTO cities VALUES("93","2","Kirimundalama","???????????","","","","","61362","8.2333","79.7667");
INSERT INTO cities VALUES("94","2","Kitulhitiyawa","?????????????","","","","","50132","7.916592","80.63811");
INSERT INTO cities VALUES("95","2","Kurundankulama","?????????????","","","","","50062","8.2","80.45");
INSERT INTO cities VALUES("96","2","Labunoruwa","????????","","","","","50088","8.168026","80.617001");
INSERT INTO cities VALUES("97","2","Ihalagama","?????","","","","","50304","8.35","80.5");
INSERT INTO cities VALUES("98","2","Ipologama","???????","","","","","50280","8.0833","80.4667");
INSERT INTO cities VALUES("99","2","Madatugama","???????","","","","","50130","7.940041","80.638217");
INSERT INTO cities VALUES("100","2","Maha Elagamuwa","?? ??????","","","","","50126","7.991935","80.61824");
INSERT INTO cities VALUES("101","2","Mahabulankulama","??????????","","","","","50196","7.9753","80.5266");
INSERT INTO cities VALUES("102","2","Mahailluppallama","????????????","","","","","50270","8.106","80.3619");
INSERT INTO cities VALUES("103","2","Mahakanadarawa","????????","","","","","50306","8.35","80.5");
INSERT INTO cities VALUES("104","2","Mahapothana","???????","","","","","50327","8.4167","80.6833");
INSERT INTO cities VALUES("105","2","Mahasenpura","?????????","","","","","50574","8.5595","80.5476");
INSERT INTO cities VALUES("106","2","Mahawilachchiya","??????????","","","","","50022","8.2814","80.4588");
INSERT INTO cities VALUES("107","2","Mailagaswewa","??????????","","","","","50384","8.4","80.6333");
INSERT INTO cities VALUES("108","2","Malwanagama","???????","","","","","50236","8.225","80.3333");
INSERT INTO cities VALUES("109","2","Maneruwa","??????","","","","","50182","7.895997","80.475966");
INSERT INTO cities VALUES("110","2","Maradankadawala","?????????","","","","","50080","8.1333","80.4833");
INSERT INTO cities VALUES("111","2","Maradankalla","?????????","","","","","50308","8.317498","80.537899");
INSERT INTO cities VALUES("112","2","Medawachchiya","?????????","","","","","50500","8.540822","80.495957");
INSERT INTO cities VALUES("113","2","Megodawewa","????????","","","","","50334","8.2333","80.7333");
INSERT INTO cities VALUES("114","2","Mihintale","?????????","","","","","50300","8.35","80.5");
INSERT INTO cities VALUES("115","2","Morakewa","??????","","","","","50349","8.513051","80.778223");
INSERT INTO cities VALUES("116","2","Mulkiriyawa","???????????","","","","","50324","8.4167","80.6833");
INSERT INTO cities VALUES("117","2","Muriyakadawala","?????????","","","","","50344","8.236464","80.654663");
INSERT INTO cities VALUES("118","5","Colombo 15","???? 15","???????? 15","Modara","????","????????????","01500","6.959444","79.875278");
INSERT INTO cities VALUES("119","2","Nachchaduwa","???????","","","","","50046","8.2667","80.4667");
INSERT INTO cities VALUES("120","2","Namalpura","????????","","","","","50339","8.2333","80.7333");
INSERT INTO cities VALUES("121","2","Negampaha","???????","","","","","50180","7.9872","80.4597");
INSERT INTO cities VALUES("122","2","Nochchiyagama","??????????","","","","","50200","8.266802","80.20823");
INSERT INTO cities VALUES("123","2","Nuwaragala","??????","","","","","51039","7.9167","80.55");
INSERT INTO cities VALUES("124","2","Padavi Maithripura","???? ??????????","","","","","50572","8.5595","80.5476");
INSERT INTO cities VALUES("125","2","Padavi Parakramapura","???? ???????????","","","","","50582","8.5595","80.5476");
INSERT INTO cities VALUES("126","2","Padavi Sripura","???? ????????","","","","","50587","8.5595","80.5476");
INSERT INTO cities VALUES("127","2","Padavi Sritissapura","???? ?????????????","","","","","50588","8.5595","80.5476");
INSERT INTO cities VALUES("128","2","Padaviya","?????","","","","","50570","8.5595","80.5476");
INSERT INTO cities VALUES("129","2","Padikaramaduwa","?????????","","","","","50338","8.2333","80.7333");
INSERT INTO cities VALUES("130","2","Pahala Halmillewa","??? ??????????","","","","","50206","8.21672","80.19116");
INSERT INTO cities VALUES("131","2","Pahala Maragahawe","??? ??????","","","","","50220","8.0667","80.6833");
INSERT INTO cities VALUES("132","2","Pahalagama","?????","","","","","50244","8.186896","80.283767");
INSERT INTO cities VALUES("133","2","Palugaswewa","?????????","","","","","50144","8.053538","80.71918");
INSERT INTO cities VALUES("134","2","Pandukabayapura","????????????","","","","","50448","8.4467","80.46731");
INSERT INTO cities VALUES("135","2","Pandulagama","????????","","","","","50029","8.2814","80.4588");
INSERT INTO cities VALUES("136","2","Parakumpura","???????????","","","","","50326","8.4167","80.6833");
INSERT INTO cities VALUES("137","2","Parangiyawadiya","????????????","","","","","50354","8.491831","80.910014");
INSERT INTO cities VALUES("138","2","Parasangahawewa","??????????","","","","","50055","8.4333","80.4333");
INSERT INTO cities VALUES("139","2","Pelatiyawa","????????","","","","","51033","7.9167","80.55");
INSERT INTO cities VALUES("140","2","Pemaduwa","??????","","","","","50020","8.2814","80.4588");
INSERT INTO cities VALUES("141","2","Perimiyankulama","?????????????","","","","","50004","8.270584","80.535827");
INSERT INTO cities VALUES("142","2","Pihimbiyagolewa","??????????????","","","","","50512","8.5595","80.5476");
INSERT INTO cities VALUES("143","2","Pubbogama","????????","","","","","50122","7.9167","80.6");
INSERT INTO cities VALUES("144","2","Punewa","?????","","","","","50506","8.6167","80.4667");
INSERT INTO cities VALUES("145","2","Rajanganaya","????????","","","","","50246","8.1708","80.2833");
INSERT INTO cities VALUES("146","2","Rambewa","???????","","","","","50450","8.4333","80.5");
INSERT INTO cities VALUES("147","2","Rampathwila","?????????","","","","","50386","8.4","80.6333");
INSERT INTO cities VALUES("148","2","Rathmalgahawewa","???????????","","","","","50514","8.5595","80.5476");
INSERT INTO cities VALUES("149","2","Saliyapura","????????","","","","","50008","8.3389","80.4333");
INSERT INTO cities VALUES("150","2","Seeppukulama","??????????","","","","","50380","8.4","80.6333");
INSERT INTO cities VALUES("151","2","Senapura","???????","","","","","50284","8.0833","80.4667");
INSERT INTO cities VALUES("152","2","Sivalakulama","????????","","","","","50068","8.25237","80.641743");
INSERT INTO cities VALUES("153","2","Siyambalewa","???????","","","","","50184","7.95","80.5167");
INSERT INTO cities VALUES("154","2","Sravasthipura","?????????????","","","","","50042","8.2667","80.4333");
INSERT INTO cities VALUES("155","2","Talawa","????","","","","","50230","8.2167","80.35");
INSERT INTO cities VALUES("156","2","Tambuttegama","?????????","","","","","50240","8.15","80.3");
INSERT INTO cities VALUES("157","2","Tammennawa","??????????","","","","","50104","8.0333","80.6");
INSERT INTO cities VALUES("158","2","Tantirimale","??????????","","","","","50016","8.4","80.3");
INSERT INTO cities VALUES("159","2","Telhiriyawa","???????????","","","","","50242","8.15","80.3333");
INSERT INTO cities VALUES("160","2","Tirappane","????????","","","","","50072","8.2167","80.3833");
INSERT INTO cities VALUES("161","2","Tittagonewa","??????????","","","","","50558","8.7167","80.75");
INSERT INTO cities VALUES("162","2","Udunuwara Colony","??????? ??????","","","","","50207","8.2417","80.1917");
INSERT INTO cities VALUES("163","2","Upuldeniya","??????????","","","","","50382","8.4","80.6333");
INSERT INTO cities VALUES("164","2","Uttimaduwa","?????????","","","","","50067","8.254989","80.55487");
INSERT INTO cities VALUES("165","2","Vellamanal","?????????","","","","","31053","8.5167","81.1833");
INSERT INTO cities VALUES("166","2","Viharapalugama","???????????","","","","","50012","8.4","80.3");
INSERT INTO cities VALUES("167","2","Wahalkada","???????","","","","","50564","8.5667","80.6222");
INSERT INTO cities VALUES("168","2","Wahamalgollewa","????????????","","","","","50492","8.479838","80.497451");
INSERT INTO cities VALUES("169","2","Walagambahuwa","??????????","","","","","50086","8.153134","80.499049");
INSERT INTO cities VALUES("170","2","Walahaviddawewa","???????????","","","","","50516","8.5595","80.5476");
INSERT INTO cities VALUES("171","2","Welimuwapotana","???????????","","","","","50358","8.4333","80.8667");
INSERT INTO cities VALUES("172","2","Welioya Project","?????? ??????????","","","","","50586","8.5595","80.5476");
INSERT INTO cities VALUES("173","3","Akkarasiyaya","?????????","","","","","90166","6.7792","80.9208");
INSERT INTO cities VALUES("174","3","Aluketiyawa","??????????","","","","","90736","7.317155","81.127134");
INSERT INTO cities VALUES("175","3","Aluttaramma","????????","","","","","90722","7.2167","81.0667");
INSERT INTO cities VALUES("176","3","Ambadandegama","?????????","","","","","90108","6.81591","81.056492");
INSERT INTO cities VALUES("177","3","Ambagasdowa","????????","","","","","90300","6.928519","80.892126");
INSERT INTO cities VALUES("178","3","Arawa","????","","","","","90017","7.162769","81.07755");
INSERT INTO cities VALUES("179","3","Arawakumbura","?????????","","","","","90532","7.084925","81.198802");
INSERT INTO cities VALUES("180","3","Arawatta","???????","","","","","90712","7.328715","81.036976");
INSERT INTO cities VALUES("181","3","Atakiriya","?????????","","","","","90542","7.0667","81.1056");
INSERT INTO cities VALUES("182","3","Badulla","??????","","","","","90000","6.995365","81.048438");
INSERT INTO cities VALUES("183","3","Baduluoya","???????","","","","","90019","7.151852","81.023867");
INSERT INTO cities VALUES("184","3","Ballaketuwa","?????????","","","","","90092","6.862905","81.097249");
INSERT INTO cities VALUES("185","3","Bambarapana","??????","","","","","90322","7.1167","81.0375");
INSERT INTO cities VALUES("186","3","Bandarawela","?????????","","","","","90100","6.828867","80.990898");
INSERT INTO cities VALUES("187","3","Beramada","?????","","","","","90066","7.055713","80.987238");
INSERT INTO cities VALUES("188","3","Bibilegama","????????","","","","","90502","6.887473","81.141268");
INSERT INTO cities VALUES("189","3","Boragas","??????","","","","","90362","6.901625","80.840162");
INSERT INTO cities VALUES("190","3","Boralanda","???????","","","","","90170","6.828637","80.881603");
INSERT INTO cities VALUES("191","3","Bowela","?????","","","","","90302","6.95","80.9333");
INSERT INTO cities VALUES("192","3","Central Camp","?????? ?????","","","","","32050","7.3589","81.1759");
INSERT INTO cities VALUES("193","3","Damanewela","???????","","","","","32126","7.2125","81.0583");
INSERT INTO cities VALUES("194","3","Dambana","????","","","","","90714","7.3583","81.1083");
INSERT INTO cities VALUES("195","3","Dehiattakandiya","??????????????","","","","","32150","7.2125","81.0583");
INSERT INTO cities VALUES("196","3","Demodara","??????","","","","","90080","6.899055","81.053273");
INSERT INTO cities VALUES("197","3","Diganatenna","?????????","","","","","90132","6.8667","80.9667");
INSERT INTO cities VALUES("198","3","Dikkapitiya","??????????","","","","","90214","6.7381","80.9669");
INSERT INTO cities VALUES("199","3","Dimbulana","???????","","","","","90324","7.006897","80.948431");
INSERT INTO cities VALUES("200","3","Divulapelessa","????????????","","","","","90726","7.2167","81.0667");
INSERT INTO cities VALUES("201","3","Diyatalawa","???????","","","","","90150","6.8","80.9667");
INSERT INTO cities VALUES("202","3","Dulgolla","?????????","","","","","90104","6.819618","81.012115");
INSERT INTO cities VALUES("203","3","Ekiriyankumbura","?????????????","","","","","91502","7.269736","81.226709");
INSERT INTO cities VALUES("204","3","Ella","????","","","","","90090","6.874485","81.050937");
INSERT INTO cities VALUES("205","3","Ettampitiya","???????????","","","","","90140","6.9342","80.9853");
INSERT INTO cities VALUES("206","3","Galauda","????","","","","","90065","7.037347","80.981759");
INSERT INTO cities VALUES("207","3","Galporuyaya","??????????","","","","","90752","7.4","81.05");
INSERT INTO cities VALUES("208","3","Gawarawela","??????","","","","","90082","6.897394","81.069668");
INSERT INTO cities VALUES("209","3","Girandurukotte","??????????????","","","","","90750","7.4","81.05");
INSERT INTO cities VALUES("210","3","Godunna","???????","","","","","90067","7.071959","80.975003");
INSERT INTO cities VALUES("211","3","Gurutalawa","????????","","","","","90208","6.8431","80.9228");
INSERT INTO cities VALUES("212","3","Haldummulla","????????????","","","","","90180","6.77061","80.884385");
INSERT INTO cities VALUES("213","3","Hali Ela","???? ??","","","","","90060","6.95","81.0333");
INSERT INTO cities VALUES("214","3","Hangunnawa","????????","","","","","90224","6.948019","80.871427");
INSERT INTO cities VALUES("215","3","Haputale","??????","","","","","90160","6.7667","80.9667");
INSERT INTO cities VALUES("216","3","Hebarawa","?????","","","","","90724","7.2167","81.0667");
INSERT INTO cities VALUES("217","3","Heeloya","?????","","","","","90112","6.8212","80.9407");
INSERT INTO cities VALUES("218","3","Helahalpe","????????","","","","","90122","6.8212","80.9407");
INSERT INTO cities VALUES("219","3","Helapupula","????????","","","","","90094","6.8556","81.0722");
INSERT INTO cities VALUES("220","3","Hopton","???????","","","","","90524","6.9594","81.1552");
INSERT INTO cities VALUES("221","3","Idalgashinna","???????????","","","","","96167","6.7833","80.9");
INSERT INTO cities VALUES("222","3","Kahataruppa","????????","","","","","90052","7.023705","81.105188");
INSERT INTO cities VALUES("223","3","Kalugahakandura","???????????","","","","","90546","7.123675","81.094178");
INSERT INTO cities VALUES("224","3","Kalupahana","??????","","","","","90186","6.770298","80.854521");
INSERT INTO cities VALUES("225","3","Kebillawela","??????????","","","","","90102","6.816937","80.993072");
INSERT INTO cities VALUES("226","3","Kendagolla","??????????","","","","","90048","6.990765","81.110073");
INSERT INTO cities VALUES("227","3","Keselpotha","?????????","","","","","90738","7.32819","81.083285");
INSERT INTO cities VALUES("228","3","Ketawatta","???????","","","","","90016","7.103503","81.080813");
INSERT INTO cities VALUES("229","3","Kiriwanagama","????????","","","","","90184","6.971183","80.91551");
INSERT INTO cities VALUES("230","3","Koslanda","????????","","","","","90190","6.759935","81.027417");
INSERT INTO cities VALUES("231","3","Kuruwitenna","","","","","","90728","7.2167","81.0667");
INSERT INTO cities VALUES("232","3","Kuttiyagolla","","","","","","90046","7.0167","81.0833");
INSERT INTO cities VALUES("233","3","Landewela","","","","","","90068","7.002113","81.000496");
INSERT INTO cities VALUES("234","3","Liyangahawela","","","","","","90106","6.817452","81.032456");
INSERT INTO cities VALUES("235","3","Lunugala","","","","","","90530","7.041299","81.199335");
INSERT INTO cities VALUES("236","3","Lunuwatta","","","","","","90310","6.953933","80.917059");
INSERT INTO cities VALUES("237","3","Madulsima","","","","","","90535","7.045064","81.133375");
INSERT INTO cities VALUES("238","3","Mahiyanganaya","","","","","","90700","7.2444","81.1167");
INSERT INTO cities VALUES("239","3","Makulella","","","","","","90114","6.8212","80.9407");
INSERT INTO cities VALUES("240","3","Malgoda","","","","","","90754","7.4","81.05");
INSERT INTO cities VALUES("241","3","Mapakadawewa","","","","","","90730","7.3","81.1167");
INSERT INTO cities VALUES("242","3","Maspanna","","","","","","90328","7.024427","80.942159");
INSERT INTO cities VALUES("243","3","Maussagolla","","","","","","90582","6.898433","81.147817");
INSERT INTO cities VALUES("244","3","Mawanagama","","","","","","32158","7.2125","81.0583");
INSERT INTO cities VALUES("245","3","Medawela Udukinda","","","","","","90218","6.846","80.9279");
INSERT INTO cities VALUES("246","3","Meegahakiula","","","","","","90015","7.0833","80.9833");
INSERT INTO cities VALUES("247","3","Metigahatenna","","","","","","90540","6.9667","81.0833");
INSERT INTO cities VALUES("248","3","Mirahawatta","","","","","","90134","6.8817","80.9347");
INSERT INTO cities VALUES("249","3","Miriyabedda","","","","","","90504","6.9167","81.15");
INSERT INTO cities VALUES("250","3","Nawamedagama","","","","","","32120","7.2125","81.0583");
INSERT INTO cities VALUES("251","3","Nelumgama","","","","","","90042","7","81.0917");
INSERT INTO cities VALUES("252","3","Nikapotha","","","","","","90165","6.740622","80.97083");
INSERT INTO cities VALUES("253","3","Nugatalawa","","","","","","90216","6.9","80.8833");
INSERT INTO cities VALUES("254","3","Ohiya","","","","","","90168","6.821352","80.841789");
INSERT INTO cities VALUES("255","3","Pahalarathkinda","","","","","","90756","7.4","81.05");
INSERT INTO cities VALUES("256","3","Pallekiruwa","","","","","","90534","7.007551","81.227033");
INSERT INTO cities VALUES("257","3","Passara","","","","","","90500","6.935017","81.151166");
INSERT INTO cities VALUES("258","3","Pattiyagedara","","","","","","90138","6.8742","80.9507");
INSERT INTO cities VALUES("259","3","Pelagahatenna","","","","","","90522","6.9594","81.1552");
INSERT INTO cities VALUES("260","3","Perawella","","","","","","90222","6.943148","80.84264");
INSERT INTO cities VALUES("261","3","Pitamaruwa","","","","","","90544","7.106546","81.135882");
INSERT INTO cities VALUES("262","3","Pitapola","","","","","","90171","6.803692","80.884474");
INSERT INTO cities VALUES("263","3","Puhulpola","","","","","","90212","6.907145","80.931109");
INSERT INTO cities VALUES("264","3","Rajagalatenna","","","","","","32068","7.5458","81.125");
INSERT INTO cities VALUES("265","3","Ratkarawwa","","","","","","90164","6.8","80.9167");
INSERT INTO cities VALUES("266","3","Ridimaliyadda","","","","","","90704","7.2333","81.1");
INSERT INTO cities VALUES("267","3","Silmiyapura","","","","","","90364","6.912388","80.843988");
INSERT INTO cities VALUES("268","3","Sirimalgoda","","","","","","90044","7.003857","81.073671");
INSERT INTO cities VALUES("269","3","Siripura","","","","","","32155","7.2125","81.0583");
INSERT INTO cities VALUES("270","3","Sorabora Colony","","","","","","90718","7.3583","81.1083");
INSERT INTO cities VALUES("271","3","Soragune","","","","","","90183","6.8333","80.8778");
INSERT INTO cities VALUES("272","3","Soranatota","","","","","","90008","7.0167","81.05");
INSERT INTO cities VALUES("273","3","Taldena","","","","","","90014","7.0833","81.05");
INSERT INTO cities VALUES("274","3","Timbirigaspitiya","","","","","","90012","7.0333","81.05");
INSERT INTO cities VALUES("275","3","Uduhawara","","","","","","90226","6.94706","80.85877");
INSERT INTO cities VALUES("276","3","Uraniya","","","","","","90702","7.237143","81.102818");
INSERT INTO cities VALUES("277","3","Uva Karandagolla","","","","","","90091","6.8333","81.0667");
INSERT INTO cities VALUES("278","3","Uva Mawelagama","","","","","","90192","6.7333","81.0167");
INSERT INTO cities VALUES("279","3","Uva Tenna","","","","","","90188","6.8333","80.8778");
INSERT INTO cities VALUES("280","3","Uva Tissapura","","","","","","90734","7.3","81.1167");
INSERT INTO cities VALUES("281","3","Welimada","","","","","","90200","6.906059","80.913222");
INSERT INTO cities VALUES("282","3","Werunketagoda","","","","","","32062","7.5458","81.125");
INSERT INTO cities VALUES("283","3","Wewatta","","","","","","90716","7.337729","81.201255");
INSERT INTO cities VALUES("284","3","Wineethagama","","","","","","90034","7.029","80.937");
INSERT INTO cities VALUES("285","3","Yalagamuwa","","","","","","90329","7.047834","80.950541");
INSERT INTO cities VALUES("286","3","Yalwela","","","","","","90706","7.2667","81.15");
INSERT INTO cities VALUES("287","4","Addalaichenai","","","","","","32350","7.4833","81.75");
INSERT INTO cities VALUES("288","4","Ampilanthurai","??????????????","","","","","30162","7.8597","81.4411");
INSERT INTO cities VALUES("289","4","Araipattai","","","","","","30150","7.667705","81.725335");
INSERT INTO cities VALUES("290","4","Ayithiyamalai","","","","","","30362","7.670934","81.574798");
INSERT INTO cities VALUES("291","4","Bakiella","","","","","","30206","7.5083","81.7583");
INSERT INTO cities VALUES("292","4","Batticaloa","???????","","","","","30000","7.7167","81.7");
INSERT INTO cities VALUES("293","4","Cheddipalayam","???????????","","","","","30194","7.575161","81.783189");
INSERT INTO cities VALUES("294","4","Chenkaladi","????????","","","","","30350","7.7833","81.6");
INSERT INTO cities VALUES("295","4","Eravur","???????","","","","","30300","7.768518","81.619817");
INSERT INTO cities VALUES("296","4","Kaluwanchikudi","","","","","","30200","7.5167","81.7833");
INSERT INTO cities VALUES("297","4","Kaluwankemy","","","","","","30372","7.8","81.5667");
INSERT INTO cities VALUES("298","4","Kannankudah","","","","","","30016","7.675505","81.674125");
INSERT INTO cities VALUES("299","4","Karadiyanaru","","","","","","30354","7.689478","81.531117");
INSERT INTO cities VALUES("300","4","Kathiraveli","","","","","","30456","8.243933","81.360298");
INSERT INTO cities VALUES("301","4","Kattankudi","","","","","","30100","7.675","81.73");
INSERT INTO cities VALUES("302","4","Kiran","","","","","","30394","7.866841","81.529737");
INSERT INTO cities VALUES("303","4","Kirankulam","","","","","","30159","7.615628","81.764245");
INSERT INTO cities VALUES("304","4","Koddaikallar","","","","","","30249","7.6389","81.6639");
INSERT INTO cities VALUES("305","4","Kokkaddichcholai","","","","","","30160","7.8597","81.4411");
INSERT INTO cities VALUES("306","4","Kurukkalmadam","","","","","","30192","7.594069","81.77497");
INSERT INTO cities VALUES("307","4","Mandur","","","","","","30220","7.482114","81.762407");
INSERT INTO cities VALUES("308","4","Miravodai","","","","","","30426","7.9","81.5167");
INSERT INTO cities VALUES("309","4","Murakottanchanai","","","","","","30392","7.8667","81.5333");
INSERT INTO cities VALUES("310","4","Navagirinagar","","","","","","30238","7.525","81.725");
INSERT INTO cities VALUES("311","4","Navatkadu","","","","","","30018","7.5833","81.7167");
INSERT INTO cities VALUES("312","4","Oddamavadi","","","","","","30420","7.9167","81.5167");
INSERT INTO cities VALUES("313","4","Palamunai","","","","","","32354","7.4833","81.75");
INSERT INTO cities VALUES("314","4","Pankudavely","","","","","","30352","7.75","81.5667");
INSERT INTO cities VALUES("315","4","Periyaporativu","","","","","","30230","7.536243","81.764557");
INSERT INTO cities VALUES("316","4","Periyapullumalai","","","","","","30358","7.561255","81.47434");
INSERT INTO cities VALUES("317","4","Pillaiyaradi","","","","","","30022","7.75","81.6333");
INSERT INTO cities VALUES("318","4","Punanai","","","","","","30428","7.9667","81.3833");
INSERT INTO cities VALUES("319","4","Thannamunai","","","","","","30024","7.76355","81.645852");
INSERT INTO cities VALUES("320","4","Thettativu","","","","","","30196","7.5833","81.7833");
INSERT INTO cities VALUES("321","4","Thikkodai","","","","","","30236","7.525269","81.684177");
INSERT INTO cities VALUES("322","4","Thirupalugamam","","","","","","30234","7.525","81.725");
INSERT INTO cities VALUES("323","4","Unnichchai","","","","","","30364","7.6167","81.55");
INSERT INTO cities VALUES("324","4","Vakaneri","","","","","","30424","7.9167","81.4333");
INSERT INTO cities VALUES("325","4","Vakarai","","","","","","30450","8.165968","81.415623");
INSERT INTO cities VALUES("326","4","Valaichenai","","","","","","30400","7.7","81.6");
INSERT INTO cities VALUES("327","4","Vantharumoolai","","","","","","30376","7.807445","81.591476");
INSERT INTO cities VALUES("328","4","Vellavely","","","","","","30204","7.5","81.7333");
INSERT INTO cities VALUES("329","5","Akarawita","??????","","","","","10732","6.95","80.1");
INSERT INTO cities VALUES("330","5","Ambalangoda","??????????","","","","","80300","6.77533","79.96413");
INSERT INTO cities VALUES("331","5","Athurugiriya","??????????","","","","","10150","6.873072","79.997214");
INSERT INTO cities VALUES("332","5","Avissawella","????????????","","","","","10700","6.955003","80.211692");
INSERT INTO cities VALUES("333","5","Batawala","?????","","","","","10513","6.877924","80.051592");
INSERT INTO cities VALUES("334","5","Battaramulla","??????????","","","","","10120","6.900299","79.922136");
INSERT INTO cities VALUES("335","5","Biyagama","?????","","","","","11650","6.9408","79.9889");
INSERT INTO cities VALUES("336","5","Bope","????","","","","","10522","6.8333","80.1167");
INSERT INTO cities VALUES("337","5","Boralesgamuwa","???????????","","","","","10290","6.8425","79.9006");
INSERT INTO cities VALUES("338","5","Colombo 8","???? 8","???????? 8","Borella","???????","?????","00800","6.914722","79.877778");
INSERT INTO cities VALUES("339","5","Dedigamuwa","????????","","","","","10656","6.9115","80.0622");
INSERT INTO cities VALUES("340","5","Dehiwala","??????","","","","","10350","6.856387","79.865156");
INSERT INTO cities VALUES("341","5","Deltara","??????","","","","","10302","6.7833","79.9167");
INSERT INTO cities VALUES("342","5","Habarakada","?????","","","","","10204","6.882518","80.017704");
INSERT INTO cities VALUES("343","5","Hanwella","","","","","","10650","6.905988","80.083333");
INSERT INTO cities VALUES("344","5","Hiripitya","","","","","","10232","6.85","79.95");
INSERT INTO cities VALUES("345","5","Hokandara","","","","","","10118","6.890237","79.969894");
INSERT INTO cities VALUES("346","5","Homagama","","","","","","10200","6.85685","80.005384");
INSERT INTO cities VALUES("347","5","Horagala","","","","","","10502","6.807635","80.066995");
INSERT INTO cities VALUES("348","5","Kaduwela","","","","","","10640","6.930497","79.984817");
INSERT INTO cities VALUES("349","5","Kaluaggala","","","","","","11224","6.9167","80.1");
INSERT INTO cities VALUES("350","5","Kapugoda","","","","","","10662","6.9486","80.1");
INSERT INTO cities VALUES("351","5","Kehelwatta","","","","","","12550","6.75","79.9167");
INSERT INTO cities VALUES("352","5","Kiriwattuduwa","","","","","","10208","6.804157","80.009759");
INSERT INTO cities VALUES("353","5","Kolonnawa","","","","","","10600","6.933035","79.888095");
INSERT INTO cities VALUES("354","5","Kosgama","","","","","","10730","6.9333","80.1411");
INSERT INTO cities VALUES("355","5","Madapatha","","","","","","10306","6.766824","79.930103");
INSERT INTO cities VALUES("356","5","Maharagama","","","","","","10280","6.843401","79.932766");
INSERT INTO cities VALUES("357","5","Malabe","","","","","","10115","6.901241","79.958072");
INSERT INTO cities VALUES("358","5","Moratuwa","","","","","","10400","6.7733","79.8825");
INSERT INTO cities VALUES("359","5","Mount Lavinia","","","","","","10370","6.838864","79.863141");
INSERT INTO cities VALUES("360","5","Mullegama","","","","","","10202","6.887403","80.012959");
INSERT INTO cities VALUES("361","5","Napawela","","","","","","10704","6.9531","80.2183");
INSERT INTO cities VALUES("362","5","Nugegoda","","","","","","10250","6.877563","79.886231");
INSERT INTO cities VALUES("363","5","Padukka","","","","","","10500","6.837834","80.090301");
INSERT INTO cities VALUES("364","5","Pannipitiya","","","","","","10230","6.843999","79.944518");
INSERT INTO cities VALUES("365","5","Piliyandala","","","","","","10300","6.7981","79.9264");
INSERT INTO cities VALUES("366","5","Pitipana Homagama","","","","","","10206","6.8477","80.016");
INSERT INTO cities VALUES("367","5","Polgasowita","","","","","","10320","6.7842","79.9811");
INSERT INTO cities VALUES("368","5","Pugoda","","","","","","10660","6.9703","80.1222");
INSERT INTO cities VALUES("369","5","Ranala","","","","","","10654","6.915253","80.032962");
INSERT INTO cities VALUES("370","5","Siddamulla","","","","","","10304","6.815785","79.955978");
INSERT INTO cities VALUES("371","5","Siyambalagoda","","","","","","81462","6.800041","79.966845");
INSERT INTO cities VALUES("372","5","Sri Jayawardenepu","","","","","","10100","6.8897","79.9359");
INSERT INTO cities VALUES("373","5","Talawatugoda","","","","","","10116","6.8692","79.9411");
INSERT INTO cities VALUES("374","5","Tummodara","","","","","","10682","6.9061","80.1353");
INSERT INTO cities VALUES("375","5","Waga","","","","","","10680","6.9061","80.1353");
INSERT INTO cities VALUES("376","5","Colombo 6","???? 6","???????? 6","Wellawatta","?????????","??????????","00600","6.874657","79.860483");
INSERT INTO cities VALUES("377","6","Agaliya","?????","","","","","80212","6.1833","80.2");
INSERT INTO cities VALUES("378","6","Ahangama","?????","","","","","80650","5.970765","80.370204");
INSERT INTO cities VALUES("379","6","Ahungalla","?????????","","","","","80562","6.315216","80.03029");
INSERT INTO cities VALUES("380","6","Akmeemana","????????","","","","","80090","6.1845","80.3032");
INSERT INTO cities VALUES("381","6","Alawatugoda","????????","","","","","20140","6.4167","80");
INSERT INTO cities VALUES("382","6","Aluthwala","???????","","","","","80332","6.180801","80.136538");
INSERT INTO cities VALUES("383","6","Ampegama","???????","","","","","80204","6.193907","80.14453");
INSERT INTO cities VALUES("384","6","Amugoda","??????","","","","","80422","6.314635","80.22104");
INSERT INTO cities VALUES("385","6","Anangoda","???????","","","","","80044","6.0722","80.2389");
INSERT INTO cities VALUES("386","6","Angulugaha","???????","","","","","80122","6.036963","80.322148");
INSERT INTO cities VALUES("387","6","Ankokkawala","??????????","","","","","80048","6.05329","80.274014");
INSERT INTO cities VALUES("388","6","Aselapura","??????","","","","","51072","6.3167","80.0333");
INSERT INTO cities VALUES("389","6","Baddegama","???????","","","","","80200","6.165975","80.201841");
INSERT INTO cities VALUES("390","6","Balapitiya","???????","","","","","80550","6.269254","80.036054");
INSERT INTO cities VALUES("391","6","Banagala","????","","","","","80143","6.2706","80.42");
INSERT INTO cities VALUES("392","6","Batapola","?????","","","","","80320","6.235697","80.120034");
INSERT INTO cities VALUES("393","6","Bentota","???????","","","","","80500","6.4211","79.9989");
INSERT INTO cities VALUES("394","6","Boossa","?????","","","","","80270","6.2233","80.2");
INSERT INTO cities VALUES("395","6","Dellawa","??????","","","","","81477","6.335012","80.452741");
INSERT INTO cities VALUES("396","6","Dikkumbura","?????????","","","","","80654","6.012945","80.376153");
INSERT INTO cities VALUES("397","6","Dodanduwa","????????","","","","","80250","6.0967","80.1456");
INSERT INTO cities VALUES("398","6","Ella Tanabaddegama","???? ?????????","","","","","80402","6.2922","80.1988");
INSERT INTO cities VALUES("399","6","Elpitiya","????????","","","","","80400","6.300214","80.171923");
INSERT INTO cities VALUES("400","6","Galle","?????","","","","","80000","6.0536","80.2117");
INSERT INTO cities VALUES("401","6","Ginimellagaha","???????????","","","","","80220","6.2233","80.2");
INSERT INTO cities VALUES("402","6","Gintota","???????","","","","","80280","6.0564","80.1839");
INSERT INTO cities VALUES("403","6","Godahena","??????","","","","","80302","6.2333","80.0667");
INSERT INTO cities VALUES("404","6","Gonamulla Junction","???????? ?????","","","","","80054","6.0667","80.3");
INSERT INTO cities VALUES("405","6","Gonapinuwala","??????????","","","","","80230","6.2233","80.2");
INSERT INTO cities VALUES("406","6","Habaraduwa","???????","","","","","80630","6.0043","80.326");
INSERT INTO cities VALUES("407","6","Haburugala","???????","","","","","80506","6.4052","80.038306");
INSERT INTO cities VALUES("408","6","Hikkaduwa","","","","","","80240","6.139535","80.113201");
INSERT INTO cities VALUES("409","6","Hiniduma","","","","","","80080","6.316028","80.328888");
INSERT INTO cities VALUES("410","6","Hiyare","","","","","","80056","6.079898","80.317871");
INSERT INTO cities VALUES("411","6","Kahaduwa","","","","","","80460","6.2244","80.21");
INSERT INTO cities VALUES("412","6","Kahawa","","","","","","80312","6.185429","80.07601");
INSERT INTO cities VALUES("413","6","Karagoda","","","","","","80151","6.084182","80.395041");
INSERT INTO cities VALUES("414","6","Karandeniya","","","","","","80360","6.260467","80.072462");
INSERT INTO cities VALUES("415","6","Kosgoda","","","","","","80570","6.332288","80.028315");
INSERT INTO cities VALUES("416","6","Kottawagama","","","","","","80062","6.1375","80.3419");
INSERT INTO cities VALUES("417","6","Kottegoda","","","","","","81180","6.1667","80.1");
INSERT INTO cities VALUES("418","6","Kuleegoda","","","","","","80328","6.2167","80.1167");
INSERT INTO cities VALUES("419","6","Magedara","","","","","","80152","6.108129","80.393927");
INSERT INTO cities VALUES("420","6","Mahawela Sinhapura","","","","","","51076","6.3167","80.0333");
INSERT INTO cities VALUES("421","6","Mapalagama","","","","","","80112","6.234713","80.27784");
INSERT INTO cities VALUES("422","6","Mapalagama Central","","","","","","80116","6.2167","80.3");
INSERT INTO cities VALUES("423","6","Mattaka","","","","","","80424","6.302366","80.254218");
INSERT INTO cities VALUES("424","6","Meda-Keembiya","","","","","","80092","6.1845","80.3032");
INSERT INTO cities VALUES("425","6","Meetiyagoda","","","","","","80330","6.189135","80.093504");
INSERT INTO cities VALUES("426","6","Nagoda","","","","","","80110","6.201296","80.277829");
INSERT INTO cities VALUES("427","6","Nakiyadeniya","","","","","","80064","6.143029","80.338164");
INSERT INTO cities VALUES("428","6","Nawadagala","","","","","","80416","6.304655","80.134175");
INSERT INTO cities VALUES("429","6","Neluwa","","","","","","80082","6.37393","80.363267");
INSERT INTO cities VALUES("430","6","Nindana","","","","","","80318","6.207731","80.107663");
INSERT INTO cities VALUES("431","6","Pahala Millawa","","","","","","81472","6.293995","80.475431");
INSERT INTO cities VALUES("432","6","Panangala","","","","","","80075","6.274182","80.334525");
INSERT INTO cities VALUES("433","6","Pannimulla Panagoda","","","","","","80086","6.36","80.3653");
INSERT INTO cities VALUES("434","6","Parana ThanaYamgoda","","","","","","80114","6.2167","80.3");
INSERT INTO cities VALUES("435","6","Patana","","","","","","22012","6.1333","80.1167");
INSERT INTO cities VALUES("436","6","Pitigala","","","","","","80420","6.348894","80.217851");
INSERT INTO cities VALUES("437","6","Poddala","","","","","","80170","6.1167","80.2167");
INSERT INTO cities VALUES("438","6","Polgampola","","","","","","12136","6.3244","80.4383");
INSERT INTO cities VALUES("439","6","Porawagama","","","","","","80408","6.279568","80.231811");
INSERT INTO cities VALUES("440","6","Rantotuwila","","","","","","80354","6.3833","80.0833");
INSERT INTO cities VALUES("441","6","Talagampola","","","","","","80058","6.0667","80.3");
INSERT INTO cities VALUES("442","6","Talgaspe","","","","","","80406","6.3","80.2");
INSERT INTO cities VALUES("443","6","Talpe","","","","","","80615","6.0061","80.2961");
INSERT INTO cities VALUES("444","6","Tawalama","","","","","","80148","6.3333","80.3333");
INSERT INTO cities VALUES("445","6","Tiranagama","","","","","","80244","6.1333","80.1167");
INSERT INTO cities VALUES("446","6","Udalamatta","","","","","","80108","6.18924","80.306106");
INSERT INTO cities VALUES("447","6","Udugama","","","","","","80070","6.188469","80.338951");
INSERT INTO cities VALUES("448","6","Uluvitike","","","","","","80168","6.3056","80.309");
INSERT INTO cities VALUES("449","6","Unawatuna","","","","","","80600","6.0169","80.249901");
INSERT INTO cities VALUES("450","6","Unenwitiya","","","","","","80214","6.2417","80.225");
INSERT INTO cities VALUES("451","6","Uragaha","","","","","","80352","6.35","80.1167");
INSERT INTO cities VALUES("452","6","Uragasmanhandiya","","","","","","80350","6.358461","80.082277");
INSERT INTO cities VALUES("453","6","Wakwella","","","","","","80042","6.1","80.1833");
INSERT INTO cities VALUES("454","6","Walahanduwa","","","","","","80046","6.05443","80.251763");
INSERT INTO cities VALUES("455","6","Wanchawela","","","","","","80120","6.0333","80.3167");
INSERT INTO cities VALUES("456","6","Wanduramba","","","","","","80100","6.136388","80.252794");
INSERT INTO cities VALUES("457","6","Warukandeniya","","","","","","80084","6.381574","80.43131");
INSERT INTO cities VALUES("458","6","Watugedara","","","","","","80340","6.25","80.05");
INSERT INTO cities VALUES("459","6","Weihena","","","","","","80216","6.310127","80.23392");
INSERT INTO cities VALUES("460","6","Welikanda","","","","","","51070","6.3167","80.0333");
INSERT INTO cities VALUES("461","6","Wilanagama","","","","","","20142","6.4167","80");
INSERT INTO cities VALUES("462","6","Yakkalamulla","","","","","","80150","6.109027","80.349195");
INSERT INTO cities VALUES("463","6","Yatalamatta","","","","","","80107","6.172247","80.293052");
INSERT INTO cities VALUES("464","7","Akaragama","?????","","","","","11536","7.262603","79.958057");
INSERT INTO cities VALUES("465","7","Ambagaspitiya","??????????","","","","","11052","7.0833","80.0667");
INSERT INTO cities VALUES("466","7","Ambepussa","????????","","","","","11212","7.25","80.1667");
INSERT INTO cities VALUES("467","7","Andiambalama","?????????","","","","","11558","7.188346","79.902344");
INSERT INTO cities VALUES("468","7","Attanagalla","?????????","","","","","11120","7.1119","80.1328");
INSERT INTO cities VALUES("469","7","Badalgama","??????","","","","","11538","7.291218","79.978003");
INSERT INTO cities VALUES("470","7","Banduragoda","???????","","","","","11244","7.2319","80.0678");
INSERT INTO cities VALUES("471","7","Batuwatta","???????","","","","","11011","7.058399","79.932048");
INSERT INTO cities VALUES("472","7","Bemmulla","?????????","","","","","11040","7.120933","80.028191");
INSERT INTO cities VALUES("473","7","Biyagama IPZ","????? IPZ","","","","","11672","6.9492","80.0153");
INSERT INTO cities VALUES("474","7","Bokalagama","??????","","","","","11216","7.2333","80.15");
INSERT INTO cities VALUES("475","7","Bollete (WP)","???????","","","","","11024","7.0667","79.95");
INSERT INTO cities VALUES("476","7","Bopagama","?????","","","","","11134","7.079641","80.15868");
INSERT INTO cities VALUES("477","7","Buthpitiya","?????????","","","","","11720","7.042846","80.051854");
INSERT INTO cities VALUES("478","7","Dagonna","???????","","","","","11524","7.221568","79.927455");
INSERT INTO cities VALUES("479","7","Danowita","??????","","","","","11896","7.2028","80.1758");
INSERT INTO cities VALUES("480","7","Debahera","??????","","","","","11889","7.1389","80.0981");
INSERT INTO cities VALUES("481","7","Dekatana","?????","","","","","11690","6.968317","80.035385");
INSERT INTO cities VALUES("482","7","Delgoda","???????","","","","","11700","6.986583","80.01576");
INSERT INTO cities VALUES("483","7","Delwagura","????????","","","","","11228","7.265367","80.003272");
INSERT INTO cities VALUES("484","7","Demalagama","??????","","","","","11692","6.988934","80.046886");
INSERT INTO cities VALUES("485","7","Demanhandiya","???????????","","","","","11270","7.2333","79.9");
INSERT INTO cities VALUES("486","7","Dewalapola","????????","","","","","11102","7.162553","79.997446");
INSERT INTO cities VALUES("487","7","Divulapitiya","??????????","","","","","11250","7.2167","80.0156");
INSERT INTO cities VALUES("488","7","Divuldeniya","???????????","","","","","11208","7.3","80.1");
INSERT INTO cities VALUES("489","7","Dompe","??????","","","","","11680","6.949806","80.055083");
INSERT INTO cities VALUES("490","7","Dunagaha","?????","","","","","11264","7.2342","79.9756");
INSERT INTO cities VALUES("491","7","Ekala","???","","","","","11380","7.105558","79.91532");
INSERT INTO cities VALUES("492","7","Ellakkala","????????","","","","","11116","7.135968","80.132524");
INSERT INTO cities VALUES("493","7","Essella","","","","","","11108","7.178736","80.021603");
INSERT INTO cities VALUES("494","7","Galedanda","???????","","","","","90206","6.964202","79.930611");
INSERT INTO cities VALUES("495","7","Gampaha","?????","","","","","11000","7.0917","79.9942");
INSERT INTO cities VALUES("496","7","Ganemulla","????????","","","","","11020","7.064183","79.963294");
INSERT INTO cities VALUES("497","7","Giriulla","?????????","","","","","60140","7.3275","80.1267");
INSERT INTO cities VALUES("498","7","Gonawala","?????","","","","","11630","6.9612","79.9992");
INSERT INTO cities VALUES("499","7","Halpe","?????","","","","","70145","7.261935","80.10821");
INSERT INTO cities VALUES("500","7","Hapugastenna","","","","","","70164","7.1","80.1667");
INSERT INTO cities VALUES("501","7","Heiyanthuduwa","","","","","","11618","6.96283","79.963309");
INSERT INTO cities VALUES("502","7","Hinatiyana Madawala","","","","","","11568","7.1667","79.95");
INSERT INTO cities VALUES("503","7","Hiswella","","","","","","11734","7.021559","80.160869");
INSERT INTO cities VALUES("504","7","Horampella","","","","","","11564","7.185188","79.976771");
INSERT INTO cities VALUES("505","7","Hunumulla","","","","","","11262","7.244925","79.996921");
INSERT INTO cities VALUES("506","7","Hunupola","","","","","","60582","7.111463","80.130625");
INSERT INTO cities VALUES("507","7","Ihala Madampella","","","","","","11265","7.250345","79.960941");
INSERT INTO cities VALUES("508","7","Imbulgoda","","","","","","11856","7.035","79.9931");
INSERT INTO cities VALUES("509","7","Ja-Ela","","","","","","11350","7.076147","79.894932");
INSERT INTO cities VALUES("510","7","Kadawatha","","","","","","11850","7.0258","79.9882");
INSERT INTO cities VALUES("511","7","Kahatowita","","","","","","11144","7.0667","80.1167");
INSERT INTO cities VALUES("512","7","Kalagedihena","","","","","","11875","7.118004","80.058001");
INSERT INTO cities VALUES("513","7","Kaleliya","","","","","","11160","7.195","80.1136");
INSERT INTO cities VALUES("514","7","Kandana","","","","","","11320","7.05056","79.895123");
INSERT INTO cities VALUES("515","7","Katana","","","","","","11534","7.2517","79.9078");
INSERT INTO cities VALUES("516","7","Katudeniya","","","","","","21016","7.3","80.0833");
INSERT INTO cities VALUES("517","7","Katunayake","","","","","","11450","7.1647","79.8731");
INSERT INTO cities VALUES("518","7","Katunayake Air Force Camp","","","","","","11440","7.1407","79.8782");
INSERT INTO cities VALUES("519","7","Katunayake(FTZ)","","","","","","11420","7.1407","79.8782");
INSERT INTO cities VALUES("520","7","Katuwellegama","","","","","","11526","7.208557","79.94572");
INSERT INTO cities VALUES("521","7","Kelaniya","","","","","","11600","6.956357","79.921431");
INSERT INTO cities VALUES("522","7","Kimbulapitiya","","","","","","11522","7.202265","79.908937");
INSERT INTO cities VALUES("523","7","Kirindiwela","","","","","","11730","7.044223","80.126707");
INSERT INTO cities VALUES("524","7","Kitalawalana","","","","","","11206","7.3","80.1");
INSERT INTO cities VALUES("525","7","Kochchikade","","","","","","11540","7.2581","79.8542");
INSERT INTO cities VALUES("526","7","Kotadeniyawa","","","","","","11232","7.279861","80.05581");
INSERT INTO cities VALUES("527","7","Kotugoda","","","","","","11390","7.1217","79.9297");
INSERT INTO cities VALUES("528","7","Kumbaloluwa","","","","","","11105","7.179375","80.082233");
INSERT INTO cities VALUES("529","7","Loluwagoda","","","","","","11204","7.294586","80.126624");
INSERT INTO cities VALUES("530","7","Mabodale","","","","","","11114","7.2","80.0167");
INSERT INTO cities VALUES("531","7","Madelgamuwa","","","","","","11033","7.110062","79.948175");
INSERT INTO cities VALUES("532","7","Makewita","","","","","","11358","7.1","79.9333");
INSERT INTO cities VALUES("533","7","Makola","","","","","","11640","6.983178","79.9525");
INSERT INTO cities VALUES("534","7","Malwana","","","","","","11670","6.951988","80.012561");
INSERT INTO cities VALUES("535","7","Mandawala","","","","","","11061","7.003066","80.097082");
INSERT INTO cities VALUES("536","7","Marandagahamula","","","","","","11260","7.2447","79.9696");
INSERT INTO cities VALUES("537","7","Mellawagedara","","","","","","11234","7.285808","80.023977");
INSERT INTO cities VALUES("538","7","Minuwangoda","","","","","","11550","7.176455","79.954904");
INSERT INTO cities VALUES("539","7","Mirigama","","","","","","11200","7.2414","80.1325");
INSERT INTO cities VALUES("540","7","Miriswatta","","","","","","80508","7.0711","80.0183");
INSERT INTO cities VALUES("541","7","Mithirigala","","","","","","11742","6.9648","80.0648");
INSERT INTO cities VALUES("542","7","Muddaragama","","","","","","11112","7.2167","80.05");
INSERT INTO cities VALUES("543","7","Mudungoda","","","","","","11056","7.064698","79.999092");
INSERT INTO cities VALUES("544","7","Mulleriyawa New Town","","","","","","10620","6.9301","80.0549");
INSERT INTO cities VALUES("545","7","Naranwala","","","","","","11063","7.001631","80.027404");
INSERT INTO cities VALUES("546","7","Nawana","","","","","","11222","7.270062","80.092618");
INSERT INTO cities VALUES("547","7","Nedungamuwa","","","","","","11066","7.05","80.0333");
INSERT INTO cities VALUES("548","7","Negombo","","","","","","11500","7.2086","79.8358");
INSERT INTO cities VALUES("549","7","Nikadalupotha","","","","","","60580","7.1167","80.1333");
INSERT INTO cities VALUES("550","7","Nikahetikanda","","","","","","11128","7.099089","80.179551");
INSERT INTO cities VALUES("551","7","Nittambuwa","","","","","","11880","7.144243","80.096178");
INSERT INTO cities VALUES("552","7","Niwandama","","","","","","11354","7.078762","79.928331");
INSERT INTO cities VALUES("553","7","Opatha","","","","","","80142","7.132037","79.921419");
INSERT INTO cities VALUES("554","7","Pamunugama","","","","","","11370","7.094359","79.844569");
INSERT INTO cities VALUES("555","7","Pamunuwatta","","","","","","11214","7.214678","80.139696");
INSERT INTO cities VALUES("556","7","Panawala","","","","","","70612","6.9833","80.0333");
INSERT INTO cities VALUES("557","7","Pasyala","","","","","","11890","7.172926","80.115911");
INSERT INTO cities VALUES("558","7","Peliyagoda","","","","","","11830","6.960977","79.878852");
INSERT INTO cities VALUES("559","7","Pepiliyawala","","","","","","11741","7.002342","80.128886");
INSERT INTO cities VALUES("560","7","Pethiyagoda","","","","","","11043","7.1167","80.0167");
INSERT INTO cities VALUES("561","7","Polpithimukulana","","","","","","11324","7.0444","79.8782");
INSERT INTO cities VALUES("562","7","Puwakpitiya","","","","","","10712","7.040498","80.064451");
INSERT INTO cities VALUES("563","7","Radawadunna","","","","","","11892","7.177279","80.141344");
INSERT INTO cities VALUES("564","7","Radawana","","","","","","11725","7.029871","80.100915");
INSERT INTO cities VALUES("565","7","Raddolugama","","","","","","11400","7.140656","79.898198");
INSERT INTO cities VALUES("566","7","Ragama","","","","","","11010","7.025281","79.917386");
INSERT INTO cities VALUES("567","7","Ruggahawila","","","","","","11142","7.0667","80.1167");
INSERT INTO cities VALUES("568","7","Seeduwa","","","","","","11410","7.132059","79.885024");
INSERT INTO cities VALUES("569","7","Siyambalape","","","","","","11607","6.964545","79.986406");
INSERT INTO cities VALUES("570","7","Talahena","","","","","","11504","7.1667","79.8167");
INSERT INTO cities VALUES("571","7","Thambagalla","","","","","","60584","7.1167","80.1333");
INSERT INTO cities VALUES("572","7","Thimbirigaskatuwa","","","","","","11532","7.2669","79.9495");
INSERT INTO cities VALUES("573","7","Tittapattara","","","","","","10664","6.9297","80.0889");
INSERT INTO cities VALUES("574","7","Udathuthiripitiya","","","","","","11054","7.075","80.0333");
INSERT INTO cities VALUES("575","7","Udugampola","","","","","","11030","7.1167","79.9833");
INSERT INTO cities VALUES("576","7","Uggalboda","","","","","","11034","7.135549","79.948259");
INSERT INTO cities VALUES("577","7","Urapola","","","","","","11126","7.104792","80.136935");
INSERT INTO cities VALUES("578","7","Uswetakeiyawa","","","","","","11328","7.031046","79.860339");
INSERT INTO cities VALUES("579","7","Veyangoda","","","","","","11100","7.156981","80.095842");
INSERT INTO cities VALUES("580","7","Walgammulla","","","","","","11146","7.071902","80.116511");
INSERT INTO cities VALUES("581","7","Walpita","","","","","","11226","7.258131","80.034704");
INSERT INTO cities VALUES("582","7","Walpola (WP)","","","","","","11012","7.0418","79.9257");
INSERT INTO cities VALUES("583","7","Wathurugama","","","","","","11724","7.0421","80.0701");
INSERT INTO cities VALUES("584","7","Watinapaha","","","","","","11104","7.2","79.9833");
INSERT INTO cities VALUES("585","7","Wattala","","","","","","11104","6.990037","79.892207");
INSERT INTO cities VALUES("586","7","Weboda","","","","","","11858","7.0167","79.9833");
INSERT INTO cities VALUES("587","7","Wegowwa","","","","","","11562","7.178443","79.962063");
INSERT INTO cities VALUES("588","7","Weweldeniya","","","","","","11894","7.1834","80.1446");
INSERT INTO cities VALUES("589","7","Yakkala","","","","","","11870","7.1167","80.05");
INSERT INTO cities VALUES("590","7","Yatiyana","","","","","","11566","7.184998","79.931858");
INSERT INTO cities VALUES("591","8","Ambalantota","??????????","","","","","82100","6.114494","81.025983");
INSERT INTO cities VALUES("592","8","Angunakolapelessa","??????????????","","","","","82220","6.162261","80.899471");
INSERT INTO cities VALUES("593","8","Angunakolawewa","??????????","","","","","91302","6.389127","81.093226");
INSERT INTO cities VALUES("594","8","Bandagiriya Colony","????????? ??????","","","","","82005","6.1833","81.1389");
INSERT INTO cities VALUES("595","8","Barawakumbuka","????????","","","","","82110","6.1667","80.8167");
INSERT INTO cities VALUES("596","8","Beliatta","????????","","","","","82400","6.048637","80.734343");
INSERT INTO cities VALUES("597","8","Beragama","?????","","","","","82102","6.15","81.0667");
INSERT INTO cities VALUES("598","8","Beralihela","????????","","","","","82618","6.2556","81.2944");
INSERT INTO cities VALUES("599","8","Bundala","??????","","","","","82002","6.195164","81.250493");
INSERT INTO cities VALUES("600","8","Ellagala","??????","","","","","82619","6.26867","81.359512");
INSERT INTO cities VALUES("601","8","Gangulandeniya","?????????","","","","","82586","6.2833","80.7167");
INSERT INTO cities VALUES("602","8","Getamanna","????????","","","","","82420","6.036244","80.669146");
INSERT INTO cities VALUES("603","8","Goda Koggalla","??? ????????","","","","","82401","6.0333","80.75");
INSERT INTO cities VALUES("604","8","Gonagamuwa Uduwila","???????? ??????","","","","","82602","6.25","81.2917");
INSERT INTO cities VALUES("605","8","Gonnoruwa","?????????","","","","","82006","6.230443","81.112465");
INSERT INTO cities VALUES("606","8","Hakuruwela","????????","","","","","82248","6.146456","80.83047");
INSERT INTO cities VALUES("607","8","Hambantota","?????????","","","","","82000","6.127563","81.111287");
INSERT INTO cities VALUES("608","8","Handugala","?????","","","","","81326","6.188877","80.62414");
INSERT INTO cities VALUES("609","8","Hungama","","","","","","82120","6.108006","80.927144");
INSERT INTO cities VALUES("610","8","Ihala Beligalla","","","","","","82412","6.092378","80.747311");
INSERT INTO cities VALUES("611","8","Ittademaliya","","","","","","82462","6.167432","80.735179");
INSERT INTO cities VALUES("612","8","Julampitiya","","","","","","82252","6.2261","80.7403");
INSERT INTO cities VALUES("613","8","Kahandamodara","","","","","","82126","6.078654","80.902917");
INSERT INTO cities VALUES("614","8","Kariyamaditta","","","","","","82274","6.257359","80.809448");
INSERT INTO cities VALUES("615","8","Katuwana","","","","","","82500","6.2667","80.6972");
INSERT INTO cities VALUES("616","8","Kawantissapura","","","","","","82622","6.2786","81.2524");
INSERT INTO cities VALUES("617","8","Kirama","","","","","","82550","6.2117","80.6653");
INSERT INTO cities VALUES("618","8","Kirinda","","","","","","82614","6.268985","81.290653");
INSERT INTO cities VALUES("619","8","Lunama","","","","","","82108","6.098517","80.971511");
INSERT INTO cities VALUES("620","8","Lunugamwehera","","","","","","82634","6.3417","81.15");
INSERT INTO cities VALUES("621","8","Magama","","","","","","82608","6.280108","81.270354");
INSERT INTO cities VALUES("622","8","Mahagalwewa","","","","","","82016","6.1833","81.1389");
INSERT INTO cities VALUES("623","8","Mamadala","","","","","","82109","6.158126","80.96681");
INSERT INTO cities VALUES("624","8","Medamulana","","","","","","82254","6.175878","80.770016");
INSERT INTO cities VALUES("625","8","Middeniya","","","","","","82270","6.2494","80.7672");
INSERT INTO cities VALUES("626","8","Migahajandur","","","","","","82014","6.1833","81.1389");
INSERT INTO cities VALUES("627","8","Modarawana","","","","","","82416","6.117576","80.720781");
INSERT INTO cities VALUES("628","8","Mulkirigala","","","","","","82242","6.12","80.7397");
INSERT INTO cities VALUES("629","8","Nakulugamuwa","","","","","","82300","6.1842","80.9063");
INSERT INTO cities VALUES("630","8","Netolpitiya","","","","","","82135","6.066848","80.850703");
INSERT INTO cities VALUES("631","8","Nihiluwa","","","","","","82414","6.077147","80.696499");
INSERT INTO cities VALUES("632","8","Padawkema","","","","","","82636","6.35","81.1667");
INSERT INTO cities VALUES("633","8","Pahala Andarawewa","","","","","","82008","6.1833","81.1389");
INSERT INTO cities VALUES("634","8","Rammalawarapitiya","","","","","","82554","6.2117","80.6653");
INSERT INTO cities VALUES("635","8","Ranakeliya","","","","","","82612","6.2167","81.3");
INSERT INTO cities VALUES("636","8","Ranmuduwewa","","","","","","82018","6.1833","81.1389");
INSERT INTO cities VALUES("637","8","Ranna","","","","","","82125","6.103377","80.890168");
INSERT INTO cities VALUES("638","8","Ratmalwala","","","","","","82276","6.2667","80.85");
INSERT INTO cities VALUES("639","8","RU/Ridiyagama","","","","","","82106","6.1375","81.0042");
INSERT INTO cities VALUES("640","8","Sooriyawewa Town","","","","","","82010","6.1833","81.1389");
INSERT INTO cities VALUES("641","8","Tangalla","","","","","","82200","6.0231","80.7889");
INSERT INTO cities VALUES("642","8","Tissamaharama","","","","","","82600","6.370333","81.328087");
INSERT INTO cities VALUES("643","8","Uda Gomadiya","","","","","","82504","6.2667","80.6972");
INSERT INTO cities VALUES("644","8","Udamattala","","","","","","82638","6.3333","81.1333");
INSERT INTO cities VALUES("645","8","Uswewa","","","","","","82278","6.246247","80.862175");
INSERT INTO cities VALUES("646","8","Vitharandeniya","","","","","","82232","6.1824","80.806");
INSERT INTO cities VALUES("647","8","Walasmulla","","","","","","82450","6.15","80.7");
INSERT INTO cities VALUES("648","8","Weeraketiya","","","","","","82240","6.135","80.7865");
INSERT INTO cities VALUES("649","8","Weerawila","","","","","","82632","6.3417","81.15");
INSERT INTO cities VALUES("650","8","Weerawila NewTown","","","","","","82615","6.2556","81.2944");
INSERT INTO cities VALUES("651","8","Wekandawela","","","","","","82246","6.135","80.7865");
INSERT INTO cities VALUES("652","8","Weligatta","","","","","","82004","6.205897","81.196032");
INSERT INTO cities VALUES("653","8","Yatigala","","","","","","82418","6.1","80.6833");
INSERT INTO cities VALUES("654","9","Jaffna","","","","","","40000","9.660668","80.022706");
INSERT INTO cities VALUES("655","10","Agalawatta","???????","","","","","12200","6.541499","80.155785");
INSERT INTO cities VALUES("656","10","Alubomulla","??????????","","","","","12524","6.711977","79.965857");
INSERT INTO cities VALUES("657","10","Anguruwatota","??????????","","","","","12320","6.6383","80.0861");
INSERT INTO cities VALUES("658","10","Atale","????","","","","","71363","6.45","80.2667");
INSERT INTO cities VALUES("659","10","Baduraliya","???????","","","","","12230","6.523102","80.232371");
INSERT INTO cities VALUES("660","10","Bandaragama","????????","","","","","12530","6.710264","79.986087");
INSERT INTO cities VALUES("661","10","Batugampola","?????????","","","","","10526","6.769068","80.142775");
INSERT INTO cities VALUES("662","10","Bellana","??????","","","","","12224","6.518936","80.183117");
INSERT INTO cities VALUES("663","10","Beruwala","??????","","","","","12070","6.4739","79.9842");
INSERT INTO cities VALUES("664","10","Bolossagama","?????????","","","","","12008","6.62099","80.015288");
INSERT INTO cities VALUES("665","10","Bombuwala","??????","","","","","12024","6.5833","80.0167");
INSERT INTO cities VALUES("666","10","Boralugoda","????????","","","","","12142","6.438709","80.278799");
INSERT INTO cities VALUES("667","10","Bulathsinhala","??????????","","","","","12300","6.666199","80.164896");
INSERT INTO cities VALUES("668","10","Danawala Thiniyawala","???? ???????","","","","","12148","6.4333","80.2667");
INSERT INTO cities VALUES("669","10","Delmella","?????????","","","","","12304","6.67833","80.210488");
INSERT INTO cities VALUES("670","10","Dharga Town","????? ????","","","","","12090","6.648","80.0089");
INSERT INTO cities VALUES("671","10","Diwalakada","???????","","","","","12308","6.696767","80.146983");
INSERT INTO cities VALUES("672","10","Dodangoda","????????","","","","","12020","6.555952","80.006847");
INSERT INTO cities VALUES("673","10","Dombagoda","??????","","","","","12416","6.661797","80.053343");
INSERT INTO cities VALUES("674","10","Ethkandura","???????","","","","","80458","6.4415","80.1807");
INSERT INTO cities VALUES("675","10","Galpatha","??????","","","","","12005","6.5983","80.0015");
INSERT INTO cities VALUES("676","10","Gamagoda","?????","","","","","12016","6.597103","80.005539");
INSERT INTO cities VALUES("677","10","Gonagalpura","??????????","","","","","80502","6.6307","80.0169");
INSERT INTO cities VALUES("678","10","Gonapola Junction","?????? ?????","","","","","12410","6.6944","80.0333");
INSERT INTO cities VALUES("679","10","Govinna","???????","","","","","12310","6.663337","80.116274");
INSERT INTO cities VALUES("680","10","Gurulubadda","???????????","","","","","12236","6.5333","80.2667");
INSERT INTO cities VALUES("681","10","Halkandawila","??????????","","","","","12055","6.5167","80.0167");
INSERT INTO cities VALUES("682","10","Haltota","??????","","","","","12538","6.69554","80.02127");
INSERT INTO cities VALUES("683","10","Halvitigala Colony","???????? ?????","","","","","80146","6.5791","80.2233");
INSERT INTO cities VALUES("684","10","Halwala","?????","","","","","12118","6.416524","80.106562");
INSERT INTO cities VALUES("685","10","Halwatura","???????","","","","","12306","6.7","80.2");
INSERT INTO cities VALUES("686","10","Handapangoda","?????????","","","","","10524","6.789746","80.140774");
INSERT INTO cities VALUES("687","10","Hedigalla Colony","","","","","","12234","6.5333","80.2667");
INSERT INTO cities VALUES("688","10","Henegama","","","","","","11715","6.7167","80.0333");
INSERT INTO cities VALUES("689","10","Hettimulla","","","","","","71210","6.461362","79.992643");
INSERT INTO cities VALUES("690","10","Horana","","","","","","12400","6.719389","80.061557");
INSERT INTO cities VALUES("691","10","Ittapana","","","","","","12116","6.42254","80.079501");
INSERT INTO cities VALUES("692","10","Kahawala","","","","","","10508","6.7833","80.1");
INSERT INTO cities VALUES("693","10","Kalawila Kiranthidiya","","","","","","12078","6.4619","80.0004");
INSERT INTO cities VALUES("694","10","Kalutara","","","","","","12000","6.581333","79.958546");
INSERT INTO cities VALUES("695","10","Kananwila","","","","","","12418","6.7667","80.05");
INSERT INTO cities VALUES("696","10","Kandanagama","","","","","","12428","6.7667","80.0778");
INSERT INTO cities VALUES("697","10","Kelinkanda","","","","","","12218","6.587128","80.29322");
INSERT INTO cities VALUES("698","10","Kitulgoda","","","","","","12222","6.5167","80.1833");
INSERT INTO cities VALUES("699","10","Koholana","","","","","","12007","6.618149","79.989353");
INSERT INTO cities VALUES("700","10","Kuda Uduwa","","","","","","12426","6.747871","80.078499");
INSERT INTO cities VALUES("701","10","Labbala","","","","","","60162","6.4833","80");
INSERT INTO cities VALUES("702","10","lhalahewessa","","","","","","80432","6.4415","80.1807");
INSERT INTO cities VALUES("703","10","lnduruwa","","","","","","80510","6.4681","80.0257");
INSERT INTO cities VALUES("704","10","lngiriya","","","","","","12440","6.7296","80.0604");
INSERT INTO cities VALUES("705","10","Maggona","","","","","","12060","6.503158","79.977597");
INSERT INTO cities VALUES("706","10","Mahagama","","","","","","12210","6.620177","80.154204");
INSERT INTO cities VALUES("707","10","Mahakalupahana","","","","","","12126","6.3917","80.1417");
INSERT INTO cities VALUES("708","10","Maharangalla","","","","","","71211","6.4667","80");
INSERT INTO cities VALUES("709","10","Malgalla Talangalla","","","","","","80144","6.5791","80.2233");
INSERT INTO cities VALUES("710","10","Matugama","","","","","","12100","6.5222","80.1144");
INSERT INTO cities VALUES("711","10","Meegahatenna","","","","","","12130","6.3637","80.285");
INSERT INTO cities VALUES("712","10","Meegama","","","","","","12094","6.648","80.0089");
INSERT INTO cities VALUES("713","10","Meegoda","","","","","","10504","6.8053","80.0829");
INSERT INTO cities VALUES("714","10","Millaniya","","","","","","12412","6.686206","80.017227");
INSERT INTO cities VALUES("715","10","Millewa","","","","","","12422","6.7833","80.0667");
INSERT INTO cities VALUES("716","10","Miwanapalana","","","","","","12424","6.75","80.1");
INSERT INTO cities VALUES("717","10","Molkawa","","","","","","12216","6.607725","80.238612");
INSERT INTO cities VALUES("718","10","Morapitiya","","","","","","12232","6.527127","80.263667");
INSERT INTO cities VALUES("719","10","Morontuduwa","","","","","","12564","6.65","79.9667");
INSERT INTO cities VALUES("720","10","Nawattuduwa","","","","","","12106","6.5019","80.0937");
INSERT INTO cities VALUES("721","10","Neboda","","","","","","12030","6.5906","80.0842");
INSERT INTO cities VALUES("722","10","Padagoda","","","","","","12074","6.456979","80.009049");
INSERT INTO cities VALUES("723","10","Pahalahewessa","","","","","","12144","6.4333","80.2667");
INSERT INTO cities VALUES("724","10","Paiyagala","","","","","","12050","6.5167","80.0167");
INSERT INTO cities VALUES("725","10","Panadura","","","","","","12500","6.7133","79.9042");
INSERT INTO cities VALUES("726","10","Pannala","","","","","","60160","6.4833","80");
INSERT INTO cities VALUES("727","10","Paragastota","","","","","","12414","6.6667","80");
INSERT INTO cities VALUES("728","10","Paragoda","","","","","","12302","6.627108","80.24112");
INSERT INTO cities VALUES("729","10","Paraigama","","","","","","12122","6.4167","80.1167");
INSERT INTO cities VALUES("730","10","Pelanda","","","","","","12214","6.6056","80.2333");
INSERT INTO cities VALUES("731","10","Pelawatta","","","","","","12138","6.385227","80.207989");
INSERT INTO cities VALUES("732","10","Pimbura","","","","","","70472","6.570997","80.161311");
INSERT INTO cities VALUES("733","10","Pitagaldeniya","","","","","","71360","6.45","80.2667");
INSERT INTO cities VALUES("734","10","Pokunuwita","","","","","","12404","6.7333","80.0333");
INSERT INTO cities VALUES("735","10","Poruwedanda","","","","","","12432","6.7333","80.1167");
INSERT INTO cities VALUES("736","10","Ratmale","","","","","","81030","6.45","80.2");
INSERT INTO cities VALUES("737","10","Remunagoda","","","","","","12009","6.594994","80.031349");
INSERT INTO cities VALUES("738","10","Talgaswela","","","","","","80470","6.4415","80.1807");
INSERT INTO cities VALUES("739","10","Tebuwana","","","","","","12025","6.5944","80.0611");
INSERT INTO cities VALUES("740","10","Uduwara","","","","","","12322","6.6167","80.0667");
INSERT INTO cities VALUES("741","10","Utumgama","","","","","","12127","6.3917","80.1417");
INSERT INTO cities VALUES("742","10","Veyangalla","","","","","","12204","6.5422","80.1583");
INSERT INTO cities VALUES("743","10","Wadduwa","","","","","","12560","6.667121","79.924051");
INSERT INTO cities VALUES("744","10","Walagedara","","","","","","12112","6.437775","80.071449");
INSERT INTO cities VALUES("745","10","Walallawita","","","","","","12134","6.3667","80.2");
INSERT INTO cities VALUES("746","10","Waskaduwa","","","","","","12580","6.6317","79.9442");
INSERT INTO cities VALUES("747","10","Welipenna","","","","","","12108","6.466448","80.101763");
INSERT INTO cities VALUES("748","10","Weliveriya","","","","","","11710","6.7167","80.0333");
INSERT INTO cities VALUES("749","10","Welmilla Junction","","","","","","12534","6.7072","80.01");
INSERT INTO cities VALUES("750","10","Weragala","","","","","","71622","6.527062","80.004097");
INSERT INTO cities VALUES("751","10","Yagirala","","","","","","12124","6.378714","80.161812");
INSERT INTO cities VALUES("752","10","Yatadolawatta","","","","","","12104","6.52309","80.064428");
INSERT INTO cities VALUES("753","10","Yatawara Junction","","","","","","12006","6.5983","80.0015");
INSERT INTO cities VALUES("754","11","Aludeniya","????????","","","","","20062","7.370491","80.46648");
INSERT INTO cities VALUES("755","11","Ambagahapelessa","???????????","","","","","20986","7.243803","81.00264");
INSERT INTO cities VALUES("756","11","Ambagamuwa Udabulathgama","?????? ?????????","","","","","20678","7.0333","80.5");
INSERT INTO cities VALUES("757","11","Ambatenna","???????","","","","","20136","7.3472","80.6192");
INSERT INTO cities VALUES("758","11","Ampitiya","????????","","","","","20160","7.2667","80.65");
INSERT INTO cities VALUES("759","11","Ankumbura","???????","","","","","20150","7.434149","80.568704");
INSERT INTO cities VALUES("760","11","Atabage","??????","","","","","20574","7.1333","80.6");
INSERT INTO cities VALUES("761","11","Balana","???","","","","","20308","7.269032","80.485503");
INSERT INTO cities VALUES("762","11","Bambaragahaela","???????","","","","","20644","7.0523","80.5023");
INSERT INTO cities VALUES("763","11","Batagolladeniya","????????????","","","","","20154","7.41596","80.576688");
INSERT INTO cities VALUES("764","11","Batugoda","??????","","","","","20132","7.366275","80.59604");
INSERT INTO cities VALUES("765","11","Batumulla","????????","","","","","20966","7.256086","80.978905");
INSERT INTO cities VALUES("766","11","Bawlana","?????","","","","","20218","7.211388","80.718828");
INSERT INTO cities VALUES("767","11","Bopana","????","","","","","20932","7.3","80.9");
INSERT INTO cities VALUES("768","11","Danture","??????","","","","","20465","7.2833","80.5333");
INSERT INTO cities VALUES("769","11","Dedunupitiya","???????????","","","","","20068","7.3333","80.4333");
INSERT INTO cities VALUES("770","11","Dekinda","?????","","","","","20658","7.014688","80.509932");
INSERT INTO cities VALUES("771","11","Deltota","???????","","","","","20430","7.2","80.6667");
INSERT INTO cities VALUES("772","11","Divulankadawala","???????????","","","","","51428","7.175","80.55");
INSERT INTO cities VALUES("773","11","Dolapihilla","??????????","","","","","20126","7.393576","80.584659");
INSERT INTO cities VALUES("774","11","Dolosbage","??????????","","","","","20510","7.0806","80.4731");
INSERT INTO cities VALUES("775","11","Dunuwila","???????","","","","","20824","7.3833","80.6333");
INSERT INTO cities VALUES("776","11","Etulgama","???????","","","","","20202","7.2333","80.65");
INSERT INTO cities VALUES("777","11","Galaboda","?????","","","","","20664","6.9875","80.5319");
INSERT INTO cities VALUES("778","11","Galagedara","??????","","","","","20100","7.369716","80.520308");
INSERT INTO cities VALUES("779","11","Galaha","???","","","","","20420","7.195764","80.668659");
INSERT INTO cities VALUES("780","11","Galhinna","????????","","","","","20152","7.418361","80.560015");
INSERT INTO cities VALUES("781","11","Gampola","??????","","","","","20500","7.1647","80.5767");
INSERT INTO cities VALUES("782","11","Gelioya","??????","","","","","20620","7.2136","80.6017");
INSERT INTO cities VALUES("783","11","Godamunna","????????","","","","","20214","7.227313","80.697447");
INSERT INTO cities VALUES("784","11","Gomagoda","??????","","","","","20184","7.3167","80.7333");
INSERT INTO cities VALUES("785","11","Gonagantenna","????????????","","","","","20712","7.1517","80.7118");
INSERT INTO cities VALUES("786","11","Gonawalapatana","????????","","","","","20656","7.0358","80.5262");
INSERT INTO cities VALUES("787","11","Gunnepana","????????","","","","","20270","7.2696","80.6537");
INSERT INTO cities VALUES("788","11","Gurudeniya","?????????","","","","","20189","7.265953","80.702921");
INSERT INTO cities VALUES("789","11","Hakmana","?????","","","","","81300","7.334701","80.82402");
INSERT INTO cities VALUES("790","11","Handaganawa","??????","","","","","20984","7.277451","80.989485");
INSERT INTO cities VALUES("791","11","Handawalapitiya","?????????","","","","","20438","7.2","80.6667");
INSERT INTO cities VALUES("792","11","Handessa","??????","","","","","20480","7.230048","80.580831");
INSERT INTO cities VALUES("793","11","Hanguranketha","","","","","","20710","7.1517","80.7118");
INSERT INTO cities VALUES("794","11","Harangalagama","","","","","","20669","7.0271","80.5493");
INSERT INTO cities VALUES("795","11","Hataraliyadda","","","","","","20060","7.3333","80.4667");
INSERT INTO cities VALUES("796","11","Hindagala","","","","","","20414","7.231512","80.600815");
INSERT INTO cities VALUES("797","11","Hondiyadeniya","","","","","","20524","7.1364","80.5766");
INSERT INTO cities VALUES("798","11","Hunnasgiriya","","","","","","20948","7.298756","80.849834");
INSERT INTO cities VALUES("799","11","Inguruwatta","","","","","","60064","7.175038","80.599767");
INSERT INTO cities VALUES("800","11","Jambugahapitiya","","","","","","20822","7.3833","80.6333");
INSERT INTO cities VALUES("801","11","Kadugannawa","","","","","","20300","7.2536","80.5275");
INSERT INTO cities VALUES("802","11","Kahataliyadda","","","","","","20924","7.376","80.8213");
INSERT INTO cities VALUES("803","11","Kalugala","","","","","","20926","7.390136","80.883008");
INSERT INTO cities VALUES("804","11","Kandy","","","","","","20000","7.2964","80.635");
INSERT INTO cities VALUES("805","11","Kapuliyadde","","","","","","20206","7.2401","80.6808");
INSERT INTO cities VALUES("806","11","Katugastota","","","","","","20800","7.3161","80.6211");
INSERT INTO cities VALUES("807","11","Katukitula","","","","","","20588","7.1089","80.6339");
INSERT INTO cities VALUES("808","11","Kelanigama","","","","","","20688","7.0049","80.5182");
INSERT INTO cities VALUES("809","11","Kengalla","","","","","","20186","7.296461","80.711767");
INSERT INTO cities VALUES("810","11","Ketaboola","","","","","","20660","7.0271","80.5493");
INSERT INTO cities VALUES("811","11","Ketakumbura","","","","","","20306","7.210532","80.571678");
INSERT INTO cities VALUES("812","11","Kobonila","","","","","","20928","7.376","80.8213");
INSERT INTO cities VALUES("813","11","Kolabissa","","","","","","20212","7.225","80.7167");
INSERT INTO cities VALUES("814","11","Kolongoda","","","","","","20971","7.3552","80.8375");
INSERT INTO cities VALUES("815","11","Kulugammana","","","","","","20048","7.315193","80.590268");
INSERT INTO cities VALUES("816","11","Kumbukkandura","","","","","","20902","7.2969","80.7686");
INSERT INTO cities VALUES("817","11","Kumburegama","","","","","","20086","7.357279","80.551316");
INSERT INTO cities VALUES("818","11","Kundasale","","","","","","20168","7.2667","80.6833");
INSERT INTO cities VALUES("819","11","Leemagahakotuwa","","","","","","20482","7.2333","80.5833");
INSERT INTO cities VALUES("820","11","lhala Kobbekaduwa","","","","","","20042","7.3167","80.5833");
INSERT INTO cities VALUES("821","11","Lunugama","","","","","","11062","7.198402","80.578244");
INSERT INTO cities VALUES("822","11","Lunuketiya Maditta","","","","","","20172","7.3292","80.716");
INSERT INTO cities VALUES("823","11","Madawala Bazaar","","","","","","20260","7.2696","80.6537");
INSERT INTO cities VALUES("824","11","Madawalalanda","","","","","","32016","7.3792","80.4982");
INSERT INTO cities VALUES("825","11","Madugalla","","","","","","20938","7.265802","80.882139");
INSERT INTO cities VALUES("826","11","Madulkele","","","","","","20840","7.400281","80.728874");
INSERT INTO cities VALUES("827","11","Mahadoraliyadda","","","","","","20945","7.3","80.85");
INSERT INTO cities VALUES("828","11","Mahamedagama","","","","","","20216","7.225","80.7167");
INSERT INTO cities VALUES("829","11","Mahanagapura","","","","","","32018","7.3792","80.4982");
INSERT INTO cities VALUES("830","11","Mailapitiya","","","","","","20702","7.1517","80.7118");
INSERT INTO cities VALUES("831","11","Makkanigama","","","","","","20828","7.3833","80.6333");
INSERT INTO cities VALUES("832","11","Makuldeniya","","","","","","20921","7.341706","80.777466");
INSERT INTO cities VALUES("833","11","Mangalagama","","","","","","32069","7.285856","80.563656");
INSERT INTO cities VALUES("834","11","Mapakanda","","","","","","20662","7.007889","80.531101");
INSERT INTO cities VALUES("835","11","Marassana","","","","","","20210","7.221663","80.732336");
INSERT INTO cities VALUES("836","11","Marymount Colony","","","","","","20714","7.1517","80.7118");
INSERT INTO cities VALUES("837","11","Mawatura","","","","","","20564","7.1","80.5667");
INSERT INTO cities VALUES("838","11","Medamahanuwara","","","","","","20940","7.3","80.85");
INSERT INTO cities VALUES("839","11","Medawala Harispattuwa","","","","","","20120","7.3417","80.6833");
INSERT INTO cities VALUES("840","11","Meetalawa","","","","","","20512","7.0986","80.4699");
INSERT INTO cities VALUES("841","11","Megoda Kalugamuwa","","","","","","20409","7.2631","80.6028");
INSERT INTO cities VALUES("842","11","Menikdiwela","","","","","","20470","7.288455","80.501662");
INSERT INTO cities VALUES("843","11","Menikhinna","","","","","","20170","7.3167","80.7");
INSERT INTO cities VALUES("844","11","Mimure","","","","","","20923","7.4333","80.8333");
INSERT INTO cities VALUES("845","11","Minigamuwa","","","","","","20109","7.3333","80.5167");
INSERT INTO cities VALUES("846","11","Minipe","","","","","","20983","7.223556","80.990971");
INSERT INTO cities VALUES("847","11","Moragahapallama","","","","","","32012","7.3792","80.4982");
INSERT INTO cities VALUES("848","11","Murutalawa","","","","","","20232","7.3","80.5667");
INSERT INTO cities VALUES("849","11","Muruthagahamulla","","","","","","20526","7.1364","80.5766");
INSERT INTO cities VALUES("850","11","Nanuoya","","","","","","22150","7.1171","80.6387");
INSERT INTO cities VALUES("851","11","Naranpanawa","","","","","","20176","7.339733","80.729831");
INSERT INTO cities VALUES("852","11","Narawelpita","","","","","","81302","7.3167","80.8");
INSERT INTO cities VALUES("853","11","Nawalapitiya","","","","","","20650","7.05048","80.530631");
INSERT INTO cities VALUES("854","11","Nawathispane","","","","","","20670","7.0333","80.5");
INSERT INTO cities VALUES("855","11","Nillambe","","","","","","20418","7.15","80.6333");
INSERT INTO cities VALUES("856","11","Nugaliyadda","","","","","","20204","7.2333","80.7");
INSERT INTO cities VALUES("857","11","Ovilikanda","","","","","","21020","7.45","80.5667");
INSERT INTO cities VALUES("858","11","Pallekotuwa","","","","","","20084","7.3333","80.5667");
INSERT INTO cities VALUES("859","11","Panwilatenna","","","","","","20544","7.1556","80.6314");
INSERT INTO cities VALUES("860","11","Paradeka","","","","","","20578","7.12293","80.618959");
INSERT INTO cities VALUES("861","11","Pasbage","","","","","","20654","7.0358","80.5262");
INSERT INTO cities VALUES("862","11","Pattitalawa","","","","","","20511","7.1167","80.4667");
INSERT INTO cities VALUES("863","11","Peradeniya","","","","","","20400","7.2631","80.6028");
INSERT INTO cities VALUES("864","11","Pilimatalawa","","","","","","20450","7.2333","80.5333");
INSERT INTO cities VALUES("865","11","Poholiyadda","","","","","","20106","7.343274","80.520186");
INSERT INTO cities VALUES("866","11","Pubbiliya","","","","","","21502","7.385927","80.481336");
INSERT INTO cities VALUES("867","11","Pupuressa","","","","","","20546","7.115632","80.677455");
INSERT INTO cities VALUES("868","11","Pussellawa","","","","","","20580","7.112565","80.644101");
INSERT INTO cities VALUES("869","11","Putuhapuwa","","","","","","20906","7.334198","80.759353");
INSERT INTO cities VALUES("870","11","Rajawella","","","","","","20180","7.280519","80.748217");
INSERT INTO cities VALUES("871","11","Rambukpitiya","","","","","","20676","7.0333","80.5");
INSERT INTO cities VALUES("872","11","Rambukwella","","","","","","20128","7.294759","80.777664");
INSERT INTO cities VALUES("873","11","Rangala","","","","","","20922","7.344486","80.795047");
INSERT INTO cities VALUES("874","11","Rantembe","","","","","","20990","7.3552","80.8375");
INSERT INTO cities VALUES("875","11","Sangarajapura","","","","","","20044","7.3167","80.5833");
INSERT INTO cities VALUES("876","11","Senarathwela","","","","","","20904","7.280125","80.761602");
INSERT INTO cities VALUES("877","11","Talatuoya","","","","","","20200","7.2536","80.6925");
INSERT INTO cities VALUES("878","11","Teldeniya","","","","","","20900","7.2969","80.7686");
INSERT INTO cities VALUES("879","11","Tennekumbura","","","","","","20166","7.2833","80.6667");
INSERT INTO cities VALUES("880","11","Uda Peradeniya","","","","","","20404","7.249001","80.614072");
INSERT INTO cities VALUES("881","11","Udahentenna","","","","","","20506","7.0889","80.5189");
INSERT INTO cities VALUES("882","11","Udatalawinna","","","","","","20802","7.3161","80.6211");
INSERT INTO cities VALUES("883","11","Udispattuwa","","","","","","20916","7.3552","80.8375");
INSERT INTO cities VALUES("884","11","Ududumbara","","","","","","20950","7.3552","80.8375");
INSERT INTO cities VALUES("885","11","Uduwahinna","","","","","","20934","7.2833","80.8917");
INSERT INTO cities VALUES("886","11","Uduwela","","","","","","20164","7.2722","80.6667");
INSERT INTO cities VALUES("887","11","Ulapane","","","","","","20562","7.114072","80.552445");
INSERT INTO cities VALUES("888","11","Unuwinna","","","","","","20708","7.1517","80.7118");
INSERT INTO cities VALUES("889","11","Velamboda","","","","","","20640","7.0523","80.5023");
INSERT INTO cities VALUES("890","11","Watagoda","","","","","","22110","7.39731","80.588304");
INSERT INTO cities VALUES("891","11","Watagoda Harispattuwa","","","","","","20134","7.3569","80.6012");
INSERT INTO cities VALUES("892","11","Wattappola","","","","","","20454","7.234802","80.543661");
INSERT INTO cities VALUES("893","11","Weligampola","","","","","","20666","7.0271","80.5493");
INSERT INTO cities VALUES("894","11","Wendaruwa","","","","","","20914","7.3552","80.8375");
INSERT INTO cities VALUES("895","11","Weragantota","","","","","","20982","7.3167","80.9833");
INSERT INTO cities VALUES("896","11","Werapitya","","","","","","20908","7.2969","80.7686");
INSERT INTO cities VALUES("897","11","Werellagama","","","","","","20080","7.3167","80.5833");
INSERT INTO cities VALUES("898","11","Wettawa","","","","","","20108","7.3508","80.5221");
INSERT INTO cities VALUES("899","11","Yahalatenna","","","","","","20234","7.3","80.5667");
INSERT INTO cities VALUES("900","11","Yatihalagala","","","","","","20034","7.3","80.6");
INSERT INTO cities VALUES("901","12","Alawala","????","","","","","11122","7.197379","80.282779");
INSERT INTO cities VALUES("902","12","Alawatura","??????","","","","","71204","7.1333","80.3333");
INSERT INTO cities VALUES("903","12","Alawwa","?????","","","","","60280","7.2875","80.2536");
INSERT INTO cities VALUES("904","12","Algama","?????","","","","","71607","7.158338","80.162939");
INSERT INTO cities VALUES("905","12","Alutnuwara","?????????","","","","","71508","7.2333","80.4667");
INSERT INTO cities VALUES("906","12","Ambalakanda","?????????","","","","","71546","7.134049","80.446804");
INSERT INTO cities VALUES("907","12","Ambulugala","?????????","","","","","71503","7.239127","80.409623");
INSERT INTO cities VALUES("908","12","Amitirigala","?????????","","","","","71320","7.0306","80.1839");
INSERT INTO cities VALUES("909","12","Ampagala","???????","","","","","71232","7.080239","80.289037");
INSERT INTO cities VALUES("910","12","Anhandiya","????????","","","","","60074","7.2667","80.2667");
INSERT INTO cities VALUES("911","12","Anhettigama","??????????","","","","","71403","6.922121","80.371876");
INSERT INTO cities VALUES("912","12","Aranayaka","??????","","","","","71540","7.144705","80.461358");
INSERT INTO cities VALUES("913","12","Aruggammana","??????????","","","","","71041","7.117733","80.306712");
INSERT INTO cities VALUES("914","12","Batuwita","??????","","","","","71321","7.044339","80.179129");
INSERT INTO cities VALUES("915","12","Beligala(Sab)","??????","","","","","71044","7.2167","80.2917");
INSERT INTO cities VALUES("916","12","Belihuloya","??????????","","","","","70140","7.2667","80.2167");
INSERT INTO cities VALUES("917","12","Berannawa","???????","","","","","71706","7.064482","80.405526");
INSERT INTO cities VALUES("918","12","Bopitiya","???????","","","","","60155","7.179761","80.205221");
INSERT INTO cities VALUES("919","12","Bopitiya (SAB)","??????? (???)","","","","","71612","7.2583","80.2167");
INSERT INTO cities VALUES("920","12","Boralankada","????????","","","","","71418","6.979656","80.330338");
INSERT INTO cities VALUES("921","12","Bossella","?????????","","","","","71208","7.1333","80.4");
INSERT INTO cities VALUES("922","12","Bulathkohupitiya","??????????????","","","","","71230","7.105994","80.338761");
INSERT INTO cities VALUES("923","12","Damunupola","????????","","","","","71034","7.187968","80.334456");
INSERT INTO cities VALUES("924","12","Debathgama","???????","","","","","71037","7.1833","80.3583");
INSERT INTO cities VALUES("925","12","Dedugala","??????","","","","","71237","7.093849","80.418959");
INSERT INTO cities VALUES("926","12","Deewala Pallegama","???? ???????","","","","","71022","7.2333","80.2667");
INSERT INTO cities VALUES("927","12","Dehiowita","????????","","","","","71400","6.9706","80.2675");
INSERT INTO cities VALUES("928","12","Deldeniya","?????????","","","","","71009","7.280914","80.35876");
INSERT INTO cities VALUES("929","12","Deloluwa","???????","","","","","71401","6.9653","80.3181");
INSERT INTO cities VALUES("930","12","Deraniyagala","????????","","","","","71430","6.932387","80.335039");
INSERT INTO cities VALUES("931","12","Dewalegama","????????","","","","","71050","7.278928","80.319135");
INSERT INTO cities VALUES("932","12","Dewanagala","??????","","","","","71527","7.2167","80.4667");
INSERT INTO cities VALUES("933","12","Dombemada","??????","","","","","71115","7.37974","80.348761");
INSERT INTO cities VALUES("934","12","Dorawaka","?????","","","","","71601","7.1833","80.2167");
INSERT INTO cities VALUES("935","12","Dunumala","??????","","","","","71605","7.1738","80.2074");
INSERT INTO cities VALUES("936","12","Galapitamada","???????","","","","","71603","7.14","80.2364");
INSERT INTO cities VALUES("937","12","Galatara","????","","","","","71505","7.2167","80.4167");
INSERT INTO cities VALUES("938","12","Galigamuwa Town","??????? ????","","","","","71350","7.2","80.3");
INSERT INTO cities VALUES("939","12","Gallella","????????","","","","","70062","6.85","80.35");
INSERT INTO cities VALUES("940","12","Galpatha(Sab)","?????? (???????)","","","","","71312","7.05","80.2333");
INSERT INTO cities VALUES("941","12","Gantuna","??????","","","","","71222","7.1667","80.3667");
INSERT INTO cities VALUES("942","12","Getahetta","????????","","","","","70620","6.9128","80.2358");
INSERT INTO cities VALUES("943","12","Godagampola","?????????","","","","","70556","6.885959","80.313855");
INSERT INTO cities VALUES("944","12","Gonagala","??????","","","","","71318","7.035326","80.207373");
INSERT INTO cities VALUES("945","12","Hakahinna","???????","","","","","71352","7.2","80.3");
INSERT INTO cities VALUES("946","12","Hakbellawaka","??????????","","","","","71715","7.003952","80.328796");
INSERT INTO cities VALUES("947","12","Halloluwa","????????","","","","","20032","7.2","80.35");
INSERT INTO cities VALUES("948","12","Hedunuwewa","","","","","","22024","6.9306","80.2747");
INSERT INTO cities VALUES("949","12","Hemmatagama","","","","","","71530","7.1667","80.5");
INSERT INTO cities VALUES("950","12","Hewadiwela","","","","","","71108","7.372493","80.377574");
INSERT INTO cities VALUES("951","12","Hingula","","","","","","71520","7.247803","80.469032");
INSERT INTO cities VALUES("952","12","Hinguralakanda","","","","","","71417","6.91506","80.304394");
INSERT INTO cities VALUES("953","12","Hingurana","","","","","","32010","6.9167","80.4167");
INSERT INTO cities VALUES("954","12","Hiriwadunna","","","","","","71014","7.2833","80.3833");
INSERT INTO cities VALUES("955","12","Ihala Walpola","","","","","","80134","7.350958","80.397324");
INSERT INTO cities VALUES("956","12","Ihalagama","","","","","","70144","7.2667","80.3333");
INSERT INTO cities VALUES("957","12","Imbulana","","","","","","71313","7.08264","80.245565");
INSERT INTO cities VALUES("958","12","Imbulgasdeniya","","","","","","71055","7.2853","80.3186");
INSERT INTO cities VALUES("959","12","Kabagamuwa","","","","","","71202","7.136698","80.341558");
INSERT INTO cities VALUES("960","12","Kahapathwala","","","","","","60062","7.3","80.4583");
INSERT INTO cities VALUES("961","12","Kandaketya","","","","","","90020","7.2333","80.4667");
INSERT INTO cities VALUES("962","12","Kannattota","","","","","","71372","7.081348","80.275311");
INSERT INTO cities VALUES("963","12","Karagahinna","","","","","","21014","7.3604","80.3832");
INSERT INTO cities VALUES("964","12","Kegalle","","","","","","71000","7.249349","80.351662");
INSERT INTO cities VALUES("965","12","Kehelpannala","","","","","","71533","7.161131","80.519539");
INSERT INTO cities VALUES("966","12","Ketawala Leula","","","","","","20198","7.1167","80.35");
INSERT INTO cities VALUES("967","12","Kitulgala","","","","","","71720","6.9944","80.4114");
INSERT INTO cities VALUES("968","12","Kondeniya","","","","","","71501","7.2667","80.4333");
INSERT INTO cities VALUES("969","12","Kotiyakumbura","","","","","","71370","7.0833","80.2667");
INSERT INTO cities VALUES("970","12","Lewangama","","","","","","71315","7.112902","80.239");
INSERT INTO cities VALUES("971","12","Mahabage","","","","","","71722","7.019803","80.450227");
INSERT INTO cities VALUES("972","12","Makehelwala","","","","","","71507","7.282441","80.47528");
INSERT INTO cities VALUES("973","12","Malalpola","","","","","","71704","7.053091","80.351009");
INSERT INTO cities VALUES("974","12","Maldeniya","","","","","","22021","6.9306","80.2747");
INSERT INTO cities VALUES("975","12","Maliboda","","","","","","71411","6.887528","80.464212");
INSERT INTO cities VALUES("976","12","Maliyadda","","","","","","90022","7.2333","80.4667");
INSERT INTO cities VALUES("977","12","Malmaduwa","","","","","","71325","7.15","80.2833");
INSERT INTO cities VALUES("978","12","Marapana","","","","","","70041","7.2333","80.35");
INSERT INTO cities VALUES("979","12","Mawanella","","","","","","71500","7.244446","80.439045");
INSERT INTO cities VALUES("980","12","Meetanwala","","","","","","60066","7.3","80.4583");
INSERT INTO cities VALUES("981","12","Migastenna Sabara","","","","","","71716","7.0333","80.3333");
INSERT INTO cities VALUES("982","12","Miyanawita","","","","","","71432","6.900423","80.351075");
INSERT INTO cities VALUES("983","12","Molagoda","","","","","","71016","7.25","80.3833");
INSERT INTO cities VALUES("984","12","Morontota","","","","","","71220","7.1667","80.3667");
INSERT INTO cities VALUES("985","12","Narangala","","","","","","90064","7.07922","80.360764");
INSERT INTO cities VALUES("986","12","Narangoda","","","","","","60152","7.198165","80.294552");
INSERT INTO cities VALUES("987","12","Nattarampotha","","","","","","20194","7.1167","80.35");
INSERT INTO cities VALUES("988","12","Nelundeniya","","","","","","71060","7.2319","80.2669");
INSERT INTO cities VALUES("989","12","Niyadurupola","","","","","","71602","7.1667","80.2167");
INSERT INTO cities VALUES("990","12","Noori","","","","","","71407","6.9508","80.3174");
INSERT INTO cities VALUES("991","12","Pannila","","","","","","12114","6.866357","80.320996");
INSERT INTO cities VALUES("992","12","Pattampitiya","","","","","","71130","7.315516","80.434412");
INSERT INTO cities VALUES("993","12","Pilawala","","","","","","20196","7.1167","80.35");
INSERT INTO cities VALUES("994","12","Pothukoladeniya","","","","","","71039","7.1833","80.3583");
INSERT INTO cities VALUES("995","12","Puswelitenna","","","","","","60072","7.3667","80.3667");
INSERT INTO cities VALUES("996","12","Rambukkana","","","","","","71100","7.323016","80.391856");
INSERT INTO cities VALUES("997","12","Rilpola","","","","","","90026","7.2333","80.4667");
INSERT INTO cities VALUES("998","12","Rukmale","","","","","","11129","7.2","80.4833");
INSERT INTO cities VALUES("999","12","Ruwanwella","","","","","","71300","7.048852","80.2561");
INSERT INTO cities VALUES("1000","12","Samanalawewa","","","","","","70142","7.2667","80.2167");
INSERT INTO cities VALUES("1001","12","Seaforth Colony","","","","","","71708","7.0469","80.3502");
INSERT INTO cities VALUES("1002","5","Colombo 2","???? 2","???????? 2","Slave Island","???????? ?????","?????????????","200","6.926944","79.848611");
INSERT INTO cities VALUES("1003","12","Spring Valley","","","","","","90028","7.2333","80.4667");
INSERT INTO cities VALUES("1004","12","Talgaspitiya","","","","","","71541","7.1667","80.4833");
INSERT INTO cities VALUES("1005","12","Teligama","","","","","","71724","7.0033","80.3647");
INSERT INTO cities VALUES("1006","12","Tholangamuwa","","","","","","71619","7.233983","80.225956");
INSERT INTO cities VALUES("1007","12","Thotawella","","","","","","71106","7.3555","80.3969");
INSERT INTO cities VALUES("1008","12","Udaha Hawupe","","","","","","70154","7.05","80.2833");
INSERT INTO cities VALUES("1009","12","Udapotha","","","","","","71236","7.09414","80.377416");
INSERT INTO cities VALUES("1010","12","Uduwa","","","","","","20052","7.110957","80.387557");
INSERT INTO cities VALUES("1011","12","Undugoda","","","","","","71200","7.141866","80.365332");
INSERT INTO cities VALUES("1012","12","Ussapitiya","","","","","","71510","7.216957","80.444573");
INSERT INTO cities VALUES("1013","12","Wahakula","","","","","","71303","7.058236","80.207402");
INSERT INTO cities VALUES("1014","12","Waharaka","","","","","","71304","7.088513","80.198619");
INSERT INTO cities VALUES("1015","12","Wanaluwewa","","","","","","11068","7.0667","80.175");
INSERT INTO cities VALUES("1016","12","Warakapola","","","","","","71600","7.230053","80.196768");
INSERT INTO cities VALUES("1017","12","Watura","","","","","","71035","7.1833","80.3833");
INSERT INTO cities VALUES("1018","12","Weeoya","","","","","","71702","7.0469","80.3502");
INSERT INTO cities VALUES("1019","12","Wegalla","","","","","","71234","7.099631","80.30654");
INSERT INTO cities VALUES("1020","12","Weligalla","","","","","","20610","7.1833","80.2");
INSERT INTO cities VALUES("1021","12","Welihelatenna","","","","","","71712","7.0333","80.3333");
INSERT INTO cities VALUES("1022","12","Wewelwatta","","","","","","70066","6.85","80.35");
INSERT INTO cities VALUES("1023","12","Yatagama","","","","","","71116","7.32512","80.356415");
INSERT INTO cities VALUES("1024","12","Yatapana","","","","","","71326","7.1333","80.3");
INSERT INTO cities VALUES("1025","12","Yatiyantota","","","","","","71700","7.0242","80.3006");
INSERT INTO cities VALUES("1026","12","Yattogoda","","","","","","71029","7.2333","80.2667");
INSERT INTO cities VALUES("1027","13","Kandavalai","","","","","","","9.4515585","80.5008173");
INSERT INTO cities VALUES("1028","13","Karachchi","","","","","","","9.3769363","80.3766044");
INSERT INTO cities VALUES("1029","13","Kilinochchi","","","","","","","9.416667","80.416667");
INSERT INTO cities VALUES("1030","13","Pachchilaipalli","","","","","","","9.6115808","80.3273106");
INSERT INTO cities VALUES("1031","13","Poonakary","","","","","","","9.5035013","80.2111173");
INSERT INTO cities VALUES("1032","14","Akurana","?????","","","","","20850","7.637034","80.023362");
INSERT INTO cities VALUES("1033","14","Alahengama","????????","","","","","60416","7.6779","80.1151");
INSERT INTO cities VALUES("1034","14","Alahitiyawa","?????????","","","","","60182","7.473913","80.171211");
INSERT INTO cities VALUES("1035","14","Ambakote","??????","","","","","60036","7.492063","80.452844");
INSERT INTO cities VALUES("1036","14","Ambanpola","???????","","","","","60650","7.915973","80.237512");
INSERT INTO cities VALUES("1037","14","Andiyagala","???????","","","","","50112","7.4667","80.1333");
INSERT INTO cities VALUES("1038","14","Anukkane","????????","","","","","60214","7.501814","80.120028");
INSERT INTO cities VALUES("1039","14","Aragoda","??????","","","","","60308","7.366116","80.344207");
INSERT INTO cities VALUES("1040","14","Ataragalla","???????","","","","","60706","7.9696","80.2768");
INSERT INTO cities VALUES("1041","14","Awulegama","???????","","","","","60462","7.6569","80.2203");
INSERT INTO cities VALUES("1042","14","Balalla","?????","","","","","60604","7.791025","80.250762");
INSERT INTO cities VALUES("1043","14","Bamunukotuwa","?????????","","","","","60347","7.8667","80.2167");
INSERT INTO cities VALUES("1044","14","Bandara Koswatta","?????? ????????","","","","","60424","7.603296","80.17257");
INSERT INTO cities VALUES("1045","14","Bingiriya","?????????","","","","","60450","7.605177","79.921996");
INSERT INTO cities VALUES("1046","14","Bogamulla","????????","","","","","60107","7.4589","80.2107");
INSERT INTO cities VALUES("1047","14","Boraluwewa","????????","","","","","60437","7.682578","80.034757");
INSERT INTO cities VALUES("1048","14","Boyagane","???????","","","","","60027","7.452272","80.341672");
INSERT INTO cities VALUES("1049","14","Bujjomuwa","?????????","","","","","60291","7.4581","80.0603");
INSERT INTO cities VALUES("1050","14","Buluwala","??????","","","","","60076","7.484201","80.473535");
INSERT INTO cities VALUES("1051","14","Dadayamtalawa","?????????","","","","","32046","7.65","79.9667");
INSERT INTO cities VALUES("1052","14","Dambadeniya","???????","","","","","60130","7.370527","80.146193");
INSERT INTO cities VALUES("1053","14","Daraluwa","?????","","","","","60174","7.359407","79.978233");
INSERT INTO cities VALUES("1054","14","Deegalla","??????","","","","","60228","7.510205","80.029797");
INSERT INTO cities VALUES("1055","14","Demataluwa","???????","","","","","60024","7.513976","80.258741");
INSERT INTO cities VALUES("1056","14","Demuwatha","??????","","","","","70332","7.35","80.1667");
INSERT INTO cities VALUES("1057","14","Diddeniya","???????","","","","","60544","7.685279","80.47286");
INSERT INTO cities VALUES("1058","14","Digannewa","????????","","","","","60485","7.897218","80.101328");
INSERT INTO cities VALUES("1059","14","Divullegoda","?????????","","","","","60472","7.75","80.2");
INSERT INTO cities VALUES("1060","14","Diyasenpura","??????????","","","","","51504","7.8167","80.1833");
INSERT INTO cities VALUES("1061","14","Dodangaslanda","????????????","","","","","60530","7.5667","80.5333");
INSERT INTO cities VALUES("1062","14","Doluwa","?????","","","","","20532","7.621516","80.418833");
INSERT INTO cities VALUES("1063","14","Doragamuwa","???????","","","","","20816","7.5833","79.9333");
INSERT INTO cities VALUES("1064","14","Doratiyawa","????????","","","","","60013","7.450628","80.380562");
INSERT INTO cities VALUES("1065","14","Dunumadalawa","????????","","","","","50214","7.8","80.0833");
INSERT INTO cities VALUES("1066","14","Dunuwilapitiya","????????????","","","","","21538","7.3667","80.2");
INSERT INTO cities VALUES("1067","14","Ehetuwewa","????????","","","","","60716","7.927568","80.332035");
INSERT INTO cities VALUES("1068","14","Elibichchiya","??????????","","","","","60156","7.313179","80.056935");
INSERT INTO cities VALUES("1069","14","Embogama","","","","","","60718","7.9214","80.3608");
INSERT INTO cities VALUES("1070","14","Etungahakotuwa","????????????","","","","","60266","7.5167","79.9667");
INSERT INTO cities VALUES("1071","14","Galadivulwewa","???????????","","","","","50210","7.8","80.0833");
INSERT INTO cities VALUES("1072","14","Galgamuwa","???????","","","","","60700","7.995468","80.267527");
INSERT INTO cities VALUES("1073","14","Gallellagama","??????????","","","","","20095","7.3","80.15");
INSERT INTO cities VALUES("1074","14","Gallewa","","","","","","60712","7.9667","80.3333");
INSERT INTO cities VALUES("1075","14","Ganegoda","??????","","","","","80440","7.5833","80");
INSERT INTO cities VALUES("1076","14","Girathalana","???????","","","","","60752","7.9833","80.3833");
INSERT INTO cities VALUES("1077","14","Gokaralla","????????","","","","","60522","7.6301","80.3775");
INSERT INTO cities VALUES("1078","14","Gonawila","???????","","","","","60170","7.3167","80");
INSERT INTO cities VALUES("1079","14","Halmillawewa","???????????","","","","","60441","7.5953","79.9972");
INSERT INTO cities VALUES("1080","14","Handungamuwa","","","","","","21536","7.3667","80.2");
INSERT INTO cities VALUES("1081","14","Harankahawa","","","","","","20092","7.3","80.15");
INSERT INTO cities VALUES("1082","14","Helamada","","","","","","71046","7.3167","80.2833");
INSERT INTO cities VALUES("1083","14","Hengamuwa","","","","","","60414","7.703282","80.111254");
INSERT INTO cities VALUES("1084","14","Hettipola","","","","","","60430","7.605372","80.083137");
INSERT INTO cities VALUES("1085","14","Hewainna","","","","","","10714","7.3333","80.2167");
INSERT INTO cities VALUES("1086","14","Hilogama","","","","","","60486","7.75","80.0833");
INSERT INTO cities VALUES("1087","14","Hindagolla","","","","","","60034","7.4833","80.4167");
INSERT INTO cities VALUES("1088","14","Hiriyala Lenawa","","","","","","60546","7.6709","80.4751");
INSERT INTO cities VALUES("1089","14","Hiruwalpola","","","","","","60458","7.553915","79.924699");
INSERT INTO cities VALUES("1090","14","Horambawa","","","","","","60181","7.45","80.1833");
INSERT INTO cities VALUES("1091","14","Hulogedara","","","","","","60474","7.7833","80.1833");
INSERT INTO cities VALUES("1092","14","Hulugalla","","","","","","60477","7.79059","80.140007");
INSERT INTO cities VALUES("1093","14","Ihala Gomugomuwa","","","","","","60211","7.5167","80.0833");
INSERT INTO cities VALUES("1094","14","Ihala Katugampala","","","","","","60135","7.3672","80.1467");
INSERT INTO cities VALUES("1095","14","Indulgodakanda","","","","","","60016","7.422625","80.402808");
INSERT INTO cities VALUES("1096","14","Ithanawatta","","","","","","60025","7.4458","80.3458");
INSERT INTO cities VALUES("1097","14","Kadigawa","","","","","","60492","7.7167","80");
INSERT INTO cities VALUES("1098","14","Kalankuttiya","","","","","","50174","8.05","80.3833");
INSERT INTO cities VALUES("1099","14","Kalatuwawa","","","","","","10718","7.6333","80.3667");
INSERT INTO cities VALUES("1100","14","Kalugamuwa","","","","","","60096","7.449717","80.256696");
INSERT INTO cities VALUES("1101","14","Kanadeniyawala","","","","","","60054","7.43824","80.535658");
INSERT INTO cities VALUES("1102","14","Kanattewewa","","","","","","60422","7.6167","80.2");
INSERT INTO cities VALUES("1103","14","Kandegedara","","","","","","90070","7.424611","80.071498");
INSERT INTO cities VALUES("1104","14","Karagahagedara","","","","","","60106","7.475787","80.209967");
INSERT INTO cities VALUES("1105","14","Karambe","","","","","","60602","7.805937","80.339167");
INSERT INTO cities VALUES("1106","14","Katiyawa","","","","","","50261","7.624637","80.553944");
INSERT INTO cities VALUES("1107","14","Katupota","","","","","","60350","7.5331","80.1897");
INSERT INTO cities VALUES("1108","14","Kawudulla","","","","","","51414","7.75","80.3833");
INSERT INTO cities VALUES("1109","14","Kawuduluwewa Stagell","","","","","","51514","7.8167","80.1833");
INSERT INTO cities VALUES("1110","14","Kekunagolla","","","","","","60183","7.49608","80.170446");
INSERT INTO cities VALUES("1111","14","Keppitiwalana","","","","","","60288","7.323203","80.190441");
INSERT INTO cities VALUES("1112","14","Kimbulwanaoya","","","","","","60548","7.6709","80.4751");
INSERT INTO cities VALUES("1113","14","Kirimetiyawa","","","","","","60184","7.5247","80.1408");
INSERT INTO cities VALUES("1114","14","Kirindawa","","","","","","60212","7.502078","80.096123");
INSERT INTO cities VALUES("1115","14","Kirindigalla","","","","","","60502","7.554314","80.475005");
INSERT INTO cities VALUES("1116","14","Kithalawa","","","","","","60188","7.4816","80.1615");
INSERT INTO cities VALUES("1117","14","Kitulwala","","","","","","11242","7.5","80.5333");
INSERT INTO cities VALUES("1118","14","Kobeigane","","","","","","60410","7.656731","80.120999");
INSERT INTO cities VALUES("1119","14","Kohilagedara","","","","","","60028","7.4167","80.3667");
INSERT INTO cities VALUES("1120","14","Konwewa","","","","","","60630","7.8","80.0667");
INSERT INTO cities VALUES("1121","14","Kosdeniya","","","","","","60356","7.574081","80.138826");
INSERT INTO cities VALUES("1122","14","Kosgolla","","","","","","60029","7.4","80.3833");
INSERT INTO cities VALUES("1123","14","Kotagala","","","","","","22080","7.45","80.2333");
INSERT INTO cities VALUES("1124","5","Colombo 13","???? 13","???????? 13","Kotahena","??????","????????????","01300","6.942778","79.858611");
INSERT INTO cities VALUES("1125","14","Kotawehera","","","","","","60483","7.7911","80.1023");
INSERT INTO cities VALUES("1126","14","Kudagalgamuwa","","","","","","60003","7.558498","80.340333");
INSERT INTO cities VALUES("1127","14","Kudakatnoruwa","","","","","","60754","7.9833","80.3833");
INSERT INTO cities VALUES("1128","14","Kuliyapitiya","","","","","","60200","7.469551","80.04873");
INSERT INTO cities VALUES("1129","14","Kumaragama","","","","","","51412","7.75","80.3833");
INSERT INTO cities VALUES("1130","14","Kumbukgeta","","","","","","60508","7.675","80.3667");
INSERT INTO cities VALUES("1131","14","Kumbukwewa","","","","","","60506","7.797468","80.217857");
INSERT INTO cities VALUES("1132","14","Kuratihena","","","","","","60438","7.6","80.1333");
INSERT INTO cities VALUES("1133","14","Kurunegala","","","","","","60000","7.4867","80.3647");
INSERT INTO cities VALUES("1134","14","lbbagamuwa","","","","","","60500","7.675","80.3667");
INSERT INTO cities VALUES("1135","14","lhala Kadigamuwa","","","","","","60238","7.5436","79.9819");
INSERT INTO cities VALUES("1136","14","Lihiriyagama","","","","","","61138","7.3447","79.9425");
INSERT INTO cities VALUES("1137","14","lllagolla","","","","","","20724","7.4333","80.1333");
INSERT INTO cities VALUES("1138","14","llukhena","","","","","","60232","7.5436","79.9819");
INSERT INTO cities VALUES("1139","14","Lonahettiya","","","","","","60108","7.4589","80.2107");
INSERT INTO cities VALUES("1140","14","Madahapola","","","","","","60552","7.711952","80.499003");
INSERT INTO cities VALUES("1141","14","Madakumburumulla","","","","","","60209","7.44599","79.994062");
INSERT INTO cities VALUES("1142","14","Madalagama","","","","","","70158","7.353398","80.314033");
INSERT INTO cities VALUES("1143","14","Madawala Ulpotha","","","","","","21074","7.703","80.5051");
INSERT INTO cities VALUES("1144","14","Maduragoda","","","","","","60532","7.5667","80.5333");
INSERT INTO cities VALUES("1145","14","Maeliya","","","","","","60512","7.734847","80.4079");
INSERT INTO cities VALUES("1146","14","Magulagama","","","","","","60221","7.542895","80.090321");
INSERT INTO cities VALUES("1147","14","Maha Ambagaswewa","","","","","","51518","7.8167","80.1833");
INSERT INTO cities VALUES("1148","14","Mahagalkadawala","","","","","","60731","8.062861","80.28052");
INSERT INTO cities VALUES("1149","14","Mahagirilla","","","","","","60479","7.8333","80.1333");
INSERT INTO cities VALUES("1150","14","Mahamukalanyaya","","","","","","60516","7.7417","80.4318");
INSERT INTO cities VALUES("1151","14","Mahananneriya","","","","","","60724","8.013545","80.183367");
INSERT INTO cities VALUES("1152","14","Mahapallegama","","","","","","71063","7.366","80.0918");
INSERT INTO cities VALUES("1153","14","Maharachchimulla","","","","","","60286","7.335989","80.212673");
INSERT INTO cities VALUES("1154","14","Mahatalakolawewa","","","","","","51506","7.8167","80.1833");
INSERT INTO cities VALUES("1155","14","Mahawewa","","","","","","61220","7.5167","79.9167");
INSERT INTO cities VALUES("1156","14","Maho","","","","","","60600","7.8228","80.2778");
INSERT INTO cities VALUES("1157","14","Makulewa","","","","","","60714","7.998315","80.345072");
INSERT INTO cities VALUES("1158","14","Makulpotha","","","","","","60514","7.751748","80.43986");
INSERT INTO cities VALUES("1159","14","Makulwewa","","","","","","60578","7.6333","80.05");
INSERT INTO cities VALUES("1160","14","Malagane","","","","","","60404","7.65","80.2667");
INSERT INTO cities VALUES("1161","14","Mandapola","","","","","","60434","7.63521","80.108641");
INSERT INTO cities VALUES("1162","14","Maspotha","","","","","","60344","7.8667","80.2167");
INSERT INTO cities VALUES("1163","14","Mawathagama","","","","","","60060","7.409691","80.315775");
INSERT INTO cities VALUES("1164","14","Medirigiriya","","","","","","51500","7.8167","80.1833");
INSERT INTO cities VALUES("1165","14","Medivawa","","","","","","60612","7.7678","80.2858");
INSERT INTO cities VALUES("1166","14","Meegalawa","","","","","","60750","7.9833","80.3833");
INSERT INTO cities VALUES("1167","14","Meegaswewa","","","","","","51508","7.8167","80.1833");
INSERT INTO cities VALUES("1168","14","Meewellawa","","","","","","60484","7.85","80.15");
INSERT INTO cities VALUES("1169","14","Melsiripura","","","","","","60540","7.65","80.5");
INSERT INTO cities VALUES("1170","14","Metikumbura","","","","","","60304","7.3615","80.3177");
INSERT INTO cities VALUES("1171","14","Metiyagane","","","","","","60121","7.390854","80.180612");
INSERT INTO cities VALUES("1172","14","Minhettiya","","","","","","60004","7.581261","80.307757");
INSERT INTO cities VALUES("1173","14","Minuwangete","","","","","","60406","7.7167","80.25");
INSERT INTO cities VALUES("1174","14","Mirihanagama","","","","","","60408","7.6542","80.2583");
INSERT INTO cities VALUES("1175","14","Monnekulama","","","","","","60495","7.824042","80.060587");
INSERT INTO cities VALUES("1176","14","Moragane","","","","","","60354","7.547791","80.130329");
INSERT INTO cities VALUES("1177","14","Moragollagama","","","","","","60640","7.6333","80.2167");
INSERT INTO cities VALUES("1178","14","Morathiha","","","","","","60038","7.510701","80.488428");
INSERT INTO cities VALUES("1179","14","Munamaldeniya","","","","","","60218","7.55","80.0667");
INSERT INTO cities VALUES("1180","14","Muruthenge","","","","","","60122","7.3942","80.1861");
INSERT INTO cities VALUES("1181","14","Mutugala","","","","","","51064","7.3667","80.1667");
INSERT INTO cities VALUES("1182","14","Nabadewa","","","","","","60482","7.6833","80.0667");
INSERT INTO cities VALUES("1183","14","Nagollagama","","","","","","60590","7.752013","80.309254");
INSERT INTO cities VALUES("1184","14","Nagollagoda","","","","","","60226","7.563335","80.037807");
INSERT INTO cities VALUES("1185","14","Nakkawatta","","","","","","60186","7.448259","80.141879");
INSERT INTO cities VALUES("1186","14","Narammala","","","","","","60100","7.431387","80.206159");
INSERT INTO cities VALUES("1187","14","Nawasenapura","","","","","","51066","7.3667","80.1667");
INSERT INTO cities VALUES("1188","14","Nawatalwatta","","","","","","60292","7.4581","80.0603");
INSERT INTO cities VALUES("1189","14","Nelliya","","","","","","60549","7.690523","80.457947");
INSERT INTO cities VALUES("1190","14","Nikaweratiya","","","","","","60470","7.747585","80.115201");
INSERT INTO cities VALUES("1191","14","Nugagolla","","","","","","21534","7.3667","80.2");
INSERT INTO cities VALUES("1192","14","Nugawela","","","","","","20072","7.329999","80.220383");
INSERT INTO cities VALUES("1193","14","Padeniya","","","","","","60461","7.648348","80.222132");
INSERT INTO cities VALUES("1194","14","Padiwela","","","","","","60236","7.545547","79.9905");
INSERT INTO cities VALUES("1195","14","Pahalagiribawa","","","","","","60735","8.0833","80.2111");
INSERT INTO cities VALUES("1196","14","Pahamune","","","","","","60112","7.4833","80.2");
INSERT INTO cities VALUES("1197","14","Palagala","","","","","","50111","7.4667","80.1333");
INSERT INTO cities VALUES("1198","14","Palapathwela","","","","","","21070","7.9","80.2");
INSERT INTO cities VALUES("1199","14","Palaviya","","","","","","61280","7.5785","79.9098");
INSERT INTO cities VALUES("1200","14","Pallewela","","","","","","11150","7.4667","79.9833");
INSERT INTO cities VALUES("1201","14","Palukadawala","","","","","","60704","7.947895","80.279058");
INSERT INTO cities VALUES("1202","14","Panadaragama","","","","","","60348","7.8667","80.2167");
INSERT INTO cities VALUES("1203","14","Panagamuwa","","","","","","60052","7.55","80.4667");
INSERT INTO cities VALUES("1204","14","Panaliya","","","","","","60312","7.328059","80.331852");
INSERT INTO cities VALUES("1205","14","Panapitiya","","","","","","70152","7.4167","80.1833");
INSERT INTO cities VALUES("1206","14","Panliyadda","","","","","","60558","7.7061","80.4964");
INSERT INTO cities VALUES("1207","14","Pansiyagama","","","","","","60554","7.7061","80.4964");
INSERT INTO cities VALUES("1208","14","Parape","","","","","","71105","7.3667","80.4167");
INSERT INTO cities VALUES("1209","14","Pathanewatta","","","","","","90071","7.4167","80.0833");
INSERT INTO cities VALUES("1210","14","Pattiya Watta","","","","","","20118","7.3833","80.3167");
INSERT INTO cities VALUES("1211","14","Perakanatta","","","","","","21532","7.3667","80.2");
INSERT INTO cities VALUES("1212","14","Periyakadneluwa","","","","","","60518","7.7417","80.4318");
INSERT INTO cities VALUES("1213","14","Pihimbiya Ratmale","","","","","","60439","7.6299","80.0953");
INSERT INTO cities VALUES("1214","14","Pihimbuwa","","","","","","60053","7.460742","80.512294");
INSERT INTO cities VALUES("1215","14","Pilessa","","","","","","60058","7.45","80.4167");
INSERT INTO cities VALUES("1216","14","Polgahawela","","","","","","60300","7.332765","80.295285");
INSERT INTO cities VALUES("1217","14","Polgolla","","","","","","20250","7.4167","80.5333");
INSERT INTO cities VALUES("1218","14","Polpitigama","","","","","","60620","7.8142","80.4042");
INSERT INTO cities VALUES("1219","14","Pothuhera","","","","","","60330","7.4181","80.3317");
INSERT INTO cities VALUES("1220","14","Pothupitiya","","","","","","70338","7.35542","80.17166");
INSERT INTO cities VALUES("1221","14","Pujapitiya","","","","","","20112","7.3833","80.3167");
INSERT INTO cities VALUES("1222","14","Rakwana","","","","","","70300","7.9","80.4");
INSERT INTO cities VALUES("1223","14","Ranorawa","","","","","","50212","7.8","80.0833");
INSERT INTO cities VALUES("1224","14","Rathukohodigala","","","","","","20818","7.5833","79.9333");
INSERT INTO cities VALUES("1225","14","Ridibendiella","","","","","","60606","7.802","80.287");
INSERT INTO cities VALUES("1226","14","Ridigama","","","","","","60040","7.55","80.4833");
INSERT INTO cities VALUES("1227","14","Saliya Asokapura","","","","","","60736","8.0833","80.2111");
INSERT INTO cities VALUES("1228","14","Sandalankawa","","","","","","60176","7.304619","79.944358");
INSERT INTO cities VALUES("1229","14","Sevanapitiya","","","","","","51062","7.3667","80.1667");
INSERT INTO cities VALUES("1230","14","Sirambiadiya","","","","","","61312","8.1","80.2667");
INSERT INTO cities VALUES("1231","14","Sirisetagama","","","","","","60478","7.7772","80.1506");
INSERT INTO cities VALUES("1232","14","Siyambalangamuwa","","","","","","60646","7.529179","80.340311");
INSERT INTO cities VALUES("1233","14","Siyambalawewa","","","","","","32048","7.65","79.9667");
INSERT INTO cities VALUES("1234","14","Solepura","","","","","","60737","8.153657","80.153384");
INSERT INTO cities VALUES("1235","14","Solewewa","","","","","","60738","8.145855","80.132596");
INSERT INTO cities VALUES("1236","14","Sunandapura","","","","","","60436","7.6299","80.0953");
INSERT INTO cities VALUES("1237","14","Talawattegedara","","","","","","60306","7.3833","80.3");
INSERT INTO cities VALUES("1238","14","Tambutta","","","","","","60734","8.0833","80.2167");
INSERT INTO cities VALUES("1239","14","Tennepanguwa","","","","","","90072","7.4167","80.0833");
INSERT INTO cities VALUES("1240","14","Thalahitimulla","","","","","","60208","7.432473","80.001954");
INSERT INTO cities VALUES("1241","14","Thalakolawewa","","","","","","60624","7.796943","80.433851");
INSERT INTO cities VALUES("1242","14","Thalwita","","","","","","60572","7.5943","80.2108");
INSERT INTO cities VALUES("1243","14","Tharana Udawela","","","","","","60227","7.5333","80.0667");
INSERT INTO cities VALUES("1244","14","Thimbiriyawa","","","","","","60476","7.750904","80.140975");
INSERT INTO cities VALUES("1245","14","Tisogama","","","","","","60453","7.6065","79.9406");
INSERT INTO cities VALUES("1246","14","Torayaya","","","","","","60499","7.5167","80.4");
INSERT INTO cities VALUES("1247","14","Tulhiriya","","","","","","71610","7.2833","80.2167");
INSERT INTO cities VALUES("1248","14","Tuntota","","","","","","71062","7.5","79.9167");
INSERT INTO cities VALUES("1249","14","Tuttiripitigama","","","","","","60426","7.6","80.1333");
INSERT INTO cities VALUES("1250","14","Udagaldeniya","","","","","","71113","7.3583","80.35");
INSERT INTO cities VALUES("1251","14","Udahingulwala","","","","","","20094","7.3","80.15");
INSERT INTO cities VALUES("1252","14","Udawatta","","","","","","20722","7.4333","80.1333");
INSERT INTO cities VALUES("1253","14","Udubaddawa","","","","","","60250","7.4828","79.9753");
INSERT INTO cities VALUES("1254","14","Udumulla","","","","","","71521","7.45","80.4");
INSERT INTO cities VALUES("1255","14","Uhumiya","","","","","","60094","7.4667","80.2833");
INSERT INTO cities VALUES("1256","14","Ulpotha Pallekele","","","","","","60622","7.8071","80.4188");
INSERT INTO cities VALUES("1257","14","Ulpothagama","","","","","","20965","7.7167","80.3167");
INSERT INTO cities VALUES("1258","14","Usgala Siyabmalangamuwa","","","","","","60732","8.0833","80.2111");
INSERT INTO cities VALUES("1259","14","Vijithapura","","","","","","50110","7.4667","80.1333");
INSERT INTO cities VALUES("1260","14","Wadakada","","","","","","60318","7.39697","80.267596");
INSERT INTO cities VALUES("1261","14","Wadumunnegedara","","","","","","60204","7.4167","79.9667");
INSERT INTO cities VALUES("1262","14","Walakumburumulla","","","","","","60198","7.4167","80.0167");
INSERT INTO cities VALUES("1263","14","Wannigama","","","","","","60465","7.6569","80.2203");
INSERT INTO cities VALUES("1264","14","Wannikudawewa","","","","","","60721","7.9977","80.2964");
INSERT INTO cities VALUES("1265","14","Wannilhalagama","","","","","","60722","7.9977","80.2964");
INSERT INTO cities VALUES("1266","14","Wannirasnayakapura","","","","","","60490","7.6889","80.1556");
INSERT INTO cities VALUES("1267","14","Warawewa","","","","","","60739","8.121572","80.14855");
INSERT INTO cities VALUES("1268","14","Wariyapola","","","","","","60400","7.628694","80.235989");
INSERT INTO cities VALUES("1269","14","Watareka","","","","","","10511","7.397142","80.432878");
INSERT INTO cities VALUES("1270","14","Wattegama","","","","","","20810","7.5833","79.9333");
INSERT INTO cities VALUES("1271","14","Watuwatta","","","","","","60262","7.5167","79.9167");
INSERT INTO cities VALUES("1272","14","Weerapokuna","","","","","","60454","7.649426","79.981893");
INSERT INTO cities VALUES("1273","14","Welawa Juncton","","","","","","60464","7.6569","80.2203");
INSERT INTO cities VALUES("1274","14","Welipennagahamulla","","","","","","60240","7.4581","80.0603");
INSERT INTO cities VALUES("1275","14","Wellagala","","","","","","60402","7.6167","80.2833");
INSERT INTO cities VALUES("1276","14","Wellarawa","","","","","","60456","7.5729","79.913974");
INSERT INTO cities VALUES("1277","14","Wellawa","","","","","","60570","7.566524","80.369189");
INSERT INTO cities VALUES("1278","14","Welpalla","","","","","","60206","7.4333","80.05");
INSERT INTO cities VALUES("1279","14","Wennoruwa","","","","","","60284","7.369467","80.219573");
INSERT INTO cities VALUES("1280","14","Weuda","","","","","","60080","7.4","80.1667");
INSERT INTO cities VALUES("1281","14","Wewagama","","","","","","60195","7.42031","80.099835");
INSERT INTO cities VALUES("1282","14","Wilgamuwa","","","","","","21530","7.3667","80.2");
INSERT INTO cities VALUES("1283","14","Yakwila","","","","","","60202","7.3833","80.0333");
INSERT INTO cities VALUES("1284","14","Yatigaloluwa","","","","","","60314","7.328729","80.264509");
INSERT INTO cities VALUES("1285","15","Mannar","","","","","","41000","8.9833","79.9");
INSERT INTO cities VALUES("1286","15","Puthukudiyiruppu","","","","","","30158","9.046951","79.853286");
INSERT INTO cities VALUES("1287","16","Akuramboda","?????????","","","","","21142","7.646383","80.600048");
INSERT INTO cities VALUES("1288","16","Alawatuwala","???????","","","","","60047","7.55","80.5583");
INSERT INTO cities VALUES("1289","16","Alwatta","???????","","","","","21004","7.449444","80.663358");
INSERT INTO cities VALUES("1290","16","Ambana","??????","","","","","21504","7.651007","80.693816");
INSERT INTO cities VALUES("1291","16","Aralaganwila","?????????","","","","","51100","7.696","80.5842");
INSERT INTO cities VALUES("1292","16","Ataragallewa","?????????","","","","","21512","7.5333","80.6067");
INSERT INTO cities VALUES("1293","16","Bambaragaswewa","?????????","","","","","21212","7.784315","80.540511");
INSERT INTO cities VALUES("1294","16","Barawardhana Oya","??????? ??","","","","","20967","7.5667","80.625");
INSERT INTO cities VALUES("1295","16","Beligamuwa","????????","","","","","21214","7.725882","80.552789");
INSERT INTO cities VALUES("1296","16","Damana","???","","","","","32014","7.8417","80.5797");
INSERT INTO cities VALUES("1297","16","Dambulla","??????","","","","","21100","7.868039","80.646464");
INSERT INTO cities VALUES("1298","16","Damminna","????????","","","","","51106","7.696","80.5842");
INSERT INTO cities VALUES("1299","16","Dankanda","??????","","","","","21032","7.519616","80.694168");
INSERT INTO cities VALUES("1300","16","Delwite","????????","","","","","60044","7.55","80.5583");
INSERT INTO cities VALUES("1301","16","Devagiriya","????????","","","","","21552","7.5833","80.9667");
INSERT INTO cities VALUES("1302","16","Dewahuwa","??????","","","","","21206","7.7589","80.5683");
INSERT INTO cities VALUES("1303","16","Divuldamana","?????????","","","","","51104","7.696","80.5842");
INSERT INTO cities VALUES("1304","16","Dullewa","??????","","","","","21054","7.511012","80.59862");
INSERT INTO cities VALUES("1305","16","Dunkolawatta","???????????","","","","","21046","7.4917","80.625");
INSERT INTO cities VALUES("1306","16","Elkaduwa","???????","","","","","21012","7.410706","80.693258");
INSERT INTO cities VALUES("1307","16","Erawula Junction","????? ??????","","","","","21108","7.8633","80.6842");
INSERT INTO cities VALUES("1308","16","Etanawala","?????","","","","","21402","7.5217","80.6847");
INSERT INTO cities VALUES("1309","16","Galewela","??????","","","","","21200","7.759807","80.56744");
INSERT INTO cities VALUES("1310","16","Galoya Junction","????? ??????","","","","","51375","7.696","80.5842");
INSERT INTO cities VALUES("1311","16","Gammaduwa","???????","","","","","21068","7.581654","80.698521");
INSERT INTO cities VALUES("1312","16","Gangala Puwakpitiya","????? ??????????","","","","","21404","7.5217","80.6847");
INSERT INTO cities VALUES("1313","16","Hasalaka","","","","","","20960","7.5667","80.625");
INSERT INTO cities VALUES("1314","16","Hattota Amuna","","","","","","21514","7.5333","80.6067");
INSERT INTO cities VALUES("1315","16","Imbulgolla","","","","","","21064","7.575027","80.663159");
INSERT INTO cities VALUES("1316","16","Inamaluwa","","","","","","21124","7.951344","80.690187");
INSERT INTO cities VALUES("1317","16","Iriyagolla","","","","","","60045","7.55","80.6333");
INSERT INTO cities VALUES("1318","16","Kaikawala","","","","","","21066","7.507177","80.659444");
INSERT INTO cities VALUES("1319","16","Kalundawa","","","","","","21112","7.8","80.7167");
INSERT INTO cities VALUES("1320","16","Kandalama","","","","","","21106","7.887403","80.703507");
INSERT INTO cities VALUES("1321","16","Kavudupelella","","","","","","21072","7.5914","80.6258");
INSERT INTO cities VALUES("1322","16","Kibissa","","","","","","21122","7.9397","80.7278");
INSERT INTO cities VALUES("1323","16","Kiwula","","","","","","21042","7.4917","80.625");
INSERT INTO cities VALUES("1324","16","Kongahawela","","","","","","21500","7.679932","80.706607");
INSERT INTO cities VALUES("1325","16","Laggala Pallegama","","","","","","21520","7.5333","80.6067");
INSERT INTO cities VALUES("1326","16","Leliambe","","","","","","21008","7.4346","80.6519");
INSERT INTO cities VALUES("1327","16","Lenadora","","","","","","21094","7.753507","80.660161");
INSERT INTO cities VALUES("1328","16","lhala Halmillewa","","","","","","50262","7.8667","80.6417");
INSERT INTO cities VALUES("1329","16","lllukkumbura","","","","","","21406","7.5217","80.6847");
INSERT INTO cities VALUES("1330","16","Madipola","","","","","","21156","7.6833","80.5833");
INSERT INTO cities VALUES("1331","16","Maduruoya","","","","","","51108","7.696","80.5842");
INSERT INTO cities VALUES("1332","16","Mahawela","","","","","","21140","7.581804","80.607485");
INSERT INTO cities VALUES("1333","16","Mananwatta","","","","","","21144","7.685106","80.601107");
INSERT INTO cities VALUES("1334","16","Maraka","","","","","","21554","7.586801","80.962009");
INSERT INTO cities VALUES("1335","16","Matale","","","","","","21000","7.4717","80.6244");
INSERT INTO cities VALUES("1336","16","Melipitiya","","","","","","21055","7.5458","80.5833");
INSERT INTO cities VALUES("1337","16","Metihakka","","","","","","21062","7.536495","80.654081");
INSERT INTO cities VALUES("1338","16","Millawana","","","","","","21154","7.6503","80.5772");
INSERT INTO cities VALUES("1339","16","Muwandeniya","","","","","","21044","7.461452","80.660098");
INSERT INTO cities VALUES("1340","16","Nalanda","","","","","","21082","7.662487","80.635004");
INSERT INTO cities VALUES("1341","16","Naula","","","","","","21090","7.708132","80.652321");
INSERT INTO cities VALUES("1342","16","Opalgala","","","","","","21076","7.619927","80.698338");
INSERT INTO cities VALUES("1343","16","Pallepola","","","","","","21152","7.620686","80.600466");
INSERT INTO cities VALUES("1344","16","Pimburattewa","","","","","","51102","7.696","80.5842");
INSERT INTO cities VALUES("1345","16","Pulastigama","","","","","","51050","7.67","80.565");
INSERT INTO cities VALUES("1346","16","Ranamuregama","","","","","","21524","7.5333","80.6067");
INSERT INTO cities VALUES("1347","16","Rattota","","","","","","21400","7.5217","80.6847");
INSERT INTO cities VALUES("1348","16","Selagama","","","","","","21058","7.594457","80.58381");
INSERT INTO cities VALUES("1349","16","Sigiriya","","","","","","21120","7.954968","80.755205");
INSERT INTO cities VALUES("1350","16","Sinhagama","","","","","","51378","7.696","80.5842");
INSERT INTO cities VALUES("1351","16","Sungavila","","","","","","51052","7.67","80.565");
INSERT INTO cities VALUES("1352","16","Talagoda Junction","","","","","","21506","7.5722","80.6222");
INSERT INTO cities VALUES("1353","16","Talakiriyagama","","","","","","21116","7.8206","80.6172");
INSERT INTO cities VALUES("1354","16","Tamankaduwa","","","","","","51089","7.67","80.565");
INSERT INTO cities VALUES("1355","16","Udasgiriya","","","","","","21051","7.535254","80.570342");
INSERT INTO cities VALUES("1356","16","Udatenna","","","","","","21006","7.4167","80.65");
INSERT INTO cities VALUES("1357","16","Ukuwela","","","","","","21300","7.423917","80.62996");
INSERT INTO cities VALUES("1358","16","Wahacotte","","","","","","21160","7.7142","80.5972");
INSERT INTO cities VALUES("1359","16","Walawela","","","","","","21048","7.520365","80.597403");
INSERT INTO cities VALUES("1360","16","Wehigala","","","","","","21009","7.409019","80.669112");
INSERT INTO cities VALUES("1361","16","Welangahawatte","","","","","","21408","7.5217","80.6847");
INSERT INTO cities VALUES("1362","16","Wewalawewa","","","","","","21114","7.8103","80.6669");
INSERT INTO cities VALUES("1363","16","Yatawatta","","","","","","21056","7.562698","80.578361");
INSERT INTO cities VALUES("1364","17","Akuressa","????????","","","","","81400","6.0964","80.4808");
INSERT INTO cities VALUES("1365","17","Alapaladeniya","?????????","","","","","81475","6.2833","80.45");
INSERT INTO cities VALUES("1366","17","Aparekka","???????","","","","","81032","6.008083","80.621556");
INSERT INTO cities VALUES("1367","17","Athuraliya","???????","","","","","81402","6.069724","80.497879");
INSERT INTO cities VALUES("1368","17","Bengamuwa","????????","","","","","81614","6.253417","80.59808");
INSERT INTO cities VALUES("1369","17","Bopagoda","??????","","","","","81412","6.1561","80.4903");
INSERT INTO cities VALUES("1370","17","Dampahala","??????","","","","","81612","6.259631","80.633081");
INSERT INTO cities VALUES("1371","17","Deegala Lenama","???? ????","","","","","81452","6.2333","80.45");
INSERT INTO cities VALUES("1372","17","Deiyandara","?????????","","","","","81320","6.152388","80.604696");
INSERT INTO cities VALUES("1373","17","Denagama","?????","","","","","81314","6.11481","80.642749");
INSERT INTO cities VALUES("1374","17","Denipitiya","?????????","","","","","81730","5.9667","80.45");
INSERT INTO cities VALUES("1375","17","Deniyaya","???????","","","","","81500","6.339732","80.548055");
INSERT INTO cities VALUES("1376","17","Derangala","??????","","","","","81454","6.229572","80.445492");
INSERT INTO cities VALUES("1377","17","Devinuwara (Dondra)","???????? (????????)","","","","","81160","5.9319","80.6069");
INSERT INTO cities VALUES("1378","17","Dikwella","?????????","","","","","81200","5.9667","80.6833");
INSERT INTO cities VALUES("1379","17","Diyagaha","?????","","","","","81038","5.9833","80.5667");
INSERT INTO cities VALUES("1380","17","Diyalape","??????","","","","","81422","6.121802","80.447911");
INSERT INTO cities VALUES("1381","17","Gandara","?????","","","","","81170","5.933629","80.61575");
INSERT INTO cities VALUES("1382","17","Godapitiya","????????","","","","","81408","6.121801","80.480996");
INSERT INTO cities VALUES("1383","17","Gomilamawarala","?????????","","","","","81072","6.1833","80.5667");
INSERT INTO cities VALUES("1384","17","Hawpe","","","","","","80132","6.129973","80.489743");
INSERT INTO cities VALUES("1385","17","Horapawita","","","","","","81108","6.1167","80.5833");
INSERT INTO cities VALUES("1386","17","Kalubowitiyana","","","","","","81478","6.3167","80.4");
INSERT INTO cities VALUES("1387","17","Kamburugamuwa","","","","","","81750","5.940612","80.496449");
INSERT INTO cities VALUES("1388","17","Kamburupitiya","","","","","","81100","6.069847","80.56473");
INSERT INTO cities VALUES("1389","17","Karagoda Uyangoda","","","","","","81082","6.0715","80.5193");
INSERT INTO cities VALUES("1390","17","Karaputugala","","","","","","81106","6.07377","80.603484");
INSERT INTO cities VALUES("1391","17","Karatota","","","","","","81318","6.0667","80.6667");
INSERT INTO cities VALUES("1392","17","Kekanadurra","","","","","","81020","6.0715","80.5193");
INSERT INTO cities VALUES("1393","17","Kiriweldola","","","","","","81514","6.372272","80.533507");
INSERT INTO cities VALUES("1394","17","Kiriwelkele","","","","","","81456","6.249957","80.451047");
INSERT INTO cities VALUES("1395","17","Kolawenigama","","","","","","81522","6.321671","80.500227");
INSERT INTO cities VALUES("1396","17","Kotapola","","","","","","81480","6.292393","80.533957");
INSERT INTO cities VALUES("1397","17","Lankagama","","","","","","81526","6.35","80.4667");
INSERT INTO cities VALUES("1398","17","Makandura","","","","","","81070","6.137036","80.571982");
INSERT INTO cities VALUES("1399","17","Maliduwa","","","","","","81424","6.1333","80.4167");
INSERT INTO cities VALUES("1400","17","Maramba","","","","","","81416","6.1614","80.5035");
INSERT INTO cities VALUES("1401","17","Matara","","","","","","81000","5.9486","80.5428");
INSERT INTO cities VALUES("1402","17","Mediripitiya","","","","","","81524","6.35","80.4667");
INSERT INTO cities VALUES("1403","17","Miella","","","","","","81312","6.1167","80.6833");
INSERT INTO cities VALUES("1404","17","Mirissa","","","","","","81740","5.94679","80.452288");
INSERT INTO cities VALUES("1405","17","Morawaka","","","","","","81470","6.25","80.4833");
INSERT INTO cities VALUES("1406","17","Mulatiyana Junction","","","","","","81071","6.1833","80.5667");
INSERT INTO cities VALUES("1407","17","Nadugala","","","","","","81092","5.975464","80.548935");
INSERT INTO cities VALUES("1408","17","Naimana","","","","","","81017","6.0715","80.5193");
INSERT INTO cities VALUES("1409","17","Palatuwa","","","","","","81050","5.984516","80.518656");
INSERT INTO cities VALUES("1410","17","Parapamulla","","","","","","81322","6.150219","80.61675");
INSERT INTO cities VALUES("1411","17","Pasgoda","","","","","","81615","6.242998","80.616175");
INSERT INTO cities VALUES("1412","17","Penetiyana","","","","","","81722","6.034813","80.450626");
INSERT INTO cities VALUES("1413","17","Pitabeddara","","","","","","81450","6.2167","80.45");
INSERT INTO cities VALUES("1414","17","Puhulwella","","","","","","81290","6.045752","80.619203");
INSERT INTO cities VALUES("1415","17","Radawela","","","","","","81316","6.124672","80.60726");
INSERT INTO cities VALUES("1416","17","Ransegoda","","","","","","81064","6.0715","80.5193");
INSERT INTO cities VALUES("1417","17","Rotumba","","","","","","81074","6.229142","80.571151");
INSERT INTO cities VALUES("1418","17","Sultanagoda","","","","","","81051","5.9667","80.5");
INSERT INTO cities VALUES("1419","17","Telijjawila","","","","","","81060","6.0715","80.5193");
INSERT INTO cities VALUES("1420","17","Thihagoda","","","","","","81280","6.011602","80.561851");
INSERT INTO cities VALUES("1421","17","Urubokka","","","","","","81600","6.302863","80.631175");
INSERT INTO cities VALUES("1422","17","Urugamuwa","","","","","","81230","6.0116","80.6437");
INSERT INTO cities VALUES("1423","17","Urumutta","","","","","","81414","6.150181","80.519582");
INSERT INTO cities VALUES("1424","17","Viharahena","","","","","","81508","6.379073","80.598006");
INSERT INTO cities VALUES("1425","17","Walakanda","","","","","","81294","6.01655","80.649889");
INSERT INTO cities VALUES("1426","17","Walasgala","","","","","","81220","5.981913","80.693678");
INSERT INTO cities VALUES("1427","17","Waralla","","","","","","81479","6.277439","80.522519");
INSERT INTO cities VALUES("1428","17","Weligama","","","","","","81700","5.9667","80.4167");
INSERT INTO cities VALUES("1429","17","Wilpita","","","","","","81404","6.1","80.5167");
INSERT INTO cities VALUES("1430","17","Yatiyana","","","","","","81034","6.028888","80.603158");
INSERT INTO cities VALUES("1431","18","Ayiwela","","","","","","91516","7.1","81.2333");
INSERT INTO cities VALUES("1432","18","Badalkumbura","?????????","","","","","91070","6.893287","81.234346");
INSERT INTO cities VALUES("1433","18","Baduluwela","????????","","","","","91058","7.11307","81.435299");
INSERT INTO cities VALUES("1434","18","Bakinigahawela","??????????","","","","","91554","6.9333","81.2833");
INSERT INTO cities VALUES("1435","18","Balaharuwa","??????","","","","","91295","6.520177","81.058519");
INSERT INTO cities VALUES("1436","18","Bibile","??????","","","","","91500","7.1667","81.2167");
INSERT INTO cities VALUES("1437","18","Buddama","???????","","","","","91038","7.046413","81.486844");
INSERT INTO cities VALUES("1438","18","Buttala","??????","","","","","91100","6.75","81.2333");
INSERT INTO cities VALUES("1439","18","Dambagalla","??????","","","","","91050","6.955743","81.375946");
INSERT INTO cities VALUES("1440","18","Diyakobala","???????","","","","","91514","7.1056","81.2222");
INSERT INTO cities VALUES("1441","18","Dombagahawela","????????","","","","","91010","6.898197","81.441375");
INSERT INTO cities VALUES("1442","18","Ethimalewewa","?????????","","","","","91020","6.9216","81.3833");
INSERT INTO cities VALUES("1443","18","Ettiliwewa","??????????","","","","","91250","6.73","81.12");
INSERT INTO cities VALUES("1444","18","Galabedda","???????","","","","","91008","6.9167","81.3833");
INSERT INTO cities VALUES("1445","18","Gamewela","??????","","","","","90512","6.9167","81.2");
INSERT INTO cities VALUES("1446","18","Hambegamuwa","?????????","","","","","91308","6.503718","80.874695");
INSERT INTO cities VALUES("1447","18","Hingurukaduwa","","","","","","90508","6.817257","81.153429");
INSERT INTO cities VALUES("1448","18","Hulandawa","","","","","","91004","6.868479","81.333215");
INSERT INTO cities VALUES("1449","18","Inginiyagala","","","","","","91040","7.198617","81.494496");
INSERT INTO cities VALUES("1450","18","Kandaudapanguwa","","","","","","91032","6.9667","81.5167");
INSERT INTO cities VALUES("1451","18","Kandawinna","","","","","","91552","6.9333","81.2833");
INSERT INTO cities VALUES("1452","18","Kataragama","","","","","","91400","6.4167","81.3333");
INSERT INTO cities VALUES("1453","18","Kotagama","","","","","","91512","7.116448","81.17788");
INSERT INTO cities VALUES("1454","18","Kotamuduna","","","","","","90506","6.892542","81.177651");
INSERT INTO cities VALUES("1455","18","Kotawehera Mankada","","","","","","91312","6.4636","81.053");
INSERT INTO cities VALUES("1456","18","Kudawewa","","","","","","61226","6.4167","81.0333");
INSERT INTO cities VALUES("1457","18","Kumbukkana","","","","","","91098","6.814795","81.274913");
INSERT INTO cities VALUES("1458","18","Marawa","","","","","","91006","6.805944","81.381458");
INSERT INTO cities VALUES("1459","18","Mariarawa","","","","","","91052","6.975969","81.481047");
INSERT INTO cities VALUES("1460","18","Medagana","","","","","","91550","6.9333","81.2833");
INSERT INTO cities VALUES("1461","18","Medawelagama","","","","","","90518","6.9167","81.2");
INSERT INTO cities VALUES("1462","18","Miyanakandura","","","","","","90584","6.869169","81.152967");
INSERT INTO cities VALUES("1463","18","Monaragala","","","","","","91000","6.8667","81.35");
INSERT INTO cities VALUES("1464","18","Moretuwegama","","","","","","91108","6.75","81.2333");
INSERT INTO cities VALUES("1465","18","Nakkala","","","","","","91003","6.887816","81.306082");
INSERT INTO cities VALUES("1466","18","Namunukula","","","","","","90580","6.8667","81.1167");
INSERT INTO cities VALUES("1467","18","Nannapurawa","","","","","","91519","7.0833","81.25");
INSERT INTO cities VALUES("1468","18","Nelliyadda","","","","","","91042","7.389929","81.408141");
INSERT INTO cities VALUES("1469","18","Nilgala","","","","","","91508","7.215945","81.312806");
INSERT INTO cities VALUES("1470","18","Obbegoda","","","","","","91007","6.8786","81.3476");
INSERT INTO cities VALUES("1471","18","Okkampitiya","","","","","","91060","6.753201","81.29752");
INSERT INTO cities VALUES("1472","18","Pangura","","","","","","91002","6.9833","81.3167");
INSERT INTO cities VALUES("1473","18","Pitakumbura","","","","","","91505","7.191575","81.27524");
INSERT INTO cities VALUES("1474","18","Randeniya","","","","","","91204","6.803474","81.1119");
INSERT INTO cities VALUES("1475","18","Ruwalwela","","","","","","91056","7.017476","81.386203");
INSERT INTO cities VALUES("1476","18","Sella Kataragama","","","","","","91405","6.4167","81.3333");
INSERT INTO cities VALUES("1477","18","Siyambalagune","","","","","","91202","6.8","81.1333");
INSERT INTO cities VALUES("1478","18","Siyambalanduwa","","","","","","91030","6.910581","81.552112");
INSERT INTO cities VALUES("1479","18","Suriara","","","","","","91306","6.4636","81.053");
INSERT INTO cities VALUES("1480","18","Tanamalwila","","","","","","91300","6.4333","81.1333");
INSERT INTO cities VALUES("1481","18","Uva Gangodagama","","","","","","91054","7.0056","81.4222");
INSERT INTO cities VALUES("1482","18","Uva Kudaoya","","","","","","91298","6.75","81.2");
INSERT INTO cities VALUES("1483","18","Uva Pelwatta","","","","","","91112","6.75","81.2333");
INSERT INTO cities VALUES("1484","18","Warunagama","","","","","","91198","6.75","81.2333");
INSERT INTO cities VALUES("1485","18","Wedikumbura","","","","","","91005","6.8333","81.3833");
INSERT INTO cities VALUES("1486","18","Weherayaya Handapanagala","","","","","","91206","6.7778","81.1167");
INSERT INTO cities VALUES("1487","18","Wellawaya","","","","","","91200","6.719458","81.106295");
INSERT INTO cities VALUES("1488","18","Wilaoya","","","","","","91022","6.9216","81.3833");
INSERT INTO cities VALUES("1489","18","Yudaganawa","","","","","","51424","6.776882","81.229725");
INSERT INTO cities VALUES("1490","19","Mullativu","","","","","","42000","9.266667","80.816667");
INSERT INTO cities VALUES("1491","20","Agarapathana","??????","","","","","22094","6.824224","80.709671");
INSERT INTO cities VALUES("1492","20","Ambatalawa","??????","","","","","20686","7.05","80.6667");
INSERT INTO cities VALUES("1493","20","Ambewela","??????","","","","","22216","6.899935","80.783603");
INSERT INTO cities VALUES("1494","20","Bogawantalawa","??????????","","","","","22060","6.8","80.6833");
INSERT INTO cities VALUES("1495","20","Bopattalawa","?????????","","","","","22095","6.9011","80.6694");
INSERT INTO cities VALUES("1496","20","Dagampitiya","??????????","","","","","20684","6.977604","80.466144");
INSERT INTO cities VALUES("1497","20","Dayagama Bazaar","???? ?????","","","","","22096","6.9011","80.6694");
INSERT INTO cities VALUES("1498","20","Dikoya","??????","","","","","22050","6.8786","80.6272");
INSERT INTO cities VALUES("1499","20","Doragala","?????","","","","","20567","7.0731","80.5892");
INSERT INTO cities VALUES("1500","20","Dunukedeniya","???????????","","","","","22002","6.982643","80.632911");
INSERT INTO cities VALUES("1501","20","Egodawela","???????","","","","","90013","7.024081","80.662636");
INSERT INTO cities VALUES("1502","20","Ekiriya","??????","","","","","20732","7.148834","80.757167");
INSERT INTO cities VALUES("1503","20","Elamulla","???????","","","","","20742","7.0833","80.8");
INSERT INTO cities VALUES("1504","20","Ginigathena","????????","","","","","20680","6.9864","80.4894");
INSERT INTO cities VALUES("1505","20","Gonakele","????????","","","","","22226","6.9917","80.8194");
INSERT INTO cities VALUES("1506","20","Haggala","?????","","","","","22208","6.9697","80.77");
INSERT INTO cities VALUES("1507","20","Halgranoya","?????????","","","","","22240","7.0417","80.8917");
INSERT INTO cities VALUES("1508","20","Hangarapitiya","","","","","","22044","6.932637","80.464959");
INSERT INTO cities VALUES("1509","20","Hapugastalawa","","","","","","20668","7.0667","80.5667");
INSERT INTO cities VALUES("1510","20","Harasbedda","","","","","","22262","7.04738","80.876477");
INSERT INTO cities VALUES("1511","20","Hatton","","","","","","22000","6.899356","80.599855");
INSERT INTO cities VALUES("1512","20","Hewaheta","","","","","","20440","7.1108","80.7547");
INSERT INTO cities VALUES("1513","20","Hitigegama","","","","","","22046","6.947521","80.457154");
INSERT INTO cities VALUES("1514","20","Jangulla","","","","","","90063","7.0333","80.8917");
INSERT INTO cities VALUES("1515","20","Kalaganwatta","","","","","","22282","7.104232","80.902715");
INSERT INTO cities VALUES("1516","20","Kandapola","","","","","","22220","6.981495","80.802798");
INSERT INTO cities VALUES("1517","20","Karandagolla","","","","","","20738","7.057024","80.899844");
INSERT INTO cities VALUES("1518","20","Keerthi Bandarapura","","","","","","22274","7.1108","80.8581");
INSERT INTO cities VALUES("1519","20","Kiribathkumbura","","","","","","20442","7.1108","80.7547");
INSERT INTO cities VALUES("1520","20","Kotiyagala","","","","","","91024","6.784171","80.68557");
INSERT INTO cities VALUES("1521","20","Kotmale","","","","","","20560","7.0214","80.5942");
INSERT INTO cities VALUES("1522","20","Kottellena","","","","","","22040","6.893287","80.50215");
INSERT INTO cities VALUES("1523","20","Kumbalgamuwa","","","","","","22272","7.109883","80.853852");
INSERT INTO cities VALUES("1524","20","Kumbukwela","","","","","","22246","7.055729","80.887479");
INSERT INTO cities VALUES("1525","20","Kurupanawela","","","","","","22252","7.01894","80.920981");
INSERT INTO cities VALUES("1526","20","Labukele","","","","","","20592","7.0442","80.6919");
INSERT INTO cities VALUES("1527","20","Laxapana","","","","","","22034","6.8952","80.5088");
INSERT INTO cities VALUES("1528","20","Lindula","","","","","","22090","6.920326","80.684129");
INSERT INTO cities VALUES("1529","20","Madulla","","","","","","22256","7.047667","80.918204");
INSERT INTO cities VALUES("1530","20","Mandaram Nuwara","","","","","","20744","7.0833","80.8");
INSERT INTO cities VALUES("1531","20","Maskeliya","","","","","","22070","6.831379","80.568585");
INSERT INTO cities VALUES("1532","20","Maswela","","","","","","20566","7.072503","80.6439");
INSERT INTO cities VALUES("1533","20","Maturata","","","","","","20748","7.0833","80.8");
INSERT INTO cities VALUES("1534","20","Mipanawa","","","","","","22254","7.0333","80.9167");
INSERT INTO cities VALUES("1535","20","Mipilimana","","","","","","22214","6.8667","80.8167");
INSERT INTO cities VALUES("1536","20","Morahenagama","","","","","","22036","6.942625","80.478482");
INSERT INTO cities VALUES("1537","20","Munwatta","","","","","","20752","7.11534","80.809403");
INSERT INTO cities VALUES("1538","20","Nayapana Janapadaya","","","","","","20568","7.0731","80.5892");
INSERT INTO cities VALUES("1539","20","Nildandahinna","","","","","","22280","7.0833","80.8833");
INSERT INTO cities VALUES("1540","20","Nissanka Uyana","","","","","","22075","6.8358","80.5703");
INSERT INTO cities VALUES("1541","20","Norwood","","","","","","22058","6.835736","80.602181");
INSERT INTO cities VALUES("1542","20","Nuwara Eliya","","","","","","22200","6.9697","80.77");
INSERT INTO cities VALUES("1543","20","Padiyapelella","","","","","","20750","7.092506","80.798544");
INSERT INTO cities VALUES("1544","20","Pallebowala","","","","","","20734","7.1151","80.8108");
INSERT INTO cities VALUES("1545","20","Panvila","","","","","","20830","7.0667","80.6833");
INSERT INTO cities VALUES("1546","20","Pitawala","","","","","","20682","6.998608","80.452257");
INSERT INTO cities VALUES("1547","20","Pundaluoya","","","","","","22120","7.018255","80.676081");
INSERT INTO cities VALUES("1548","20","Ramboda","","","","","","20590","7.060427","80.69534");
INSERT INTO cities VALUES("1549","20","Rikillagaskada","","","","","","20730","7.145849","80.78095");
INSERT INTO cities VALUES("1550","20","Rozella","","","","","","22008","6.9306","80.5531");
INSERT INTO cities VALUES("1551","20","Rupaha","","","","","","22245","7.0333","80.9");
INSERT INTO cities VALUES("1552","20","Ruwaneliya","","","","","","22212","6.93721","80.772258");
INSERT INTO cities VALUES("1553","20","Santhipura","","","","","","22202","6.9697","80.77");
INSERT INTO cities VALUES("1554","20","Talawakele","","","","","","22100","6.9367","80.6611");
INSERT INTO cities VALUES("1555","20","Tawalantenna","","","","","","20838","7.0667","80.6833");
INSERT INTO cities VALUES("1556","20","Teripeha","","","","","","22287","7.1189","80.9244");
INSERT INTO cities VALUES("1557","20","Udamadura","","","","","","22285","7.094106","80.914817");
INSERT INTO cities VALUES("1558","20","Udapussallawa","","","","","","22250","7.0333","80.9111");
INSERT INTO cities VALUES("1559","20","Uva Deegalla","","","","","","90062","7.0333","80.8917");
INSERT INTO cities VALUES("1560","20","Uva Uduwara","","","","","","90061","7.0333","80.8917");
INSERT INTO cities VALUES("1561","20","Uvaparanagama","","","","","","90230","6.8832","80.7912");
INSERT INTO cities VALUES("1562","20","Walapane","","","","","","22270","7.091924","80.860522");
INSERT INTO cities VALUES("1563","20","Watawala","","","","","","22010","6.951339","80.533199");
INSERT INTO cities VALUES("1564","20","Widulipura","","","","","","22032","6.8952","80.5088");
INSERT INTO cities VALUES("1565","20","Wijebahukanda","","","","","","22018","7.0167","80.6167");
INSERT INTO cities VALUES("1566","21","Attanakadawala","?????????","","","","","51235","7.903734","80.828104");
INSERT INTO cities VALUES("1567","21","Bakamuna","?????","","","","","51250","7.7833","80.8167");
INSERT INTO cities VALUES("1568","21","Diyabeduma","????????","","","","","51225","7.89851","80.898332");
INSERT INTO cities VALUES("1569","21","Elahera","?????","","","","","51258","7.7244","80.7883");
INSERT INTO cities VALUES("1570","21","Giritale","???????","","","","","51026","7.9833","80.9333");
INSERT INTO cities VALUES("1571","21","Hingurakdamana","","","","","","51408","8.055896","81.011875");
INSERT INTO cities VALUES("1572","21","Hingurakgoda","","","","","","51400","8.036505","80.948686");
INSERT INTO cities VALUES("1573","21","Jayanthipura","","","","","","51024","8","81");
INSERT INTO cities VALUES("1574","21","Kalingaela","","","","","","51002","7.9583","81.0417");
INSERT INTO cities VALUES("1575","21","Lakshauyana","","","","","","51006","7.9583","81.0417");
INSERT INTO cities VALUES("1576","21","Mankemi","","","","","","30442","7.9833","81.25");
INSERT INTO cities VALUES("1577","21","Minneriya","","","","","","51410","8.036343","80.903215");
INSERT INTO cities VALUES("1578","21","Onegama","","","","","","51004","7.992203","81.090758");
INSERT INTO cities VALUES("1579","21","Orubendi Siyambalawa","","","","","","51256","7.751972","80.812093");
INSERT INTO cities VALUES("1580","21","Palugasdamana","","","","","","51046","8.0167","81.0833");
INSERT INTO cities VALUES("1581","21","Panichankemi","","","","","","30444","7.9833","81.25");
INSERT INTO cities VALUES("1582","21","Polonnaruwa","","","","","","51000","7.940295","81.007138");
INSERT INTO cities VALUES("1583","21","Talpotha","","","","","","51044","8.0167","81.0833");
INSERT INTO cities VALUES("1584","21","Tambala","","","","","","51049","8.0167","81.0833");
INSERT INTO cities VALUES("1585","21","Unagalavehera","","","","","","51008","8.001006","80.995549");
INSERT INTO cities VALUES("1586","21","Wijayabapura","","","","","","51042","8.0167","81.0833");
INSERT INTO cities VALUES("1587","22","Adippala","","","","","","61012","7.5833","79.8417");
INSERT INTO cities VALUES("1588","22","Alutgama","???????","","","","","12080","7.7667","79.9333");
INSERT INTO cities VALUES("1589","22","Alutwewa","????????","","","","","51014","7.8667","79.95");
INSERT INTO cities VALUES("1590","22","Ambakandawila","???????","","","","","61024","7.5333","79.8");
INSERT INTO cities VALUES("1591","22","Anamaduwa","??????","","","","","61500","7.881625","80.00353");
INSERT INTO cities VALUES("1592","22","Andigama","?????","","","","","61508","7.7775","79.9528");
INSERT INTO cities VALUES("1593","22","Angunawila","???????","","","","","61264","7.7667","79.85");
INSERT INTO cities VALUES("1594","22","Attawilluwa","???????????","","","","","61328","7.4167","79.8833");
INSERT INTO cities VALUES("1595","22","Bangadeniya","????????","","","","","61238","7.619471","79.809055");
INSERT INTO cities VALUES("1596","22","Baranankattuwa","???????????","","","","","61262","7.803253","79.872624");
INSERT INTO cities VALUES("1597","22","Battuluoya","?????????","","","","","61246","7.734655","79.817455");
INSERT INTO cities VALUES("1598","22","Bujjampola","??????????","","","","","61136","7.3333","79.9");
INSERT INTO cities VALUES("1599","22","Chilaw","?????","","","","","61000","7.5758","79.7953");
INSERT INTO cities VALUES("1600","22","Dalukana","?????","","","","","51092","7.3167","79.85");
INSERT INTO cities VALUES("1601","22","Dankotuwa","???????","","","","","61130","7.300443","79.88505");
INSERT INTO cities VALUES("1602","22","Dewagala","?????","","","","","51094","7.3167","79.85");
INSERT INTO cities VALUES("1603","22","Dummalasuriya","???????????","","","","","60260","7.4833","79.9");
INSERT INTO cities VALUES("1604","22","Dunkannawa","??????????","","","","","61192","7.4167","79.9");
INSERT INTO cities VALUES("1605","22","Eluwankulama","??????????","","","","","61308","8.332832","79.859928");
INSERT INTO cities VALUES("1606","22","Ettale","??????","","","","","61343","8.097416","79.717306");
INSERT INTO cities VALUES("1607","22","Galamuna","?????","","","","","51416","7.464661","79.872371");
INSERT INTO cities VALUES("1608","22","Galmuruwa","????????","","","","","61233","7.501718","79.895774");
INSERT INTO cities VALUES("1609","22","Hansayapalama","","","","","","51098","7.3167","79.85");
INSERT INTO cities VALUES("1610","22","Ihala Kottaramulla","","","","","","61154","7.383069","79.871755");
INSERT INTO cities VALUES("1611","22","Ilippadeniya","","","","","","61018","7.567036","79.826233");
INSERT INTO cities VALUES("1612","22","Inginimitiya","","","","","","61514","7.964099","80.112055");
INSERT INTO cities VALUES("1613","22","Ismailpuram","","","","","","61302","8.0333","79.8167");
INSERT INTO cities VALUES("1614","22","Jayasiripura","","","","","","51246","7.6333","79.8167");
INSERT INTO cities VALUES("1615","22","Kakkapalliya","","","","","","61236","7.5333","79.8267");
INSERT INTO cities VALUES("1616","22","Kalkudah","","","","","","30410","8.1167","79.7167");
INSERT INTO cities VALUES("1617","22","Kalladiya","","","","","","61534","7.95","79.9333");
INSERT INTO cities VALUES("1618","22","Kandakuliya","","","","","","61358","7.98","79.9569");
INSERT INTO cities VALUES("1619","22","Karathivu","","","","","","61307","8.192511","79.832662");
INSERT INTO cities VALUES("1620","22","Karawitagara","","","","","","61022","7.572417","79.86173");
INSERT INTO cities VALUES("1621","22","Karuwalagaswewa","","","","","","61314","8.037625","79.94267");
INSERT INTO cities VALUES("1622","22","Katuneriya","","","","","","61180","7.3667","79.8333");
INSERT INTO cities VALUES("1623","22","Koswatta","","","","","","61158","7.3667","79.9");
INSERT INTO cities VALUES("1624","22","Kottantivu","","","","","","61252","7.85","79.7833");
INSERT INTO cities VALUES("1625","22","Kottapitiya","","","","","","51244","7.63568","79.815394");
INSERT INTO cities VALUES("1626","22","Kottukachchiya","","","","","","61532","7.938617","79.954577");
INSERT INTO cities VALUES("1627","22","Kumarakattuwa","","","","","","61032","7.661964","79.886873");
INSERT INTO cities VALUES("1628","22","Kurinjanpitiya","","","","","","61356","7.98","79.9569");
INSERT INTO cities VALUES("1629","22","Kuruketiyawa","","","","","","61516","8.0167","80.05");
INSERT INTO cities VALUES("1630","22","Lunuwila","","","","","","61150","7.350819","79.85725");
INSERT INTO cities VALUES("1631","22","Madampe","","","","","","61230","7.5","79.8333");
INSERT INTO cities VALUES("1632","22","Madurankuliya","","","","","","61270","7.896391","79.836449");
INSERT INTO cities VALUES("1633","22","Mahakumbukkadawala","","","","","","61272","7.85","79.9");
INSERT INTO cities VALUES("1634","22","Mahauswewa","","","","","","61512","7.9575","80.0683");
INSERT INTO cities VALUES("1635","22","Mampitiya","","","","","","51090","7.3167","79.85");
INSERT INTO cities VALUES("1636","22","Mampuri","","","","","","61341","7.9964","79.7411");
INSERT INTO cities VALUES("1637","22","Mangalaeliya","","","","","","61266","7.775","79.85");
INSERT INTO cities VALUES("1638","22","Marawila","","","","","","61210","7.4094","79.8322");
INSERT INTO cities VALUES("1639","22","Mudalakkuliya","","","","","","61506","7.799533","79.977428");
INSERT INTO cities VALUES("1640","22","Mugunuwatawana","","","","","","61014","7.58487","79.854684");
INSERT INTO cities VALUES("1641","22","Mukkutoduwawa","","","","","","61274","7.928236","79.75648");
INSERT INTO cities VALUES("1642","22","Mundel","","","","","","61250","7.7958","79.8283");
INSERT INTO cities VALUES("1643","22","Muttibendiwila","","","","","","61195","7.45","79.8833");
INSERT INTO cities VALUES("1644","22","Nainamadama","","","","","","61120","7.3714","79.8837");
INSERT INTO cities VALUES("1645","22","Nalladarankattuwa","","","","","","61244","7.689152","79.844243");
INSERT INTO cities VALUES("1646","22","Nattandiya","","","","","","61190","7.4086","79.8683");
INSERT INTO cities VALUES("1647","22","Nawagattegama","","","","","","61520","8","80.1167");
INSERT INTO cities VALUES("1648","22","Nelumwewa","","","","","","51096","7.3167","79.85");
INSERT INTO cities VALUES("1649","22","Norachcholai","","","","","","61342","7.9964","79.7411");
INSERT INTO cities VALUES("1650","22","Pallama","","","","","","61040","7.681225","79.918239");
INSERT INTO cities VALUES("1651","22","Palliwasalturai","","","","","","61354","7.98","79.9569");
INSERT INTO cities VALUES("1652","22","Panirendawa","","","","","","61234","7.542426","79.886377");
INSERT INTO cities VALUES("1653","22","Parakramasamudraya","","","","","","51016","7.8667","79.95");
INSERT INTO cities VALUES("1654","22","Pothuwatawana","","","","","","61162","7.4833","79.9");
INSERT INTO cities VALUES("1655","22","Puttalam","","","","","","61300","8.043613","79.841209");
INSERT INTO cities VALUES("1656","22","Puttalam Cement Factory","","","","","","61326","7.4167","79.8833");
INSERT INTO cities VALUES("1657","22","Rajakadaluwa","","","","","","61242","7.650515","79.828283");
INSERT INTO cities VALUES("1658","22","Saliyawewa Junction","","","","","","61324","7.4167","79.8833");
INSERT INTO cities VALUES("1659","22","Serukele","","","","","","61042","7.7333","79.9167");
INSERT INTO cities VALUES("1660","22","Siyambalagashene","","","","","","61504","7.8239","79.978");
INSERT INTO cities VALUES("1661","22","Tabbowa","","","","","","61322","7.4167","79.8833");
INSERT INTO cities VALUES("1662","22","Talawila Church","","","","","","61344","7.9964","79.7411");
INSERT INTO cities VALUES("1663","22","Toduwawa","","","","","","61224","7.4861","79.8022");
INSERT INTO cities VALUES("1664","22","Udappuwa","","","","","","61004","7.5758","79.7953");
INSERT INTO cities VALUES("1665","22","Uridyawa","","","","","","61502","7.8239","79.978");
INSERT INTO cities VALUES("1666","22","Vanathawilluwa","","","","","","61306","8.17001","79.8461");
INSERT INTO cities VALUES("1667","22","Waikkal","","","","","","61110","7.2833","79.85");
INSERT INTO cities VALUES("1668","22","Watugahamulla","","","","","","61198","7.4667","79.9");
INSERT INTO cities VALUES("1669","22","Wennappuwa","","","","","","61170","7.35048","79.850112");
INSERT INTO cities VALUES("1670","22","Wijeyakatupotha","","","","","","61006","7.5758","79.7953");
INSERT INTO cities VALUES("1671","22","Wilpotha","","","","","","61008","7.5758","79.7953");
INSERT INTO cities VALUES("1672","22","Yodaela","","","","","","51422","7.5833","79.8667");
INSERT INTO cities VALUES("1673","22","Yogiyana","","","","","","61144","7.286035","79.924213");
INSERT INTO cities VALUES("1674","23","Akarella","???????","","","","","70082","6.59053","80.644197");
INSERT INTO cities VALUES("1675","23","Amunumulla","??????????","","","","","90204","6.7333","80.75");
INSERT INTO cities VALUES("1676","23","Atakalanpanna","??????????","","","","","70294","6.5333","80.6");
INSERT INTO cities VALUES("1677","23","Ayagama","????","","","","","70024","6.63662","80.317329");
INSERT INTO cities VALUES("1678","23","Balangoda","???????","","","","","70100","6.661743","80.69371");
INSERT INTO cities VALUES("1679","23","Batatota","?????","","","","","70504","6.8333","80.3667");
INSERT INTO cities VALUES("1680","23","Beralapanathara","????????","","","","","81541","6.4521","80.4894");
INSERT INTO cities VALUES("1681","23","Bogahakumbura","?????????","","","","","90354","6.6833","80.7667");
INSERT INTO cities VALUES("1682","23","Bolthumbe","????????","","","","","70131","6.739114","80.664956");
INSERT INTO cities VALUES("1683","23","Bomluwageaina","","","","","","70344","6.4","80.6333");
INSERT INTO cities VALUES("1684","23","Bowalagama","??????","","","","","82458","6.3917","80.6833");
INSERT INTO cities VALUES("1685","23","Bulutota","???????","","","","","70346","6.4333","80.65");
INSERT INTO cities VALUES("1686","23","Dambuluwana","????????","","","","","70019","6.7167","80.3333");
INSERT INTO cities VALUES("1687","23","Daugala","?????","","","","","70455","6.4901","80.4248");
INSERT INTO cities VALUES("1688","23","Dela","???","","","","","70042","6.6258","80.4486");
INSERT INTO cities VALUES("1689","23","Delwala","??????","","","","","70046","6.513055","80.473993");
INSERT INTO cities VALUES("1690","23","Dodampe","???????","","","","","70017","6.73603","80.301105");
INSERT INTO cities VALUES("1691","23","Doloswalakanda","????????????","","","","","70404","6.55133","80.470258");
INSERT INTO cities VALUES("1692","23","Dumbara Manana","?????? ???","","","","","70495","6.680322","80.247485");
INSERT INTO cities VALUES("1693","23","Eheliyagoda","?????????","","","","","70600","6.85","80.2667");
INSERT INTO cities VALUES("1694","23","Ekamutugama","????????","","","","","70254","6.3406","80.7804");
INSERT INTO cities VALUES("1695","23","Elapatha","?????","","","","","70032","6.66081","80.366828");
INSERT INTO cities VALUES("1696","23","Ellagawa","???????","","","","","70492","6.5687","80.363");
INSERT INTO cities VALUES("1697","23","Ellaulla","","","","","","70552","6.8583","80.3083");
INSERT INTO cities VALUES("1698","23","Ellawala","??????","","","","","70606","6.809945","80.259547");
INSERT INTO cities VALUES("1699","23","Embilipitiya","??????????","","","","","70200","6.3439","80.8489");
INSERT INTO cities VALUES("1700","23","Eratna","?????","","","","","70506","6.7986","80.3784");
INSERT INTO cities VALUES("1701","23","Erepola","??????","","","","","70602","6.804277","80.242773");
INSERT INTO cities VALUES("1702","23","Gabbela","??????","","","","","70156","6.7167","80.35");
INSERT INTO cities VALUES("1703","23","Gangeyaya","????????","","","","","70195","6.7516","80.5927");
INSERT INTO cities VALUES("1704","23","Gawaragiriya","????????","","","","","70026","6.6422","80.2667");
INSERT INTO cities VALUES("1705","23","Gillimale","???????","","","","","70002","6.729","80.4415");
INSERT INTO cities VALUES("1706","23","Godakawela","???????","","","","","70160","6.505599","80.647268");
INSERT INTO cities VALUES("1707","23","Gurubewilagama","???????????","","","","","70136","6.7","80.5667");
INSERT INTO cities VALUES("1708","23","Halwinna","????????","","","","","70171","6.6833","80.7167");
INSERT INTO cities VALUES("1709","23","Handagiriya","???????","","","","","70106","6.562839","80.780347");
INSERT INTO cities VALUES("1710","23","Hatangala","","","","","","70105","6.532527","80.739407");
INSERT INTO cities VALUES("1711","23","Hatarabage","","","","","","70108","6.65","80.75");
INSERT INTO cities VALUES("1712","23","Hewanakumbura","","","","","","90358","6.6833","80.7667");
INSERT INTO cities VALUES("1713","23","Hidellana","","","","","","70012","6.7192","80.3842");
INSERT INTO cities VALUES("1714","23","Hiramadagama","","","","","","70296","6.533544","80.60045");
INSERT INTO cities VALUES("1715","23","Horewelagoda","","","","","","82456","6.3917","80.6833");
INSERT INTO cities VALUES("1716","23","Ittakanda","","","","","","70342","6.403532","80.636458");
INSERT INTO cities VALUES("1717","23","Kahangama","","","","","","70016","6.704217","80.362927");
INSERT INTO cities VALUES("1718","23","Kahawatta","","","","","","70150","6.708145","80.303805");
INSERT INTO cities VALUES("1719","23","Kalawana","","","","","","70450","6.531595","80.407285");
INSERT INTO cities VALUES("1720","23","Kaltota","","","","","","70122","6.6833","80.6833");
INSERT INTO cities VALUES("1721","23","Kalubululanda","","","","","","90352","6.6833","80.7667");
INSERT INTO cities VALUES("1722","23","Kananke Bazaar","","","","","","80136","6.7361","80.4354");
INSERT INTO cities VALUES("1723","23","Kandepuhulpola","","","","","","90356","6.6833","80.7667");
INSERT INTO cities VALUES("1724","23","Karandana","","","","","","70488","6.77254","80.206883");
INSERT INTO cities VALUES("1725","23","Karangoda","","","","","","70018","6.677224","80.368723");
INSERT INTO cities VALUES("1726","23","Kella Junction","","","","","","70352","6.4","80.6833");
INSERT INTO cities VALUES("1727","23","Keppetipola","","","","","","90350","6.6833","80.7667");
INSERT INTO cities VALUES("1728","23","Kiriella","","","","","","70480","6.753583","80.265838");
INSERT INTO cities VALUES("1729","23","Kiriibbanwewa","","","","","","70252","6.3406","80.7804");
INSERT INTO cities VALUES("1730","23","Kolambageara","","","","","","70180","6.7516","80.5927");
INSERT INTO cities VALUES("1731","23","Kolombugama","","","","","","70403","6.5667","80.4833");
INSERT INTO cities VALUES("1732","23","Kolonna","","","","","","70350","6.404095","80.681552");
INSERT INTO cities VALUES("1733","23","Kudawa","","","","","","70005","6.757336","80.504485");
INSERT INTO cities VALUES("1734","23","Kuruwita","","","","","","70500","6.7792","80.3686");
INSERT INTO cities VALUES("1735","23","Lellopitiya","","","","","","70056","6.655172","80.471348");
INSERT INTO cities VALUES("1736","23","lmaduwa","","","","","","80130","6.7361","80.4354");
INSERT INTO cities VALUES("1737","23","lmbulpe","","","","","","70134","6.7159","80.6375");
INSERT INTO cities VALUES("1738","23","Mahagama Colony","","","","","","70256","6.3406","80.7804");
INSERT INTO cities VALUES("1739","23","Mahawalatenna","","","","","","70112","6.5833","80.75");
INSERT INTO cities VALUES("1740","23","Makandura Sabara","","","","","","70298","6.5333","80.6");
INSERT INTO cities VALUES("1741","23","Malwala Junction","","","","","","70001","6.7","80.4333");
INSERT INTO cities VALUES("1742","23","Malwatta","","","","","","32198","6.65","80.4167");
INSERT INTO cities VALUES("1743","23","Matuwagalagama","","","","","","70482","6.7667","80.2333");
INSERT INTO cities VALUES("1744","23","Medagalatur","","","","","","70021","6.6414","80.2882");
INSERT INTO cities VALUES("1745","23","Meddekanda","","","","","","70127","6.6833","80.6833");
INSERT INTO cities VALUES("1746","23","Minipura Dumbara","","","","","","70494","6.5687","80.363");
INSERT INTO cities VALUES("1747","23","Mitipola","","","","","","70604","6.836923","80.221949");
INSERT INTO cities VALUES("1748","23","Moragala Kirillapone","","","","","","81532","6.8333","80.3");
INSERT INTO cities VALUES("1749","23","Morahela","","","","","","70129","6.679967","80.691531");
INSERT INTO cities VALUES("1750","23","Mulendiyawala","","","","","","70212","6.291657","80.760239");
INSERT INTO cities VALUES("1751","23","Mulgama","","","","","","70117","6.645942","80.817832");
INSERT INTO cities VALUES("1752","23","Nawalakanda","","","","","","70469","6.5167","80.3333");
INSERT INTO cities VALUES("1753","23","NawinnaPinnakanda","","","","","","70165","6.7168","80.4999");
INSERT INTO cities VALUES("1754","23","Niralagama","","","","","","70038","6.65","80.3667");
INSERT INTO cities VALUES("1755","23","Nivitigala","","","","","","70400","6.6","80.4553");
INSERT INTO cities VALUES("1756","23","Omalpe","","","","","","70215","6.327391","80.694691");
INSERT INTO cities VALUES("1757","23","Opanayaka","","","","","","70080","6.608359","80.625134");
INSERT INTO cities VALUES("1758","23","Padalangala","","","","","","70230","6.244961","80.916029");
INSERT INTO cities VALUES("1759","23","Pallebedda","","","","","","70170","6.45","80.7333");
INSERT INTO cities VALUES("1760","23","Pallekanda","","","","","","82454","6.6333","80.6667");
INSERT INTO cities VALUES("1761","23","Pambagolla","","","","","","70133","6.7333","80.6833");
INSERT INTO cities VALUES("1762","23","Panamura","","","","","","70218","6.351417","80.776404");
INSERT INTO cities VALUES("1763","23","Panapola","","","","","","70461","6.425337","80.445421");
INSERT INTO cities VALUES("1764","23","Paragala","","","","","","81474","6.601317","80.343575");
INSERT INTO cities VALUES("1765","23","Parakaduwa","","","","","","70550","6.825482","80.299049");
INSERT INTO cities VALUES("1766","23","Pebotuwa","","","","","","70045","6.540192","80.452191");
INSERT INTO cities VALUES("1767","23","Pelmadulla","","","","","","70070","6.620071","80.542243");
INSERT INTO cities VALUES("1768","23","Pinnawala","","","","","","70130","6.731251","80.672146");
INSERT INTO cities VALUES("1769","23","Pothdeniya","","","","","","81538","6.8333","80.3");
INSERT INTO cities VALUES("1770","23","Rajawaka","","","","","","70116","6.609347","80.797987");
INSERT INTO cities VALUES("1771","23","Ranwala","","","","","","70162","6.553121","80.665495");
INSERT INTO cities VALUES("1772","23","Rassagala","","","","","","70135","6.695227","80.617304");
INSERT INTO cities VALUES("1773","23","Ratgama","","","","","","80260","6.7333","80.4833");
INSERT INTO cities VALUES("1774","23","Ratna Hangamuwa","","","","","","70036","6.65","80.3667");
INSERT INTO cities VALUES("1775","23","Ratnapura","","","","","","70000","6.677603","80.405592");
INSERT INTO cities VALUES("1776","23","Sewanagala","","","","","","70250","6.3406","80.7804");
INSERT INTO cities VALUES("1777","23","Sri Palabaddala","","","","","","70004","6.800198","80.476202");
INSERT INTO cities VALUES("1778","23","Sudagala","","","","","","70502","6.7833","80.4");
INSERT INTO cities VALUES("1779","23","Talakolahinna","","","","","","70101","6.5844","80.7332");
INSERT INTO cities VALUES("1780","23","Tanjantenna","","","","","","70118","6.6361","80.8536");
INSERT INTO cities VALUES("1781","23","Teppanawa","","","","","","70512","6.75","80.3167");
INSERT INTO cities VALUES("1782","23","Tunkama","","","","","","70205","6.2833","80.8833");
INSERT INTO cities VALUES("1783","23","Udakarawita","","","","","","70044","6.7317","80.4287");
INSERT INTO cities VALUES("1784","23","Udaniriella","","","","","","70034","6.65","80.3667");
INSERT INTO cities VALUES("1785","23","Udawalawe","","","","","","70190","6.7516","80.5927");
INSERT INTO cities VALUES("1786","23","Ullinduwawa","","","","","","70345","6.367322","80.631196");
INSERT INTO cities VALUES("1787","23","Veddagala","","","","","","70459","6.45","80.4333");
INSERT INTO cities VALUES("1788","23","Vijeriya","","","","","","70348","6.4","80.6333");
INSERT INTO cities VALUES("1789","23","Waleboda","","","","","","70138","6.726367","80.64106");
INSERT INTO cities VALUES("1790","23","Watapotha","","","","","","70408","6.577958","80.510709");
INSERT INTO cities VALUES("1791","23","Waturawa","","","","","","70456","6.4833","80.4333");
INSERT INTO cities VALUES("1792","23","Weligepola","","","","","","70104","6.567212","80.707078");
INSERT INTO cities VALUES("1793","23","Welipathayaya","","","","","","70124","6.6833","80.6833");
INSERT INTO cities VALUES("1794","23","Wikiliya","","","","","","70114","6.6203","80.7467");
INSERT INTO cities VALUES("1795","24","Agbopura","????????","","","","","31304","8.330575","80.97191");
INSERT INTO cities VALUES("1796","24","Buckmigama","???????","","","","","31028","8.6667","80.95");
INSERT INTO cities VALUES("1797","24","China Bay","??? ????","","","","","31050","8.561664","81.187386");
INSERT INTO cities VALUES("1798","24","Dehiwatte","????????","","","","","31226","8.4458","81.2875");
INSERT INTO cities VALUES("1799","24","Echchilampattai","???????????????","","","","","31236","8.4458","81.2875");
INSERT INTO cities VALUES("1800","24","Galmetiyawa","??????????","","","","","31318","8.3683","81.0281");
INSERT INTO cities VALUES("1801","24","Gomarankadawala","??????????","","","","","31026","8.677731","80.960417");
INSERT INTO cities VALUES("1802","24","Kaddaiparichchan","","","","","","31212","8.459198","81.278164");
INSERT INTO cities VALUES("1803","24","Kallar","","","","","","30250","8.2833","81.2667");
INSERT INTO cities VALUES("1804","24","Kanniya","","","","","","31032","8.6333","81.0167");
INSERT INTO cities VALUES("1805","24","Kantalai","","","","","","31300","8.365483","80.966897");
INSERT INTO cities VALUES("1806","24","Kantalai Sugar Factory","","","","","","31306","8.3683","81.0281");
INSERT INTO cities VALUES("1807","24","Kiliveddy","","","","","","31220","8.354092","81.275605");
INSERT INTO cities VALUES("1808","24","Kinniya","","","","","","31100","8.497717","81.179214");
INSERT INTO cities VALUES("1809","24","Kuchchaveli","","","","","","31014","8.792709","81.036113");
INSERT INTO cities VALUES("1810","24","Kumburupiddy","","","","","","31012","8.7333","81.15");
INSERT INTO cities VALUES("1811","24","Kurinchakemy","","","","","","31112","8.4989","81.1897");
INSERT INTO cities VALUES("1812","24","Lankapatuna","","","","","","31234","8.4458","81.2875");
INSERT INTO cities VALUES("1813","24","Mahadivulwewa","","","","","","31036","8.613863","80.9518");
INSERT INTO cities VALUES("1814","24","Maharugiramam","","","","","","31106","8.4989","81.1897");
INSERT INTO cities VALUES("1815","24","Mallikativu","","","","","","31224","8.4458","81.2875");
INSERT INTO cities VALUES("1816","24","Mawadichenai","","","","","","31238","8.4458","81.2875");
INSERT INTO cities VALUES("1817","24","Mullipothana","","","","","","31312","8.3683","81.0281");
INSERT INTO cities VALUES("1818","24","Mutur","","","","","","31200","8.45","81.2667");
INSERT INTO cities VALUES("1819","24","Neelapola","","","","","","31228","8.4458","81.2875");
INSERT INTO cities VALUES("1820","24","Nilaveli","????????","","","","","31010","8.658756","81.148516");
INSERT INTO cities VALUES("1821","24","Pankulam","","","","","","31034","8.6333","81.0167");
INSERT INTO cities VALUES("1822","24","Pulmoddai","????????","","","","","50567","8.9333","80.9833");
INSERT INTO cities VALUES("1823","24","Rottawewa","","","","","","31038","8.6333","81.0167");
INSERT INTO cities VALUES("1824","24","Sampaltivu","","","","","","31006","8.6167","81.2");
INSERT INTO cities VALUES("1825","24","Sampoor","????????","","","","","31216","8.493354","81.284828");
INSERT INTO cities VALUES("1826","24","Serunuwara","??????","","","","","31232","8.4458","81.2875");
INSERT INTO cities VALUES("1827","24","Seruwila","???????","","","","","31260","8.4458","81.2875");
INSERT INTO cities VALUES("1828","24","Sirajnagar","","","","","","31314","8.3683","81.0281");
INSERT INTO cities VALUES("1829","24","Somapura","??????","","","","","31222","8.4458","81.2875");
INSERT INTO cities VALUES("1830","24","Tampalakamam","","","","","","31046","8.4925","81.0964");
INSERT INTO cities VALUES("1831","24","Thuraineelavanai","","","","","","30254","8.2833","81.2667");
INSERT INTO cities VALUES("1832","24","Tiriyayi","","","","","","31016","8.7444","81.15");
INSERT INTO cities VALUES("1833","24","Toppur","","","","","","31250","8.4","81.3167");
INSERT INTO cities VALUES("1834","24","Trincomalee","???????????","","","","","31000","8.5667","81.2333");
INSERT INTO cities VALUES("1835","24","Wanela","","","","","","31308","8.3683","81.0281");
INSERT INTO cities VALUES("1836","25","Vavuniya","????????","","","","","43000","8.758818","80.493461");
INSERT INTO cities VALUES("1837","5","Colombo 1","???? 1","???????? 1","Fort","?????","??????","100","6.925833","79.841667");
INSERT INTO cities VALUES("1838","5","Colombo 3","???? 3","???????? 3","Colpetty","???????????","????????????","300","6.900556","79.853333");
INSERT INTO cities VALUES("1839","5","Colombo 4","???? 4","???????? 4","Bambalapitiya","??????????","?????????????","400","6.888889","79.856667");
INSERT INTO cities VALUES("1840","5","Colombo 5","???? 5","???????? 5","Havelock Town","????????????","???????? ?????","500","6.879444","79.865278");
INSERT INTO cities VALUES("1841","5","Colombo 7","???? 7","???????? 7","Cinnamon Gardens","?????? ????","??????? ???????","700","6.906667","79.863333");
INSERT INTO cities VALUES("1842","5","Colombo 9","???? 9","???????? 9","Dematagoda","???????","??????????","900","6.93","79.877778");
INSERT INTO cities VALUES("1843","5","Colombo 10","???? 10","???????? 10","Maradana","?????","???????","1000","6.928333","79.864167");
INSERT INTO cities VALUES("1844","5","Colombo 11","???? 11","???????? 11","Pettah","??? ?????","????? ??????","1100","6.936667","79.849722");
INSERT INTO cities VALUES("1845","5","Colombo 12","???? 12","???????? 12","Hulftsdorp","????? ???","?????????","1200","6.9425","79.858333");
INSERT INTO cities VALUES("1846","5","Colombo 14","???? 14","???????? 14","Grandpass","????????????","?????????","1400","6.9475","79.874722");





CREATE TABLE `color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_ref` varchar(200) NOT NULL,
  `color_type` varchar(100) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_fname` varchar(200) NOT NULL,
  `cus_lname` varchar(200) NOT NULL,
  `cus_pwd` varchar(200) NOT NULL,
  `cus_email` varchar(200) NOT NULL,
  `cus_gender` varchar(20) NOT NULL,
  `cus_city` varchar(200) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `cus_dob` date NOT NULL,
  `cus_image` date NOT NULL,
  `cus_status` varchar(200) NOT NULL,
  PRIMARY KEY (`cus_id`),
  UNIQUE KEY `dis_id_2` (`dis_id`),
  KEY `dis_id` (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("7","Daminda","Herath","40bd001563085fc35165329ea1ff5c5ecbdbbeef","dherath10@gmail.com","","","0","0000-00-00","0000-00-00","");
INSERT INTO customer VALUES("10","Duke","Jenorge","40bd001563085fc35165329ea1ff5c5ecbdbbeef","dukeerjenorge@gmail.com","","","1","0000-00-00","0000-00-00","");





CREATE TABLE `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(2) NOT NULL,
  `name_en` varchar(45) DEFAULT NULL,
  `name_si` varchar(45) DEFAULT NULL,
  `name_ta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provinces_id` (`province_id`),
  CONSTRAINT `fk_districts_provinces1` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO districts VALUES("1","6","Ampara","??????","???????");
INSERT INTO districts VALUES("2","8","Anuradhapura","??????????","???????????");
INSERT INTO districts VALUES("3","7","Badulla","??????","?????");
INSERT INTO districts VALUES("4","6","Batticaloa","???????","????????????");
INSERT INTO districts VALUES("5","1","Colombo","????","????????");
INSERT INTO districts VALUES("6","3","Galle","?????","????");
INSERT INTO districts VALUES("7","1","Gampaha","?????","??????");
INSERT INTO districts VALUES("8","3","Hambantota","?????????","?????????????");
INSERT INTO districts VALUES("9","9","Jaffna","?????","???????????");
INSERT INTO districts VALUES("10","1","Kalutara","?????","?????????");
INSERT INTO districts VALUES("11","2","Kandy","??????","?????");
INSERT INTO districts VALUES("12","5","Kegalle","??????","??????");
INSERT INTO districts VALUES("13","9","Kilinochchi","???????????","??????????");
INSERT INTO districts VALUES("14","4","Kurunegala","????????","?????????");
INSERT INTO districts VALUES("15","9","Mannar","???????","???????");
INSERT INTO districts VALUES("16","2","Matale","?????","???????");
INSERT INTO districts VALUES("17","3","Matara","????","???????");
INSERT INTO districts VALUES("18","7","Monaragala","???????","????????");
INSERT INTO districts VALUES("19","9","Mullaitivu","???????","????????????");
INSERT INTO districts VALUES("20","2","Nuwara Eliya","???? ????","?????????");
INSERT INTO districts VALUES("21","8","Polonnaruwa","??????????","??????????");
INSERT INTO districts VALUES("22","4","Puttalam","???????","????????");
INSERT INTO districts VALUES("23","5","Ratnapura","???????","???????????");
INSERT INTO districts VALUES("24","6","Trincomalee","????????????","??????????");
INSERT INTO districts VALUES("25","9","Vavuniya","????????","???????");





CREATE TABLE `feature` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(200) NOT NULL,
  `fc_id` int(11) NOT NULL,
  PRIMARY KEY (`f_id`),
  KEY `fc_id` (`fc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO feature VALUES("1","Black","1");
INSERT INTO feature VALUES("2","White","1");
INSERT INTO feature VALUES("3","Large","2");
INSERT INTO feature VALUES("4","Medium","2");
INSERT INTO feature VALUES("5","Small","2");





CREATE TABLE `feature_category` (
  `fc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fc_name` varchar(200) NOT NULL,
  PRIMARY KEY (`fc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO feature_category VALUES("1","Color");
INSERT INTO feature_category VALUES("2","Size");





CREATE TABLE `feedback` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `fb_date` datetime NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_price` double NOT NULL,
  `item_des` text NOT NULL,
  `model` varchar(200) NOT NULL,
  `item_status` varchar(20) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `brand_id` (`brand_id`),
  KEY `type_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO item VALUES("6","name","1","1","0","des","model","Active");
INSERT INTO item VALUES("7","hitach computer","5","2","5000","describe","vw123","Active");
INSERT INTO item VALUES("16","sam","8","3","150000"," tv","ww123","Active");
INSERT INTO item VALUES("21","hitach computer","4","2","5000"," ","1234","Active");
INSERT INTO item VALUES("22","1111","4","3","1111"," 1111","1111","Active");
INSERT INTO item VALUES("23","1111","8","3","11111"," 1111","11111","Active");
INSERT INTO item VALUES("24","uuuuu","1","1","0"," uuu","ppppp","Active");
INSERT INTO item VALUES("25","uuuuu","1","1","0"," uuu","ppppp","Active");
INSERT INTO item VALUES("26","qqq","1","2","0"," qq","aaaaaaaa","Active");
INSERT INTO item VALUES("27","qqq","1","2","0"," qq","aaaaaaaa","Active");
INSERT INTO item VALUES("28","rrrr","1","2","0"," rr","eeee","Active");
INSERT INTO item VALUES("29","0000","4","2","0"," 000","0000","Active");
INSERT INTO item VALUES("30","000","2","1","0"," 000","000","Active");
INSERT INTO item VALUES("31","99","2","2","8777"," ggg","gggg","Active");
INSERT INTO item VALUES("32","","0","0","0"," ","","Active");
INSERT INTO item VALUES("33","ffgfgf","2","2","0"," gggf","gfgfg","Active");
INSERT INTO item VALUES("34","dell laptop","2","2","0"," ","gfggfg","Active");
INSERT INTO item VALUES("35","acer laptop","1","1","666666666"," 66666666","6666","Active");
INSERT INTO item VALUES("36","apple mobile","2","1","44444444"," 4444444444444444","4444444444","Active");
INSERT INTO item VALUES("37","new phone","3","2","122356"," ","123456789","Active");





CREATE TABLE `item_color` (
  `item_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `item_image` (
  `ii_id` int(11) NOT NULL AUTO_INCREMENT,
  `ii_name` varchar(200) NOT NULL,
  `ii_status` varchar(20) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`ii_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

INSERT INTO item_image VALUES("1","2.jpg","Active","14");
INSERT INTO item_image VALUES("2","164374577-hiking-wallpapers.jpg","Active","14");
INSERT INTO item_image VALUES("3","5b61567b97b93_2.jpg","Active","15");
INSERT INTO item_image VALUES("4","5b61567b9dfde_164374577-hiking-wallpapers.jpg","Active","15");
INSERT INTO item_image VALUES("5","5b61567ba8941_IMG_3922.JPG","Active","15");
INSERT INTO item_image VALUES("6","5b616e4126c13_2.jpg","Active","16");
INSERT INTO item_image VALUES("7","5b616e414ed8a_164374577-hiking-wallpapers.jpg","Active","16");
INSERT INTO item_image VALUES("8","5b616e88410d5_2.jpg","Active","17");
INSERT INTO item_image VALUES("9","5b616e884c8f5_164374577-hiking-wallpapers.jpg","Active","17");
INSERT INTO item_image VALUES("10","5b6171b618560_2.jpg","Active","18");
INSERT INTO item_image VALUES("11","5b6171b623a17_164374577-hiking-wallpapers.jpg","Active","18");
INSERT INTO item_image VALUES("12","5b61726323ad5_2.jpg","Active","19");
INSERT INTO item_image VALUES("13","5b61726349aae_164374577-hiking-wallpapers.jpg","Active","19");
INSERT INTO item_image VALUES("14","5b617263674c0_hdq-baby-polar-bearvolodymyr-greber-within-baby-and-bear-wallpaper-hd.jpg","Active","19");
INSERT INTO item_image VALUES("15","5b6173120d59c_2.jpg","Active","20");
INSERT INTO item_image VALUES("16","5b61731221300_164374577-hiking-wallpapers.jpg","Active","20");
INSERT INTO item_image VALUES("17","5b61731261b17_hdq-baby-polar-bearvolodymyr-greber-within-baby-and-bear-wallpaper-hd.jpg","Active","20");
INSERT INTO item_image VALUES("18","5b61732ca2bf8_IMG_3921.JPG","Active","21");
INSERT INTO item_image VALUES("19","5b61732cb8941_IMG_3922.JPG","Active","21");
INSERT INTO item_image VALUES("20","5b6177668a945_IMG_3923.JPG","Active","22");
INSERT INTO item_image VALUES("21","5b617766a9bad_IMG_3924.JPG","Active","22");
INSERT INTO item_image VALUES("22","5b6185f6ddfc3_IMG_3921.JPG","Active","23");
INSERT INTO item_image VALUES("23","5b6185f6f3f07_IMG_3922.JPG","Active","23");
INSERT INTO item_image VALUES("24","5b6188c31e541_HUAWEI-P20-Pro-6-1-Inch-6GB-64GB-Smartphone-Jet-Black-611503-.jpg","Active","24");
INSERT INTO item_image VALUES("25","5b6a9366885fe_","Active","25");
INSERT INTO item_image VALUES("26","5b6a9386469a0_","Active","26");
INSERT INTO item_image VALUES("27","5b731465adbea_8250 1.jpg","Active","22");
INSERT INTO item_image VALUES("28","5b73b203ba78a_","Active","23");
INSERT INTO item_image VALUES("29","5b73b3aa694f8_","Active","24");
INSERT INTO item_image VALUES("30","5b73b65dae135_","Active","25");
INSERT INTO item_image VALUES("31","5b73b6807678b_","Active","26");
INSERT INTO item_image VALUES("32","5b73b6c33fc80_","Active","27");
INSERT INTO item_image VALUES("33","5b73b8a880eeb_","Active","28");
INSERT INTO item_image VALUES("34","5b73bd3e093a4_HUAWEI-P20-Pro-6-1-Inch-6GB-64GB-Smartphone-Jet-Black-611503-.jpg","Active","29");
INSERT INTO item_image VALUES("35","5b785b9a76e58_8250.jpg","Active","34");
INSERT INTO item_image VALUES("36","5b862b1c7632c_26993285_1558047144312634_1388635646207457514_n.jpg","Active","35");
INSERT INTO item_image VALUES("37","5ba6382d62aee_1650.jpg","Active","37");
INSERT INTO item_image VALUES("38","5ba6382d6e59f_2750.jpg","Active","37");
INSERT INTO item_image VALUES("39","5ba6382d7b623_2750_1.jpg","Active","37");
INSERT INTO item_image VALUES("40","5ba6382d83c61_3750.jpg","Active","37");
INSERT INTO item_image VALUES("41","5ba6382d8e804_8250 1.jpg","Active","37");
INSERT INTO item_image VALUES("42","5ba6382da0341_8250.jpg","Active","37");
INSERT INTO item_image VALUES("43","5ba6382db4161_8400.jpg","Active","37");
INSERT INTO item_image VALUES("44","5ba6382dc7102_8750 2.jpg","Active","37");
INSERT INTO item_image VALUES("45","5ba6382de1cde_24883353_1623291014454913_4712460696751763922_o.jpg","Active","37");
INSERT INTO item_image VALUES("46","5ba6382e0b266_25442748_1527675107349838_4425930543491838110_n.jpg","Active","37");
INSERT INTO item_image VALUES("47","5ba6382e46481_25443321_1527675167349832_6142529880358128520_n.jpg","Active","37");





CREATE TABLE `item_size` (
  `item_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_in_date` datetime NOT NULL,
  `log_out_date` datetime DEFAULT NULL,
  `log_status` varchar(20) NOT NULL,
  `log_ip` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;

INSERT INTO log VALUES("216","2018-07-21 19:08:31","2018-07-21 19:13:17","logout","::1","1","1532180311_1");
INSERT INTO log VALUES("217","2018-07-21 19:13:21","","login","::1","1","1532180601_1");
INSERT INTO log VALUES("218","2018-07-21 19:16:01","2018-07-21 19:17:22","logout","::1","1","1532180761_1");
INSERT INTO log VALUES("219","2018-07-21 19:17:27","2018-07-21 19:19:50","logout","::1","1","1532180847_1");
INSERT INTO log VALUES("220","2018-07-21 19:19:55","2018-07-21 19:20:02","logout","::1","1","1532180995_1");
INSERT INTO log VALUES("221","2018-07-21 19:22:19","2018-07-21 19:23:36","logout","::1","1","1532181139_1");
INSERT INTO log VALUES("222","2018-07-21 19:23:42","2018-07-21 19:33:04","logout","::1","1","1532181222_1");
INSERT INTO log VALUES("223","2018-07-21 19:33:11","2018-07-21 19:36:43","logout","::1","1","1532181791_1");
INSERT INTO log VALUES("224","2018-07-21 19:36:48","2018-07-21 19:37:05","logout","::1","1","1532182008_1");
INSERT INTO log VALUES("225","2018-07-23 02:10:16","2018-07-23 02:10:35","logout","::1","1","1532292016_1");
INSERT INTO log VALUES("226","2018-07-24 20:10:03","2018-07-24 20:13:20","logout","::1","1","1532443203_1");
INSERT INTO log VALUES("227","2018-07-24 20:13:35","2018-07-24 20:42:33","logout","::1","1","1532443415_1");
INSERT INTO log VALUES("228","2018-07-24 20:42:45","2018-07-24 20:58:59","logout","::1","1","1532445165_1");
INSERT INTO log VALUES("229","2018-07-24 20:59:13","2018-07-24 21:00:16","logout","::1","1","1532446153_1");
INSERT INTO log VALUES("230","2018-07-24 21:01:12","","login","::1","1","1532446272_1");
INSERT INTO log VALUES("231","2018-07-24 21:22:26","2018-07-24 21:39:26","logout","::1","1","1532447546_1");
INSERT INTO log VALUES("232","2018-07-24 21:39:32","","login","::1","1","1532448572_1");
INSERT INTO log VALUES("233","2018-07-25 04:36:31","2018-07-25 04:38:19","logout","::1","1","1532473591_1");
INSERT INTO log VALUES("234","2018-07-25 09:27:52","","login","::1","1","1532491072_1");
INSERT INTO log VALUES("235","2018-07-25 12:00:18","2018-07-25 12:00:49","logout","::1","1","1532500218_1");
INSERT INTO log VALUES("236","2018-07-25 12:00:55","2018-07-25 12:01:24","logout","::1","1","1532500255_1");
INSERT INTO log VALUES("237","2018-07-25 13:10:32","","login","::1","1","1532504432_1");
INSERT INTO log VALUES("238","2018-07-25 14:21:25","2018-07-25 16:00:33","logout","::1","1","1532508685_1");
INSERT INTO log VALUES("239","2018-07-25 16:00:58","2018-07-25 16:01:33","logout","::1","1","1532514658_1");
INSERT INTO log VALUES("240","2018-07-26 12:51:22","","login","::1","1","1532589682_1");
INSERT INTO log VALUES("241","2018-07-30 13:36:11","","login","::1","1","1532937971_1");
INSERT INTO log VALUES("242","2018-07-31 07:36:38","","login","::1","1","1533002798_1");
INSERT INTO log VALUES("243","2018-07-31 19:35:51","","login","::1","1","1533045951_1");
INSERT INTO log VALUES("244","2018-07-31 23:24:50","","login","::1","1","1533059690_1");
INSERT INTO log VALUES("245","2018-08-01 09:38:21","","login","::1","1","1533096501_1");
INSERT INTO log VALUES("246","2018-08-01 09:46:32","","login","::1","1","1533096992_1");
INSERT INTO log VALUES("247","2018-08-01 13:53:50","","login","::1","1","1533111830_1");
INSERT INTO log VALUES("248","2018-08-01 14:09:25","2018-08-01 15:01:10","logout","::1","1","1533112765_1");
INSERT INTO log VALUES("249","2018-08-01 15:01:20","2018-08-01 16:02:24","logout","::1","1","1533115880_1");
INSERT INTO log VALUES("250","2018-08-03 00:48:51","","login","::1","1","1533237531_1");
INSERT INTO log VALUES("251","2018-08-03 01:01:52","","login","::1","1","1533238312_1");
INSERT INTO log VALUES("252","2018-08-03 14:08:56","","login","::1","1","1533285536_1");
INSERT INTO log VALUES("253","2018-08-03 14:24:37","","login","::1","1","1533286477_1");
INSERT INTO log VALUES("254","2018-08-03 15:24:17","","login","::1","1","1533290057_1");
INSERT INTO log VALUES("255","2018-08-03 17:09:04","","login","::1","1","1533296344_1");
INSERT INTO log VALUES("256","2018-08-06 13:34:17","","login","::1","1","1533542657_1");
INSERT INTO log VALUES("257","2018-08-08 09:38:34","","login","::1","1","1533701314_1");
INSERT INTO log VALUES("258","2018-08-08 10:18:29","","login","::1","1","1533703709_1");
INSERT INTO log VALUES("259","2018-08-08 11:31:54","","login","::1","1","1533708114_1");
INSERT INTO log VALUES("260","2018-08-08 15:24:31","","login","::1","1","1533722071_1");
INSERT INTO log VALUES("261","2018-08-08 22:37:06","","login","::1","1","1533748026_1");
INSERT INTO log VALUES("262","2018-08-11 23:25:06","","login","::1","1","1534010106_1");
INSERT INTO log VALUES("263","2018-08-12 01:28:25","2018-08-12 01:28:42","logout","::1","1","1534017505_1");
INSERT INTO log VALUES("264","2018-08-13 14:11:46","","login","::1","1","1534149706_1");
INSERT INTO log VALUES("265","2018-08-14 23:11:27","","login","::1","1","1534268487_1");
INSERT INTO log VALUES("266","2018-08-15 09:47:41","","login","::1","1","1534306661_1");
INSERT INTO log VALUES("267","2018-08-15 10:43:09","","login","::1","1","1534309989_1");
INSERT INTO log VALUES("268","2018-08-15 13:41:40","","login","::1","1","1534320700_1");
INSERT INTO log VALUES("269","2018-08-15 15:01:51","","login","::1","1","1534325511_1");
INSERT INTO log VALUES("270","2018-08-15 16:07:58","2018-08-15 16:39:55","logout","::1","1","1534329478_1");
INSERT INTO log VALUES("271","2018-08-15 20:14:34","","login","::1","1","1534344274_1");
INSERT INTO log VALUES("272","2018-08-15 21:16:01","","login","::1","1","1534347961_1");
INSERT INTO log VALUES("273","2018-08-16 22:21:29","","login","::1","1","1534438289_1");
INSERT INTO log VALUES("274","2018-08-17 10:02:16","","login","::1","1","1534480336_1");
INSERT INTO log VALUES("275","2018-08-20 13:35:33","","login","::1","1","1534752333_1");
INSERT INTO log VALUES("276","2018-08-20 22:21:58","","login","::1","1","1534783918_1");
INSERT INTO log VALUES("277","2018-08-25 21:34:50","","login","::1","1","1535213090_1");
INSERT INTO log VALUES("278","2018-08-26 22:43:40","","login","::1","1","1535303620_1");
INSERT INTO log VALUES("279","2018-08-29 09:23:24","","login","::1","1","1535514804_1");
INSERT INTO log VALUES("280","2018-08-29 09:32:18","","login","::1","1","1535515338_1");
INSERT INTO log VALUES("281","2018-08-29 10:04:04","","login","::1","1","1535517244_1");
INSERT INTO log VALUES("282","2018-08-29 13:59:04","2018-08-29 16:05:27","logout","::1","1","1535531344_1");
INSERT INTO log VALUES("283","2018-09-04 00:34:55","","login","::1","1","1536001495_1");
INSERT INTO log VALUES("284","2018-09-04 21:39:59","","login","::1","1","1536077399_1");
INSERT INTO log VALUES("285","2018-09-06 13:52:31","","login","::1","1","1536222151_1");
INSERT INTO log VALUES("286","2018-09-12 09:28:09","","login","::1","1","1536724689_1");
INSERT INTO log VALUES("287","2018-09-12 10:55:20","","login","::1","1","1536729920_1");
INSERT INTO log VALUES("288","2018-09-17 01:37:29","","login","::1","1","1537128449_1");
INSERT INTO log VALUES("289","2018-09-22 17:48:41","2018-09-22 17:49:47","logout","::1","1","1537618721_1");
INSERT INTO log VALUES("290","2018-09-22 18:09:33","","login","::1","1","1537619973_1");
INSERT INTO log VALUES("291","2018-09-24 11:23:18","","login","::1","1","1537768398_1");
INSERT INTO log VALUES("292","2018-09-24 15:40:57","","login","::1","1","1537783857_1");
INSERT INTO log VALUES("293","2018-09-24 23:41:17","","login","::1","1","1537812677_1");
INSERT INTO log VALUES("294","2018-09-25 19:46:03","","login","::1","1","1537884963_1");
INSERT INTO log VALUES("295","2018-10-12 11:36:11","","login","::1","1","1539324371_1");
INSERT INTO log VALUES("296","2018-10-12 11:44:17","2018-10-12 16:37:29","logout","::1","1","1539324857_1");
INSERT INTO log VALUES("297","2018-10-12 22:35:13","","login","::1","1","1539363913_1");
INSERT INTO log VALUES("298","2018-10-13 13:01:21","","login","::1","1","1539415881_1");
INSERT INTO log VALUES("299","2018-10-15 09:51:15","2018-10-15 10:24:34","logout","::1","1","1539577275_1");
INSERT INTO log VALUES("300","2018-10-19 10:44:41","","login","::1","1","1539926081_1");
INSERT INTO log VALUES("301","2018-10-20 14:04:18","","login","::1","1","1540024458_1");
INSERT INTO log VALUES("302","2018-10-26 11:21:17","","login","::1","1","1540533077_1");





CREATE TABLE `login` (
  `user_email` varchar(200) NOT NULL,
  `user_pwd` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO login VALUES("ajmal@bit.lk","40bd001563085fc35165329ea1ff5c5ecbdbbeef","1");
INSERT INTO login VALUES("akila@bit.lk","40bd001563085fc35165329ea1ff5c5ecbdbbeef","2");
INSERT INTO login VALUES("arlene@yahoo.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","52");
INSERT INTO login VALUES("ashley3535@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","55");
INSERT INTO login VALUES("ashley4242@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","44");
INSERT INTO login VALUES("ashley@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","54");
INSERT INTO login VALUES("chrish@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","48");
INSERT INTO login VALUES("duke1234@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","49");
INSERT INTO login VALUES("duke2132@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","38");
INSERT INTO login VALUES("duke@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","37");
INSERT INTO login VALUES("dukefddfdfdfdf@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","57");
INSERT INTO login VALUES("dukennnnnnnnnnnnnnnn@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","56");
INSERT INTO login VALUES("fdf@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","53");
INSERT INTO login VALUES("gaya@bit.lk","40bd001563085fc35165329ea1ff5c5ecbdbbeef","4");
INSERT INTO login VALUES("h3i@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","43");
INSERT INTO login VALUES("hi@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","40");
INSERT INTO login VALUES("hidfsdsf@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","46");
INSERT INTO login VALUES("jeeni@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","41");
INSERT INTO login VALUES("jeeni@gmail.comfcdfd","40bd001563085fc35165329ea1ff5c5ecbdbbeef","47");
INSERT INTO login VALUES("prabodha@bit.lk","40bd001563085fc35165329ea1ff5c5ecbdbbeef","3");
INSERT INTO login VALUES("qq@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","36");
INSERT INTO login VALUES("raj@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","34");
INSERT INTO login VALUES("ramani@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","35");
INSERT INTO login VALUES("rani@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","42");
INSERT INTO login VALUES("sanga@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","51");
INSERT INTO login VALUES("terry@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","39");
INSERT INTO login VALUES("ttfgfd@ff.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","45");
INSERT INTO login VALUES("virat@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","50");
INSERT INTO login VALUES("xx@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","33");
INSERT INTO login VALUES("xz@gmail.com","40bd001563085fc35165329ea1ff5c5ecbdbbeef","58");





CREATE TABLE `module` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(200) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO module VALUES("1","Item");
INSERT INTO module VALUES("2","Customer");
INSERT INTO module VALUES("3","Order");
INSERT INTO module VALUES("4","Payment");
INSERT INTO module VALUES("5","Purchase Order");
INSERT INTO module VALUES("6","Stock");
INSERT INTO module VALUES("7","User");
INSERT INTO module VALUES("8","Rating & Feedback");
INSERT INTO module VALUES("9","Notification");
INSERT INTO module VALUES("10","Backup");
INSERT INTO module VALUES("11","Reports");
INSERT INTO module VALUES("12","Supplier");
INSERT INTO module VALUES("13","userTracking");





CREATE TABLE `module_role` (
  `m_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO module_role VALUES("1","1");
INSERT INTO module_role VALUES("1","3");
INSERT INTO module_role VALUES("1","4");
INSERT INTO module_role VALUES("2","1");
INSERT INTO module_role VALUES("2","3");
INSERT INTO module_role VALUES("2","4");
INSERT INTO module_role VALUES("3","1");
INSERT INTO module_role VALUES("3","3");
INSERT INTO module_role VALUES("3","4");
INSERT INTO module_role VALUES("4","1");
INSERT INTO module_role VALUES("4","3");
INSERT INTO module_role VALUES("4","4");
INSERT INTO module_role VALUES("5","1");
INSERT INTO module_role VALUES("5","3");
INSERT INTO module_role VALUES("5","4");
INSERT INTO module_role VALUES("6","1");
INSERT INTO module_role VALUES("6","3");
INSERT INTO module_role VALUES("6","4");
INSERT INTO module_role VALUES("7","1");
INSERT INTO module_role VALUES("7","2");
INSERT INTO module_role VALUES("7","3");
INSERT INTO module_role VALUES("8","1");
INSERT INTO module_role VALUES("8","3");
INSERT INTO module_role VALUES("8","4");
INSERT INTO module_role VALUES("9","1");
INSERT INTO module_role VALUES("9","2");
INSERT INTO module_role VALUES("9","3");
INSERT INTO module_role VALUES("10","1");
INSERT INTO module_role VALUES("10","2");
INSERT INTO module_role VALUES("11","1");
INSERT INTO module_role VALUES("11","2");
INSERT INTO module_role VALUES("11","3");
INSERT INTO module_role VALUES("11","4");
INSERT INTO module_role VALUES("12","1");
INSERT INTO module_role VALUES("13","1");





CREATE TABLE `notification` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_msg` varchar(200) NOT NULL,
  `not_date` datetime NOT NULL,
  `not_type` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `not_status` varchar(200) NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO notification VALUES("1","Order ID:26Customer Name:","2018-10-19 16:53:36","Email Notification","0","SMTP connect() failed.");
INSERT INTO notification VALUES("2","Order ID:26Customer Name:","2018-10-19 17:06:24","Email Notification","0","Ind");
INSERT INTO notification VALUES("3","Order ID:27Customer Name:","2018-10-26 11:48:14","Email Notification","0","Ind");
INSERT INTO notification VALUES("4","Order ID:28 Customer Name:Daminda","2018-10-26 11:54:31","Email Notification","0","Ind");
INSERT INTO notification VALUES("5","Order ID: Customer Name:Daminda","2018-10-26 11:54:57","Email Notification","0","Ind");
INSERT INTO notification VALUES("6","Order ID: Customer Name:Daminda","2018-10-26 11:56:14","Email Notification","0","Ind");
INSERT INTO notification VALUES("7","Order ID:29 Customer Name:Daminda","2018-10-26 11:57:19","Email Notification","0","Ind");
INSERT INTO notification VALUES("8","Order ID: Customer Name:Daminda","2018-10-26 11:58:28","Email Notification","0","Ind");
INSERT INTO notification VALUES("9","Order ID:30 Customer Name:Daminda","2018-10-26 11:59:42","Email Notification","0","Ind");
INSERT INTO notification VALUES("10","Order ID:31 Customer Name:Daminda","2018-10-26 12:05:05","Email Notification","0","Ind");
INSERT INTO notification VALUES("11","Order ID:32 Customer Name:Daminda","2018-10-26 12:24:35","Email Notification","0","Ind");
INSERT INTO notification VALUES("12","AAAAAAAA","2018-10-26 15:52:42","Special alerts","1","Added");
INSERT INTO notification VALUES("13","AAAAAAAA","2018-10-26 15:55:43","Special alerts","1","Added");
INSERT INTO notification VALUES("14","AAAAAAAA","2018-10-26 15:57:15","Special alerts","1","Added");
INSERT INTO notification VALUES("15","AAAAAAAA","2018-10-26 16:07:33","Special alerts","1","Added");
INSERT INTO notification VALUES("16","AAAAAAAA","2018-10-26 16:07:56","Special alerts","1","Added");
INSERT INTO notification VALUES("17","AAAAAAAA","2018-10-26 16:18:07","Special alerts","1","Added");
INSERT INTO notification VALUES("18","AAAAAAAA","2018-10-26 16:22:32","Special alerts","1","Added");





CREATE TABLE `notification_user` (
  `nu_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `nu_status` varchar(200) NOT NULL,
  `nu_error` varchar(200) NOT NULL,
  `readn` int(11) NOT NULL,
  PRIMARY KEY (`nu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

INSERT INTO notification_user VALUES("1","2","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("2","3","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("3","4","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("4","5","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("5","6","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("6","7","0","7","No","SMTP connect() failed.","0");
INSERT INTO notification_user VALUES("7","8","0","7","Yes","","0");
INSERT INTO notification_user VALUES("8","9","0","7","Yes","","0");
INSERT INTO notification_user VALUES("9","10","0","7","Yes","","0");
INSERT INTO notification_user VALUES("10","11","0","7","Yes","","0");
INSERT INTO notification_user VALUES("11","17","1","0","Yes","","0");
INSERT INTO notification_user VALUES("12","17","41","0","Yes","","0");
INSERT INTO notification_user VALUES("13","17","43","0","Yes","","0");
INSERT INTO notification_user VALUES("14","17","44","0","Yes","","0");
INSERT INTO notification_user VALUES("15","17","48","0","Yes","","0");
INSERT INTO notification_user VALUES("16","17","51","0","Yes","","0");
INSERT INTO notification_user VALUES("17","17","56","0","Yes","","0");
INSERT INTO notification_user VALUES("18","17","17","0","Yes","","0");
INSERT INTO notification_user VALUES("19","17","34","0","Yes","","0");
INSERT INTO notification_user VALUES("20","17","38","0","Yes","","0");
INSERT INTO notification_user VALUES("21","17","42","0","Yes","","0");
INSERT INTO notification_user VALUES("22","17","46","0","Yes","","0");
INSERT INTO notification_user VALUES("23","17","49","0","Yes","","0");
INSERT INTO notification_user VALUES("24","17","54","0","Yes","","0");
INSERT INTO notification_user VALUES("25","17","55","0","Yes","","0");
INSERT INTO notification_user VALUES("26","17","57","0","Yes","","0");
INSERT INTO notification_user VALUES("27","17","58","0","Yes","","0");
INSERT INTO notification_user VALUES("28","17","3","0","Yes","","0");
INSERT INTO notification_user VALUES("29","17","45","0","Yes","","0");
INSERT INTO notification_user VALUES("30","17","50","0","Yes","","0");
INSERT INTO notification_user VALUES("31","17","53","0","Yes","","0");
INSERT INTO notification_user VALUES("32","18","1","0","Yes","","0");
INSERT INTO notification_user VALUES("33","18","41","0","Yes","","0");
INSERT INTO notification_user VALUES("34","18","43","0","Yes","","0");
INSERT INTO notification_user VALUES("35","18","44","0","Yes","","0");
INSERT INTO notification_user VALUES("36","18","48","0","Yes","","0");
INSERT INTO notification_user VALUES("37","18","51","0","Yes","","0");
INSERT INTO notification_user VALUES("38","18","56","0","Yes","","0");
INSERT INTO notification_user VALUES("39","18","17","0","Yes","","0");
INSERT INTO notification_user VALUES("40","18","34","0","Yes","","0");
INSERT INTO notification_user VALUES("41","18","38","0","Yes","","0");
INSERT INTO notification_user VALUES("42","18","42","0","Yes","","0");
INSERT INTO notification_user VALUES("43","18","46","0","Yes","","0");
INSERT INTO notification_user VALUES("44","18","49","0","Yes","","0");
INSERT INTO notification_user VALUES("45","18","54","0","Yes","","0");
INSERT INTO notification_user VALUES("46","18","55","0","Yes","","0");
INSERT INTO notification_user VALUES("47","18","57","0","Yes","","0");
INSERT INTO notification_user VALUES("48","18","58","0","Yes","","0");
INSERT INTO notification_user VALUES("49","18","3","0","Yes","","0");
INSERT INTO notification_user VALUES("50","18","45","0","Yes","","0");
INSERT INTO notification_user VALUES("51","18","50","0","Yes","","0");
INSERT INTO notification_user VALUES("52","18","53","0","Yes","","0");





;






CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pay_amount` double NOT NULL,
  `discount` double NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO payment VALUES("1","2018-09-27","10","11","24700","1300");
INSERT INTO payment VALUES("2","2018-09-27","10","11","24700","1300");
INSERT INTO payment VALUES("3","2018-09-27","10","12","24700","1300");
INSERT INTO payment VALUES("4","2018-09-27","10","13","24700","1300");
INSERT INTO payment VALUES("5","2018-09-27","10","14","13000","0");
INSERT INTO payment VALUES("6","2018-09-27","10","15","13000","0");
INSERT INTO payment VALUES("7","2018-09-27","10","16","36075","2925");
INSERT INTO payment VALUES("8","2018-10-12","10","18","195","0");
INSERT INTO payment VALUES("9","2018-10-12","10","19","65","0");
INSERT INTO payment VALUES("10","2018-10-12","10","20","65","0");
INSERT INTO payment VALUES("11","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("12","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("13","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("14","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("15","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("16","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("17","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("18","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("19","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("20","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("21","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("22","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("23","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("24","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("25","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("26","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("27","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("28","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("29","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("30","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("31","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("32","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("33","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("34","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("35","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("36","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("37","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("38","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("39","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("40","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("41","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("42","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("43","2018-10-19","7","26","24823.5","1306.5");
INSERT INTO payment VALUES("44","2018-10-26","7","27","65","0");
INSERT INTO payment VALUES("45","2018-10-26","7","28","1","0");
INSERT INTO payment VALUES("46","2018-10-26","7","29","65","0");
INSERT INTO payment VALUES("47","2018-10-26","7","30","65","0");
INSERT INTO payment VALUES("48","2018-10-26","7","31","65","0");
INSERT INTO payment VALUES("49","2018-10-26","7","32","65","0");





CREATE TABLE `po` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_date` datetime NOT NULL,
  `sup_id` int(11) NOT NULL,
  `po_status` varchar(20) NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `po_item` (
  `po_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `po_item_quantity` int(11) NOT NULL,
  PRIMARY KEY (`po_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(45) NOT NULL,
  `name_si` varchar(45) DEFAULT NULL,
  `name_ta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO province VALUES("1","Western","????????","????");
INSERT INTO province VALUES("2","Central","??????","??????");
INSERT INTO province VALUES("3","Southern","?????","????");
INSERT INTO province VALUES("4","North Western","???","?? ????");
INSERT INTO province VALUES("5","Sabaragamuwa","???????","???????");
INSERT INTO province VALUES("6","Eastern","????????","???????");
INSERT INTO province VALUES("7","Uva","??","???");
INSERT INTO province VALUES("8","North Central","????? ???","?? ??????");
INSERT INTO province VALUES("9","Northern","?????","??");





CREATE TABLE `rating` (
  `item_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `rate` varchar(200) NOT NULL,
  `rate_date` datetime NOT NULL,
  PRIMARY KEY (`item_id`,`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO rating VALUES("21","1","4","2018-08-08 00:00:00");





CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(200) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO role VALUES("1","Owner");
INSERT INTO role VALUES("2","Admin");
INSERT INTO role VALUES("3","Manager");
INSERT INTO role VALUES("4","Staff");





CREATE TABLE `serial` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `serialno` text NOT NULL,
  `stock_id` int(11) NOT NULL,
  `qr_image` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_code` varchar(20) NOT NULL,
  `size_type` varchar(20) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_date` date NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_price` double NOT NULL,
  `textfile` text NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_status` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

INSERT INTO stock VALUES("1","2018-08-29","65","65.54","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("2","2018-08-29","5","54.87","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("3","2018-08-29","6","67","","35","Added","1");
INSERT INTO stock VALUES("4","2018-08-29","55","766","R160067_HDIT.pdf","35","Added","1");
INSERT INTO stock VALUES("5","2018-08-29","55","766","R160067_HDIT.pdf","35","Added","1");
INSERT INTO stock VALUES("6","2018-08-29","65","65","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("7","2018-08-29","65","65","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("8","2018-08-29","765","65","","35","Added","1");
INSERT INTO stock VALUES("9","2018-08-29","764","123","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("10","2018-08-29","764","123","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("11","2018-08-29","7656","654","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("12","2018-08-29","7656","654","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("13","2018-08-29","7656","654","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("14","2018-08-29","7656","654","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("15","2018-08-29","77","6543","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("16","2018-08-29","1","6543","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("17","2018-08-29","3","6543","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("18","2018-08-29","5","766","","35","Added","1");
INSERT INTO stock VALUES("19","2018-08-29","5","766","","35","Added","1");
INSERT INTO stock VALUES("20","2018-08-29","1","12000","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("21","2018-08-29","1","12000","R160067_HDIT.pdf","36","Added","1");
INSERT INTO stock VALUES("22","2018-08-29","1","12000","","36","Added","1");
INSERT INTO stock VALUES("23","2018-08-29","1","12000","","36","Added","1");
INSERT INTO stock VALUES("24","2018-08-29","1","12000","","36","Added","1");
INSERT INTO stock VALUES("25","2018-08-29","12","12000","","36","Added","1");
INSERT INTO stock VALUES("26","2018-08-29","12","12","","36","Added","1");
INSERT INTO stock VALUES("27","2018-08-29","12","16","","36","Added","1");
INSERT INTO stock VALUES("28","2018-08-29","5","20","","36","Added","1");
INSERT INTO stock VALUES("29","2018-08-29","1","20","","36","Added","1");
INSERT INTO stock VALUES("30","2018-08-29","3","65","","36","Added","1");
INSERT INTO stock VALUES("31","2018-08-29","1","13000","","34","Added","1");
INSERT INTO stock VALUES("32","2018-08-29","2","23000","","34","Added","1");
INSERT INTO stock VALUES("33","2018-08-29","1","43000","","34","Added","1");
INSERT INTO stock VALUES("34","2018-08-29","1","0","","36","Added","1");
INSERT INTO stock VALUES("35","2018-09-04","1","1","","36","Added","1");
INSERT INTO stock VALUES("36","2018-09-04","1","1","","6","Added","1");
INSERT INTO stock VALUES("37","2018-09-04","1","1","","6","Added","1");
INSERT INTO stock VALUES("38","2018-09-04","1","1","","6","Added","1");
INSERT INTO stock VALUES("39","2018-09-12","5","654","","28","Added","1");
INSERT INTO stock VALUES("40","2018-09-12","6","54","","28","Added","1");
INSERT INTO stock VALUES("41","2018-09-25","0","0","","37","Added","1");





CREATE TABLE `stock_balance` (
  `lastmodified` datetime NOT NULL,
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `qua` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`color_id`,`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO stock_balance VALUES("2018-10-26 11:54:31","6","0","1","3");
INSERT INTO stock_balance VALUES("2018-09-04 22:11:47","6","1","1","4");
INSERT INTO stock_balance VALUES("2018-09-04 22:11:56","6","1","1","5");
INSERT INTO stock_balance VALUES("2018-09-12 10:55:58","28","11","1","4");
INSERT INTO stock_balance VALUES("2018-10-19 12:49:46","34","-3","1","3");
INSERT INTO stock_balance VALUES("2018-08-29 15:34:39","34","20","1","4");
INSERT INTO stock_balance VALUES("2018-08-29 15:39:39","36","1","1","1");
INSERT INTO stock_balance VALUES("2018-10-26 12:24:34","36","24","1","3");
INSERT INTO stock_balance VALUES("2018-08-29 15:18:44","36","12","2","4");
INSERT INTO stock_balance VALUES("2018-09-25 19:59:17","37","0","0","0");





CREATE TABLE `stock_feature` (
  `stock_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`,`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO stock_feature VALUES("6","1");
INSERT INTO stock_feature VALUES("6","3");
INSERT INTO stock_feature VALUES("7","1");
INSERT INTO stock_feature VALUES("7","3");
INSERT INTO stock_feature VALUES("8","1");
INSERT INTO stock_feature VALUES("8","3");
INSERT INTO stock_feature VALUES("9","1");
INSERT INTO stock_feature VALUES("9","4");
INSERT INTO stock_feature VALUES("10","1");
INSERT INTO stock_feature VALUES("10","4");
INSERT INTO stock_feature VALUES("11","2");
INSERT INTO stock_feature VALUES("11","4");
INSERT INTO stock_feature VALUES("12","2");
INSERT INTO stock_feature VALUES("12","4");
INSERT INTO stock_feature VALUES("13","1");
INSERT INTO stock_feature VALUES("13","4");
INSERT INTO stock_feature VALUES("14","1");
INSERT INTO stock_feature VALUES("14","4");
INSERT INTO stock_feature VALUES("15","2");
INSERT INTO stock_feature VALUES("15","3");
INSERT INTO stock_feature VALUES("16","2");
INSERT INTO stock_feature VALUES("16","3");
INSERT INTO stock_feature VALUES("17","2");
INSERT INTO stock_feature VALUES("17","3");
INSERT INTO stock_feature VALUES("18","1");
INSERT INTO stock_feature VALUES("18","4");
INSERT INTO stock_feature VALUES("19","1");
INSERT INTO stock_feature VALUES("19","4");
INSERT INTO stock_feature VALUES("20","1");
INSERT INTO stock_feature VALUES("20","3");
INSERT INTO stock_feature VALUES("21","1");
INSERT INTO stock_feature VALUES("21","3");
INSERT INTO stock_feature VALUES("22","2");
INSERT INTO stock_feature VALUES("22","4");
INSERT INTO stock_feature VALUES("23","2");
INSERT INTO stock_feature VALUES("23","4");
INSERT INTO stock_feature VALUES("24","1");
INSERT INTO stock_feature VALUES("24","3");
INSERT INTO stock_feature VALUES("25","2");
INSERT INTO stock_feature VALUES("25","4");
INSERT INTO stock_feature VALUES("26","1");
INSERT INTO stock_feature VALUES("26","3");
INSERT INTO stock_feature VALUES("27","1");
INSERT INTO stock_feature VALUES("27","3");
INSERT INTO stock_feature VALUES("28","1");
INSERT INTO stock_feature VALUES("28","3");
INSERT INTO stock_feature VALUES("29","1");
INSERT INTO stock_feature VALUES("29","3");
INSERT INTO stock_feature VALUES("30","1");
INSERT INTO stock_feature VALUES("30","3");
INSERT INTO stock_feature VALUES("31","1");
INSERT INTO stock_feature VALUES("31","4");
INSERT INTO stock_feature VALUES("32","1");
INSERT INTO stock_feature VALUES("32","3");
INSERT INTO stock_feature VALUES("33","1");
INSERT INTO stock_feature VALUES("33","3");
INSERT INTO stock_feature VALUES("34","1");
INSERT INTO stock_feature VALUES("35","1");
INSERT INTO stock_feature VALUES("35","3");
INSERT INTO stock_feature VALUES("36","1");
INSERT INTO stock_feature VALUES("36","3");
INSERT INTO stock_feature VALUES("37","1");
INSERT INTO stock_feature VALUES("37","4");
INSERT INTO stock_feature VALUES("38","1");
INSERT INTO stock_feature VALUES("38","5");





CREATE TABLE `temp_cart` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_price` double NOT NULL,
  `time_id` varchar(255) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO temp_cart VALUES("1","6","1","1","","1","3");
INSERT INTO temp_cart VALUES("1","6","1","1","","1","4");
INSERT INTO temp_cart VALUES("2","34","1","12","","1","3");
INSERT INTO temp_cart VALUES("2","34","1","12","","1","4");
INSERT INTO temp_cart VALUES("2","34","1","12","","1","3");
INSERT INTO temp_cart VALUES("2","6","1","1","","1","3");
INSERT INTO temp_cart VALUES("3","36","2","246","","2","4");
INSERT INTO temp_cart VALUES("4","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("5","34","2","24","","1","3");
INSERT INTO temp_cart VALUES("6","34","1","12","","1","4");
INSERT INTO temp_cart VALUES("7","34","1","24","","1","3");
INSERT INTO temp_cart VALUES("7","36","2","130","","1","3");
INSERT INTO temp_cart VALUES("7","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("7","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("7","36","2","130","","1","3");
INSERT INTO temp_cart VALUES("7","36","3","369","","2","4");
INSERT INTO temp_cart VALUES("7","36","1","123","","2","4");
INSERT INTO temp_cart VALUES("8","34","1","12","","1","3");
INSERT INTO temp_cart VALUES("9","34","2","24","","1","3");
INSERT INTO temp_cart VALUES("9","34","3","36","","1","3");
INSERT INTO temp_cart VALUES("10","34","2","24","","1","3");
INSERT INTO temp_cart VALUES("10","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("11","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("12","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("13","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("14","34","1","13000","","1","3");
INSERT INTO temp_cart VALUES("15","34","1","13000","","1","3");
INSERT INTO temp_cart VALUES("16","34","3","39000","","1","3");
INSERT INTO temp_cart VALUES("17","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("18","36","3","195","","1","3");
INSERT INTO temp_cart VALUES("19","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("20","36","1","65","","1","3");
INSERT INTO temp_cart VALUES("21","36","3","195","","1","3");
INSERT INTO temp_cart VALUES("22","36","4","260","","1","3");
INSERT INTO temp_cart VALUES("22","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("23","36","1","130","","1","3");
INSERT INTO temp_cart VALUES("24","34","2","26000","","1","3");
INSERT INTO temp_cart VALUES("25","6","1","1","","1","3");





CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(200) NOT NULL,
  `user_lname` varchar(200) NOT NULL,
  `user_dob` date NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_doj` date NOT NULL,
  `user_image` text NOT NULL,
  `user_status` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_tel` varchar(20) NOT NULL,
  `user_nic` varchar(20) NOT NULL,
  `dis_id` int(11) NOT NULL,
  `user_add` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","Ajmal","Iqbal","0000-00-00","Male","0000-00-00","","Active","1","","","0","");
INSERT INTO user VALUES("2","Akila","Kasun","0000-00-00","Male","0000-00-00","","Deactive","2","","","0","");
INSERT INTO user VALUES("3","Prabodha","Jayawardena","0000-00-00","Male","0000-00-00","","Active","3","","","0","");
INSERT INTO user VALUES("4","Gaya","Sathsarani","0000-00-00","Female","0000-00-00","","Active","4","","","0","");
INSERT INTO user VALUES("17","Harry","Fernando","2017-12-05","male","2018-06-08","1528475467_17_164374577-hiking-wallpapers.jpg","Active","2","0112598742","201759684V","2","bre3 5,");
INSERT INTO user VALUES("18","ashley","Perera","2018-05-28","male","2018-06-13","","Active","4","55454535","957864345V","25","98");
INSERT INTO user VALUES("34","Rajeeka","Jenorge","1991-05-29","female","2018-06-21","1529567057_34_IMG_3924.JPG","Active","2","","915864598v","19","");
INSERT INTO user VALUES("35","Ramani","Jenorge","0000-00-00","female","2018-06-21","","Active","4","","","8","");
INSERT INTO user VALUES("38","dukesh","Jenorge","1996-02-05","Female","2018-07-16","1532176347_38_164374577-hiking-wallpapers.jpg","Active","2","0112598742","967864345V","0","");
INSERT INTO user VALUES("39","Terry","Jenorge","1990-02-06","Male","2018-07-16","1531681353_39_IMG_3923.JPG","Active","4","0112598742","905698752V","0","");
INSERT INTO user VALUES("40","hi","hey","1995-02-07","Male","2018-07-18","1531908836_40_hdq-baby-polar-bearvolodymyr-greber-within-baby-and-bear-wallpaper-hd.jpg","Active","4","0112598742","957864345V","0","");
INSERT INTO user VALUES("41","jennifer","free","1991-02-04","Female","2018-07-21","1532177201_41_hdq-baby-polar-bearvolodymyr-greber-within-baby-and-bear-wallpaper-hd.jpg","Active","1","0112598742","917864345V","0","");
INSERT INTO user VALUES("42","rani","jega","1989-01-08","Female","2018-07-21","1532178039_42_IMG_3924.JPG","Active","2","0118965745","896574258V","0","");
INSERT INTO user VALUES("43","ajmal","iq","0000-00-00","male","2018-07-21","1532178306_43_IMG_3923.JPG","Active","1","","","25","");
INSERT INTO user VALUES("44","ajmal1","iqba","0000-00-00","male","2018-07-21","","Active","1","","","5","");
INSERT INTO user VALUES("45","ajmal3","hghfg","0000-00-00","male","2018-07-21","","Active","3","","","13","");
INSERT INTO user VALUES("46","ajma4","Jenorgefd","0000-00-00","male","2018-07-21","","Active","2","","","6","");
INSERT INTO user VALUES("47","ajmal4","hhhh","0000-00-00","male","2018-07-21","","Active","4","","","5","");
INSERT INTO user VALUES("48","chrish","sandrasegar","1996-01-04","Female","2018-07-21","1532179262_48_IMG_3923.JPG","Active","1","0112598742","965874125V","0","");
INSERT INTO user VALUES("49","duesheeka","Jenorge","0000-00-00","female","2018-07-21","1532180911_49_IMG_3932.JPG","Active","2","0112598742","958472684V","0","");
INSERT INTO user VALUES("50","virat","kohli","1991-05-11","male","2018-07-24","1532448583_50_2.jpg","Active","3","0112598742","917864345V","13","");
INSERT INTO user VALUES("51","kumar","sanga","1998-02-05","male","2018-07-25","1532491088_51_IMG_3921.JPG","Active","1","0112598742","987864345V","7","");
INSERT INTO user VALUES("52","arlene","staton","0000-00-00","female","2018-07-26","1532589722_52_164374577-hiking-wallpapers.jpg","Active","4","0112598742","","9","");
INSERT INTO user VALUES("53","vfdvf","fdfd","0000-00-00","male","2018-07-26","","Active","3","0112598742","957864345V","7","");
INSERT INTO user VALUES("54","Harry","dcd","1997-02-04","male","2018-07-26","1532622311_54_IMG_3922.JPG","Active","2","0112598742","977864345V","11","");
INSERT INTO user VALUES("55","hugh","ere","0000-00-00","male","2018-07-27","","Active","2","","","17","");
INSERT INTO user VALUES("56","Gayathri","Jenorge","0000-00-00","male","2018-07-31","","Active","1","","","16","");
INSERT INTO user VALUES("57","fdf","fdfd","0000-00-00","male","2018-08-03","1533289360_57_IMG_3921.JPG","Active","2","","","11","");
INSERT INTO user VALUES("58","xz","xz","0000-00-00","male","2018-08-03","","Active","2","","","7","");



