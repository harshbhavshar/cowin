import 'package:cowin/screen/reuseble.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("CoWin"),
        actions: [
          Card(child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset('assets/r2.png'),
          )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      tags("Vaccine"),
                      tags("Senitizer"),
                      tags("Mask"),
                      tags("Gloves"),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Row(
                        children: [
                          card(context, "assets/1.png", "COVAXIN", 375),
                          card(context, "assets/2.png", "COVISHILD", 375),
                          card(context, "assets/3.png", "SPUTNIK", 375),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    txt("Sanitization", 25, FontWeight.bold),
                    Text('All',style: TextStyle(color: Colors.white60),),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(crossAxisCount: 2,
                    children: [
                      card2("Mask", "assets/mask.png"),
                      card2("Gloves", "assets/gloves.png"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
