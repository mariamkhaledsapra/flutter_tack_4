import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task 4',
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
  @override
  Widget build(BuildContext context) {
    return NewWidget();
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.ac_unit_sharp),
            SizedBox(width: 12),
            Text("HOME")
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              height: 100,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Content page"),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.text_decrease_outlined),
                          label: const Text("clothes")),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.radar),
                          label: const Text("Accessories")),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.nature),
                          label: const Text("make up")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
