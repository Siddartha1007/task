// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task4/side.dart';
import 'package:task4/imageCarousel.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {

  final String nameHolder;
  
  // HomeScreen( this.nameHolder);
  const HomeScreen({ 
    Key? key,
    required this.nameHolder
  }) : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Side(logname: widget.nameHolder,),
      appBar:
      AppBar(
        title: const Text("Home Screen"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
              Colors.blue,
              Colors.green
            ])          
         ),     
        
      ),),

      body: 
      Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 236, 231, 231)),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              decoration: const BoxDecoration(color:Color.fromARGB(255, 255, 255, 255) ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton( 
                          onPressed: (){},
                          icon: const Icon(Icons.perm_identity_outlined)
                         ),
                         Text("Welcome "),
                         Text(widget.nameHolder,style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      child: Image.asset("assets/img.jpg"),
                      height: 20,
                      width: 20,
                    )
                  )
              
                ],
              )
            ),

            ImageCarousel(),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal:2, vertical: 1.5),
              width: size.width*0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromARGB(255, 255, 255, 255)
              ),
              child: ListTile(
                leading: IconButton( 
                    onPressed: (){},
                    icon: const Icon(Icons.book_online_outlined , )
                ),
                title: const Text("Register a new grievance"),
              )
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 3,),
                      padding: const EdgeInsets.symmetric(horizontal:2, vertical: 1.5),
                      width: size.width * 0.4,
                      height: size.height *0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:Color.fromARGB(255, 255, 255, 255)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.home,size: 40,)
                          ),
                          Text("My grievances")
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,),
                      padding: const EdgeInsets.symmetric(horizontal:2, vertical: 1.5),
                      width: size.width * 0.4,
                      height: size.height *0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:Color.fromARGB(255, 255, 255, 255)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.web,size: 40,)
                          ),

                          Text("Check grievance status",textAlign: TextAlign.center,)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10,),
                      padding: const EdgeInsets.symmetric(horizontal:2, vertical: 1.5),
                      width: size.width * 0.4,
                      height: size.height *0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:Color.fromARGB(255, 255, 255, 255)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.contact_support_sharp,size: 40)
                          ),
                          Text("Contact Us")
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 3,left: 20),
                      padding: const EdgeInsets.symmetric(horizontal:2, vertical: 1.5),
                      width: size.width * 0.4,
                      height: size.height *0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:Color.fromARGB(255, 255, 255, 255)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.question_answer_outlined,size: 40)
                          ),
                          Text("FAQ's")
                        ],
                      ),
                    )
                  ],
                )
              ],
            )

          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark,color: Colors.blue,),
            label: 'Ques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.blue,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web,color: Colors.blue,),
            label: 'Web',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera,color: Colors.blue,),
            label: 'Cam',
          ),
        ],
      ),
    );
  }
}