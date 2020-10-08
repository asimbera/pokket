import 'package:pokket/data/models/account.dart';
import 'package:pokket/data/sources/app_database.dart';
import 'package:sembast/sembast.dart';

class AccountDao {
  static const String ACCOUNT_STORE_NAME = 'accounts';

  final _accountStore = intMapStoreFactory.store(ACCOUNT_STORE_NAME);

  Future<Database> get _db async => AppDatabase.instance.database;

  Future insert(Account account) async {
    await _accountStore.add(await _db, account.toJson());
  }

  Future delete(int key) async {
    final finder = Finder(filter: Filter.byKey(key));
    await _accountStore.delete(await _db, finder: finder);
  }

  Future update(int key, Account account) async {
    final finder = Finder(filter: Filter.byKey(key));

    await _accountStore.update(await _db, account.toJson(), finder: finder);
  }

  Future<Map<int, Account>> getAll() async {
    final finder = Finder(sortOrders: [
      SortOrder('id'),
    ]);

    final recordSnapshots = await _accountStore.find(
      await _db,
      finder: finder,
    );

    final accountMap = Map<int, Account>();

    recordSnapshots.forEach((element) {
      accountMap[element.key] = Account.fromJson(element.value);
    });

    return accountMap;
  }
}
