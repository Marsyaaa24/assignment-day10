import 'package:flutter/material.dart';
import 'weather/weather_card.dart';
import 'weather/weather_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App Marsyaa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: const MyHomePage(title: 'Weather App Marsyaa'),
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

 
      body: LayoutBuilder(
        builder: (context, constraints) {
          // layar kecil → list
          if (constraints.maxWidth < 600) {
            return ListView.builder(
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return weatherCard(weatherData[index]);
              },
            );
          }

          return GridView.builder(
            itemCount: weatherData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return weatherCard(weatherData[index]);
            },
          );
        },
      ),
    );
  }
}
