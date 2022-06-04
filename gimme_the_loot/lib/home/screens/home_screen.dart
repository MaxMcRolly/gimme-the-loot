import 'package:gimme_the_loot/home/logic/cubit/page_view_cubit.dart';
import 'package:gimme_the_loot/home/widgets/bottom_navigation_bar.dart';
import "package:gimme_the_loot/imports.dart";

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController homePageController =
      PageController(initialPage: 0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageViewCubit, PageViewState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text("Gimme the Loot")),
          body:PageView(onPageChanged: (value){context.read<PageViewCubit>().changeCurrentPageIndex(pageIndex: value);},children: [],),
          bottomNavigationBar:
              BottomNavBar(index: state.currentPageIndex, pageController: homePageController),
        );
      },
    );
  }
}
