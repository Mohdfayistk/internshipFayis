
class BannerModel {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? bannerTitle;
  String? type;
  List<Banner>? banner;
  String? categoryId;
  String? subCategoryId;
  Category? category;
  SubCategory? subCategory;

  BannerModel({this.id, this.createdAt, this.updatedAt, this.bannerTitle, this.type, this.banner, this.categoryId, this.subCategoryId, this.category, this.subCategory});

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    bannerTitle = json["bannerTitle"];
    type = json["type"];
    banner = json["banner"] == null ? null : (json["banner"] as List).map((e) => Banner.fromJson(e)).toList();
    categoryId = json["categoryId"];
    subCategoryId = json["subCategoryId"];
    category = json["Category"] == null ? null : Category.fromJson(json["Category"]);
    subCategory = json["subCategory"] == null ? null : SubCategory.fromJson(json["subCategory"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["bannerTitle"] = bannerTitle;
    _data["type"] = type;
    if(banner != null) {
      _data["banner"] = banner?.map((e) => e.toJson()).toList();
    }
    _data["categoryId"] = categoryId;
    _data["subCategoryId"] = subCategoryId;
    if(category != null) {
      _data["Category"] = category?.toJson();
    }
    if(subCategory != null) {
      _data["subCategory"] = subCategory?.toJson();
    }
    return _data;
  }
  static List<BannerModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => BannerModel.fromJson(value)).toList();
  }
}

class SubCategory {
  String? id;
  String? name;
  List<dynamic>? products;

  SubCategory({this.id, this.name, this.products});

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    products = json["products"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    if(products != null) {
      _data["products"] = products;
    }
    return _data;
  }
}

class Category {
  String? id;
  String? name;

  Category({this.id, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Banner {
  String? url;

  Banner({this.url});

  Banner.fromJson(Map<String, dynamic> json) {
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    return _data;
  }
}