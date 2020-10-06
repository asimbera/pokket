import 'package:meta/meta.dart';

class Category {
  // lateinit in dao
  int id;

  final String name;
  final String icon;

  Category({
    @required this.name,
    @required this.icon,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'],
      icon: map['icon'],
    );
  }
}
