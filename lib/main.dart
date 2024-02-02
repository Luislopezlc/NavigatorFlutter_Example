import 'package:flutter/material.dart';
import 'package:navegation_example/transfers.dart';
import 'package:navegation_example/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/transfers': (context) => Transfers(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigator'),
        ),
        body: Center(
          child:  Text('Esta es la vista principal',style: TextStyle(fontSize: 30),),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Mis movimientos'),
                onTap: () {
                   Navigator.pushNamed(context, '/transfers' );
                },
              ),
              ListTile(
                title: Text('Mi billetera'),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Wallet()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
