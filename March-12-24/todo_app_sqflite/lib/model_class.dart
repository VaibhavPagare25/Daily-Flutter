class Model {
  int? id;
  String maptitle;
  String mapdescription;
  String mapdate;

  Model({
    this.id,
    required this.maptitle,
    required this.mapdescription,
    required this.mapdate,
  });

  Map<String, dynamic> toMap() {
    return {
      // 'id': id,
      'maptitle': maptitle,
      'mapdescription': mapdescription,
      'mapdate': mapdate,
    };
  }

  @override
  String toString() {
    return '{id : $id, maptitle : $maptitle, mapdescription : $mapdescription, mapdate : $mapdate}';
  }

  // @override
  // String toString() {
  //   return '{id : $id, maptitle : $maptitle, mapdescription : $mapdescription, mapdate : $mapdate}';
  // }
}

List colors = [
  0xffFAE8E8,
  0xffE8EDFA,
  0xffFAF9E8,
  0xffFAE8FA,
  0xffFAE8E8,
];
