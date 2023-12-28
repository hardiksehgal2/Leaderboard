import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Profile".text.xl.bold.make(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_add_alt_rounded)),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius:50,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                      ),
                      Positioned(
                        right: 0.0,
                          bottom: 0.0,
                          child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: Icon(
                          Icons.edit,
                        ),
                      )
                      )
                    ],
                  ),
                  const SizedBox(height: 25,),
                  "Hardik Sehgal".text.xl.white.make(),
                  const Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 29,
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          "45".text.xl3.white.make(),
                          "Level".text.xl.bold.white.make(),
                        ],
                      ),
                      Column(
                        children: [
                          "#335".text.xl3.white.make(),
                          "Rank".text.xl.bold.white.make(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            "LeaderBoard".text.xl.bold.uppercase.make(),
            Container(
              margin: EdgeInsets.only(left: 19),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder:  (context , index){

                    return ListTile(
                      title: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/3ha-TO-wWZA8IofnlU6tWsYJiBCYbqs8hvhB6BQnct1PgsYpAZhCPMKoYggHOX9z-1qM=w526-h296-rw"),
                          ),
                          Padding(padding: EdgeInsets.only(right: 15)),
                          "Hardik Sehgal".text.make(),
                        ],
                      ),
                      leading: "# ${index+1}".text.bold.make(),
                      trailing: "Rs. ${200000/(index+1)}".toString().substring(0,9).text.bold.make(),
                    );
                  },
                  separatorBuilder: (context , index)=>Divider(),
                  itemCount: 10
              ),
            )
          ],
        ),
      ),
    );
  }
}