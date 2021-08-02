import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/data/post/api.dart';
import 'package:flutter_web_example/data/post/api_imple.dart';
import 'package:flutter_web_example/view/home/home_view.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentEnvironment = Environment.DEV;
    TeqNetwork.init(
      ApiUrl(),
      httpError: HttpError(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<Api>(create: (context) => ApiImpl()),
        ],
        child: TeqCoreApp(
          debugShowCheckedModeBanner: false,
          height: double.infinity,
          width: double.infinity,
          home: HomeView(),
        ));
  }
}
