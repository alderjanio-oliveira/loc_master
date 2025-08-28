class DefaultItemModel {
  int id;
  String name;
  String description;
  int vehicleId;

  DefaultItemModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.vehicleId});

  DefaultItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        vehicleId = json['vehicleId'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['vehicleId'] = vehicleId;
    return data;
  }
}
