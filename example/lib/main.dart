import 'package:flutter/material.dart';
import 'package:loadix/loadix.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loadix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Loadix Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Loadix.show(context);
                Future.delayed((Duration(seconds: 4)), () {
                  Loadix.hide();
                });
              },
              child: Text("Show Loading Overlay"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Loadix.showInTime(
                  context,
                  duration: Duration(seconds: 2),
                  color: Colors.black45,
                  loaderType: LoaderTypes.horizontalRotatingDots,
                );
              },
              child: Text("Show In Time"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showLoading = !showLoading;
                });
              },
              child: Text("${showLoading ? "Hide" : "Show"} Loading Widget"),
            ),
            SizedBox(
              height: 30,
            ),
            if (showLoading) Loadix.loadingWidget,
          ],
        ),
      ),
    );
  }
}
