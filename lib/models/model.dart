class Translate {
  int id;

  final String cyrillic; // cyrillic
  final String latin;

  Translate({
    this.cyrillic,
    this.latin,
    this.id,
  });


  factory Translate.fromMap(Map<String, dynamic> map) => Translate(
    cyrillic: map['cyrillicValue'] as String,
    latin: map['latinValue'] as String,

  );

  Map<String, dynamic> toMap() {
    return {
      'cyrillicValue' : cyrillic,
      'latinValue' : latin,
    };
  }
}

// Translate.fromMap(Map<String, dynamic> map) :
//  this.cyrillic = map['cyrillicValue'],
//  this.latin = map['latinValue'],);

