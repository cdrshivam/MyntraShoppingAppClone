import 'package:flutter/material.dart';



class ImageButton extends StatelessWidget {

  double imgWidth;
  double imgHeight;
  String label;
  Function fn;
  Image img;


  ImageButton({this.img,this.imgWidth, this.imgHeight, this.label, this.fn});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Container(
                child: img,
                width: imgWidth,
                height: imgHeight,
              ),
              Text(label),
            ],
          ),
          onPressed: (){
            fn();
          },
          color: Colors.white,
        ),

      ],
    );
  }
}
