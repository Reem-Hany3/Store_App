import 'package:first_proj/Screen_Cart/Cart.dart';
import 'package:first_proj/Screen_Categories/Categories.dart';
import 'package:first_proj/Screen_Details/Details.dart';
import 'package:flutter/material.dart';
import '../Widgets/Categ.dart';
import '../Widgets/deals_item.dart';
class Home extends StatelessWidget {
   Home({super.key});
  List<String>Name=['Fruits','Vegetables','Meat','Fish'];
  List<String>Images=['assets/images/grape.png','assets/images/veg.png','assets/images/nomeat.png','assets/images/fish3.png'];
  List<int>BGcolor=[0xffEDD0FF,0xffFFD9BA,0xffFACCCC,0xffFBC1BD];
  List<String>IMG=['assets/images/apple.png','assets/images/banana.png','assets/images/Avocado.png','assets/images/apple.png','assets/images/banana.png','assets/images/Avocado.png'];
  List<String>PRC=[r'$ 4,99',r'$ 5,99',r'$ 7,66',r'$ 4,99',r'$ 5,99',r'$ 7,66'];
  List<String>labels=['Red Apple','Orginal Banana',' Avocado','Red Apple','Orginal Banana',' Avocado'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image.asset('assets/images/homePhoto.png'),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xff6D3805)),),
                GestureDetector(onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Categories(),));
                },child:Text('see all',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xffFF5E00)),),),],),
            SizedBox(height: 30,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: BGcolor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Categ (
                    bgcolor:BGcolor[index],
                    text:Name[index],
                    img:Images[index]
                  ),
                );
              },),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular deals',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color: Color(0xff6D3805)),),
                GestureDetector(onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(),));
                },child: Text('see all',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xffFF5E00)),)),],),
            SizedBox(height: 32,),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: labels.length,
                itemBuilder: (context, index)
                {
                  return GestureDetector(
                   onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(image:IMG[index], fruitname: labels[index], price: PRC[index], ),));
                   },
                    child: DealsItem(
                      img: IMG[index],
                      text1: labels[index],
                      price: PRC[index],),
                  );
              },),
            )


          ],
        ),
      ),
    );
  }
}
