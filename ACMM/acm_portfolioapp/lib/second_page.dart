import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: BackButton(
                onPressed: () => Navigator.pop(context),
              ),
              backgroundColor: Colors.transparent,
              title: Align(
                alignment: Alignment(-0.2, 0),
                child: Text(
                  'Details',
                  style: TextStyle(color: Colors.grey[300], fontSize: 40),
                ),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/melting-purple-ice-cream-white-plate-melting-purple-ice-cream-plate-186377891.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    CircularPercentIndicator(
                      radius: 60,
                      lineWidth: 15,
                      percent: 0.4,
                      progressColor: Colors.purple[300],
                      center: Text(
                        '40%',
                        style:
                            TextStyle(fontSize: 35, color: Colors.purple[300]),
                      ),
                    ),
                    Spacer(flex: 2),
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 5,
                      progressColor: Colors.white,
                      center: Icon(Icons.flash_on, color: Colors.white),
                    ),
                    Spacer(),
                    CircularPercentIndicator(
                      radius: 40,
                      lineWidth: 5,
                      progressColor: Colors.white,
                      center: Icon(Icons.search, color: Colors.white),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SizedBox(
                      child: Text(
                        'Date',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        'Quantity',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        'Progress',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "20/10'22",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "4124",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                        child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '+22%',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "21/10'22",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "4173",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                        child: Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.red,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '-2%',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    )),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "22/10'22",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "4103",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                        child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '+6%',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "23/10'22",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Text(
                        "4144",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                        child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '+2%',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                    Spacer(),
                  ],
                ),
              ],
            ))));
  }
}
