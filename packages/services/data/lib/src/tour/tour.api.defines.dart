import 'package:flutter/material.dart';
import 'package:data/src/tour/models/tour.api.area_code.model.dart';

class ContentTypeId {
  /// 관광지 76, 문화시설 78, 행사/공연/축제 85, 레포츠 75, 숙박 80, 쇼핑 79, 음식점 82, 교통 77
  ///
  static int travel = 76;
  static int culture = 78;
  static int festivalEvents = 85;
  static int leisureSports = 75;
  static int accommodation = 80;
  static int shopping = 79;
  static int restaurant = 82;
  static int transportation = 77;
}

const List<TourApiAreaCodeModel> tourCityList = [
  const TourApiAreaCodeModel(code: 1, name: 'Seoul', rnum: 1),
  const TourApiAreaCodeModel(code: 2, name: 'Incheon', rnum: 2),
  const TourApiAreaCodeModel(code: 3, name: 'Daejeon', rnum: 3),
  const TourApiAreaCodeModel(code: 4, name: 'Daegu', rnum: 4),
  const TourApiAreaCodeModel(code: 5, name: 'Gwangju', rnum: 5),
  const TourApiAreaCodeModel(code: 6, name: 'Busan', rnum: 6),
  const TourApiAreaCodeModel(code: 7, name: 'Ulsan', rnum: 7),
  const TourApiAreaCodeModel(code: 8, name: 'Sejong', rnum: 8),
  const TourApiAreaCodeModel(code: 31, name: 'Gyeonggi-do', rnum: 9),
  const TourApiAreaCodeModel(code: 32, name: 'Gangwon-do', rnum: 10),
  const TourApiAreaCodeModel(code: 33, name: 'Chungcheongbuk-do', rnum: 11),
  const TourApiAreaCodeModel(code: 34, name: 'Chungcheongnam-do', rnum: 12),
  const TourApiAreaCodeModel(code: 35, name: 'Gyeongsangbuk-do', rnum: 13),
  const TourApiAreaCodeModel(code: 36, name: 'Gyeongsangnam-do', rnum: 14),
  const TourApiAreaCodeModel(code: 37, name: 'Jeollabuk-do', rnum: 15),
  const TourApiAreaCodeModel(code: 38, name: 'Jeollanam-do', rnum: 16),
  const TourApiAreaCodeModel(code: 39, name: 'Jeju-do', rnum: 17),
];

class TourApiOperations {
  static final String areaBasedList = 'areaBasedList';
  static final String locationBasedList = 'locationBasedList';
  static final String searchKeyword = 'searchKeyword';
  static final String searchFestival = 'searchFestival';
  static final String searchStay = 'searchStay';
}

class TourApiOperationOption {
  final String code;
  final String label;
  const TourApiOperationOption(this.code, this.label);
}

const List<TourApiOperationOption> tourApiSearchOparations = [
  const TourApiOperationOption('areaBasedList', 'Cty'),
  const TourApiOperationOption('locationBasedList', 'My location'),
  const TourApiOperationOption('searchKeyword', 'Keyword'),
  const TourApiOperationOption('searchFestival', 'Festival'),
  const TourApiOperationOption('searchStay', 'Accommodation'),
];

class TourApiContentType {
  final int id;
  final String label;
  const TourApiContentType(this.id, this.label);
}

final List<TourApiContentType> tourApiSearchTypes = [
  TourApiContentType(ContentTypeId.travel, 'Travel Spot'),
  TourApiContentType(ContentTypeId.culture, 'Culture/History'),
  TourApiContentType(ContentTypeId.festivalEvents, 'Festival/Event'),
  TourApiContentType(ContentTypeId.leisureSports, 'Leisure/Sports'),
  TourApiContentType(ContentTypeId.accommodation, 'Accommodation'),
  TourApiContentType(ContentTypeId.shopping, 'Shopping'),
  TourApiContentType(ContentTypeId.restaurant, 'Restaurant'),
  TourApiContentType(ContentTypeId.transportation, 'Transporation'),
  TourApiContentType(1, 'My location'),
  TourApiContentType(2, 'Keyword'),
];

TextStyle captionMd = TextStyle(fontSize: 16);
TextStyle captionSm = TextStyle(fontSize: 12);
TextStyle captionXs = TextStyle(fontSize: 8);
