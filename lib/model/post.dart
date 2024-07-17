import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  String categoryId;
  String categoryUrlPath;
  String modelId;
  String modelName;
  String modelDisplayName;
  String modelUrlPath;
  String sku;
  String? specText;
  int obsOriginalPrice;
  int obsDiscountPrice;
  int obsMemberPrice;
  int obsSpecialDiscount;
  int obsSellingPrice;
  int memberDiscountRate;
  int obsCouponDiscountPrice;
  int obsCouponDiscountRate;
  int cardCashBackPrice;
  int employeeSellPrice;
  String largeImageAddr;
  String mediumImageAddr;
  String smallImageAddr;
  String releaseBadgeFlag;
  String modelReleaseDate;
  String deliveryTomorrow;
  String superCategoryId;
  String subCategoryId;
  String mltpPlcyBadgeFlag;
  String couponBadgeFlag;
  int maxBenefitPrice;
  String modelStatusCode;
  String objetCollectionYn;
  String obsOrdQty;
  String btsOrdQty;
  String viewCount;
  String totScore;
  int? orderPrdCnt;
  String gaDataContents;
  int? orderQty;
  String? orderId;
  String ordRecentScore;
  String viewRecentScore;
  String memberPriceTopFlag;
  String priceRateTopFlag;
  String mltpPlanEventId;
  String superCategoryName;
  String categoryName;
  String subCategoryName;
  Post({
    required this.categoryId,
    required this.categoryUrlPath,
    required this.modelId,
    required this.modelName,
    required this.modelDisplayName,
    required this.modelUrlPath,
    required this.sku,
    this.specText,
    required this.obsOriginalPrice,
    required this.obsDiscountPrice,
    required this.obsMemberPrice,
    required this.obsSpecialDiscount,
    required this.obsSellingPrice,
    required this.memberDiscountRate,
    required this.obsCouponDiscountPrice,
    required this.obsCouponDiscountRate,
    required this.cardCashBackPrice,
    required this.employeeSellPrice,
    required this.largeImageAddr,
    required this.mediumImageAddr,
    required this.smallImageAddr,
    required this.releaseBadgeFlag,
    required this.modelReleaseDate,
    required this.deliveryTomorrow,
    required this.superCategoryId,
    required this.subCategoryId,
    required this.mltpPlcyBadgeFlag,
    required this.couponBadgeFlag,
    required this.maxBenefitPrice,
    required this.modelStatusCode,
    required this.objetCollectionYn,
    required this.obsOrdQty,
    required this.btsOrdQty,
    required this.viewCount,
    required this.totScore,
    this.orderPrdCnt,
    required this.gaDataContents,
    this.orderQty,
    this.orderId,
    required this.ordRecentScore,
    required this.viewRecentScore,
    required this.memberPriceTopFlag,
    required this.priceRateTopFlag,
    required this.mltpPlanEventId,
    required this.superCategoryName,
    required this.categoryName,
    required this.subCategoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'categoryUrlPath': categoryUrlPath,
      'modelId': modelId,
      'modelName': modelName,
      'modelDisplayName': modelDisplayName,
      'modelUrlPath': modelUrlPath,
      'sku': sku,
      'specText': specText,
      'obsOriginalPrice': obsOriginalPrice,
      'obsDiscountPrice': obsDiscountPrice,
      'obsMemberPrice': obsMemberPrice,
      'obsSpecialDiscount': obsSpecialDiscount,
      'obsSellingPrice': obsSellingPrice,
      'memberDiscountRate': memberDiscountRate,
      'obsCouponDiscountPrice': obsCouponDiscountPrice,
      'obsCouponDiscountRate': obsCouponDiscountRate,
      'cardCashBackPrice': cardCashBackPrice,
      'employeeSellPrice': employeeSellPrice,
      'largeImageAddr': largeImageAddr,
      'mediumImageAddr': mediumImageAddr,
      'smallImageAddr': smallImageAddr,
      'releaseBadgeFlag': releaseBadgeFlag,
      'modelReleaseDate': modelReleaseDate,
      'deliveryTomorrow': deliveryTomorrow,
      'superCategoryId': superCategoryId,
      'subCategoryId': subCategoryId,
      'mltpPlcyBadgeFlag': mltpPlcyBadgeFlag,
      'couponBadgeFlag': couponBadgeFlag,
      'maxBenefitPrice': maxBenefitPrice,
      'modelStatusCode': modelStatusCode,
      'objetCollectionYn': objetCollectionYn,
      'obsOrdQty': obsOrdQty,
      'btsOrdQty': btsOrdQty,
      'viewCount': viewCount,
      'totScore': totScore,
      'orderPrdCnt': orderPrdCnt,
      'gaDataContents': gaDataContents,
      'orderQty': orderQty,
      'orderId': orderId,
      'ordRecentScore': ordRecentScore,
      'viewRecentScore': viewRecentScore,
      'memberPriceTopFlag': memberPriceTopFlag,
      'priceRateTopFlag': priceRateTopFlag,
      'mltpPlanEventId': mltpPlanEventId,
      'superCategoryName': superCategoryName,
      'categoryName': categoryName,
      'subCategoryName': subCategoryName,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      categoryId: map['categoryId'] as String,
      categoryUrlPath: map['categoryUrlPath'] as String,
      modelId: map['modelId'] as String,
      modelName: map['modelName'] as String,
      modelDisplayName: map['modelDisplayName'] as String,
      modelUrlPath: map['modelUrlPath'] as String,
      sku: map['sku'] as String,
      specText: map['specText'] != null ? map['specText'] as String : null,
      obsOriginalPrice: map['obsOriginalPrice'] as int,
      obsDiscountPrice: map['obsDiscountPrice'] as int,
      obsMemberPrice: map['obsMemberPrice'] as int,
      obsSpecialDiscount: map['obsSpecialDiscount'] as int,
      obsSellingPrice: map['obsSellingPrice'] as int,
      memberDiscountRate: map['memberDiscountRate'] as int,
      obsCouponDiscountPrice: map['obsCouponDiscountPrice'] as int,
      obsCouponDiscountRate: map['obsCouponDiscountRate'] as int,
      cardCashBackPrice: map['cardCashBackPrice'] as int,
      employeeSellPrice: map['employeeSellPrice'] as int,
      largeImageAddr: map['largeImageAddr'] as String,
      mediumImageAddr: map['mediumImageAddr'] as String,
      smallImageAddr: map['smallImageAddr'] as String,
      releaseBadgeFlag: map['releaseBadgeFlag'] as String,
      modelReleaseDate: map['modelReleaseDate'] as String,
      deliveryTomorrow: map['deliveryTomorrow'] as String,
      superCategoryId: map['superCategoryId'] as String,
      subCategoryId: map['subCategoryId'] as String,
      mltpPlcyBadgeFlag: map['mltpPlcyBadgeFlag'] as String,
      couponBadgeFlag: map['couponBadgeFlag'] as String,
      maxBenefitPrice: map['maxBenefitPrice'] as int,
      modelStatusCode: map['modelStatusCode'] as String,
      objetCollectionYn: map['objetCollectionYn'] as String,
      obsOrdQty: map['obsOrdQty'] as String,
      btsOrdQty: map['btsOrdQty'] as String,
      viewCount: map['viewCount'] as String,
      totScore: map['totScore'] as String,
      orderPrdCnt:
          map['orderPrdCnt'] != null ? map['orderPrdCnt'] as int : null,
      gaDataContents: map['gaDataContents'] as String,
      orderQty: map['orderQty'] != null ? map['orderQty'] as int : null,
      orderId: map['orderId'] != null ? map['orderId'] as String : null,
      ordRecentScore: map['ordRecentScore'] as String,
      viewRecentScore: map['viewRecentScore'] as String,
      memberPriceTopFlag: map['memberPriceTopFlag'] as String,
      priceRateTopFlag: map['priceRateTopFlag'] as String,
      mltpPlanEventId: map['mltpPlanEventId'] as String,
      superCategoryName: map['superCategoryName'] as String,
      categoryName: map['categoryName'] as String,
      subCategoryName: map['subCategoryName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);
}
