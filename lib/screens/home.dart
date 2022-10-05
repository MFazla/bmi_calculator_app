import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/left_bar.dart';
import 'package:bmi_calculator/widgets/left_bar1.dart';
import 'package:bmi_calculator/widgets/right_bar.dart';
import 'package:bmi_calculator/widgets/right_bar1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  @override
  Widget build(BuildContext context) {
    var leftBar = LeftBar;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/barlogo1.png"),
              height: 22,
            ),
            SizedBox(width: 15),
            Text(
              "BMI Calculator",
              style:
                  TextStyle(color: mainHexColor, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        backgroundColor: TitleHexColor,
        elevation: 5,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Enter Your Height and Weight here",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _heightController,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height (cm)",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff253238).withOpacity(.3))),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _weightController,
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight (Kg)",
                        hintStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff253238).withOpacity(.3))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);

                setState(() {
                  _bmiResult = _w / ((_h / 100) * (_h / 100));
                  if (_bmiResult > 25) {
                    _textResult = "You're over weight";
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    _textResult = "You have normal weight";
                  } else {
                    _textResult = "You're under weight";
                  }
                });
              },

              //Expanded(child:ListView(shrinkWrap: true,)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: TitleHexColor),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: mainHexColor),
                ),
              ),
            ),
            SizedBox(
              height: 10, //50
            ),
            Container(
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: TextStyle(fontSize: 55, color: Color(0xff253238)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult,
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w400,
                        color: accentHexColor)),
              ),
            ),
            SizedBox(
              height: 10, //20
            ),
            LeftBar(
              barWidth: 100,
            ),
            SizedBox(
              height: 2, //20
            ),
            LeftBar1(barWidth: 60),
            SizedBox(
              height: 2,
            ),
            LeftBar(
              barWidth: 70,
            ),
            Image(
              image: AssetImage("assets/images/Healthyhabit-pana.png"),
              height: 230,
            ),
            RightBar(barWidth: 100),
            SizedBox(
              height: 2, //20
            ),
            RightBar1(barWidth: 70),
            SizedBox(
              height: 2, //50
            ),
            RightBar(barWidth: 50),
          ],
        ),
      ),
    );
  }
}
