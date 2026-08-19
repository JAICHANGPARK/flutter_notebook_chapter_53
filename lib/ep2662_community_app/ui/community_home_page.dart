import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CommunityHomePage extends StatefulWidget {
  const CommunityHomePage({super.key});

  @override
  State<CommunityHomePage> createState() => _CommunityHomePageState();
}

class _CommunityHomePageState extends State<CommunityHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Container(
                height: 260,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(47, 92, 222, 1),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: SafeArea(
            child: Column(
              spacing: 12,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    children: [
                      Icon(Icons.location_on_rounded, color: Colors.white),
                      Text(
                        "Seoul, South Korea ... ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white),
                      Spacer(),
                      Badge(
                        child: Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Badge(
                        child: Icon(Icons.mail_outline, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 12,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            spacing: 16,
                            children: [
                              Container(
                                // height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: .circular(12),
                                  color: Colors.white,
                                ),
                                padding: .all(12),
                                child: Column(
                                  spacing: 12,
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      "Today : Text Text text 1234, 12345 ABC",
                                      style: TextStyle(
                                        fontWeight: .bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Container(
                                      height: 88,
                                      child: Row(
                                        spacing: 4,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: .circular(6),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,

                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: .circular(6),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,

                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                                borderRadius: .circular(6),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,
                                                children: [
                                                  Icon(
                                                    Icons.wb_sunny_outlined,
                                                    color: Colors.white,
                                                  ),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: .circular(6),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,

                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: .circular(6),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,

                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: .circular(6),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey[50]!,
                                                    blurRadius: 2,
                                                    spreadRadius: 3,
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                mainAxisAlignment: .center,

                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Gap(3),
                                                  Text(
                                                    "Mon",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4:45am",
                                                    style: TextStyle(
                                                      fontWeight: .bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: .circular(4),
                                        color: Colors.grey[100]!,
                                      ),
                                      padding: .symmetric(horizontal: 12),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              spacing: 12,
                                              children: [
                                                Icon(Icons.cloud_queue),
                                                Column(
                                                  crossAxisAlignment: .start,
                                                  mainAxisAlignment: .center,
                                                  children: [
                                                    Text(
                                                      "Asr",
                                                      style: TextStyle(
                                                        fontWeight: .bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                    Text(
                                                      "5:15 PM",
                                                      style: TextStyle(
                                                        fontWeight: .bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              spacing: 12,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: .start,
                                                  mainAxisAlignment: .center,
                                                  children: [
                                                    Text(
                                                      "Next prayer \"Unkonwn\"",
                                                      style: TextStyle(
                                                        fontWeight: .bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                    Text(
                                                      "01:40:32 min",
                                                      style: TextStyle(
                                                        fontWeight: .bold,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 180,
                                width: double.infinity,
                                clipBehavior: .antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  borderRadius: .circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2022/09/16/17/07/city-7459162_1280.jpg",
                                    ),
                                    fit: .cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.black,
                                              Colors.black45,
                                              Colors.transparent,
                                              Colors.transparent,
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment: .start,
                                        mainAxisAlignment: .center,
                                        spacing: 4,
                                        children: [
                                          Text(
                                            "#become a Volunteer",
                                            style: TextStyle(
                                              color: Colors.amber,
                                            ),
                                          ),
                                          Text(
                                            "Lend a hand and serve\nyour community",
                                            style: TextStyle(
                                              fontWeight: .bold,
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Gap(6),
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.white,
                                            ),
                                            padding: .symmetric(
                                              horizontal: 16,
                                              vertical: 4,
                                            ),
                                            child: Text(
                                              "View Details",
                                              style: TextStyle(
                                                fontWeight: .bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SmoothPageIndicator(
                                count: 3,
                                controller: PageController(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Upcoming events",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: .all(color: Colors.grey[200]!),
                                ),
                                padding: .symmetric(horizontal: 6, vertical: 2),
                                child: Row(
                                  spacing: 4,
                                  children: [
                                    Icon(Icons.apps),
                                    Text("View all"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Container(
                            height: 34,
                            child: ListView(
                              scrollDirection: .horizontal,
                              children: [
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Color.fromRGBO(47, 92, 222, 1),
                                  ),
                                  padding: .symmetric(horizontal: 16),
                                  margin: .only(right: 8),
                                  child: Center(
                                    child: Text(
                                      "All",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(
                                      side: BorderSide(
                                        color: Colors.grey[200]!,
                                      ),
                                    ),
                                  ),
                                  padding: .symmetric(horizontal: 16),
                                  child: Center(
                                    child: Text(
                                      "Quran Tafsir",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(
                                      side: BorderSide(
                                        color: Colors.grey[200]!,
                                      ),
                                    ),
                                  ),
                                  padding: .symmetric(horizontal: 16),
                                  margin: .only(right: 8),
                                  child: Center(
                                    child: Text(
                                      "Quran Study",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(
                                      side: BorderSide(
                                        color: Colors.grey[200]!,
                                      ),
                                    ),
                                  ),
                                  padding: .symmetric(horizontal: 16),
                                  margin: .only(right: 8),
                                  child: Center(
                                    child: Text(
                                      "Women Exclusive",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: .only(left: 16),
                          height: 240,
                          child: ListView.builder(
                            scrollDirection: .horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 320,
                                margin: .only(right: 12),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: .circular(12),
                                ),
                                clipBehavior: .antiAliasWithSaveLayer,
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text("Ramadan "),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                  ),
                                                  Text("Unknown, Earth"),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time_filled,
                                                  ),
                                                  Text("7:25 PM"),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
