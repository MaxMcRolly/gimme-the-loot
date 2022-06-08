import 'dart:math';

import 'package:gimme_the_loot/imports.dart';

import "dart:convert";

List<BankAccount> bankAccounts = [];
List<Color> bankAccountCardColors = [
  Colors.deepPurple,
  Colors.green,
  Colors.pink,
  Colors.lightBlue,
];

class BankAccount {
  BankAccount({
    this.bankName,
    this.currency,
    this.accountName,
    this.accountBalance,
    this.accountCardColor,
  });
  late String? bankName;
  late String? currency;
  late String? accountName;
  late double? accountBalance;
  late Color? accountCardColor =
      bankAccountCardColors[Random().nextInt(bankAccountCardColors.length)];

  BankAccount.fromJson(Map<String, dynamic> json) {
    bankName = json["bank_name"];
    currency = json["currency"];
    accountName = json["account_name"];
    accountBalance = json["account_balance"];
    accountCardColor =
        bankAccountCardColors[Random().nextInt(bankAccountCardColors.length)];
  }
  Map<String, dynamic> toJson(BankAccount bankAccount) {
    Map<String, dynamic> _bankAccount = {};
    _bankAccount["bank_name"] = bankAccount.bankName;
    _bankAccount["currency"] = bankAccount.currency;
    _bankAccount["account_name"] = bankAccount.accountName;
    _bankAccount["account_balance"] = bankAccount.accountBalance;
    return _bankAccount;
  }

  //FOR DEBUG
  @deprecated
  deleteAll() {
    try {
      sharedPreferences.remove("accounts");
    } catch (e) {
      print(e);
    }
  }

  readFromFile() {
    print(sharedPreferences.getString("accounts"));

    Map<String, dynamic> _json =
        json.decode(sharedPreferences.getString("accounts") ?? "{}");
    if (_json["accounts"] != null) {
      for (Map<String, dynamic> bankAccount in _json["accounts"]) {
        bankAccounts.add(BankAccount.fromJson(bankAccount));
      }
    }
  }

  saveToFile() {
    Map<String, dynamic> _json = {};
    List listOfBankAccounts = [];

    for (BankAccount account in bankAccounts) {
      listOfBankAccounts.add(BankAccount().toJson(account));
    }
    _json["accounts"] = listOfBankAccounts;
    sharedPreferences.setString("accounts", json.encode(_json));
  }
}
