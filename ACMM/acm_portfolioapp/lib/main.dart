import 'package:flutter/material.dart';
import 'package:acm_portfolioapp/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Orders',
            style: TextStyle(
              color: Colors.grey[300],
              fontSize: 40,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 17, 25, 10),
              child: Text(
                '872',
                style: TextStyle(fontSize: 30, color: Colors.grey[700]),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return MyCard(
              name: "Pending",
              flag: true,
            );
          },
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  final String name;
  final bool flag;
  const MyCard({Key? key, required this.name, required this.flag})
      : super(key: key);
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late String _name;
  late bool _flag;
  @override
  void initState() {
    _name = widget.name;
    _flag = widget.flag;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      color: Color.fromARGB(221, 31, 29, 29),
      elevation: 200,
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SecondPage()),
        ),
        borderRadius: BorderRadius.circular(35.0),
        splashColor: Colors.pink[400],
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 3, 10, 10),
          child: SizedBox(
            height: 210,
            width: double.maxFinite,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(1.1, -0.85),
                  child: Container(
                    width: 200,
                    height: 171,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/ff/67/0d/ff670dd281e3352c624419b098528235.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.95, -0.9),
                  child: SizedBox(
                    child: Text(
                      'Order #696969-69',
                      style: TextStyle(color: Colors.grey[600], fontSize: 10),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.8, 0.9),
                  child: SizedBox(
                    width: 200,
                    height: 170,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                            child: Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 16),
                            Text(
                              '$_name',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                        SizedBox(height: 7),
                        SizedBox(
                            child: Row(
                          children: [
                            Icon(
                              Icons.balance,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 16),
                            Text(
                              '>2 lbs',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                        SizedBox(height: 7),
                        SizedBox(
                            child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.grey[700],
                            ),
                            SizedBox(width: 16),
                            Text(
                              'x8',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                        SizedBox(height: 7),
                        Align(
                          alignment: Alignment(-0.8, 0.4),
                          child: TextButton(
                            child: Text(
                              "₹2 200",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 221, 12, 176)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(10)),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.9, 0.85),
                  child: SizedBox(
                    child: Text(
                      'USA-CA',
                      style: TextStyle(color: Colors.grey[600], fontSize: 8),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1.1, 0.84),
                  child: SizedBox(
                    width: 200,
                    height: 30,
                    child: ListTile(
                      trailing: Visibility(
                        visible: this._flag,
                        child: FloatingActionButton.large(
                          onPressed: () {
                            setState(() {
                              _name = "Accepted";
                              _flag = false;
                            });
                            ;
                          },
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                          backgroundColor: Color.fromARGB(255, 221, 12, 176),
                        ),
                      ),
                      leading: Visibility(
                        visible: this._flag,
                        child: FloatingActionButton.large(
                          onPressed: () {
                            setState(() {
                              _name = "Rejected";
                              _flag = false;
                            });
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
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
