class SearchModel {
  SearchModel({
      this.id, 
      this.name, 
      this.url,});

  SearchModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
  }
  String? id;
  String? name;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['url'] = url;
    return map;
  }
  static List<SearchModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => SearchModel.fromJson(value)).toList();
  }
}