import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "T Ecommerce",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.shopping_bag),
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
          ),
        ],
      ),

      
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              padding: EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 15),
                    alignLabelWithHint: true,
                    hintText: "Search anything....",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black26,
                      size: 25,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                  "https://images.ctfassets.net/5de70he6op10/QBJTBxH7eoboFNvQRIayb/e5e95c5b0a8fb19efafeaf0cbbae317d/EN_50-_HP_SS.jpg"),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Expanded(
            //       child: Container(
            //         padding: EdgeInsets.all(20),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.white,
            //         ),
            //         child: Column(
            //           children: [
            //             Icon(
            //               Icons.calendar_today_outlined,
            //               color: Colors.red,
            //             ),
            //             Text("Today's Deal"),
            //             SizedBox(
            //               height: 5,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Expanded(
            //       child: Container(
            //         padding: EdgeInsets.all(20),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(5),
            //           color: Colors.white,
            //         ),
            //         child: Column(
            //           children: [
            //             Icon(Icons.flash_on),
            //             Text("Flash Sale"),
            //             SizedBox(
            //               height: 5,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
