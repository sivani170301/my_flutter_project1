import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        title: Text("Demo StateApp", style: TextStyle(fontSize: 24.0),),
        actions: [
          Icon(Icons.help),
          Icon(Icons.logout_rounded)
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text("Welcome to Burger Menu",style: TextStyle(fontSize: 20.0),),
          ),
          Divider(thickness: 2,color: Colors.teal,),
          ListTile(
            title: Text("Contact Email"),
            trailing: Icon(Icons.contact_mail),
          ),
          Divider(thickness: 2,color: Colors.teal,),
          ListTile(
            title: Text("Call for help"),
            trailing: Icon(Icons.call),
          ),
          Divider(thickness: 2,color: Colors.teal,),
          ListTile(
            title: Text("Log out"),
            trailing: Icon(Icons.logout),
          ),
          Divider(thickness: 2,color: Colors.teal,),
        ],),),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to Widgets Demo App",style:TextStyle(color: Colors.brown,fontSize: 25.0)),
            Icon(Icons.account_circle_sharp, color: Colors.grey,size: 125.0,),
             Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightGreen,
              height:80,
              width: 200,
              child: Center(child: Column(
                children: [
                  Icon(Icons.login_rounded),
                  Text("Sivani Tammineni", style: TextStyle(fontSize: 20.0,color:Colors.black),),
                ],
              )),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(child: Image.network("https://blog.aci.aero/wp-content/uploads/2019/03/shutterstock_745544935-952x635.jpg")),
                  Expanded(
                    flex:2,
                    child: Image.network("https://imgk.timesnownews.com/story/1551549495-mumbai_airport.jpg?tr=w-600,h-450")),
                  Expanded(child: Image.network("https://ebhubaneswar.com/wp-content/uploads/2021/04/1557397222505.jpg")),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: (){
                 print("User Clicked the button.");
            }, child: Text("Click Here",style: TextStyle(color: Colors.brown, fontSize: 30.0),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flight, color: Colors.blue, size: 70.0,),
                Icon(Icons.flight_land_rounded, color: Colors.blue, size: 70.0, ),
              ],
            ),

            SizedBox(
              width:350,
              child: Image.network("https://www.coforgetech.com/sites/default/files/2021-01/banner_11.jpg")),
            
            Text(
              'You have pushed the button this many times:',style: TextStyle(fontSize: 17.0),
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
        child: Icon(Icons.add),
      ),
    );
  }
}
