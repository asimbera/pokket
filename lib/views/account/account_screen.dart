import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokket/data/models/account.dart';
import 'package:pokket/utils/database_map.dart';
import 'package:pokket/views/account/add_account_screen.dart';
import 'package:pokket/views/account/bloc/account_bloc.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();

  static Future<void> addAccountAction({BuildContext context}) async {
    final _res = await Navigator.push<Account>(
      context,
      MaterialPageRoute(
        builder: (_) => AddAccountScreen(),
      ),
    );

    if (_res != null)
      BlocProvider.of<AccountBloc>(context)
        ..add(
          AccountEvent.add(_res),
        );
  }
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  void initState() {
    context.bloc<AccountBloc>()..add(AccountEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final _listHeaderStyle = Theme.of(context).textTheme.headline6;
    return BlocBuilder<AccountBloc, AccountState>(builder: (_, state) {
      return state.when(
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
        loaded: (accountMap) => ListView(
          // padding: EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          children: [
            // _getListHeader(context: context, label: 'Cards'),
            // SizedBox(height: 180),
            _getListHeader(context: context, label: 'Accounts'),
            ListBody(
              children: accountMap.entries
                  .map(
                    (item) => _getAccountTile(
                      item.key,
                      item.value,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      );
    });
  }

  Widget _getListHeader({
    @required BuildContext context,
    @required String label,
  }) {
    return ListTile(
      title: Text(
        label,
        style: Theme.of(context).textTheme.headline6,
      ),
      dense: true,
    );
  }

  Widget _getAccountTile(int key, Account data) {
    return ListTile(
      // contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 45,
        width: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorMap[data.color],
              colorMap[data.color].shade900,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          iconMap[data.icon],
          color: Colors.white,
        ),
      ),
      title: Text(data.name),
      subtitle: Text(
        'Balance : ${currencyMap[data.currency].last} ${data.initialBalance}',
      ),
    );
  }
}
