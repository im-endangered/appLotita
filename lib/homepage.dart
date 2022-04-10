import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(9),
                child: Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  return Center(
                    child: Text(
                      DateFormat('hh:mm:ss').format(DateTime.now()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.money,
                        color: Colors.green,
                        size: 50,
                      ),
                    ),
                  ),
                  Text('Expense Manager'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.percent_outlined,
                          color: Colors.red,
                          size: 50,
                        )),
                  ),
                  Text('Split Bills'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.note,
                          color: Colors.blue,
                          size: 50,
                        )),
                  ),
                  Text('Notes'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
