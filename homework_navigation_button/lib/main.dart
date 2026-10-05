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
      home: const ButtonGallery(),
    );
  }
}

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight(900)),
        title: Text("Button Gallery"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  elevation: 8,
                  shadowColor: Colors.orange,
                  surfaceTintColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsetsGeometry.directional(
                    start: 35,
                    end: 35,
                    top: 10,
                    bottom: 10,
                  ),
                ),
                icon: Icon(Icons.home_work),
                label: Text(
                  "Elevated Button",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight(900)),
                ),
              ),
            ),
            SizedBox(height: 200),
            FilledButton.icon(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              ),
              icon: Icon(Icons.local_activity),
              label: Text(
                "Filled Button",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight(900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        title: Text(
          "The Second Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight(900)),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to the second Screen",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight(900),
                fontSize: 22,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 5.0, color: Colors.purple),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoreButtons()),
                );
              },
              child: Text(
                "More Buttons",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight(900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreButtons extends StatelessWidget {
  const MoreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Remaining Buttons",
          style: TextStyle(fontWeight: FontWeight(900), fontSize: 20),
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            TextButton(
              onPressed: (){
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> const SecondScreen())
                );
              },
              child: Text(
                  "Text Button",
                style: TextStyle(
                  fontWeight: FontWeight(900),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 200),
            FloatingActionButton(onPressed: ()
            {
              showDialog(context: context, builder:(context){
                return AlertDialog(
                  title: Text("Button Pressed"),
                  content: Text("Floating Action Button was pressed"),
                );
              }
              );
            },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
