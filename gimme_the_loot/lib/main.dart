import "package:gimme_the_loot/imports.dart";

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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GimmeTheLootApp(),
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
    return MaterialApp(home: HomeScreen());
  }
}
