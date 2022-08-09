import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/conatcts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double orjWidth = MediaQuery.of(context).size.width;
    final double cameraWidth = orjWidth / 24;
    final double yourWidth = (orjWidth - cameraWidth) / 5;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: appBarColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.symmetric(
                horizontal: (orjWidth - (cameraWidth + yourWidth * 3)) / 8),
            isScrollable: true,
            tabs: [
              SizedBox(
                width: cameraWidth,
                child: const Tab(
                  icon: Icon(Icons.camera_alt),
                ),
              ),
              SizedBox(
                width: yourWidth,
                child: const Tab(
                  text: "CHATS",
                ),
              ),
              SizedBox(
                width: yourWidth,
                child: const Tab(
                  text: "STATUS",
                ),
              ),
              SizedBox(
                width: yourWidth,
                child: const Tab(
                  text: "CALL",
                ),
              ),
            ],
          ),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
