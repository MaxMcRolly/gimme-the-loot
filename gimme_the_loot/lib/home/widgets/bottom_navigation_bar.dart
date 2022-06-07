import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gimme_the_loot/imports.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
    required this.pageController,
  }) : super(key: key);
  final int index;
  final PageController pageController;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.index;
    super.initState();
  }

  void _onItemTapped(int pageIndex) {
    widget.pageController.jumpToPage(pageIndex);
    context.read<PageViewCubit>().changeCurrentPageIndex(pageIndex: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Colors.black,
      // unselectedItemColor: Colors.orangeAccent,
      // fixedColor: Colors.yellow,
      onTap: _onItemTapped,
      currentIndex: context.read<PageViewCubit>().state.currentPageIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.coins),
          label: "Finances",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.moneyBillTrendUp),
          label: "Investing",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_rounded),
          label: "item3",
        ),
      ],
    );
  }
}
