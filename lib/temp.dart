
class JsonClass {
  List<Data> data;

  JsonClass({this.data});

  JsonClass.fromJson(Map<String, dynamic> json) {
    this.data = json["data"]==null ? null : (json["data"] as List).map((e)=>Data.fromJson(e as Map<String, dynamic>)).toList();
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
    id = json["id"] as int;
    name = json["name"] as String;
    address = json["address"] as String;
    latitude = json["latitude"] as String;
    longitude = json["longitude"] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    data["address"] = address;
    data["latitude"] = latitude;
    data["longitude"] = longitude;
    return data;
  }
}