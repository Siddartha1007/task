import 'package:flutter/material.dart';

class Side extends StatefulWidget {
  final String logname;
  const Side({ Key? key,required this.logname}) : super(key: key);

  @override
  State<Side> createState() => _SideState();
}

class _SideState extends State<Side> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
             DrawerHeader(
              decoration:BoxDecoration(color: Color.fromARGB(255, 7, 28, 63)) ,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.account_circle_rounded,size: 40,color: Colors.greenAccent,),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Logged in as',style: TextStyle(color: Colors.white),),
                             Text(widget.logname,style: TextStyle(color: Colors.white))
                           ],
                      ),
                    ),
                  ],
                ),
            ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.greenAccent,),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user,color: Colors.greenAccent,),
            title: Text('MyProfile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.input,color: Colors.greenAccent,),
            title: Text('My grievances'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.abc_outlined,color: Colors.greenAccent,),
            title: Text('Register a new grievance'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.contact_page_outlined,color: Colors.greenAccent,),
            title: Text('Contact us'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.web,color: Colors.greenAccent,),
            title: Text('Spandana Portal'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.input,color: Colors.greenAccent,),
            title: Text('Grievance redressal process'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.greenAccent,),
            title: Text('Logout'),
            onTap: () => {},
          ),
          SizedBox(height: size.height * 0.1),
          Center(
              child: Text('Version 1.4.1',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}