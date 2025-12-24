import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    List products = [
      {
        'id': 1,
        'name': 'Phone',
        'price': '200',
        'image': 'assets/images/phone.png',
      },
      {
        'id': 2,
        'name': 'Laptop',
        'price': '200',
        'image': 'assets/images/laptop.png',
      },
      {
        'id': 3,
        'name': 'Headset',
        'price': '200',
        'image': 'assets/images/headset.png',
      },
      {
        'id': 4,
        'name': 'Camera',
        'price': '200',
        'image': 'assets/images/headset.png',
      },
      {
        'id': 5,
        'name': 'KeyBoread',
        'price': '200',
        'image': 'assets/images/phone.png',
      },
      {
        'id': 6,
        'name': 'Mouse',
        'price': '200',
        'image': 'assets/images/headset.png',
      },
    ];
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       iconSize: 30,
       selectedItemColor: Colors.orange,
       unselectedItemColor: Colors.grey,
       showUnselectedLabels: true,
       items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home' ),
       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
       ],),





      body:SafeArea(child:  Container(
        padding: EdgeInsets.symmetric(horizontal:20 , vertical:20 ),

        child:ListView(children: [
          Row(children: [
            Expanded(child: TextFormField(
              decoration: InputDecoration(border: InputBorder.none,
              fillColor: Colors.grey[200],
              filled: true ,
              hintText: 'Search' ,hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search))



            )),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(Icons.menu , size: 20,),
            )

          ],)
          ,SizedBox(height: 20,),
          Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),


          Container(
            height: 120,
            child: ListView(scrollDirection: Axis.horizontal,
                children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 80,height: 80,
                  decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),

                  child: Icon(Icons.laptop, size: 45), padding: EdgeInsets.all(15),),
                SizedBox(height: 4,),
                  Text('Laptops' , textAlign: TextAlign.center  ,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)


              ],),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 80,height: 80,
                  decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),

                  child: Icon(Icons.phone_android_outlined, size: 45), padding: EdgeInsets.all(15),),
                SizedBox(height: 4,),
                Text('Phones' , textAlign: TextAlign.center  ,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)


              ],),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 80,height: 80,
                  decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),

                  child: Icon(Icons.electric_bolt_outlined, size: 45), padding: EdgeInsets.all(15),),
                SizedBox(height: 4,),
                Text('  Electric' , textAlign: TextAlign.center  ,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)


              ],),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 80,height: 80,
                  decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),

                  child: Icon(Icons.card_giftcard_outlined, size: 45), padding: EdgeInsets.all(15),),
                SizedBox(height: 4,),
                Text('GiftCards' , textAlign: TextAlign.center  ,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)


              ],),
              Column(children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 80,height: 80,
                      decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(100)),

                      child: Icon(Icons.shopping_bag_outlined, size: 45), padding: EdgeInsets.all(15),),
                    SizedBox(height: 4,),
                    Text('Other' , textAlign: TextAlign.center    ,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)


                  ],),





            ]),
          ),
          SizedBox(height: 10,)
          ,Text('Best Selling' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
         GridView(
           shrinkWrap: true,
           physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,
                   ),
                     children: products.map((item) {
                      return Card(
                        elevation: 6,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                        Image.asset(item['image'], height: 140),
                         Text(item['name'], style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                         Container(
                             width: double.infinity,
                           child:Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('  Price: ${item['price']}',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange)),]
                           )
                         ),


                   ] ,
                    ),
                        );
                      }).toList(),


         )






        ],),
      ),

    ));
  }
}
