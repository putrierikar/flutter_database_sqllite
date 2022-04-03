class Item {
  int? _id;
  String? _name;
  int? _price;
  int? _stok;
  String? _kodeproduk;

  int get id => _id!;

  String get name => _name!;
  set name(String value) => _name = value;

  int get price => _price!;
  set price(int value) => _price = value;

  int get stok => _stok!;
  set stok(int value) => _stok = value;

  String get kodeProduk => _kodeproduk!;
  set kodeProduk(String value) => _kodeproduk = value;

// konstruktor versi 1
  Item(this._name, this._price, this._stok, this._kodeproduk);

// konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._stok = map['stok'];
    this._kodeproduk = map['kodeProduk'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['stok'] = stok;
    map['kodeProduk'] = kodeProduk;
    return map;
  }
}
