import 'package:flutter/material.dart';

class Itemdetil extends StatefulWidget {
  const Itemdetil({super.key, this.data});
  final data;
  @override
  State<Itemdetil> createState() => _ItemdetilState();
}

class _ItemdetilState extends State<Itemdetil> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart')
      ]),
     endDrawer: const Drawer(),
      appBar: AppBar(

        title: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.shop_outlined , color: Colors.black, size: 30,),
          Text('Egy '  , style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black)),
          Text('E-Commerce '  , style:TextStyle(  fontSize:  30 ,fontWeight: FontWeight.bold,color: Colors.orange))
        ],),


        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(children: [
        Image.asset(widget.data['image'],),
        Container(margin: EdgeInsets.only(top: 10),
            child: Text(widget.data['name'], textAlign: TextAlign.center, style: TextStyle(fontSize:  23 ,fontWeight: FontWeight.bold,),)),
        Container(margin: EdgeInsets.only(top: 10),
            child:
          Text(widget.data['subtitle'], textAlign: TextAlign.center, style: TextStyle(color: Colors.grey , fontSize:  15 ,fontWeight: FontWeight.bold,),)),
        Container(margin: EdgeInsets.only(top: 10),
            child:
            Text(
              '\$${widget.data['price']}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

          Text("Color :" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(width: 10,),
          Container(margin: EdgeInsets.only(top: 10 , bottom: 10  ),


            height: 20,width: 20, decoration: BoxDecoration(
            color: Colors.grey ,
            borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.orange)

          ),),
            Text('  Grey' , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(width: 10,),
            Container(margin: EdgeInsets.only(top: 10 , bottom: 10,),

              height: 20,width: 20, decoration: BoxDecoration(
                color: Colors.black ,
                borderRadius: BorderRadius.circular(30),

              ),),
            Text('  Black' , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),



        ],),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            'type : HP lenovo Dell Asus ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),
          ),
        ),
        SizedBox(height: 20,),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 65),

          child: MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 20),
            onPressed: () {},
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)),
              child: Text('Add To Cart' , style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),



      ],),
    );
  }
}
