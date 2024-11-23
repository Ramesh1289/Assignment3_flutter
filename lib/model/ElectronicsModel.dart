class Electronicsmodel {
  String? id;
  String? name;
  String? description;
  double? price;
  String? imageurl;

  Electronicsmodel(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.imageurl
      });

  Electronicsmodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageurl = json['imageurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['imageurl'] = this.imageurl;
    return data;
  }
}