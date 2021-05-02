import 'package:flutter/material.dart';
import 'package:iel/Widgets/TopTicker.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: <Widget>[
              Image.asset('iel_authen.png', height: 70),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(12)),
                    Icon(
                      Icons.trending_up_sharp,
                      size: 32,
                      color: Colors.green,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Trending',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        child: TopTicker(),
                      ),
                      SizedBox(width: 05),
                      Container(
                        child: TopTicker(),
                      ),
                      SizedBox(width: 05),
                      Container(
                        child: TopTicker(),
                      ),
                      SizedBox(width: 05),
                      Container(
                        child: TopTicker(),
                      ),
                      SizedBox(width: 05),
                      Container(
                        child: TopTicker(),
                      ),
                      SizedBox(width: 05),
                      Container(
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(),
                          color: Colors.grey[350],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 02),
                            Text(
                              'APPL',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: Colors.black,
                                  fontSize: 15),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(width: 20),
                                Text(
                                  '93.19',
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_circle_up_sharp,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 00),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          /*
                          Padding(
                            padding: EdgeInsets.only(left:10, top: 20,),
                          ), */
                          Expanded(
                            child: Container(
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red[900],
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(23, 0, 0, .9),
                                    blurRadius: 10,
                                    offset: Offset(0, 03),
                                  ),
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  colors: [
                                    Colors.grey[900],
                                    Colors.grey[900],
                                    Colors.grey[900],
                                  ],
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 25, top: 20),
                                  ),
                                  Text(
                                    '- Portfolio',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 05),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.auto_awesome_motion,
                                        size: 28,
                                        color: Colors.green[200],
                                      ),
                                      Text(
                                        'Rs - 1,098,070 ',
                                        style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.white,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          /*
                                          Padding(padding: EdgeInsets.only(left: 30),),
                                          
                                          Icon(
                                            Icons.arrow_circle_up_sharp,
                                            size: 22,
                                            color: Colors.green[200],
                                          ),
                                          */
                                          SizedBox(width: 00),
                                          Text(
                                            '4,015 (- 0.49%)',
                                            style: TextStyle(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          /*
                                          Text(
                                            '(- 0.49%) ',
                                            style: TextStyle(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          */
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              /*
                              child: ListTile(
                                leading: Icon(
                                  Icons.stacked_line_chart_sharp,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Market Summary:',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                                subtitle: Text(
                                  'Volume Traded:',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              */
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              height: 120,
                              margin: EdgeInsets.symmetric(vertical: 20.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(33, 39, 64, .9),
                                          blurRadius: 10,
                                          offset: Offset(0, 03),
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        colors: [
                                          Colors.black,
                                          Colors.black,
                                          Colors.black54,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                8, 12, 8, 10)),
                                        Text(
                                          'KSE100',
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.green[200],
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 05),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.note_sharp,
                                                  size: 25,
                                                  color: Colors.green[200],
                                                ),
                                                Text(
                                                  '- 45,188',
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 00),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                /*
                                          Padding(padding: EdgeInsets.only(left: 30),),
                                          
                                          Icon(
                                            Icons.arrow_circle_up_sharp,
                                            size: 22,
                                            color: Colors.green[200],
                                          ),
                                          */
                                                SizedBox(width: 00),
                                                Text(
                                                  '7.32 (- 0.49%)',
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                ),
                                                /*
                                          Text(
                                            '(- 0.49%) ',
                                            style: TextStyle(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          */
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(33, 39, 64, .9),
                                          blurRadius: 10,
                                          offset: Offset(0, 03),
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        colors: [
                                          Colors.black,
                                          Colors.black,
                                          Colors.black54,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                8, 12, 8, 10)),
                                        Text(
                                          'KSE100',
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            color: Colors.green[200],
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 05),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.note_sharp,
                                                  size: 25,
                                                  color: Colors.green[200],
                                                ),
                                                Text(
                                                  '- 45,188',
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 00),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                /*
                                          Padding(padding: EdgeInsets.only(left: 30),),
                                          
                                          Icon(
                                            Icons.arrow_circle_up_sharp,
                                            size: 22,
                                            color: Colors.green[200],
                                          ),
                                          */
                                                SizedBox(width: 00),
                                                Text(
                                                  '7.32 (- 0.49%)',
                                                  style: TextStyle(
                                                      fontFamily: 'Nunito',
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                ),
                                                /*
                                          Text(
                                            '(- 0.49%) ',
                                            style: TextStyle(
                                                fontFamily: 'Nunito',
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          */
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    /*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Icon(
                          Icons.trending_up_sharp,
                          size: 32,
                          color: Colors.green,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Trending',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 02),
                                  Text(
                                    'TLRY',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '21.36',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  SizedBox(height: 05),
                                  Icon(Icons.arrow_circle_up_sharp),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 02),
                                  Text(
                                    'WFC',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    '32.03',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  SizedBox(height: 05),
                                  Icon(Icons.arrow_circle_up_sharp),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 02),
                                  Text(
                                    'BB',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 05),
                                  Text(
                                    '19.76',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  Icon(Icons.arrow_circle_up_sharp),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(),
                                color: Colors.grey[200],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 02),
                                  Text(
                                    'GME',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 02),
                                  Text(
                                    '35.76',
                                    style: TextStyle(
                                      fontFamily: 'Nunito',
                                    ),
                                  ),
                                  SizedBox(height: 05),
                                  Icon(Icons.arrow_circle_up_sharp),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                */
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Icon(
                          Icons.confirmation_number_sharp,
                          size: 30,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Most Traded Stocks',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, top: 05, bottom: 05, right: 10),
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            itemCount: 3,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 60,
                                margin: EdgeInsets.only(bottom: 13),
                                padding: EdgeInsets.only(
                                    left: 24, top: 12, bottom: 12, right: 21),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300],
                                      blurRadius: 10,
                                      spreadRadius: 4,
                                      offset: Offset(04, 04),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 57,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('trg-pak.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'TRG',
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '19 Jan',
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '25.2 M',
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 16,
                                            color: Colors.grey[850],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                    SizedBox(height: 05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(12)),
                        Icon(
                          Icons.update,
                          size: 30,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Value Gainers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      children: [
                        ListView.builder(
                            itemCount: 3,
                            padding: EdgeInsets.only(left: 16, right: 16),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 60,
                                margin: EdgeInsets.only(bottom: 13),
                                padding: EdgeInsets.only(
                                    left: 24, top: 12, bottom: 12, right: 21),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300],
                                      blurRadius: 10,
                                      spreadRadius: 4,
                                      offset: Offset(04, 04),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 57,
                                          width: 57,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage('hum-net.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 13,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'TRG',
                                              style: TextStyle(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '19 Jan',
                                              style: TextStyle(
                                                fontFamily: 'Nunito',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '25.2 M',
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontSize: 16,
                                            color: Colors.grey[850],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_sharp,
              ),
              label: 'Market',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number_sharp),
                label: 'portfolio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.score_sharp), label: 'Statistics'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline_sharp), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
