import 'package:gimme_the_loot/finance/models/bank_account.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../imports.dart';

late SharedPreferences sharedPreferences;
Future<void> initalizeLocalData() async {
  sharedPreferences = await SharedPreferences.getInstance();
  await BankAccount().readFromFile();
}
