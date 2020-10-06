import 'package:pokket/data/models/category.dart';
import 'package:pokket/data/sources/app_database.dart';
import 'package:sembast/sembast.dart';

class CategoryDao {
  static const String CATEGORY_STORE_NAME = 'category';

  final _categoryStore = intMapStoreFactory.store(CATEGORY_STORE_NAME);

  Future<Database> get _db async => AppDatabase.instance.database;

  Future insert(Category category) async {
    await _categoryStore.add(await _db, category.toMap());
  }

  Future delete(Category category) async {
    final finder = Finder(filter: Filter.byKey(category.id));
    await _categoryStore.delete(await _db, finder: finder);
  }

  Future update(Category category) async {
    final finder = Finder(filter: Filter.byKey(category.id));

    await _categoryStore.update(await _db, category.toMap(), finder: finder);
  }

  Future<List<Category>> getAll() async {
    final finder = Finder(sortOrders: [
      SortOrder('name'),
    ]);

    final recordSnapshots = await _categoryStore.find(
      await _db,
      finder: finder,
    );

    return recordSnapshots.map((snapshot) {
      final category = Category.fromMap(snapshot.value);
      category.id = snapshot.key;

      return category;
    }).toList();
  }
}
