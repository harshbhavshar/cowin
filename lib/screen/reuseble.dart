import 'package:carbon_icons/carbon_icons.dart';
import 'package:cowin/screen/seond.dart';
import 'package:flutter/material.dart';

tags(String data) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
      decoration: BoxDecoration(
          color: Color(0xff474749), borderRadius: BorderRadius.circular(5)),
      child: Text(data),
    ),
  );
}

txt(String data, double fs, FontWeight fw) {
  return Text(
    data,
    style: TextStyle(
      fontSize: fs,
      fontWeight: fw,
    ),
  );
}

card(context, String img, String data, int price) {
  Size size = MediaQuery.of(context).size;
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Second(data: data, price: price.toString(), img: img,))
      );
    },    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            gradient:
                LinearGradient(colors: [Color(0xff47494A), Color(0xff484944)])),
        width: 150,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                transform:
                    Matrix4.translationValues(size.width / 10, -50.0, 0.0),
                child: Image.asset(
                  img,
                  height: 180,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  txt(data, 21, FontWeight.bold),
                  txt('by Bharat', 15, FontWeight.normal),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt("₹" + price.toString(), 20, FontWeight.normal),
                  InkWell(

                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFD35A),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CarbonIcons.shopping_bag,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

card2(String data, String name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21), gradient: LinearGradient(
              // colors: [Color(0xff47494A),Color(0xff484944)]
              colors: [Color(0xff454447), Color(0xff455466)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          txt(data, 21, FontWeight.bold),
          Image.asset(
            name,
            width: 120,
          ),
        ],
      ),
    ),
  );
}
