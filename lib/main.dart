// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midfeeglobal_app/auth/reset_password.dart';
import 'package:midfeeglobal_app/screen/splash_screen.dart';
import 'package:midfeeglobal_app/static/getit.dart';
import 'package:midfeeglobal_app/users/accept_order.dart';
import 'package:midfeeglobal_app/users/carousel.dart';
import 'package:midfeeglobal_app/users/deposit.dart';
import 'package:midfeeglobal_app/users/home.dart';
import 'package:midfeeglobal_app/users/menu.dart';
import 'package:midfeeglobal_app/users/new_carousel.dart';
import 'package:midfeeglobal_app/users/new_details_page.dart';
import 'package:midfeeglobal_app/users/notifications.dart';
import 'package:midfeeglobal_app/users/profile.dart';
import 'package:midfeeglobal_app/users/responsive_carousel.dart';
import 'package:midfeeglobal_app/view_model/accept_order_vm.dart';
import 'package:midfeeglobal_app/view_model/auth_vm.dart';
import 'package:midfeeglobal_app/view_model/buyer_trans_vm.dart';
import 'package:midfeeglobal_app/view_model/deposit_vm.dart';
import 'package:midfeeglobal_app/view_model/place_order_vm.dart';
import 'package:midfeeglobal_app/view_model/profile_vm.dart';
import 'package:midfeeglobal_app/view_model/register_vm.dart';
import 'package:midfeeglobal_app/view_model/seller_trans_vm.dart';
import 'package:midfeeglobal_app/view_model/view_order_vm.dart';
import 'package:midfeeglobal_app/view_model/wallet_vm.dart';
import 'package:midfeeglobal_app/view_model/withdrawal_vm.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => RegisterVm()),
      ChangeNotifierProvider(create: (_) => AuthVm()),
      ChangeNotifierProvider(create: (_) => ProfileVm()),
      ChangeNotifierProvider(create: (_) => WalletVm()),
      ChangeNotifierProvider(create: (_) => SellertransVm()),
      ChangeNotifierProvider(create: (_) => BuyertransVm()),
      ChangeNotifierProvider(create: (_) => PlaceOrderVm()),
      ChangeNotifierProvider(create: (_) => DepositVm()),
      ChangeNotifierProvider(create: (_) => WithdrawalVm()),
      ChangeNotifierProvider(create: (_) => AcceptOrderVm()),
      ChangeNotifierProvider(create: (_)=> ViewOrderVm()),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Midfeeglobal App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.w200,
          ),
          headline2: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C1A30),
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 12,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
