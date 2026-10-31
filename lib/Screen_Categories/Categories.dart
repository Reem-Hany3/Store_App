import 'package:first_proj/Widgets/Categ.dart';
import 'package:flutter/material.dart';
class Categories extends StatelessWidget {
   Categories({super.key});
  List<int>BG_COLOR=[0xffEDD0FF,0xffFFD9BA,0xffFACCCC,0xffFBC1BD,0xffFFE299,0xffD3E5C4,0xffDAF2FC,0xffFFDEF6,0xffFECA97,0xffB79BF3,0xffD6FAE9];
  List<String>labels=['Fruits','Vegtables','Meat','Fish','Sea food','Juice','Egg & Milk','Ice cream','Cake','Grape','Hand cream'];
  List <String>images=['assets/images/grape.png','assets/images/veg.png','assets/images/nomeat.png','assets/images/fish3.png','assets/images/Shrimp.png','assets/images/juice.png','assets/images/egg.png','assets/images/icecream.png','assets/images/cake.png','assets/images/grape.png','assets/images/handwash.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar
        (

        backgroundColor: Colors.white,
        title: Text('Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xffFF5E00)),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.grey.shade500),
              prefixIcon: Icon(Icons.search,color: Colors.grey.shade500,),
              filled: true,
              fillColor: Color(0xffF3F3F3),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(7),borderSide: BorderSide(color: Color(0xffFF5E00)))
            ),
          ),
          SizedBox(height: 30,),
          SizedBox(height: 700,
            child: GridView.builder(
                itemCount: BG_COLOR.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 30),
                itemBuilder: (context, index)
                {
                  return Categ(
                      img: images[index],
                      bgcolor: BG_COLOR[index],
                      text: labels[index]);
                }
                ),
          )



        ],

        ),
      ),
    );
  }
}
