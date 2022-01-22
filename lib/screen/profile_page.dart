import 'package:admin_app/widget/clipper.dart';
import 'package:admin_app/widget/information.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF3383CD),
                          Color(0xFF3383CE),
                          Color(0xFF11247D),
                        ],
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: MyClipper1(),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 1,
                  right: 1,
                  child: Column(
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        "Admin",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Information(
                    leading: Icons.phone,
                    title: "Mobile",
                    description: "01234546789",
                  ),
                  Information(
                    leading: Icons.email,
                    title: "Email",
                    description: "admin@gmail.com",
                  ),
                  Information(
                    leading: Icons.room,
                    title: "Address",
                    description: "total area",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Container(
                height: 45,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF3383CD),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text("Update Information", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
