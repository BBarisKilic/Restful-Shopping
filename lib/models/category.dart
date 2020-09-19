class Category {
  int id;
  String categoryName;
  String seoUrl;

  Category(this.id, this.categoryName, this.seoUrl);

  Category.fromJSON(Map json) {
    id = json["id"];
    categoryName = json["categoryName"];
    seoUrl = json["seoUrl"];
  }

  Map toJSON() {
    return {"id": id, "categoryName": categoryName, "seoUrl": seoUrl};
  }
}
