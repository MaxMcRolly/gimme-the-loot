import 'package:gimme_the_loot/imports.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _isLoaded = false;
  @override
  void initState() {
    _isLoaded = false;
    _loadData();
    super.initState();
  }

  _loadData() async {
    await initalizeLocalData();
    setState(() {
      _isLoaded = true;
    });
  }

  PageController homePageController =
      PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewCubit, PageViewState>(
      builder: (context, state) {
        return _isLoaded
            ? Scaffold(
                // appBar: AppBar(title: Text("Gimme the Loot")),
                body: PageView(
                  onPageChanged: (value) {
                    context
                        .read<PageViewCubit>()
                        .changeCurrentPageIndex(pageIndex: value);
                  },
                  controller: homePageController,
                  children: [
                    FinancesScreen(),
                    InvestingScreen(),
                    Scaffold(
                      body: Center(
                        child: Text("blank screen, nothing to see here"),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: BottomNavBar(
                    index: state.currentPageIndex,
                    pageController: homePageController),
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
