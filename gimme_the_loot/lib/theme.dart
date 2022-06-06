import "imports.dart";

ThemeData getTheme() {
  return ThemeData(
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
