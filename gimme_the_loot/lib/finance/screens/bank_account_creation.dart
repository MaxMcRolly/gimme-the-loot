import 'package:gimme_the_loot/finance/models/bank_account.dart';
import "package:gimme_the_loot/imports.dart";

class CreateBankAccountScreen extends StatefulWidget {
  const CreateBankAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateBankAccountScreen> createState() =>
      _CreateBankAccountScreenState();
}

class _CreateBankAccountScreenState extends State<CreateBankAccountScreen> {
  TextEditingController accountNameController = TextEditingController();
  TextEditingController accountCurrencyController = TextEditingController();
  TextEditingController initialBalanceController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add bank account"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          right: 16.0,
          left: 16.0,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Account Name"),
              controller: accountNameController,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Bank Name"),
              controller: bankNameController,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Initial balance", suffix: Text("BYN")),
              controller: initialBalanceController,
            ),
            OutlinedButton(
              onPressed: () {
                _createBankAccount();
                Navigator.pop(context);
              },
              child: Text("Add account"),
            )
          ],
        ),
      ),
    );
  }

  _createBankAccount() {
    bankAccounts.add(
      BankAccount(
        bankName: bankNameController.text,
        accountName: accountNameController.text,
        accountBalance: double.tryParse(initialBalanceController.text),
        currency: accountCurrencyController.text,
      ),
    );
    BankAccount().saveToFile();
  }
}
