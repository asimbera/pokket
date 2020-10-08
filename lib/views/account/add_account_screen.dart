import 'package:flutter/material.dart';
import 'package:pokket/data/models/account.dart';
import 'package:pokket/utils/database_map.dart';

class AddAccountScreen extends StatefulWidget {
  @override
  _AddAccountScreenState createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  TextEditingController _nameController;
  String _nameError;
  int _type;
  int _currency;
  int _icon;
  int _color;
  String _description;
  double _accountBalance;
  bool _showInDashboard;

  @override
  void initState() {
    _nameController = TextEditingController();
    _type = 1;
    _currency = 1;
    _icon = 1;
    _color = 1;
    _description = '';
    _accountBalance = 0;
    _showInDashboard = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'New Account',
          style: Theme.of(context).primaryTextTheme.subtitle1,
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () => _handleAddAccountAction(context),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  labelText: 'Name',
                  errorText: _nameError,
                  border: OutlineInputBorder(),
                  isDense: true,
                  icon: GestureDetector(
                    onTap: () => _changeIconAndColorAction(context),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colorMap[_color],
                            colorMap[_color].shade900,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        iconMap[_icon],
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  )),
              // expands: true,
              // autofocus: true,
            ),
          ),
          _getListHeader(context: context, label: 'Account'),
          ListBody(
            children: [
              ListTile(
                title: Text('Type'),
                subtitle: Text(accountTypeMap[_type]),
                onTap: () => _changeTypeAction(context),
              ),
              ListTile(
                title: Text('Currency'),
                subtitle: Text(currencyMap[_currency].join(' - ')),
                onTap: () => _changeCurrencyAction(context),
              ),
              ListTile(
                title: Text('Description'),
                subtitle: Text(
                  _description.isEmpty ? 'None' : _description,
                ),
                onTap: () => _changeDescriptionAction(context),
              ),
            ],
          ),
          Divider(),
          _getListHeader(context: context, label: 'Balance'),
          ListBody(
            children: [
              ListTile(
                title: Text('Account balance'),
                trailing: Text(
                  '${currencyMap[_currency].last} $_accountBalance',
                ),
              ),
              SwitchListTile(
                value: _showInDashboard,
                onChanged: (value) => _toogleShowCheck(value),
                title: Text('Show in dashboard'),
              )
            ],
          ),
        ],
      ),
    );
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

  void _handleAddAccountAction(BuildContext context) {
    if (_nameController.text.isEmpty) {
      setState(() => _nameError = 'Name can not be empty');
      return;
    }
    setState(() => _nameError = null);
    final _account = Account(
      name: _nameController.text,
      type: _type,
      currency: _currency,
      icon: _icon,
      color: _icon,
      description: _description,
      initialBalance: _accountBalance,
    );

    Navigator.of(context).pop<Account>(_account);
  }

  void _toogleShowCheck(bool value) {
    setState(() => _showInDashboard = value);
  }

  void _changeCurrencyAction(BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        children: currencyMap.entries
            .map(
              (e) => RadioListTile(
                title: Text(e.value.join(' - ')),
                value: e.key,
                groupValue: _currency,
                onChanged: (int value) {
                  setState(() => _currency = value);
                  Navigator.of(context).pop();
                },
              ),
            )
            .toList(),
      ),
    );
  }

  void _changeTypeAction(BuildContext context) {
    showDialog<void>(
      context: context,
      child: SimpleDialog(
        children: accountTypeMap.entries
            .map(
              (e) => RadioListTile(
                title: Text(e.value),
                groupValue: _type,
                value: e.key,
                onChanged: (int val) {
                  setState(() => _type = val);
                  Navigator.of(context).pop();
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> _changeDescriptionAction(BuildContext context) async {
    final _desValue = await showDialog<String>(
      context: context,
      builder: (_) {
        final _descriptionController = TextEditingController(
          text: _description,
        );
        return SimpleDialog(
          title: Text('Description'),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                maxLines: 2,
                controller: _descriptionController,
              ),
            ),
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('CANCEL'),
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(
                    _descriptionController.text,
                  ),
                  child: Text('DONE'),
                ),
              ],
            ),
          ],
        );
      },
    );

    if (_desValue != null) setState(() => _description = _desValue);
  }

  void _changeIconAndColorAction(BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        title: Text('Choose Icon & Color'),
        contentPadding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
        children: [
          Wrap(
            spacing: 5,
            children: iconMap.entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() => _icon = e.key);
                    },
                    child: Icon(
                      e.value,
                      size: 32,
                    ),
                  ),
                )
                .toList(),
          ),
          Divider(
            height: 32,
          ),
          Wrap(
            spacing: 5,
            children: colorMap.entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      setState(() => _color = e.key);
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: e.value,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('DONE'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
