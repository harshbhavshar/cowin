import 'package:carbon_icons/carbon_icons.dart';
import 'package:cowin/screen/reuseble.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  String data;
  String price;
  String img;
   Second({required this.data,required this.price,required this.img,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 39),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    gradient:
                    LinearGradient(colors: [Color(0xff47494A), Color(0xff484944)])),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Icon(CarbonIcons.arrow_left)),
                    Container(
                        transform: Matrix4.translationValues(0, 70.0, 0.0),
                        child: Image.asset(img,height: 280,)),
                    Icon(CarbonIcons.favorite),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            txt(data, 20, FontWeight.bold),
            Text('by Bharat',style: TextStyle(color: Colors.white60)),
            SizedBox(
              height: 20,
            ),
            Text("COVID-19 vaccine manufacturing plant\ninnan Province will be put into use in the\nsecond half of 2020",textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width/2.4,
                    height: 2,
                    color: Color(0xffFFD35A),
                  ),
                  Text("₹"+price),
                  Container(
                    width: size.width/2.4,
                    height: 2,
                    color: Color(0xffFFD35A),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: [
                tags("50ml"),
                tags("100ml"),
                tags("150ml"),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(CarbonIcons.subtract),
                      ),
                    ),
                    SizedBox(width: 10,),
                    txt("1", 21, FontWeight.normal),
                    SizedBox(width: 10,),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(CarbonIcons.add,color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                color: Color(0xffFFD35A),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CarbonIcons.shopping_bag,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text("Add to Bag",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
