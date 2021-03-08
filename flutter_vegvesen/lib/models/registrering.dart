class Registrering {
  String? registreringsstatus;
  String? registreringsstatusDato;
  String? forstegangsregistrering;
  String? forstegangsregistreringNorge;
  String? forstegangsregistreringEier;
  bool? avregistrertHosBilforhandler;
  String? kjennemerkefarge;

  Registrering.fromJsonMap(Map<String, dynamic> map)
      : registreringsstatus = map["registreringsstatus"],
        registreringsstatusDato = map["registreringsstatusDato"],
        forstegangsregistrering = map["forstegangsregistrering"],
        forstegangsregistreringNorge = map["forstegangsregistreringNorge"],
        forstegangsregistreringEier = map["forstegangsregistreringEier"],
        avregistrertHosBilforhandler = map["avregistrertHosBilforhandler"],
        kjennemerkefarge = map["kjennemerkefarge"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['registreringsstatus'] = registreringsstatus;
    data['registreringsstatusDato'] = registreringsstatusDato;
    data['forstegangsregistrering'] = forstegangsregistrering;
    data['forstegangsregistreringNorge'] = forstegangsregistreringNorge;
    data['forstegangsregistreringEier'] = forstegangsregistreringEier;
    data['avregistrertHosBilforhandler'] = avregistrertHosBilforhandler;
    data['kjennemerkefarge'] = kjennemerkefarge;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
