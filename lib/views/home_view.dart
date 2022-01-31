import 'package:farmers/views/home_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Farmer app'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Ida Farm',
                    style: GoogleFonts.roboto(fontSize: 20.0),
                  ),
                  _farmerCard(context, size),
                  _farmerCard(context, size),
                  _farmerCard(context, size),
                  _farmerCard(context, size),
                  _farmerCard(context, size),
                  _farmerCard(context, size),
                ],
              ),
            ),
          )),
    );
  }

  Widget _farmerCard(context, double size) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: size * 0.3,
        decoration: const BoxDecoration(
            color: Color(0xffE5E5E5),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: [
            // NETWORK IMAGE
            // Image.network(https://images.unsplash.com/photo-1599249478506-ae175f801b1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmVhbnN8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60')
            Expanded(flex: 1, child: Image.asset('images/paybills.png')),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: 10.0, right: 10, bottom: 10.0),
                    child: Text(
                      'Advanced agriclture with technology',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        width: 109,
                        height: 24,
                        decoration: const BoxDecoration(
                            color: Color(0xff57BEEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                            child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeDetails()));
                          },
                          child: const Text(
                            'Read more',
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold),
                          ),
                        ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
