import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  Color iconColor;
  SearchBar({this.iconColor});

  TextEditingController tc=new TextEditingController();

  _search(){
    return Container(
      padding: EdgeInsets.all(5),
      child: TextField(
            enabled: true,
            controller: tc,
            decoration: InputDecoration(
              hintText: "Search here...",
              suffixIcon: Icon(Icons.search,color: Colors.grey,),
            ),
        style: TextStyle(
          fontSize: 10,
          color: Colors.black,
          wordSpacing: 2,
          letterSpacing: 0.5,
        ),
          ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search,color: this.iconColor,),
      onPressed: (){
        _search();
      },
    );
  }
}
