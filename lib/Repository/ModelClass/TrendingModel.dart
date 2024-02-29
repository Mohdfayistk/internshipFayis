
class TrendingModel {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? description;
  String? price;
  String? discountedAmount;
  int? stockQuantity;
  String? sku;
  String? slug;
  int? rating;
  String? weight;
  String? discountPercent;
  String? specifications;
  String? highlights;
  List<String>? tags;
  int? returnDays;
  bool? refund;
  bool? replace;
  String? unit;
  String? brandsId;
  String? categoryId;
  String? status;
  String? creatorId;
  String? madeBy;
  bool? deleted;
  String? referalBonus;
  BelongsTo? belongsTo;
  Brands? brands;
  Category? category;
  List<DiscPerQtt>? discPerQtt;
  List<Images>? images;
  List<dynamic>? review;
  List<Variants>? variants;

  TrendingModel({this.id, this.createdAt, this.updatedAt, this.name, this.description, this.price, this.discountedAmount, this.stockQuantity, this.sku, this.slug, this.rating, this.weight, this.discountPercent, this.specifications, this.highlights, this.tags, this.returnDays, this.refund, this.replace, this.unit, this.brandsId, this.categoryId, this.status, this.creatorId, this.madeBy, this.deleted, this.referalBonus, this.belongsTo, this.brands, this.category, this.discPerQtt, this.images, this.review, this.variants});

  TrendingModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if(json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["price"] is String) {
      price = json["price"];
    }
    if(json["discountedAmount"] is String) {
      discountedAmount = json["discountedAmount"];
    }
    if(json["stockQuantity"] is num) {
      stockQuantity = (json["stockQuantity"] as num).toInt();
    }
    if(json["sku"] is String) {
      sku = json["sku"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["rating"] is num) {
      rating = (json["rating"] as num).toInt();
    }
    if(json["weight"] is String) {
      weight = json["weight"];
    }
    if(json["discount_percent"] is String) {
      discountPercent = json["discount_percent"];
    }
    if(json["specifications"] is String) {
      specifications = json["specifications"];
    }
    if(json["highlights"] is String) {
      highlights = json["highlights"];
    }
    if(json["tags"] is List) {
      tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    }
    if(json["returnDays"] is num) {
      returnDays = (json["returnDays"] as num).toInt();
    }
    if(json["refund"] is bool) {
      refund = json["refund"];
    }
    if(json["replace"] is bool) {
      replace = json["replace"];
    }
    if(json["unit"] is String) {
      unit = json["unit"];
    }
    if(json["brandsId"] is String) {
      brandsId = json["brandsId"];
    }
    if(json["categoryId"] is String) {
      categoryId = json["categoryId"];
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["creatorId"] is String) {
      creatorId = json["creatorId"];
    }
    if(json["madeBy"] is String) {
      madeBy = json["madeBy"];
    }
    if(json["deleted"] is bool) {
      deleted = json["deleted"];
    }
    if(json["referalBonus"] is String) {
      referalBonus = json["referalBonus"];
    }
    if(json["belongsTo"] is Map) {
      belongsTo = json["belongsTo"] == null ? null : BelongsTo.fromJson(json["belongsTo"]);
    }
    if(json["Brands"] is Map) {
      brands = json["Brands"] == null ? null : Brands.fromJson(json["Brands"]);
    }
    if(json["category"] is Map) {
      category = json["category"] == null ? null : Category.fromJson(json["category"]);
    }
    if(json["discPerQtt"] is List) {
      discPerQtt = json["discPerQtt"] == null ? null : (json["discPerQtt"] as List).map((e) => DiscPerQtt.fromJson(e)).toList();
    }
    if(json["images"] is List) {
      images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    }
    if(json["Review"] is List) {
      review = json["Review"] ?? [];
    }
    if(json["variants"] is List) {
      variants = json["variants"] == null ? null : (json["variants"] as List).map((e) => Variants.fromJson(e)).toList();
    }
  }

  static List<TrendingModel> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => TrendingModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["name"] = name;
    _data["description"] = description;
    _data["price"] = price;
    _data["discountedAmount"] = discountedAmount;
    _data["stockQuantity"] = stockQuantity;
    _data["sku"] = sku;
    _data["slug"] = slug;
    _data["rating"] = rating;
    _data["weight"] = weight;
    _data["discount_percent"] = discountPercent;
    _data["specifications"] = specifications;
    _data["highlights"] = highlights;
    if(tags != null) {
      _data["tags"] = tags;
    }
    _data["returnDays"] = returnDays;
    _data["refund"] = refund;
    _data["replace"] = replace;
    _data["unit"] = unit;
    _data["brandsId"] = brandsId;
    _data["categoryId"] = categoryId;
    _data["status"] = status;
    _data["creatorId"] = creatorId;
    _data["madeBy"] = madeBy;
    _data["deleted"] = deleted;
    _data["referalBonus"] = referalBonus;
    if(belongsTo != null) {
      _data["belongsTo"] = belongsTo?.toJson();
    }
    if(brands != null) {
      _data["Brands"] = brands?.toJson();
    }
    if(category != null) {
      _data["category"] = category?.toJson();
    }
    if(discPerQtt != null) {
      _data["discPerQtt"] = discPerQtt?.map((e) => e.toJson()).toList();
    }
    if(images != null) {
      _data["images"] = images?.map((e) => e.toJson()).toList();
    }
    if(review != null) {
      _data["Review"] = review;
    }
    if(variants != null) {
      _data["variants"] = variants?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
  static List<TrendingModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => TrendingModel.fromJson(value)).toList();
  }
  TrendingModel copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? description,
    String? price,
    String? discountedAmount,
    int? stockQuantity,
    String? sku,
    String? slug,
    int? rating,
    String? weight,
    String? discountPercent,
    String? specifications,
    String? highlights,
    List<String>? tags,
    int? returnDays,
    bool? refund,
    bool? replace,
    String? unit,
    String? brandsId,
    String? categoryId,
    String? status,
    String? creatorId,
    String? madeBy,
    bool? deleted,
    String? referalBonus,
    BelongsTo? belongsTo,
    Brands? brands,
    Category? category,
    List<DiscPerQtt>? discPerQtt,
    List<Images>? images,
    List<dynamic>? review,
    List<Variants>? variants,
  }) => TrendingModel(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    name: name ?? this.name,
    description: description ?? this.description,
    price: price ?? this.price,
    discountedAmount: discountedAmount ?? this.discountedAmount,
    stockQuantity: stockQuantity ?? this.stockQuantity,
    sku: sku ?? this.sku,
    slug: slug ?? this.slug,
    rating: rating ?? this.rating,
    weight: weight ?? this.weight,
    discountPercent: discountPercent ?? this.discountPercent,
    specifications: specifications ?? this.specifications,
    highlights: highlights ?? this.highlights,
    tags: tags ?? this.tags,
    returnDays: returnDays ?? this.returnDays,
    refund: refund ?? this.refund,
    replace: replace ?? this.replace,
    unit: unit ?? this.unit,
    brandsId: brandsId ?? this.brandsId,
    categoryId: categoryId ?? this.categoryId,
    status: status ?? this.status,
    creatorId: creatorId ?? this.creatorId,
    madeBy: madeBy ?? this.madeBy,
    deleted: deleted ?? this.deleted,
    referalBonus: referalBonus ?? this.referalBonus,
    belongsTo: belongsTo ?? this.belongsTo,
    brands: brands ?? this.brands,
    category: category ?? this.category,
    discPerQtt: discPerQtt ?? this.discPerQtt,
    images: images ?? this.images,
    review: review ?? this.review,
    variants: variants ?? this.variants,
  );
}

class Variants {
  String? id;
  String? name;
  String? value;
  String? sku;
  String? productId;
  int? stockQuantity;
  WishListItem? wishListItem;
  List<dynamic>? images;
  bool? wishlist;

  Variants({this.id, this.name, this.value, this.sku, this.productId, this.stockQuantity, this.wishListItem, this.images, this.wishlist});

  Variants.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["value"] is String) {
      value = json["value"];
    }
    if(json["sku"] is String) {
      sku = json["sku"];
    }
    if(json["productId"] is String) {
      productId = json["productId"];
    }
    if(json["stockQuantity"] is num) {
      stockQuantity = (json["stockQuantity"] as num).toInt();
    }
    if(json["WishListItem"] is Map) {
      wishListItem = json["WishListItem"] == null ? null : WishListItem.fromJson(json["WishListItem"]);
    }
    if(json["images"] is List) {
      images = json["images"] ?? [];
    }
    if(json["Wishlist"] is bool) {
      wishlist = json["Wishlist"];
    }
  }

  static List<Variants> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Variants.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["value"] = value;
    _data["sku"] = sku;
    _data["productId"] = productId;
    _data["stockQuantity"] = stockQuantity;
    if(wishListItem != null) {
      _data["WishListItem"] = wishListItem?.toJson();
    }
    if(images != null) {
      _data["images"] = images;
    }
    _data["Wishlist"] = wishlist;
    return _data;
  }

  Variants copyWith({
    String? id,
    String? name,
    String? value,
    String? sku,
    String? productId,
    int? stockQuantity,
    WishListItem? wishListItem,
    List<dynamic>? images,
    bool? wishlist,
  }) => Variants(
    id: id ?? this.id,
    name: name ?? this.name,
    value: value ?? this.value,
    sku: sku ?? this.sku,
    productId: productId ?? this.productId,
    stockQuantity: stockQuantity ?? this.stockQuantity,
    wishListItem: wishListItem ?? this.wishListItem,
    images: images ?? this.images,
    wishlist: wishlist ?? this.wishlist,
  );
}

class WishListItem {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? wishListId;
  String? variantId;
  WishList? wishList;

  WishListItem({this.id, this.createdAt, this.updatedAt, this.wishListId, this.variantId, this.wishList});

  WishListItem.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if(json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if(json["wishListId"] is String) {
      wishListId = json["wishListId"];
    }
    if(json["variantId"] is String) {
      variantId = json["variantId"];
    }
    if(json["WishList"] is Map) {
      wishList = json["WishList"] == null ? null : WishList.fromJson(json["WishList"]);
    }
  }

  static List<WishListItem> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => WishListItem.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["wishListId"] = wishListId;
    _data["variantId"] = variantId;
    if(wishList != null) {
      _data["WishList"] = wishList?.toJson();
    }
    return _data;
  }

  WishListItem copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? wishListId,
    String? variantId,
    WishList? wishList,
  }) => WishListItem(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    wishListId: wishListId ?? this.wishListId,
    variantId: variantId ?? this.variantId,
    wishList: wishList ?? this.wishList,
  );
}

class WishList {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? userId;

  WishList({this.id, this.createdAt, this.updatedAt, this.userId});

  WishList.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if(json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if(json["userId"] is String) {
      userId = json["userId"];
    }
  }

  static List<WishList> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => WishList.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["userId"] = userId;
    return _data;
  }

  WishList copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? userId,
  }) => WishList(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    userId: userId ?? this.userId,
  );
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Images> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Images.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }

  Images copyWith({
    String? id,
    String? url,
  }) => Images(
    id: id ?? this.id,
    url: url ?? this.url,
  );
}

class DiscPerQtt {
  String? id;
  String? discFlatAmnt;
  String? discPercent;
  int? qttFrom;
  int? qttTo;

  DiscPerQtt({this.id, this.discFlatAmnt, this.discPercent, this.qttFrom, this.qttTo});

  DiscPerQtt.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["discFlatAmnt"] is String) {
      discFlatAmnt = json["discFlatAmnt"];
    }
    if(json["discPercent"] is String) {
      discPercent = json["discPercent"];
    }
    if(json["qttFrom"] is num) {
      qttFrom = (json["qttFrom"] as num).toInt();
    }
    if(json["qttTo"] is num) {
      qttTo = (json["qttTo"] as num).toInt();
    }
  }

  static List<DiscPerQtt> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => DiscPerQtt.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["discFlatAmnt"] = discFlatAmnt;
    _data["discPercent"] = discPercent;
    _data["qttFrom"] = qttFrom;
    _data["qttTo"] = qttTo;
    return _data;
  }

  DiscPerQtt copyWith({
    String? id,
    String? discFlatAmnt,
    String? discPercent,
    int? qttFrom,
    int? qttTo,
  }) => DiscPerQtt(
    id: id ?? this.id,
    discFlatAmnt: discFlatAmnt ?? this.discFlatAmnt,
    discPercent: discPercent ?? this.discPercent,
    qttFrom: qttFrom ?? this.qttFrom,
    qttTo: qttTo ?? this.qttTo,
  );
}

class Category {
  String? id;
  String? name;
  List<Image1>? image;

  Category({this.id, this.name, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["image"] is List) {
      image = json["image"] == null ? null : (json["image"] as List).map((e) => Image1.fromJson(e)).toList();
    }
  }

  static List<Category> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Category.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    if(image != null) {
      _data["image"] = image?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  Category copyWith({
    String? id,
    String? name,
    List<Image1>? image,
  }) => Category(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
  );
}

class Image1 {
  String? id;
  String? url;

  Image1({this.id, this.url});

  Image1.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image1> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image1.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }

  Image1 copyWith({
    String? id,
    String? url,
  }) => Image1(
    id: id ?? this.id,
    url: url ?? this.url,
  );
}

class Brands {
  String? id;
  String? name;
  List<Image2>? image;

  Brands({this.id, this.name, this.image});

  Brands.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["image"] is List) {
      image = json["image"] == null ? null : (json["image"] as List).map((e) => Image2.fromJson(e)).toList();
    }
  }

  static List<Brands> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Brands.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    if(image != null) {
      _data["image"] = image?.map((e) => e.toJson()).toList();
    }
    return _data;
  }

  Brands copyWith({
    String? id,
    String? name,
    List<Image2>? image,
  }) => Brands(
    id: id ?? this.id,
    name: name ?? this.name,
    image: image ?? this.image,
  );
}

class Image2 {
  String? id;
  String? url;

  Image2({this.id, this.url});

  Image2.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  static List<Image2> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Image2.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }

  Image2 copyWith({
    String? id,
    String? url,
  }) => Image2(
    id: id ?? this.id,
    url: url ?? this.url,
  );
}

class BelongsTo {
  String? id;
  String? username;
  String? role;

  BelongsTo({this.id, this.username, this.role});

  BelongsTo.fromJson(Map<String, dynamic> json) {
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
  }

  static List<BelongsTo> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => BelongsTo.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["role"] = role;
    return _data;
  }

  BelongsTo copyWith({
    String? id,
    String? username,
    String? role,
  }) => BelongsTo(
    id: id ?? this.id,
    username: username ?? this.username,
    role: role ?? this.role,
  );
}