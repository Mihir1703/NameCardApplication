import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launch('https://wa.me/919753564260?text=Hello%20Mihir!!');
          },
          child: const Icon(Icons.message),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.red[300],
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://png.pngtree.com/png-vector/20190501/ourmid/pngtree-users-icon-design-png-image_1014936.jpg'),
                ),
                const Text(
                  'Mihir Waykole',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Srisakdi',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Computer Student',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                  width: 250,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_box_rounded,
                      color: Colors.teal[900],
                      size: 35,
                    ),
                    title: InkWell(
                        child: Text(
                          '97535 64260',
                          style: TextStyle(
                            color: Colors.teal[900],
                          ),
                        ),
                        onTap: () => launch('tel:+91 9753564260')),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                      size: 35,
                    ),
                    title: InkWell(
                        child: Text(
                          'mihirwaykole1703@yahoo.com',
                          style: TextStyle(
                            color: Colors.teal[900],
                          ),
                        ),
                        onTap: () =>
                            launch('mailto:mihirwaykole1703@yahoo.com')),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.navigation,
                      color: Colors.teal[900],
                      size: 35,
                    ),
                    title: InkWell(
                        child: Text(
                          'Say Hello!!',
                          style: TextStyle(
                            color: Colors.teal[900],
                          ),
                        ),
                        onTap: () =>
                            launch('sms:+91 9753564260?body=Hello%20Mihir!')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
