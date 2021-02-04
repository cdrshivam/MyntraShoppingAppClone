import 'package:flutter/material.dart';
import 'package:shopping_clone/widgets/imageButton.dart';

class GridItem extends StatefulWidget {
  String name;
  var photo;
  int itemNumber;

  GridItem(this.name);

  _assignPhoto(name){
    if(name=='NEW'){ photo='new.jpg';}
    else if(name=='MEN'){  photo='men.jpg';}
    else if(name=='WOMEN'){  photo='women.jpg';}
    else if(name=='CHILDREN'){  photo='child.jpeg';}
    else if(name=='HOME'){ photo='home.jpg';}
    return photo;
  }

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name,softWrap: true,),
        elevation: 10,
      ),

      body: new GridView.builder(
          itemCount: widget.itemNumber,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return ImageButton(
                img: Image(image: AssetImage('assets/images/${widget._assignPhoto(widget.name)}'),fit: BoxFit.cover,),
                imgHeight: MediaQuery.of(context).size.height*0.10,
                label: widget.name,
                fn: (){
                  //detailed page of item
                },
              );

          })

    );
  }
}


//return Card(
//elevation: 20,
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(15.0),
//),
//child: ImageButton(
//img: Image(image: AssetImage('assets/images/${widget._assignPhoto(widget.name)}'),fit: BoxFit.cover,),
//imgHeight: MediaQuery.of(context).size.height*0.10,
//label: widget.name,
//fn: (){
////detailed page of item
//},
//),
//
//);
//})
//
//);
//}
//}


