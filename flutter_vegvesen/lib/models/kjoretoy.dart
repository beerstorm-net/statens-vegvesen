import 'periodisk_kjoretoykontroll.dart';
import 'registrering.dart';
import 'teknisk_kjoretoy.dart';

class Kjoretoy {
  String kjennemerke;
  String understellsnummer;
  String kuid;
  String personligKjennemerke;
  Registrering registrering;
  PeriodiskKjoretoykontroll periodiskKjoretoykontroll;
  TekniskKjoretoy tekniskKjoretoy;
  Object bruktimport;

  Kjoretoy.fromJsonMap(Map<String, dynamic> map)
      : kjennemerke = map["kjennemerke"],
        understellsnummer = map["understellsnummer"],
        kuid = map["kuid"],
        personligKjennemerke = map["personligKjennemerke"],
        registrering = Registrering.fromJsonMap(map["registrering"]),
        periodiskKjoretoykontroll = PeriodiskKjoretoykontroll.fromJsonMap(map["periodiskKjoretoykontroll"]),
        tekniskKjoretoy = TekniskKjoretoy.fromJsonMap(map["tekniskKjoretoy"]),
        bruktimport = map["bruktimport"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kjennemerke'] = kjennemerke;
    data['understellsnummer'] = understellsnummer;
    data['kuid'] = kuid;
    data['personligKjennemerke'] = personligKjennemerke;
    data['registrering'] = registrering == null ? null : registrering.toJson();
    data['periodiskKjoretoykontroll'] = periodiskKjoretoykontroll == null ? null : periodiskKjoretoykontroll.toJson();
    data['tekniskKjoretoy'] = tekniskKjoretoy == null ? null : tekniskKjoretoy.toJson();
    data['bruktimport'] = bruktimport;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
