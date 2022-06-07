import 'package:gimme_the_loot/imports.dart';
import 'package:gimme_the_loot/finance/models/bank_account.dart';

class BankAccountCard extends StatefulWidget {
  const BankAccountCard({
    Key? key,
    required this.bankAccount,
  }) : super(key: key);
  final BankAccount bankAccount;
  @override
  State<BankAccountCard> createState() => _BankAccountCardState();
}

class _BankAccountCardState extends State<BankAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        boxShadow: [
          BoxShadow(
              color: Colors.deepPurpleAccent, blurRadius: 5, spreadRadius: 2)
        ],
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
