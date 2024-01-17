// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/alphabet/alphabet_page.dart';
import '../pages/image_word_match/image_word_match.dart';
import '../pages/letter_practice/letter_practice.dart';
import '../pages/punctuation/punctuation.dart';
import '../pages/randomWords/random_words.dart';
import '../pages/reading_comprehension/reading_comprehension.dart';
import '../pages/spelling_rules/spelling_rules.dart';
import '../pages/word_meaning/word_meaning.dart';

const String letterForLearners = "LetterForLearners";
const String clearButtonText = "Temizle";
const String nextLetterButtonText = "Sonraki Harf";

const String alphabetAppBarTitle = "Alfabeyi Öğrenelim";
const String homePageAppBarTitle = "Ana Sayfa";
const String imageWordMatchAppBarTitle = "Resimdeki Ne?";
const String letterPracticeAppBarTitle = "Harf Alıştırması";
const String puncExerciseAppBarTitle = "Noktalama İşaretleri Alıştırmaları";
const String punctuationAppBarTitle = "Noktalama İşaretlerini Öğrenelim";

const String audioPlayerError = "AudioPlayer is not initialized!";

const String punctuationExerciseQuestion =
    "Parantez içine hangi noktalama işareti gelmeli?";

const String learnPunc = "Noktalama İşaretlerini Öğrenelim!";
const String exercisePunc = "Noktalama İşaretleri Alıştırmaları";

const String dialogWrongAnswer = 'Yanlış Cevap!';
const String dialogTryAgain = 'Lütfen tekrar dene.';
const String dialogOk = 'Tamam';

const String whatIsUsedFor = "Ne için kullanılır?";
const String forExample = "Örneğin;";

const String goToHomePage = "Ana Sayfaya Dön";

const String congratsImagePath = "assets/images/congrats.png";

const Icon audioPlayPauseIcon = Icon(CupertinoIcons.playpause_fill);

const double fs20 = 20;
const double fs22 = 22;
const double fs25 = 25;
const double fs26 = 26;
const double fs32 = 32;
const double fs35 = 35;
const double fs36 = 36;
const double fs45 = 45;
const double fs60 = 60;
const double fs90 = 90;

const FontWeight fw300 = FontWeight.w300;
const FontWeight fw400 = FontWeight.w400;
const FontWeight fw500 = FontWeight.w500;
const FontWeight fw800 = FontWeight.w800;
const FontWeight fwBold = FontWeight.bold;

const TextAlign taCenter = TextAlign.center;

const double elev8 = 8;
const double elev12 = 12;
const double elev15 = 15;

const EdgeInsets eiall_12 = EdgeInsets.all(12);
const EdgeInsets eiall_6 = EdgeInsets.all(6.0);

RoundedRectangleBorder roundedRectangleBorder_circular_15 =
    RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15),
);
RoundedRectangleBorder roundedRectangleBorder_circular_12 =
    RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
);
RoundedRectangleBorder roundedRectangleBorder_circular_8 =
    RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8),
);
RoundedRectangleBorder roundedRectangleBorder_circular_5 =
    RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5),
);

const Fill fillBack = Fill.fillBack;
const CardSide cardSideFront = CardSide.FRONT;
const FlipDirection flipDirectionHorizontal = FlipDirection.HORIZONTAL;

const Alignment alignCenter = Alignment.center;

const MainAxisAlignment mainAxisAlignment_spaceEvenly =
    MainAxisAlignment.spaceEvenly;
const MainAxisAlignment mainAxisAlignment_center = MainAxisAlignment.center;

Color primary = const Color.fromARGB(255, 255, 141, 0);
Color secondary = const Color.fromARGB(255, 90, 88, 224);
Color white = const Color.fromARGB(255, 255, 255, 255);
Color black = const Color.fromARGB(255, 0, 0, 0);
Color gray = const Color.fromARGB(255, 105, 104, 104);
Color pink = Colors.pink;
Color blue = Colors.blue;
Color red = Colors.red.shade900;
Color orange = Colors.orange;
Color yellow = Colors.yellow;

//Alphabet
const String a = "a";
const String capitalA = "A";
const String b = "b";
const String capitalB = "B";
const String c = "c";
const String capitalC = "C";
const String ce = "ç";
const String capitalCE = "Ç";
const String d = "d";
const String capitalD = "D";
const String e = "e";
const String capitalE = "E";
const String f = "f";
const String capitalF = "F";
const String g = "g";
const String capitalG = "G";
const String ge = "ğ";
const String capitalGE = "Ğ";
const String h = "h";
const String capitalH = "H";
const String ii = "ı";
const String capitalI = "I";
const String i = "i";
const String capitalII = "İ";
const String j = "j";
const String capitalJ = "J";
const String k = "k";
const String capitalK = "K";
const String l = "l";
const String capitalL = "L";
const String m = "m";
const String capitalM = "M";
const String n = "n";
const String capitalN = "N";
const String o = "o";
const String capitalO = "O";
const String oo = "ö";
const String capitalOO = "Ö";
const String p = "p";
const String capitalP = "P";
const String r = "r";
const String capitalR = "R";
const String s = "s";
const String capitalS = "S";
const String ss = "ş";
const String capitalSS = "Ş";
const String t = "t";
const String capitalT = "T";
const String u = "u";
const String capitalU = "U";
const String uu = "ü";
const String capitalUU = "Ü";
const String v = "v";
const String capitalV = "V";
const String y = "y";
const String capitalY = "Y";
const String z = "z";
const String capitalZ = "Z";

//Alphabet List
List<String> alphabetList = [
  a,
  capitalA,
  b,
  capitalB,
  c,
  capitalC,
  ce,
  capitalCE,
  d,
  capitalD,
  e,
  capitalE,
  f,
  capitalF,
  g,
  capitalG,
  ge,
  capitalGE,
  h,
  capitalH,
  ii,
  capitalI,
  i,
  capitalII,
  j,
  capitalJ,
  k,
  capitalK,
  l,
  capitalL,
  m,
  capitalM,
  n,
  capitalN,
  o,
  capitalO,
  oo,
  capitalOO,
  p,
  capitalP,
  r,
  capitalR,
  s,
  capitalS,
  ss,
  capitalSS,
  t,
  capitalT,
  u,
  capitalU,
  uu,
  capitalUU,
  v,
  capitalV,
  y,
  capitalY,
  z,
  capitalZ
];

//Lowercase Alphabet List
List<String> lowercaseList = [
  a,
  b,
  c,
  ce,
  d,
  e,
  f,
  g,
  ge,
  h,
  ii,
  i,
  j,
  k,
  l,
  m,
  n,
  o,
  oo,
  p,
  r,
  s,
  ss,
  t,
  u,
  uu,
  v,
  y,
  z
];

//Uppercase Alphabet List
List<String> uppercaseList = [
  capitalA,
  capitalB,
  capitalC,
  capitalCE,
  capitalD,
  capitalE,
  capitalF,
  capitalG,
  capitalGE,
  capitalH,
  capitalI,
  capitalII,
  capitalJ,
  capitalK,
  capitalL,
  capitalM,
  capitalN,
  capitalO,
  capitalOO,
  capitalP,
  capitalR,
  capitalS,
  capitalSS,
  capitalT,
  capitalU,
  capitalUU,
  capitalV,
  capitalY,
  capitalZ
];

const String a1 = "Araba";
const String a2 = "Ayakkabı";
const String a3 = "Arı";

const String b1 = "Balık";
const String b2 = "Bisiklet";
const String b3 = "Başarı";

const String c1 = "Cevap";
const String c2 = "Can";
const String c3 = "Cüzdan";

const String cc1 = "Çamaşır";
const String cc2 = "Çakmak";
const String cc3 = "Çiğköfte";

const String d1 = "Dondurma";
const String d2 = "Dolap";
const String d3 = "Dünya";

const String e1 = "Elma";
const String e2 = "Ekmek";
const String e3 = "Ev";

const String f1 = "Futbol";
const String f2 = "Fıstık";
const String f3 = "Fil";

const String g1 = "Gözlük";
const String g2 = "Gitar";
const String g3 = "Güneş";

const String gg1 = "Ğ harfiyle";
const String gg2 = "başlayan bir";
const String gg3 = "kelime yok.";

const String h1 = "Havlu";
const String h2 = "Hediye";
const String h3 = "Halı";

const String ii1 = "Ihlamur";
const String ii2 = "Izgara";
const String ii3 = "Irmak";

const String i1 = "İstanbul";
const String i2 = "İncir";
const String i3 = "İğne";

const String j1 = "Judo";
const String j2 = "Jeneratör";
const String j3 = "Jüpiter";

const String k1 = "Kalem";
const String k2 = "Kedi";
const String k3 = "Kuş";

const String l1 = "Limon";
const String l2 = "Lamba";
const String l3 = "Lale";

const String m1 = "Masa";
const String m2 = "Meyve";
const String m3 = "Müzik";

const String n1 = "Nar";
const String n2 = "Nehir";
const String n3 = "Nane";

const String o1 = "Oyuncak";
const String o2 = "Orman";
const String o3 = "Otobüs";

const String oo1 = "Öğrenci";
const String oo2 = "Ördek";
const String oo3 = "Örümcek";

const String p1 = "Pırlanta";
const String p2 = "Pencere";
const String p3 = "Papatya";

const String r1 = "Rüzgar";
const String r2 = "Radyo";
const String r3 = "Rüya";

const String s1 = "Saat";
const String s2 = "Süpermarket";
const String s3 = "Sarı";

const String ss1 = "Şemsiye";
const String ss2 = "Şehir";
const String ss3 = "Şiir";

const String t1 = "Toprak";
const String t2 = "Televizyon";
const String t3 = "Turuncu";

const String u1 = "Uçak";
const String u2 = "Usta";
const String u3 = "Uykusuz";

const String uu1 = "Üzüm";
const String uu2 = "Ütü";
const String uu3 = "Üzgün";

const String v1 = "Vazo";
const String v2 = "Veri";
const String v3 = "Vapur";

const String y1 = "Yemek";
const String y2 = "Yılbaşı";
const String y3 = "Yarış";

const String z1 = "Zeytin";
const String z2 = "Zar";
const String z3 = "Zambak";

List<String> wordsList = [
  a1,
  a2,
  a3,
  b1,
  b2,
  b3,
  c1,
  c2,
  c3,
  cc1,
  cc2,
  cc3,
  d1,
  d2,
  d3,
  e1,
  e2,
  e3,
  f1,
  f2,
  f3,
  g1,
  g2,
  g3,
  gg1,
  gg2,
  gg3,
  h1,
  h2,
  h3,
  ii1,
  ii2,
  ii3,
  i1,
  i2,
  i3,
  j1,
  j2,
  j3,
  k1,
  k2,
  k3,
  l1,
  l2,
  l3,
  m1,
  m2,
  m3,
  n1,
  n2,
  n3,
  o1,
  o2,
  o3,
  oo1,
  oo2,
  oo3,
  p1,
  p2,
  p3,
  r1,
  r2,
  r3,
  s1,
  s2,
  s3,
  ss1,
  ss2,
  ss3,
  t1,
  t2,
  t3,
  u1,
  u2,
  u3,
  uu1,
  uu2,
  uu3,
  v1,
  v2,
  v3,
  y1,
  y2,
  y3,
  z1,
  z2,
  z3,
];

List<String> wordAudioList = [
  "assets/audio/letter_a.mp3",
  "assets/audio/letter_b.mp3",
  "assets/audio/letter_c.mp3",
  "assets/audio/letter_ç.mp3",
  "assets/audio/letter_d.mp3",
  "assets/audio/letter_e.mp3",
  "assets/audio/letter_f.mp3",
  "assets/audio/letter_g.mp3",
  "assets/audio/letter_ğ.mp3",
  "assets/audio/letter_h.mp3",
  "assets/audio/letter_ı.mp3",
  "assets/audio/letter_i.mp3",
  "assets/audio/letter_j.mp3",
  "assets/audio/letter_k.mp3",
  "assets/audio/letter_l.mp3",
  "assets/audio/letter_m.mp3",
  "assets/audio/letter_n.mp3",
  "assets/audio/letter_o.mp3",
  "assets/audio/letter_ö.mp3",
  "assets/audio/letter_p.mp3",
  "assets/audio/letter_r.mp3",
  "assets/audio/letter_s.mp3",
  "assets/audio/letter_ş.mp3",
  "assets/audio/letter_t.mp3",
  "assets/audio/letter_u.mp3",
  "assets/audio/letter_ü.mp3",
  "assets/audio/letter_v.mp3",
  "assets/audio/letter_y.mp3",
  "assets/audio/letter_z.mp3",
];

List<String> randomWords = [
  'ayva',
  'balık',
  'cevap',
  'çocuk',
  'deniz',
  'elma',
  'fare',
  'gemi',
  'halı',
  'ıspanak',
  'inek',
  'jaguar'
      'kedi',
  'limon',
  'maymun',
  'nar',
  'orman',
  'ördek',
  'patates',
  'rüzgar',
  'süt',
  'şapka',
  'top',
  'uçak',
  'üzüm',
  'vazo',
  'yılan',
  'zeytin',
  'anne',
  'baba',
  'bebek',
  'kitap',
  'kalem',
  'okul',
  'renk',
  'sayı',
  'elma',
  'armut',
  'ayakkabı',
  'kapı',
  'pencere',
  'masa',
  'sandalye',
  'oyuncak',
  'köpek',
  'kedi',
  'kuş',
  'çiçek',
  'güneş',
  'yıldız',
  'bulut',
  'yağmur',
  'gökyüzü',
  'deniz',
  'nehir',
  'orman',
  'meyve',
  'sebze',
  'süt',
  'ekmek',
  'yumurta',
  'peynir',
  'şeker',
  'tavuk',
  'balık',
  'kırmızı',
  'yeşil',
  'mavi',
  'turuncu',
  'siyah',
  'küçük',
  'büyük',
  'uzun',
  'hızlı',
  'yavaş',
  'güzel',
  'çirkin',
  'mutlu',
  'üzgün',
  'sağlıklı',
  'hasta',
  'temiz',
  'kirli',
  'sıcak',
  'soğuk',
  'gürültülü',
  'sessiz',
  'yukarı',
  'aşağı',
  'ön',
  'arka',
  'iç',
  'dış',
  'sağ',
  'sol',
  'yakın',
  'uzak',
  'hava',
  'yol',
  'öğrenci',
  'öğretmen',
  'kütüphane',
  'hastane',
  'restoran',
  'otomobil',
  'telefon',
  'televizyon',
  'bahçe',
  'park',
  'hediye',
  'buzdolabı',
  'kamera',
  'gözlük',
  'kütük',
  'karakalem'
];

List<String> drawableImageList = [
  "assets/images/aCizgi.png",
  "assets/images/bCizgi.png",
  "assets/images/cCizgi.png",
  "assets/images/çCizgi.png",
  "assets/images/dCizgi.png",
  "assets/images/eCizgi.png",
  "assets/images/fCizgi.png",
  "assets/images/gCizgi.png",
  "assets/images/ğCizgi.png",
  "assets/images/hCizgi.png",
  "assets/images/ıCizgi.png",
  "assets/images/iCizgi.png",
  "assets/images/jCizgi.png",
  "assets/images/kCizgi.png",
  "assets/images/lCizgi.png",
  "assets/images/mCizgi.png",
  "assets/images/nCizgi.png",
  "assets/images/oCizgi.png",
  "assets/images/öCizgi.png",
  "assets/images/pCizgi.png",
  "assets/images/rCizgi.png",
  "assets/images/sCizgi.png",
  "assets/images/şCizgi.png",
  "assets/images/tCizgi.png",
  "assets/images/uCizgi.png",
  "assets/images/üCizgi.png",
  "assets/images/vCizgi.png",
  "assets/images/yCizgi.png",
  "assets/images/zCizgi.png",
];

List<String> letterImageList = [
  "assets/images/aTarif.png",
  "assets/images/bTarif.png",
  "assets/images/cTarif.png",
  "assets/images/çTarif.png",
  "assets/images/dTarif.png",
  "assets/images/eTarif.png",
  "assets/images/fTarif.png",
  "assets/images/gTarif.png",
  "assets/images/ğTarif.png",
  "assets/images/hTarif.png",
  "assets/images/ıTarif.png",
  "assets/images/iTarif.png",
  "assets/images/jTarif.png",
  "assets/images/kTarif.png",
  "assets/images/lTarif.png",
  "assets/images/mTarif.png",
  "assets/images/nTarif.png",
  "assets/images/oTarif.png",
  "assets/images/öTarif.png",
  "assets/images/pTarif.png",
  "assets/images/rTarif.png",
  "assets/images/sTarif.png",
  "assets/images/şTarif.png",
  "assets/images/tTarif.png",
  "assets/images/uTarif.png",
  "assets/images/üTarif.png",
  "assets/images/vTarif.png",
  "assets/images/yTarif.png",
  "assets/images/zTarif.png",
];

List<String> matchWordImageList = [
  "assets/images/dog.jpg",
  "assets/images/camera.jpg",
  "assets/images/cake.jpg",
  "assets/images/egg.jpg",
  "assets/images/bread.jpg",
  "assets/images/cloud.jpg",
  "assets/images/door.jpg",
  "assets/images/shoe.jpg",
  "assets/images/apple.jpg",
  "assets/images/pomegranate.jpg",
  "assets/images/vase.jpg",
  "assets/images/pen.jpg",
  "assets/images/hat.jpg",
  "assets/images/potato.jpg",
  "assets/images/lemon.jpg",
  "assets/images/duck.jpg",
  "assets/images/kid.jpg",
  "assets/images/fish.jpg",
  "assets/images/class.jpg",
  "assets/images/phone.jpg",
  "assets/images/olive.jpg",
  "assets/images/plane.jpg",
  "assets/images/tree.jpg",
  "assets/images/flower.jpg",
  "assets/images/book.jpg",
  "assets/images/house.jpg",
  "assets/images/car.jpg",
  "assets/images/eagle.jpg",
  "assets/images/tiger.jpg",
  "assets/images/lion.jpg",
  "assets/images/cow.jpg",
  "assets/images/cat.jpg",
];

List<String> matchWordOptionList = [
  "Köpek",
  "Kedi",
  "İnek",
  "Tilki",
  "Kamera",
  "Televizyon",
  "Telefon",
  "Bilgisayar",
  "Pasta",
  "Kurabiye",
  "Çikolata",
  "Meyve",
  "Yumurta",
  "Ekmek",
  "Peynir",
  "Tavuk",
  "Ekmek",
  "Kek",
  "Kurabiye",
  "Un",
  "Bulut",
  "Su",
  "Damla",
  "Gökkuşağı",
  "Kapı",
  "Elma",
  "Halı",
  "Limon",
  "Ayakkabı",
  "Terlik",
  "Çorap",
  "Patik",
  "Elma",
  "Portakal",
  "Çilek",
  "Nar",
  "Nar",
  "Kivi",
  "Kiraz",
  "Erik",
  "Vazo",
  "Saksı",
  "Kutu",
  "Ağaç",
  "Kalem",
  "Kitap",
  "Boya",
  "Defter",
  "Şapka",
  "Tişört",
  "Pantolon",
  "Atkı",
  "Patates",
  "Makarna",
  "Bulgur",
  "Pirinç",
  "Limon",
  "Portakal",
  "Greyfurt",
  "Top",
  "Ördek",
  "Kuş",
  "İnek",
  "Kartal",
  "Çocuk",
  "Anne",
  "Baba",
  "Dede",
  "Balık",
  "Papağan",
  "Fil",
  "Zebra",
  "Sınıf",
  "Cami",
  "Ev",
  "Market",
  "Telefon",
  "Mektup",
  "Televizyon",
  "Tablet",
  "Zeytin",
  "Peynir",
  "Salam",
  "Sucuk",
  "Uçak",
  "Araba",
  "Bisiklet",
  "Motosiklet",
  "Ağaç",
  "Çiçek",
  "Çimen",
  "Meyve",
  "Çiçek",
  "Ağaç",
  "Çimen",
  "Meyve",
  "Kitap",
  "Ağaç",
  "Bilye",
  "Oyuncak",
  "Ev",
  "Kulübe",
  "AVM",
  "Okul",
  "Araba",
  "Uçak",
  "Motosiklet",
  "Traktör",
  "Kartal",
  "Papağan",
  "Muhabbet Kuşu",
  "Ördek",
  "Kaplan",
  "Tilki",
  "Fil",
  "Aslan",
  "Aslan",
  "İnek",
  "Boğa",
  "Öküz",
  "İnek",
  "Köpek",
  "Koyun",
  "Kuzu",
  "Kedi",
  "Köpek",
  "Fare",
  "Horoz",
];

List<String> matchWordAnswerList = [
  "Köpek",
  "Kamera",
  "Pasta",
  "Yumurta",
  "Ekmek",
  "Bulut",
  "Kapı",
  "Ayakkabı",
  "Elma",
  "Nar",
  "Vazo",
  "Kalem",
  "Şapka",
  "Patates",
  "Limon",
  "Ördek",
  "Çocuk",
  "Balık",
  "Sınıf",
  "Telefon",
  "Zeytin",
  "Uçak",
  "Ağaç",
  "Çiçek",
  "Kitap",
  "Ev",
  "Araba",
  "Kartal",
  "Kaplan",
  "Aslan",
  "İnek",
  "Kedi",
];

List<String> puncNames = [
  "Nokta",
  "Virgül",
  "Noktalı Virgül",
  "İki Nokta",
  "Üç Nokta",
  "Soru İşareti",
  "Ünlem İşareti",
  "Tırnak İşaretleri",
  "Ayraç",
  "Kesme İşareti",
];

List<String> puncDesc = [
  'Cümlelerin sonunu belirtmek için kullanılır.',
  'Cümle içinde ayrılmış öğeleri belirtmek için kullanılır.',
  'İlişkili cümleler arasında bağlantı kurmak için kullanılır.',
  'Başlıkları veya listeleri sunmak için kullanılır.',
  'Düşünceyi yarıda keserek, devamı olduğunu ifade etmek için kullanılır.',
  'Soru cümlelerinin sonuna konur.',
  'Şaşkınlık, sevinç veya öfke gibi duyguları ifade etmek için kullanılır.',
  'Metin içinde alıntılanmış bir ifadeyi belirtmek için kullanılır.',
  'Kelimelerin ortalarında veya cümle sonlarında kullanılarak açıklama yapmaya yardımcı olmak için kullanılır.',
  'Özel adlara getirilen iyelik, durum ve bildirme ekleri kesme işaretiyle ayrılır.',
];

List<String> puncExample = [
  'Bugün hava çok güzel.',
  'Ali, Ayşe ve Mehmet parkta buluşacaklar.',
  'Hava yağmurlu; yine de dışarı çıkacağım.',
  'Konunun başlıkları: Giriş, Gelişme, Sonuç.',
  'Ah bir konuşabilsem...',
  'Bugün yağmur yağacak mı?',
  'Ne harika bir konserdi!',
  '“Merhaba,” dedi Ali.',
  'Eskiden (Cumhuriyet ilan edilmeden önce) insanlara verilen hak ve özgürlükler çok azdı.',
  'Ahmet\'in dedesi Antalya\'ya gidecekmiş.',
];

List<String> puncImages = [
  "assets/images/nokta.png",
  "assets/images/virgul.png",
  "assets/images/noktalivirgul.png",
  "assets/images/ikinokta.png",
  "assets/images/ucnokta.png",
  "assets/images/soruisareti.png",
  "assets/images/unlem.png",
  "assets/images/tirnakisareti.png",
  "assets/images/ayrac.png",
  "assets/images/kesmeisareti.png",
];

List<Color?> puncNameColor = [
  Colors.pink.shade600,
  Colors.green,
  Colors.orange,
  Colors.lightBlue,
  Colors.purple,
  Colors.lightBlue.shade300,
  Colors.lightGreen,
  Colors.pink.shade300,
  Colors.pink.shade200,
  Colors.pink
];

List<String> punchExerciseSentences = [
  'Bugün hava çok güzel( )',
  'Ali() Ayşe ve Mehmet parkta buluşacaklar',
  'Yarın saat kaçta buluşalım( )',
  'Saat 8.00\'de( )gelir misin?',
  'Bir fincan kahve, lütfen( )',
  'İstanbul\'da yaşayan birçok insan, trafik sorunu nedeniyle şikayetçi( )',
  'Bu sene yaz tatilini nerede geçireceksiniz( )',
  'Ödevlerinizi yaptınız mı( )',
  'Ankara\'da bugün hava( )',
  'Tüm öğrenciler, sınav sonuçlarını merakla bekliyor( )',
  'Öğrenciler, ödevlerini yetiştirmek için çalışıyor( )',
  'Bugün hava durumu nasıl olacak( )',
  'Arkadaşlarımla sinemaya gitmeyi düşünüyoruz( )',
  'Bu kitabı kaç günde okudunuz( )',
  'Annesiyle beraber parkta dolaşıyordu( )',
  'Birçok insan, yarınki etkinliğe katılacak( )',
  'Bu akşam için bir planınız var mı( )',
  'Bugün burada ne yapıyorsunuz( )',
  'Ali, dün neredeymiş( )',
  'Yarın sabah erken kalkmalıyım( )',
];

List<String> punchExerciseOptions = [
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ' ',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
  '.',
  ',',
  ';',
  '?',
];

List<String> punchExerciseAnswer = [
  '.',
  ',',
  '?',
  ' ',
  '.',
  '.',
  '?',
  '?',
  '.',
  '.',
  '.',
  '?',
  '.',
  '?',
  '.',
  '.',
  '?',
  '?',
  '?',
  '.',
];

List<String> spellingRulesTitle = [
  //24 tane var
  'Cümle Başlangıcı',
  'Alıntılar',
  'Açıklamalar',
  'İki Nokta',
  'Özel Adlar',
  'Unvanlar ve Saygı Sözleri',
  'Akrabalık Adları',
  'Dil ve Lehçe Adları',
  'Devlet Adları',
  'Din ve Mezhep Adları',
  'Gezegen ve Yıldız Adları',
  'Doğu ve Batı',
  'Yer Adları',
  'Yapı Adları',
  'Tarih ve Dönem Adları',
  'Kısaltmalar',
  'Kurum ve Kuruluş Adları',
  'Sanat Eserleri',
  'Özel Adlardan Türetilen Kelimeler',
  'Para Birimleri',
  'Zamir "O"',
  'Ay ve Gün Adları',
  'Tabela, Levha ve Yazılar',
  'Cümle İçinde Özel Adlar',
];

List<String> spellingRulesDesc = [
  "Cümle büyük harfle başlar.",
  "Tırnak veya yay ayraç içine alınan cümleler büyük harfle başlar ve uygun noktalama işareti eklenir.",
  "İki çizgi arasındaki açıklama cümleleri büyük harfle başlamaz.",
  "İki noktadan sonra gelen cümleler büyük harfle başlar.",
  "Özel adlar büyük harfle başlar.",
  "Kişi adlarından önce ve sonra gelen unvanlar, saygı sözleri, rütbe adları ve lakaplar büyük harfle başlar.",
  "Akrabalık adı olup lakap veya unvan olarak kullanılan kelimeler büyük harfle başlar.",
  "Dil ve lehçe adları büyük harfle başlar.",
  "Devlet adları büyük harfle başlar.",
  "Din ve mezhep adları ile bunların mensuplarını bildiren sözler büyük harfle başlar.",
  "Gezegen ve yıldız adları büyük harfle başlar.",
  "Doğu ve batı sözlerinin ilk harfleri büyük yazılır, ancak yön bildiren durumlarda küçük yazılır.",
  "Yer adları (kıta, bölge, il, ilçe, köy, semt vb.) büyük harfle başlar.",
  "Saray, köşk, han, kale, köprü, kule, anıt vb. yapı adlarının bütün kelimeleri büyük harfle başlar.",
  "Tarihî olay, çağ ve dönem adları büyük harfle başlar.",
  "Kısaltmalı söyleyişte yer adının ilk harfi büyük yazılır.",
  "Kurum, kuruluş, kurul adları büyük harfle başlar.",
  "Kitap, dergi, gazete ve sanat eserlerinin her kelimesi büyük harfle başlar.",
  "Özel adlardan türetilen bütün kelimeler büyük harfle başlar.",
  "Para birimleri büyük harfle başlamaz: avro, dinar, dolar, lira, kuruş, liret vb.",
  "Özel adlar yerine kullanılan “o”; zamiri cümle içinde büyük harfle yazılmaz.",
  "Belirli bir tarih bildiren ay ve gün adları büyük harfle başlar.",
  "Tabela, levha ve levha niteliğindeki yazılarda geçen kelimeler büyük harfle başlar.",
  "Cümle içinde özel adın yerine kullanılan makam veya unvan sözleri büyük harfle başlar.",
];

List<String> spellingRulesExample = [
  "Damlaya damlaya göl olur.",
  "Atatürk: 'Köylü milletin efendisidir!' diyor.",
  "Meftune öğretmeni –beni ilkokulda okutmuştu– yıllar sonra gördüm.",
  "Çoban için köpeği çok şey ifade eder: Başı dertteyken korur, yalnız kaldığında arkadaş olur.",
  "Mustafa Kemal Atatürk, Fatih Sultan Mehmet vb.",
  "Sayın Prof. Dr. Halil Erdem, Ziya Efendi, Zübeyde Hanım, Ali Öğretmen vb.",
  "Dede Korkut, Baba Osman, Anne Sultan, Nene Hatun; Somuncu Baba, Paçalı Dayı, vb.",
  "Türkçe, Fransızca, Almanca, İngilizce, Arapça vb.",
  "Türkiye Cumhuriyeti, Kuzey Kıbrıs Türk Cumhuriyeti vb.",
  "İslamiyet, Müslümanlık, Müslüman; Hristiyanlık, Hristiyan; Katoliklik, Katolik vb.",
  "Dünya, Merkür, Venüs, Jüpiter; Halley vb.",
  "Batı kültürü, Doğu edebiyatı vb.",
  "Avrupa, Ege Bölgesi, Ankara, Kasımpaşa vb.",
  "Topkapı Sarayı, Çankaya Köşkü, Çengel Han, Alanya Kalesi vb.",
  "Birinci Dünya Savaşı’nı, Yontma Taş Devri’ni, Milli Mücadele Dönemi’nde vb.",
  "Hisar’dan (Hisar Kalesi'nden), Boğaz’dan (Boğaziçi'nden), Köşk’e (Köşk Kasabası'na)",
  "Türkiye Büyük Millet Meclisi, Türk Dil Kurumu, Jandarma Genel Komutanlığı vb.",
  "Ateşten Gömlek, Posta, Resmî Gazete, Milliyet vb.",
  "Ankaralı, Osmanlı, Türkleşmek, Türkçülük vb.",
  "Babam haftalık harçlığımı 30 lira yaptı.",
  "“Her 10 Kasım’da O’nu anarız.” değil “Her 10 Kasım’da onu anarız.”",
  "29 Nisan 1920 Cuma günü, 30 Ağustos 1922",
  "Giriş, Sığınak, Çıkış, Dolmuş Durağı, Müdür",
  "Yurt dışından gelen misafirler Kaymakam tarafından ağırlandı.",
];

List<Color?> spellingRulesColor = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.amber,
  Colors.teal,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.cyan,
  Colors.brown,
  Colors.deepOrange,
  Colors.indigo,
  Colors.lime,
  Colors.yellow.shade900,
  Colors.red.shade900,
  Colors.blue.shade200,
  Colors.amber.shade900,
  Colors.green.shade300,
  Colors.deepPurple,
  Colors.indigo.shade200,
  Colors.pink.shade900,
  Colors.brown.shade900,
  Colors.pink.shade700,
  Colors.blue.shade900,
];

List<String> spellingRulesIconPath = [
  "assets/images/icon.png",
  "assets/images/icon1.png",
  "assets/images/icon2.png",
  "assets/images/icon3.png",
  "assets/images/icon4.png",
  "assets/images/icon5.png",
  "assets/images/icon6.png",
  "assets/images/icon7.png",
  "assets/images/icon8.png",
  "assets/images/icon9.png",
  "assets/images/icon10.png",
  "assets/images/icon11.png",
  "assets/images/icon12.png",
  "assets/images/icon13.png",
  "assets/images/icon14.png",
  "assets/images/icon15.png",
  "assets/images/icon16.png",
  "assets/images/icon17.png",
  "assets/images/icon18.png",
  "assets/images/icon19.png",
  "assets/images/icon20.png",
  "assets/images/icon21.png",
  "assets/images/icon22.png",
  "assets/images/icon23.png",
];

List<String> wordMeaningWordList = [
  "Kalem",
  "Masa",
  "Renk",
  "Ayakkabı",
  "Ağaç",
  "Top",
  "Saygı",
  "Mevsim",
  "Saat",
  "Ev",
  "Balık",
  "Gözlük",
  "Renkli Kalemler",
  "Bulut",
  "Kitap",
  "Kedi",
  "Okul",
  "Elma",
  "Ay",
];

List<String> wordMeaningMeaningList = [
  "Yazı veya çizgi yapmak için kullanılan araç",
  "Üzerine kitap, defter, yiyecek vb. şeyler konulan düz yüzey",
  "Göze çeşitli duyusal uyarılar veren görsel özellik",
  "Ayakları giymek ve korumak için kullanılan giysi",
  "Kökleri yer altında olan, dalları ve yaprakları gökyüzüne uzanan bitki",
  "Oyun oynamak için kullanılan yuvarlak veya düz yüzeyli nesne",
  "Miktar veya sıra belirten matematiksel ifade",
  "Yılın dört bölümünden biri, örneğin ilkbahar, yaz, sonbahar, kış",
  "Zamanı ölçen ve gösteren araç",
  "İnsanların yaşadığı yapı",
  "Suda yaşayan omurgalı hayvan",
  "Gözleri korumak veya düzeltmek için kullanılan araç",
  "Farklı renklerde yazma veya çizme amacıyla kullanılan araçlar",
  "Gökyüzünde bulunan yoğun su damlacıkları kümesi",
  "Hikaye veya bilgi içeren sayfaları bir araya getirilmiş nesne",
  "Miyavlayan bir hayvan",
  "Öğrencilerin eğitim aldığı yer",
  "Kırmızı veya yeşil renkte, yenilebilen bir meyve",
  "Gece gökyüzünde parlak görünen gök cismi",
];

List<String> readingComprehensionText = [
  "Tom ve Annem markete gittiler. Annem alışveriş sepetine bir kilo elma ve iki paket süt koydu. Tom ise oyuncak bölümüne gitti ve yeni bir futbol topu aldı. Tom ve Annem daha sonra kasaya gittiler.",
  "Ayşe, okula her gün otobüsle gider. Sabahları erken kalkar, kahvaltısını yapar ve sonra otobüs durağına gider. Otobüs geldiğinde Ayşe, okula gitmek için biner. Akşamları de aynı şekilde eve döner.",
  "Kedi ve köpek evcil hayvanlardır. Kediler genellikle bağımsız ve tembel olabilirler.Köpekler ise sadık ve enerjiktirler.",
  "Muz, sarı renkte bir meyvedir. Kabuğu soyulduğunda içinde yumuşak ve tatlı bir meyve bulunur. Muz, genellikle enerji verici bir atıştırmalık olarak tüketilir.",
  "Güneş ışığıyla bitkiler fotosentez yaparlar. Fotosentez, bitkilerin güneş enerjisini kullanarak gıda üretmelerini sağlayan bir süreçtir.",
  "Dünya üzerindeki en yüksek dağ Everest'tir. Everest, Himalaya Dağları'nda bulunur ve birçok dağcı tarafından tırmanılmıştır.",
  "Bir metin içindeki ana fikir, metnin temel düşüncesini ifade eden önemli bir cümledir.",
  "Dünya üzerindeki en büyük okyanus Pasifik Okyanusu'dur. Pasifik Okyanusu, birçok ülkenin kıyısına uzanır ve birçok adaya ev sahipliği yapar.",
  "Ağaçlar, karbon dioksiti emerler ve oksijen üretirler. Bu süreç, fotosentez olarak adlandırılır ve bitkilerin hayatta kalması için önemlidir."
      "Dünya, güneş etrafında dönen bir gezegendir. Bu dönme hareketi, bir günü oluşturur ve Dünya'nın bir yıl boyunca güneş etrafında tam bir dönüş yapmasını sağlar.",
  "Kuzey ve Güney Kutupları, Dünya'nın uç noktalarındaki soğuk bölgeleridir. Bu bölgelerde sıcaklık genellikle çok düşüktür ve birçok buzlu alan bulunur."
      "Güneş Sistemi içindeki en büyük gezegen Jüpiter'dir. Jüpiter, birçok uyduya sahiptir ve büyük bir gaz devi olarak bilinir.",
  "Okuma, yazma, dinleme ve konuşma, dil becerilerimizdir. Bu beceriler, iletişim kurmamıza ve bilgi edinmemize yardımcı olur.",
  "Gökyüzünde geceleyin parlayan yıldızlara yıldızlar denir. Yıldızlar, uzaydaki uzak güneş sistemlerinden gelen ışığı yansıtırlar.",
];

List<String> readingComprehensionQuestion = [
  'Tom ve Annem markete ne için gittiler?',
  'Ayşe, okula gitmek için ne kullanır?',
  'Hangisi genellikle sadık ve enerjiktir?',
  'Muzun kabuğunu soyduğumuzda ne bulunur?',
  'Bitkiler hangi süreçte güneş enerjisini kullanarak gıda üretir?',
  'Dünya üzerindeki en yüksek dağ neresindedir?',
  'Ana fikir nedir?',
  'Dünya üzerindeki en büyük okyanus hangisidir?',
  'Ağaçlar fotosentez yaparak ne üretirler?',
  'Dünya\'nın güneş etrafında dönme hareketi nedir?',
  'Kutup bölgeleri ile ilgili hangisi doğrudur?',
  'Güneş Sistemi içindeki en büyük gezegen hangisidir?',
  'Dil becerileri neden önemlidir?',
  'Gökyüzünde parlayan yıldızlar nedir?',
];

List<String> readingComprehensionOptions = [
  'Oyuncak almak',
  'Spor yapmak',
  'Yemek pişirmek',
  'Alışveriş yapmak',
  'Bisiklet',
  'Yürüyerek',
  'Araba',
  'Otobüs',
  'Kedi',
  'Köpek',
  'Tilki',
  'Fil',
  'Kabuk',
  'Meyve',
  'Tohum',
  'Kök',
  'Solunum',
  'Fotosentez',
  'Büyüme',
  'Çiçeklenme',
  'Alpler',
  'And Dağları',
  'Himalaya Dağları',
  'Rocky Dağları',
  'Bir kitap türü',
  'Metnin başlığı',
  'Temel düşünce',
  'Bir kelimenin anlamı',
  'Atlantik Okyanusu',
  'Hint Okyanusu',
  'Arktik Okyanusu',
  'Pasifik Okyanusu',
  'Karbon dioksit',
  'Oksijen',
  'Su',
  'Güneş enerjisi',
  'Rotasyon',
  'Revizyon',
  'Revolüsyon',
  'Dönüş',
  'Sıcak ve kurudur',
  'Çok yağışlıdır',
  'Sıcaklık genellikle düşüktür',
  'Volkanik faaliyet gösterir',
  'Mars',
  'Venüs',
  'Jüpiter',
  'Satürn',
  'Sadece konuşmak için',
  'İletişim kurmak ve bilgi edinmek için',
  'Yemek yemek için',
  'Uyumak için',
  'Güneş',
  'Ay',
  'Meteor',
  'Uzaydaki uzak güneş sistemlerinden gelen ışığı yansıtan cisimler',
];

List<String> readingComprehensionAnswers = [
  'Alışveriş yapmak',
  'Otobüs',
  'Köpek',
  'Meyve',
  'Fotosentez',
  'Himalaya Dağları',
  'Temel düşünce',
  'Pasifik Okyanusu',
  'Oksijen',
  'Rotasyon',
  'Sıcaklık genellikle düşüktür',
  'Jüpiter',
  'İletişim kurmak ve bilgi edinmek için',
  'Uzaydaki uzak güneş sistemlerinden gelen ışığı yansıtan cisimler',
];

List<String> homePageMenuButtons = [
  "Alfabeyi Öğrenelim",
  "Karışık Kelimeler",
  "Harf Alıştırması",
  "Resim ve Kelime Eşleştirme",
  "Noktalama İşaretleri",
  "Yazım Kuralları",
  "Anlamdan Kelime Bilme",
  "Okuduğunu Anlama",
];

List<VoidCallback> onTapFunctions(BuildContext context) => [
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AlphabetPage())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const RandomWords())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LetterPracticePage())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ImageWordMatchPage())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PunctuationPage())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SpellingRulesPage())),
      () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WordMeaningPage())),
      () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const ReadingComprehensionPage())),
    ];

List<Color?> homePageButtonColors = [
  const Color.fromARGB(255, 246, 154, 146),
  const Color.fromARGB(255, 102, 205, 170),
  const Color.fromARGB(255, 243, 93, 64),
  const Color.fromARGB(255, 255, 195, 160),
  const Color.fromARGB(255, 255, 0, 0),
  const Color.fromARGB(255, 186, 218, 85),
  const Color.fromARGB(255, 42, 202, 234),
  const Color.fromARGB(255, 255, 165, 0),
];
