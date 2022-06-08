import 'package:gimme_the_loot/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PageViewCubit>(
          create: (context) => PageViewCubit(currentPageIndex: 0),
        ),
      ],
      child: MaterialApp(
        theme: getTheme(),
        initialRoute: "/",
        routes: {
          "/": ((context) => GimmeTheLootApp()),
          "/account_creation_screen": ((context) => CreateBankAccountScreen())
        },
        title: 'Flutter Demo',
        
        // home: GimmeTheLootApp(),
      ),
    );
  }
}

class GimmeTheLootApp extends StatefulWidget {
  GimmeTheLootApp({Key? key}) : super(key: key);

  @override
  State<GimmeTheLootApp> createState() => _GimmeTheLootAppState();
}

class _GimmeTheLootAppState extends State<GimmeTheLootApp> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
