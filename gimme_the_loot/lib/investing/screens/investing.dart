import 'package:gimme_the_loot/common/imports.dart';

class InvestingScreen extends StatefulWidget {
  const InvestingScreen({Key? key}) : super(key: key);

  @override
  State<InvestingScreen> createState() => _InvestingScreenState();
}

class _InvestingScreenState extends State<InvestingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Investing"),
      ),
    );
  }
}
