import 'package:flutter/material.dart';

const Map<int, IconData> iconMap = {
  1: Icons.attach_money_rounded,
  2: Icons.account_balance_rounded,
  3: Icons.wallet_giftcard_rounded,
  4: Icons.wallet_membership_rounded,
  5: Icons.account_balance_wallet_rounded,
};

const Map<int, MaterialColor> colorMap = {
  1: Colors.amber,
  2: Colors.blue,
  3: Colors.deepOrange,
  4: Colors.deepPurple,
  5: Colors.red,
  6: Colors.indigo,
};

const Map<int, String> accountTypeMap = {
  1: 'Cash',
  2: 'Savings',
};

const Map<int, Set<String>> currencyMap = {
  1: {'INR', '\u20b9'},
  2: {'USD', '\u0024'},
};
