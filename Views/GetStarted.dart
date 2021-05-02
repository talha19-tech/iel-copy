import 'package:flutter/material.dart';
import 'package:iel/helpers/ColorsSys.dart';
import 'package:iel/helpers/Strings.dart';

import 'Auth/Login.dart';
import 'FrontPage.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void land() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return FrontPage();
        },
      ),
    );
  }

  Widget makePage({image, title, content, reverse = false}) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50, bottom: 130),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          !reverse
              ? Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        image,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                  ],
                )
              : SizedBox(),
          Text(
            title,
            style: TextStyle(
                color: ColorSys.primary,
                fontFamily: "Raleway",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.grey[900],
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          reverse
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(image),
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 900),
      height: 9,
      width: isActive ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(05)),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }

  void getStarted() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return Login();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 00,
        backgroundColor: Colors.white,
        actions: [
          RaisedButton(
            color: Colors.black87,
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            onPressed: land,
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: <Widget>[
              makePage(
                image: 'assets/iel_authen.png',
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent,
              ),
              makePage(
                  reverse: true,
                  image: 'assets/services.png',
                  title: Strings.stepTwoTitle,
                  content: Strings.stepTwoContent),
              makePage(
                  image: 'assets/School_mission.png',
                  title: Strings.stepThreeTitle,
                  content: Strings.stepThreeContent),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          Container(
            height: 50,
            width: 150,
            color: Colors.black87,
            margin: EdgeInsets.only(bottom: 60),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueGrey[900],
              onPressed: getStarted,
            ),
          ),
        ],
      ),
    );
  }
}
