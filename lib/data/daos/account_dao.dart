import 'package:pokket/data/models/account.dart';
import 'package:pokket/data/sources/app_database.dart';
import 'package:sembast/sembast.dart';

class AccountDao {
  static const String ACCOUNT_STORE_NAME = 'accounts';

  final _accountStore = intMapStoreFactory.store(ACCOUNT_STORE_NAME);

  Future<Database> get _db async => AppDatabase.instance.database;

  Future insert(Account account) async {
    await _accountStore.add(await _db, account.toMap());
  }

  Future delete(Account account) async {
    final finder = Finder(filter: Filter.byKey(account.id));
    await _accountStore.delete(await _db, finder: finder);
  }

  Future update(Account account) async {
    final finder = Finder(filter: Filter.byKey(account.id));

    await _accountStore.update(await _db, account.toMap(), finder: finder);
  }

  Future<List<Account>> getAll() async {
    final finder = Finder(sortOrders: [
      SortOrder('name'),
    ]);

    final recordSnapshots = await _accountStore.find(
      await _db,
      finder: finder,
    );

    return recordSnapshots.map((snapshot) {
      final account = Account.fromMap(snapshot.value);
      account.id = snapshot.key;

      return account;
    }).toList();
  }
}
