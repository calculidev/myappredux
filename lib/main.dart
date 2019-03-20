import 'package:flutter/material.dart';
import 'package:redux/redux.dart';                              // new
import 'package:flutter_redux/flutter_redux.dart';              // new
import 'pages/home_page.dart';
import 'models/app_state.dart';
import 'reducers/app_reducer.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  String title = 'MeSuite';

  final store = Store<AppState>(                            // new
    appReducer,                                                 // new
    initialState: AppState(),                               // new
    middleware: [],                                             // new
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(                                   // new
      store: store,                                             // new
      child: MaterialApp(
          title: title,
          home: HomePage(title),
      ),
    );    
  }
}