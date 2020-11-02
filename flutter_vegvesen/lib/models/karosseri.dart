class Karosseri {
  String farge;
  String fargekode;

  Karosseri.fromJsonMap(Map<String, dynamic> map)
      : farge = map["farge"],
        fargekode = map["fargekode"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['farge'] = farge;
    data['fargekode'] = fargekode;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
