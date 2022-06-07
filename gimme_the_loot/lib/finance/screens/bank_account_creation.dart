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
          ],
        ),
      ),
    );
  }
}
