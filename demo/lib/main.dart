import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  callBack(){
    print("Login Successfully");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Column(
        children: [ProfileIcon(),ProfileName(),Footer()],
      )
      );
  }
}

class ProfileIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 100,
        color: Colors.blueAccent,
        child: ListView.builder(scrollDirection: Axis.horizontal,
          itemBuilder: (context,
              index)=>Padding(padding: EdgeInsets.all(10),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),),
          itemCount: 10,
        ),
      ),
    );
  }
}

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Expanded(
    flex: 3,
    child: Container(
        height: 100,
        color: Colors.greenAccent,
        child: ListView.builder(
          itemBuilder: (context,index)=>
              Padding(padding: EdgeInsets.all(11),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    title:Text("Name "),
                    subtitle: Text("Mobile no "),
                    trailing: Icon(Icons.delete),
                  )
              ),
        )

    ),
  );
  }

}

class Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Expanded(
     flex: 2,
     child: Container(
       height: 100,
       color: Colors.lightGreenAccent,
       child: ListView.builder(itemBuilder: (context,index)=>Padding(padding: EdgeInsets.all(10),
         child: Container(
           width: 200,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blueAccent
           ),
         ),
       ), itemCount : 10,scrollDirection: Axis.horizontal,
       ),
     ),
   );
  }
}