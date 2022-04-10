import 'package:flutter/material.dart';

class SplitBills extends StatefulWidget {
  @override
  State<SplitBills> createState() => _SplitBillsState();
}

class _SplitBillsState extends State<SplitBills> {
  final numberOfPerson = TextEditingController();

  final amount = TextEditingController();

  @override
  var ans = '';

  void split() {
    if (numberOfPerson.text.isEmpty || amount.text.isEmpty) {
      setState(() {
        ans = '';
      });
      return;
    }
    final receivedAmount = double.parse(amount.text);
    final receivedNoofPerson = double.parse(numberOfPerson.text);
    var perPersonAmount = receivedAmount / receivedNoofPerson;
    setState(() {
      ans = 'Each person should pay ₹${perPersonAmount.toStringAsFixed(1)}';
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: amount,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
              onSubmitted: (_) {},
            ),
            TextField(
              controller: numberOfPerson,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Number of people'),
              onSubmitted: (_) {},
            ),
            RaisedButton(
              onPressed: split,
              child: const Text(
                'Split',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              ans,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Column(
      children: [
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Text('Total Amount: '),
              Container(
                child: TextField(
                  controller: amount,
                  decoration: InputDecoration(labelText: 'Enter total amount'),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Text('Number of person: '),
              Container(
                child: TextField(
                  controller: amount,
                  decoration: InputDecoration(labelText: 'Number of person'),
                ),
              ),
            ],
          ),
        ),
      ],
    )
    */