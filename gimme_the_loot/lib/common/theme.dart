import '../imports.dart';

ThemeData getTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.orangeAccent,
      selectedItemColor: Colors.yellow,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}
