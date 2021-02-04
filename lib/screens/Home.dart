import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';


import 'package:shopping_clone/screens/cart.dart';
import 'package:shopping_clone/screens/gridItem.dart';
import 'package:shopping_clone/screens/notification.dart';
import 'package:shopping_clone/widgets/imageButton.dart';
import '../widgets/SearchBar.dart';
import './wishlist.dart';
//import '../widgets/Drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _quote='"Fashion is part of the daily air and it changes all the time, with all the events. You can even see the approaching of a revolution in clothes. You can see and feel everything in clothes." —Diana Vreeland';

  var _looks = [
    'https://www.travelfashiongirl.com/wp-content/uploads/2016/10/womens-winter-fashion.jpg',
    'https://www.youngisthan.in/wp-content/uploads/2017/06/featured-1.jpg',
    'https://static1.fashionbeans.com/wp-content/uploads/2016/05/instalessons-top-2.jpg',
    'https://cdn.shopify.com/s/files/1/1090/7042/products/be51a5522c45ec2e59270763c25916ae.png?v=1571269340'
  ];

  String _topBrand = 'https://etimg.etb2bimg.com/thumb/msid-70712880,width-1200,height-900,imgsize-2199350,overlay-etbrandequity/allen-solly-launches-its-first-jeans-campaign.jpg';


  var _brandFocusImg =[
    'https://seeklogo.com/images/A/allen-solly-logo-965039B17A-seeklogo.com.png',
    'https://m.economictimes.com/thumb/msid-69257956,width-1200,height-900,resizemode-4,imgsize-88577/1.jpg',
    'https://image.shutterstock.com/image-photo/kiev-ukraine-march-31-2015-260nw-275940803.jpg',
    'https://logorealm.com/wp-content/uploads/2017/02/adidas-trefoil-logo.png',
    'https://lh4.ggpht.com/1tQJhnY5gS-dZU55GoEwDEXgptRXZXDdnO2PO3ZEDNTrY8RcX8RPwWW93vqYXiuYVgc4qgdSt8JcVDMPk9AAsUp_',
  ];

  var _brandFocusName = [
    'allen Solly',
    'Pepe Jeans',
    'Nike Sports',
    'Adidas',
    'LP jeans'
  ];

  //to be asked why this list of images doesnt work
  //var _categoryImage=['assets/images/new.jpg', 'assets/images/men.jpg', 'assets/images/women.jpg', 'assets/images/child.jpeg', 'assets/images/home.jpg' ];
  var _categoryName = ['NEW', 'MEN', 'WOMEN', 'CHILDREN', 'HOME'];


  var _moreCatName =['Sneakers','Kurtas','Tshirts','Watches','Jeans','Sarees','Sports Shoes', 'Grooming', 'Fragnances'];

  var _moreCatImg =[
    'https://images.freekaamaal.com/post_images/1557483847.PNG',
    'https://sslimages.shoppersstop.com/B8AC9759D45547D9AEF177F0DE13B7C8/img/FB044242B72C415BBD65FD6C7EF6965F/204886064_9601_FB044242B72C415BBD65FD6C7EF6965F.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/61DPkvI7fNL._UX522_.jpg',
    'https://primeambassador.com/assets/images/menu/men.jpg',
    'https://res.cloudinary.com/everlane/image/upload/c_scale/c_fill,dpr_3.0,f_auto,g_face:center,q_auto,w_auto:50:412/v1/i/8e75c00c_8685.jpg',
    'https://images1.yosari.com/71229-thickbox_default/multi-colour-rainbow-silk-designer-saree.jpg',
    'https://5.imimg.com/data5/NA/DU/VZ/SELLER-10420561/new-adidas-shark-sports-shoes-500x500.jpeg',
    'https://www.packagingstrategies.com/ext/resources/ISSUES/2019/07-July/34-wahl.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/genderlessfragrance-1534851823.jpg'
  ];



  _fillToLlist(var _list){
    var newList =[];
    for(int i=0;i<_list.length;i++){
      newList.add(NetworkImage(_list[i]));
    }
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),//NavigationDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.deepPurple),
        backgroundColor: Colors.white,
        title: Text('Shopoholic', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.deepPurple),softWrap: true,),
        titleSpacing: 5,
        elevation: 10,
        actions: <Widget>[
          SearchBar(),
          IconButton(
              icon: Icon(Icons.notifications, ),
              onPressed: () {
                //pageRoute to notification page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              }),

          IconButton(
              icon: Icon(Icons.bookmark_border, ),
              onPressed: () {
                //pageRoute to wish list
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WishList()),
                );
              }),

          IconButton(
              icon: Icon(Icons.shopping_cart,),
              onPressed: () {
                //pageRoute to add to cart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              }),
        ],
      ),

      //----------------------------------------body---------------------------------------

      body: Material(
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView(
                  children: <Widget>[

                    //------------------------category selector---------------------
                    Container(
                      height: MediaQuery.of(context).size.height*0.20,
                        child: ListView.builder (
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: _categoryName.length,
                          itemBuilder: (context, index) {
                            return ImageButton (
                              img: Image(image: AssetImage('assets/images/child.jpeg')),
                              label: _categoryName[index],
                              imgHeight: MediaQuery
                                  .of (context)
                                  .size
                                  .height * 0.10,
                              imgWidth: MediaQuery
                                  .of (context)
                                  .size
                                  .width * 0.25,
                              fn: () {
                                Navigator.push (
                                  context,
                                  MaterialPageRoute (builder: (context) =>
                                      GridItem (_categoryName[index])),
                                );
                                print ('taped on${_categoryName[index]}....');
                              },
                            );
                          },
                        )
                    ),


                    //--------------top brand heading-------------------------------

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Top Brand',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                    ),


                    //------------------------ top brand of the day---------------------------
                    Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height*0.45,
                      child: IconButton(
                          icon: Image(image: NetworkImage(_topBrand),fit: BoxFit.fill,),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Notifications()),
                            );
                          },
                      ),

                    ),



                    //--------------fresh look heading-------------------------------

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Looks we Love',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                    ),

                    //------------------------Fresh Looks--------------------------
                    Container(
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height*0.80,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 6.0,
                        dotIncreasedColor: Colors.black,
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 10.0,
                        showIndicator: true,
                        indicatorBgPadding: 7.0,
                        images: _fillToLlist(_looks),
                      ),
                    ),


                    //--------------brand in focus heading-------------------------------

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Brands in Focus',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                    ),

                    //------------------------brands in focus----------------------------
                    Container(
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height*0.35,
                      child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _brandFocusName.length,
                        itemBuilder: (context, index){
                        return ImageButton(
                          img: Image(image: NetworkImage(_brandFocusImg[index]) ),
                          fn: (){
                            //route to brand page
                          },
                          imgWidth: MediaQuery.of(context).size.width*0.30,
                          imgHeight: MediaQuery.of(context).size.height*0.20,
                          label: _brandFocusName[index],
                        );
                        },
                    ),
                    ),


                    //--------------more categories heading-------------------------------

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('Explore More Categories',
                        textAlign: TextAlign.left,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                        ),
                      ),

                    ),

                    //---------------------more categories----------------------------------
                    Container(
                      //padding: EdgeInsets.all(10),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        itemCount: _moreCatImg.length,
                        itemBuilder: (context,index){
                          return Container(
                            width: MediaQuery.of(context).size.width*0.30,
                            height: MediaQuery.of(context).size.height*0.20,
                            padding: EdgeInsets.all(5),
                            child: ImageButton(
                                img: Image(image: NetworkImage(_moreCatImg[index]),fit: BoxFit.fill,),
                              label: _moreCatName[index],
                              imgHeight: MediaQuery.of(context).size.height*0.10,
                              fn:(){
                                  //page route to category page
                              }
                            ),
                          );
                        },
                      ),
                    ),


                    //----------------------ending text-----------------------------------------------

                    Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 15),
                      child: Text(_quote,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          color: Colors.black54,

                        ),
                      ),

                    ),

                  ],
                ),
            ),
          ],
        ),
      ),




    );
  }
}

//      body: Column(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//
//            //-----------------------category-------------------------------------
//
//            Container(
//              height: MediaQuery.of(context).size.height*0.20,
//                child: ListView.builder(
//                  scrollDirection: Axis.horizontal,
//                  shrinkWrap: true,
//                    itemCount: _categoryName.length,
//                    itemBuilder: (context, index) {
//                      return ImageButton(
//                        label: _categoryName[index],
//                        imgHeight: MediaQuery
//                            .of(context)
//                            .size
//                            .height * 0.10,
//                        imgWidth: MediaQuery
//                            .of(context)
//                            .size
//                            .width * 0.25,
//                        fn: () {
//                          Navigator.push(
//                            context,
//                            MaterialPageRoute(builder: (context) =>
//                                GridItem(_categoryName[index])),
//                          );
//                          print('taped on${_categoryName[index]}....');
//                        },
//                      );
//                    },
//                )
//            ),
//
//            //---------------------------carousel------------------------------
//
//
//            Expanded(
//              child: ListView(
//                scrollDirection: Axis.vertical,
//                children: <Widget>[
//                  Text('Fresh Looks',
//                    textAlign: TextAlign.left,
//                    style: TextStyle(
//                      fontSize: 15,
//                      letterSpacing: 3,
//                      wordSpacing: 5,
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                    ),
//
//                  ),
//
//
//                  CarouselSlider.builder(
//                      enlargeCenterPage: true,
//                      height: MediaQuery.of(context).size.height*0.30,
//                      autoPlay: true,
//                      itemCount: _looks.length,
//                      itemBuilder: (context, index){
//                        return Card(
//                          elevation: 15,
//                          color: Colors.black,
//                          child: Image(image: NetworkImage(_looks[index])),
//
//                        );
//                      }
//                  ),
//
//
//
//                  Text('Brands In Focus',
//                    textAlign: TextAlign.left,
//                    style: TextStyle(
//                      fontSize: 15,
//                      letterSpacing: 3,
//                      wordSpacing: 5,
//                      color: Colors.black,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                  Expanded(
//                    child: ListView.builder(
//                      scrollDirection: Axis.horizontal,
//                      itemCount: _brandFocusName.length,
//                      itemBuilder: (context, index){
//                        return ImageButton(
//                          fn: (){
//                            //route to brand page
//                          },
//                          imgWidth: MediaQuery.of(context).size.width*0.30,
//                          imgHeight: MediaQuery.of(context).size.height*0.20,
//                          label: _brandFocusName[index],
//                        );
//                      },
//                    ),
//                  ),
//
//
//                ] ,
//              ),
//            ),
            //----------------------------top brand------------------------------------------

//            Expanded(
//              child: Stack(
//                fit: StackFit.expand,
//                    children: <Widget>[
//                      Container(
//                        width: MediaQuery.of(context).size.width,
//                        height: MediaQuery.of(context).size.height*0.30,
//                        child: Image(image: NetworkImage(_topBrand),fit: BoxFit.cover,),
//                      ),
//
//                      ButtonBar(
//                        mainAxisSize: MainAxisSize.min,
//                        children: <Widget>[
//                          FlatButton(
//                            splashColor: Colors.transparent,
//                              highlightColor: Colors.transparent,
//                              onPressed: (){
//                                print('allen solly men clicked');
//                              },
//                              child: Text('+ For Him',
//                                textAlign: TextAlign.left,
//                              style: TextStyle(
//                                color: Colors. orange,
//                                letterSpacing: 3,
//                                fontSize: 15,
//                              ),
//                              ),
//                          ),
//
//                          SizedBox(
//                            width: MediaQuery.of(context).size.width*0.75,
//                          ),
//
//                          FlatButton(
//                              onPressed: (){
//                                print('allen solly women clicked');
//                              },
//                              child: Text('+ For Her',
//                                textAlign: TextAlign.left,
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  color: Colors. orange,
//                                  letterSpacing: 3,
//                                  fontSize: 15,
//                                ),
//                              ),
//                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//            ),

            //--------------------------------brands in focus--------------------------

//            Expanded(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text('Brands In Focus',
//                  textAlign: TextAlign.left,
//                  style: TextStyle(
//                    fontSize: 15,
//                    letterSpacing: 3,
//                    wordSpacing: 5,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                  ),
//                  ),
//                  Expanded(
//                    child: ListView.builder(
//                      scrollDirection: Axis.horizontal,
//                      itemCount: _brandFocusName.length,
//                        itemBuilder: (context, index){
//                        return ImageButton(
//                          fn: (){
//                            //route to brand page
//                          },
//                          imgWidth: MediaQuery.of(context).size.width*0.30,
//                          imgHeight: MediaQuery.of(context).size.height*0.20,
//                          label: _brandFocusName[index],
//                        );
//                        },
//                    ),
//                  ),
//                ],
//              ),
//            ),

//
//
//
//        ],
//      ),
//    );
//  }
//}
