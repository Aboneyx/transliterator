
class JsonClass {
  List<Data> data;

  JsonClass({this.data});

  JsonClass.fromJson(Map<String, dynamic> json) {
    this.data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.data != null)
      data["data"] = this.data.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Data {
  int id;
  String name;
  String address;
  String latitude;
  String longitude;

  Data({this.id, this.name, this.address, this.latitude, this.longitude});

  Data.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.address = json["address"];
    this.latitude = json["latitude"];
    this.longitude = json["longitude"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["address"] = this.address;
    data["latitude"] = this.latitude;
    data["longitude"] = this.longitude;
    return data;
  }
}