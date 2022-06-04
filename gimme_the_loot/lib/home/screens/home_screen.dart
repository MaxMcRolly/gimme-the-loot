import "package:gimme_the_loot/imports.dart";

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController homePageController = PageController(initialPage: 0,keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gimme the Loot")),
      body: Center(
        child: Text("Test123"),
      ),
    );
  }
}
