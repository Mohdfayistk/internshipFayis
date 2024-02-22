
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
    id = json["id"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    name = json["name"];
    description = json["description"];
    price = json["price"];
    discountedAmount = json["discountedAmount"];
    stockQuantity = json["stockQuantity"];
    sku = json["sku"];
    slug = json["slug"];
    rating = json["rating"];
    weight = json["weight"];
    discountPercent = json["discount_percent"];
    specifications = json["specifications"];
    highlights = json["highlights"];
    tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    returnDays = json["returnDays"];
    refund = json["refund"];
    replace = json["replace"];
    unit = json["unit"];
    brandsId = json["brandsId"];
    categoryId = json["categoryId"];
    status = json["status"];
    creatorId = json["creatorId"];
    madeBy = json["madeBy"];
    deleted = json["deleted"];
    referalBonus = json["referalBonus"];
    belongsTo = json["belongsTo"] == null ? null : BelongsTo.fromJson(json["belongsTo"]);
    brands = json["Brands"] == null ? null : Brands.fromJson(json["Brands"]);
    category = json["category"] == null ? null : Category.fromJson(json["category"]);
    discPerQtt = json["discPerQtt"] == null ? null : (json["discPerQtt"] as List).map((e) => DiscPerQtt.fromJson(e)).toList();
    images = json["images"] == null ? null : (json["images"] as List).map((e) => Images.fromJson(e)).toList();
    review = json["Review"] ?? [];
    variants = json["variants"] == null ? null : (json["variants"] as List).map((e) => Variants.fromJson(e)).toList();
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
}

class Variants {
  String? id;
  String? name;
  String? value;
  String? sku;
  String? productId;
  int? stockQuantity;
  dynamic wishListItem;
  List<dynamic>? images;
  bool? wishlist;

  Variants({this.id, this.name, this.value, this.sku, this.productId, this.stockQuantity, this.wishListItem, this.images, this.wishlist});

  Variants.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    value = json["value"];
    sku = json["sku"];
    productId = json["productId"];
    stockQuantity = json["stockQuantity"];
    wishListItem = json["WishListItem"];
    images = json["images"] ?? [];
    wishlist = json["Wishlist"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["value"] = value;
    _data["sku"] = sku;
    _data["productId"] = productId;
    _data["stockQuantity"] = stockQuantity;
    _data["WishListItem"] = wishListItem;
    if(images != null) {
      _data["images"] = images;
    }
    _data["Wishlist"] = wishlist;
    return _data;
  }
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }
}

class DiscPerQtt {
  String? id;
  String? discFlatAmnt;
  String? discPercent;
  int? qttFrom;
  int? qttTo;

  DiscPerQtt({this.id, this.discFlatAmnt, this.discPercent, this.qttFrom, this.qttTo});

  DiscPerQtt.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    discFlatAmnt = json["discFlatAmnt"];
    discPercent = json["discPercent"];
    qttFrom = json["qttFrom"];
    qttTo = json["qttTo"];
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
}

class Category {
  String? id;
  String? name;
  List<Image1>? image;

  Category({this.id, this.name, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    image = json["image"] == null ? null : (json["image"] as List).map((e) => Image1.fromJson(e)).toList();
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
}

class Image1 {
  String? id;
  String? url;

  Image1({this.id, this.url});

  Image1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }
}

class Brands {
  String? id;
  String? name;
  List<Image2>? image;

  Brands({this.id, this.name, this.image});

  Brands.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    image = json["image"] == null ? null : (json["image"] as List).map((e) => Image2.fromJson(e)).toList();
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
}

class Image2 {
  String? id;
  String? url;

  Image2({this.id, this.url});

  Image2.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["url"] = url;
    return _data;
  }
}

class BelongsTo {
  String? id;
  String? username;
  String? role;

  BelongsTo({this.id, this.username, this.role});

  BelongsTo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json["username"];
    role = json["role"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    _data["role"] = role;
    return _data;
  }
}