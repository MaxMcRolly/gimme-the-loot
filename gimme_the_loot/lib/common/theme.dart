import '../imports.dart';

ThemeData getTheme() {
  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.deepOrange),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.deepOrange),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.deepOrange),
      ),
      hoverColor: Colors.deepOrange,
      labelStyle: TextStyle(
        color: Colors.deepOrange,
      ),
      focusColor: Colors.deepOrange,
    ),
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
