class Product {
  int id;
  int categoryId;
  String productName;
  String quantityPerUnit;
  double unitPrice;
  int unitsInStock;

  Product(this.id, this.categoryId, this.productName, this.quantityPerUnit,
      this.unitPrice, this.unitsInStock);

  Product.fromJSON(Map json) {
    id = json["id"];
    categoryId = json["categoryId"];
    productName = json["productName"];
    quantityPerUnit = json["quantityPerUnit"];
    unitPrice = double.tryParse(json["unitPrice"].toString());
    unitsInStock = json["unitInStock"];
  }

  Map toJSON() {
    return {
      "id": id,
      "categoryId": categoryId,
      "productName": productName,
      "quantitiyPerUnit": quantityPerUnit,
      "unitPrice": unitPrice,
      "unitsInStock": unitsInStock
    };
  }
}
