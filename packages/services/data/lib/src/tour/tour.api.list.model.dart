import '../../data.functions.dart';

/// 리스트 결과를 그대로 modeling 한 것이다.
class TourApiListModel {
  TourApiListModel({required this.response});
  final TourApiListResponse response;
  factory TourApiListModel.fromJson(Map<String, dynamic> json) => TourApiListModel(
        response: TourApiListResponse.fromJson(json['response']),
      );
}

class TourApiListResponse {
  TourApiListResponse({
    required this.header,
    required this.body,
  });

  final TourApiListHeader header;
  final TourApiListBody body;

  factory TourApiListResponse.fromJson(Map<String, dynamic> json) => TourApiListResponse(
        header: TourApiListHeader.fromJson(json['header']),
        body: TourApiListBody.fromJson(json['body']),
      );
}

class TourApiListHeader {
  TourApiListHeader({
    required this.resultCode,
    required this.resultMsg,
  });

  final String resultCode;
  final String resultMsg;

  factory TourApiListHeader.fromJson(Map<String, dynamic> json) => TourApiListHeader(
        resultCode: json["resultCode"],
        resultMsg: json["resultMsg"],
      );
}

class TourApiListBody {
  TourApiListBody({
    this.items,
    this.numOfRows,
    this.pageNo,
    this.totalCount,
  });

  final Items? items;
  final int? numOfRows;
  final int? pageNo;
  final int? totalCount;

  factory TourApiListBody.fromJson(Map<String, dynamic> json) => TourApiListBody(
        items: json["items"] == null ? null : Items.fromJson(json["items"]),
        numOfRows: json["numOfRows"] == null ? null : json["numOfRows"],
        pageNo: json["pageNo"] == null ? null : json["pageNo"],
        totalCount: json["totalCount"] == null ? null : json["totalCount"],
      );
}

class Items {
  Items({
    required this.item,
  });

  final List<Item> item;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
      );
}

class Item {
  Item({
    this.addr1,
    this.addr2,
    this.areacode,
    this.cat1,
    this.cat2,
    this.cat3,
    this.contentid,
    this.contenttypeid,
    this.createdtime,
    this.firstimage,
    this.firstimage2,
    this.mapx,
    this.mapy,
    this.masterid,
    this.mlevel,
    this.modifiedtime,
    this.readcount,
    this.sigungucode,
    this.tel,
    this.title,
    this.zipcode,
  });

  final String? addr1;
  final String? addr2;
  final int? areacode;
  final String? cat1;
  final String? cat2;
  final String? cat3;
  final int? contentid;
  final int? contenttypeid;
  final int? createdtime;
  final String? firstimage;
  final String? firstimage2;
  final double? mapx;
  final double? mapy;
  final int? masterid;
  final int? mlevel;
  final int? modifiedtime;
  final int? readcount;
  final int? sigungucode;
  final String? tel;
  final String? title;
  final String? zipcode;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        addr1: json["addr1"] == null ? null : json["addr1"],
        addr2: json["addr2"] == null ? null : json["addr2"],
        areacode: json["areacode"] == null ? null : json["areacode"],
        cat1: json["cat1"] == null ? null : json["cat1"],
        cat2: json["cat2"] == null ? null : json["cat2"],
        cat3: json["cat3"] == null ? null : json["cat3"],
        contentid: json["contentid"] == null ? null : json["contentid"],
        contenttypeid: json["contenttypeid"] == null ? null : json["contenttypeid"],
        createdtime: json["createdtime"] == null ? null : json["createdtime"],
        firstimage: json["firstimage"] == null ? null : json["firstimage"],
        firstimage2: json["firstimage2"] == null ? null : json["firstimage2"],
        mapx: json["mapx"] == null ? 0 : toDouble(json['mapx']),
        mapy: json["mapy"] == null ? 0 : toDouble(json['mapy']),
        masterid: json["masterid"] == null ? null : json["masterid"],
        mlevel: json["mlevel"] == null ? null : json["mlevel"],
        modifiedtime: json["modifiedtime"] == null ? null : json["modifiedtime"],
        readcount: json["readcount"] == null ? null : json["readcount"],
        sigungucode: json["sigungucode"] == null ? null : json["sigungucode"],
        tel: json["tel"] == null ? null : json["tel"],
        title: json["title"] == null ? null : json["title"],
        zipcode: json["zipcode"] == null ? null : json["zipcode"],
      );
}
