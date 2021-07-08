import 'package:flutter/material.dart';

class textButton extends StatelessWidget {
  final String textStatement;
  final Function() changeText;

  textButton(this.textStatement, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,

        children: [
          Text(
            textStatement,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pink[200],
              fontFamily: 'Satisfy',
            ),
            textAlign: TextAlign.center,
            
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: EdgeInsets.all(30.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
              textColor: Colors.pink[300],
              color: Colors.pink[100],
              // ignore: prefer_const_constructors
              child: Text(
                "Change Text",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontFamily: 'Satisfy',
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  // color: Colors.pink[200],
            // color: Colors.pink[400],
                ),
                
              ),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
              onPressed: changeText,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
