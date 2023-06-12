import 'package:flutter/material.dart';
import 'package:getx_and_provider/all_products.dart';
import 'package:getx_and_provider/provider_incriment.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderIncrement(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final providerIncrement =
        Provider.of<ProviderIncrement>(context, listen: false);
    print('objectobjectobject');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<ProviderIncrement>(
              builder: (context, value, child) {
                return Text(
                  value!.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 111,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllProducts()));
                },
                child: Text('Products Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: providerIncrement.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
