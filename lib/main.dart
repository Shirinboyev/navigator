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
    "Chicken":  {"title": "Chicken","time": "12 min","rating": "4.0",  "energy": "730 kkal",},
    "Pizza":    {"title": "Pizza",  "time": "16 min","rating": "4.8",  "energy": "500 kkal",},
    "Burger":   {"title": "Burger", "time": "20 min","rating": "4.8",  "energy": "900 kkal",},
    "Somsa":   { "title": "Somsa",  "time": "10 min", "rating": "3.8", "energy": "700 kkal",},
    "Lagman":   {"title": "Lagman", "time": "24 min","rating": "4.4",  "energy": "800 kkal",},
};
class _MyAppState extends State<MyApp> {
  
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
                Icon(Icons.av_timer_rounded,color: Colors.grey,),
              Text(foood[food[index]]['time'],style: TextStyle(color: Colors.grey),),
                Icon(Icons.star_rate,color: Colors.green,),
              Text(foood[food[index]]['rating'],style: TextStyle(color: Colors.green),),
              Icon(Icons.local_fire_department,color: Colors.amber,),
              Text(foood[food[index]]['energy'],style: TextStyle(color: Colors.amber),),
            ],),
            trailing:Icon(Icons.keyboard_arrow_right_sharp),
            leading: CircleAvatar(backgroundImage: AssetImage('images/${food[index]}.png'),)
          )),
      ),
    );
  }
}