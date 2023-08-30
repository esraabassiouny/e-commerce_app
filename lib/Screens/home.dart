import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Color color=Colors.brown;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 310,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp,color: color,size:30),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20,color: Colors.grey[600]),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 25,
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown[100]?.withOpacity(0.5),
            ),
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Container(
                    width: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text('New Collection',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Discount 50% for the first transaction',style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color,
                          ),
                          child: TextButton(
                            onPressed:(){},
                            child: Text('Shop Now',style:
                            TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/Images/cart4.png',width:150,height:150 ,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}