class Drivstoff {
  String? drivstofftype;
  String? drivstoffkode;
  double? effekt;
  double? maksEffektPerTime;

  Drivstoff.fromJsonMap(Map<String, dynamic> map)
      : drivstofftype = map["drivstofftype"],
        drivstoffkode = map["drivstoffkode"],
        effekt = map["effekt"],
        maksEffektPerTime = map["maksEffektPerTime"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drivstofftype'] = drivstofftype;
    data['drivstoffkode'] = drivstoffkode;
    data['effekt'] = effekt;
    data['maksEffektPerTime'] = maksEffektPerTime;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
