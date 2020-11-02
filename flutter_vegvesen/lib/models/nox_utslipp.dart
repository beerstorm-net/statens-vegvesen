class NoxUtslipp {
  Object prKWh;
  Object prKm;

  NoxUtslipp.fromJsonMap(Map<String, dynamic> map)
      : prKWh = map["prKWh"],
        prKm = map["prKm"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prKWh'] = prKWh;
    data['prKm'] = prKm;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
