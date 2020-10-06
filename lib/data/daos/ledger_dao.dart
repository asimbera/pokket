import 'package:pokket/data/models/ledger.dart';
import 'package:pokket/data/sources/app_database.dart';
import 'package:sembast/sembast.dart';

class LedgerDao {
  static const String LEDGER_STORE_NAME = 'ledger';

  final _ledgerStore = intMapStoreFactory.store(LEDGER_STORE_NAME);

  Future<Database> get _db async => AppDatabase.instance.database;

  Future insert(Ledger ledger) async {
    await _ledgerStore.add(await _db, ledger.toMap());
  }

  Future delete(Ledger ledger) async {
    final finder = Finder(filter: Filter.byKey(ledger.id));
    await _ledgerStore.delete(await _db, finder: finder);
  }

  Future update(Ledger ledger) async {
    final finder = Finder(filter: Filter.byKey(ledger.id));

    await _ledgerStore.update(await _db, ledger.toMap(), finder: finder);
  }

  Future<List<Ledger>> getAll() async {
    final recordSnapshots = await _ledgerStore.find(await _db);

    return recordSnapshots.map((snapshot) {
      final ledger = Ledger.fromMap(snapshot.value);
      ledger.id = snapshot.key;

      return ledger;
    }).toList();
  }
}
