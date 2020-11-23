import 'drivstoff.dart';

class Motorer {
  Object slagvolum;
  List<Drivstoff> drivstoff;
  Object partikkelfiltermotor;

  Motorer.fromJsonMap(Map<String, dynamic> map)
      : slagvolum = map["slagvolum"],
        drivstoff = List<Drivstoff>.from(
            map["drivstoff"].map((it) => Drivstoff.fromJsonMap(it))),
        partikkelfiltermotor = map["partikkelfiltermotor"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slagvolum'] = slagvolum;
    data['drivstoff'] = drivstoff != null
        ? this.drivstoff.map((v) => v.toJson()).toList()
        : null;
    data['partikkelfiltermotor'] = partikkelfiltermotor;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
