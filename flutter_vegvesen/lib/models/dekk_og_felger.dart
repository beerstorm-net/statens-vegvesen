class DekkOgFelger {
  int? akselId;
  String? belastningskode;
  String? hastighetskode;
  String? innpress;
  String? dekkdimensjon;
  String? felgdimensjon;

  DekkOgFelger.fromJsonMap(Map<String, dynamic> map)
      : akselId = map["akselId"],
        belastningskode = map["belastningskode"],
        hastighetskode = map["hastighetskode"],
        innpress = map["innpress"],
        dekkdimensjon = map["dekkdimensjon"],
        felgdimensjon = map["felgdimensjon"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['akselId'] = akselId;
    data['belastningskode'] = belastningskode;
    data['hastighetskode'] = hastighetskode;
    data['innpress'] = innpress;
    data['dekkdimensjon'] = dekkdimensjon;
    data['felgdimensjon'] = felgdimensjon;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
