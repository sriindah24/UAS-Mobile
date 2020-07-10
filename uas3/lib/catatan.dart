class Catatan {
  int _id;
  String _matkul;
  String _tugas;
  String _deadline;
 
  Catatan(this._matkul, this._tugas, this._deadline);
 
  Catatan.map(dynamic obj) {
    this._id = obj['id'];
    this._matkul = obj['matkul'];
    this._tugas = obj['tugas'];
    this._deadline = obj['deadline'];
  }
 
  int get id => _id;
  String get matkul => _matkul;
  String get tugas => _tugas;
  String get deadline => _deadline;
 
  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['matkul'] = _matkul;
    map['tugas'] = _tugas;
    map['deadline'] = _deadline;
    return map;
  }
 
  Catatan.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._matkul = map['matkul'];
    this._tugas = map['tugas'];
    this._deadline = map['deadline'];
  }
}