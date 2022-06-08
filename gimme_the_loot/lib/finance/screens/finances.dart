import 'package:gimme_the_loot/imports.dart';
import 'package:gimme_the_loot/finance/models/bank_account.dart';

class FinancesScreen extends StatefulWidget {
  const FinancesScreen({Key? key}) : super(key: key);

  @override
  State<FinancesScreen> createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Finances"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            right: 16.0,
            left: 16.0,
            top: 16.0,
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    //TODO: make total balance card
                    TotalBalanceCard(),
                    SizedBox(
                      height: 16,
                    ),
                    OutlinedButton(
                      onPressed: () async {
                        await Navigator.pushNamed(
                            context, "/account_creation_screen");
                        setState(() {});
                      },
                      child: Text("Add bank account"),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    BankAccount bankAccount = bankAccounts[index];
                    return BankAccountCard(bankAccount: bankAccount);
                  },
                  childCount: bankAccounts.length,
                ),
              ),
            ],
          ),
        ));
  }
}
