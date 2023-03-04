import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}
  Map  foood = {
    "Chicken":  {"title": "Chicken","time": "12 min","rating": "4.0",  "energy": "730 kkal","tr":">"},
    "Pizza":    {"title": "Pizza",  "time": "16 min","rating": "4.8",  "energy": "500 kkal","tr":">"},
    "Burger":   {"title": "Burger", "time": "20 min","rating": "4.8",  "energy": "900 kkal","tr":">"},
    "Somsa":   { "title": "Somsa",  "time": "10 min", "rating": "3.8", "energy": "700 kkal","tr":">"},
    "Lagman":   {"title": "Lagman", "time": "24 min","rating": "4.4",  "energy": "800 kkal","tr":">"},
};
class _MyAppState extends State<MyApp> {
  List <String> img = [
    'images/burger.png',
    'images/Frie.png',
    'images/Lavash.png',
    'images/Palov.png',
    'images/perashki.png',
    // 'images/perashki.png'
  ];
  @override
  Widget build(BuildContext context) {
    List food = foood.keys.toList();
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: foood.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(foood[food[index]]['title']),
            subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(foood[food[index]]['time']),
              Text(foood[food[index]]['rating']),
              Text(foood[food[index]]['energy'])
            ],),
            trailing: Text(foood[food[index]]['tr']),
            leading: CircleAvatar(backgroundImage: AssetImage(img[index]),)
          )),
      ),
    );
  }
}
