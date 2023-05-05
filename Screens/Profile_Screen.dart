import 'package:flutter/material.dart';


class profileView extends StatefulWidget {
  const profileView({super.key});

  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getProfileAppBar(),
      body: SingleChildScrollView(
        controller: ScrollController(),
        // DP Section
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 38,
                            backgroundImage:
                                AssetImage('assets/images/PROFILE1.jpg'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'John Micheal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '16',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Post',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '123',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '756',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),

              // Edit Box Section

              Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey)),
                          child: Center(
                            child: Text('Edit Profile',
                                style: TextStyle(color: Colors.white)),
                          ),
                        )),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                            child: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ],
                ),
              ),

              // Story description  Section

              Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(children: [
                  Expanded(
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Story Highlights',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Keep your favourite stories on your profile',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 18,
                  ))
                ]),
              ),

              // Story Section

              Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(children: [
                  Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                      size: 35,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(
                                        side: BorderSide(color: Colors.white),
                                      ),
                                      padding: EdgeInsets.all(15),
                                      primary: Colors.transparent,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'New',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            for (int i = 0; i <= 10; i++)
                              FavouriteStoriesWidget(),
                          ]),
                    ),
                  )
                ]),
              ),

              TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 0.7,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                controller: _tabController,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.grid_off_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.person_pin_outlined),
                  )
                ],
              ),

              Expanded(
                  child: TabBarView(
                controller: _tabController,
                children: [
                  GridView.count(
                    controller: ScrollController(),
                    crossAxisCount: 3,
                    children: [
                      for (int i = 0; i < 27; i++)
                        Container(
                          margin: EdgeInsets.only(right: 5, top: 5),
                          child: Image.asset(
                            'assets/images/gregory-hayes-h5cd51KXmRQ-unsplash.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                    ],
                  ),
                  GridView.count(
                    controller: ScrollController(),
                    crossAxisCount: 3,
                    children: [
                      for (int i = 0; i < 27; i++)
                        Container(
                          margin: EdgeInsets.only(right: 2, top: 3),
                          child: Image.asset(
                            'assets/images/pexels-chloe.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: bottomBarWidget(),
    );
  }
}

 bottomBarWidget() {
  return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
           Image.asset(
              'assets/icons/home.png',
              color: Colors.white,
              width: 23,
              height: 23,
            ),
          
          
           Image.asset(
              'assets/icons/search.png',
              color: Colors.white,
              width: 23,
              height: 23,
          
          ),
          Image.asset(
            'assets/icons/instagram-post.png',
            color: Colors.white,
            width: 35,
            height: 35,
          ),
          Image.asset(
            'assets/icons/video.png',
            color: Colors.white,
            width: 23,
            height: 23,
          ),
           const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/PROFILE1.jpg'),
            ),
          ]
          ),
          
          
      );
    
  }
  

AppBar getProfileAppBar() {
  return AppBar(

    backgroundColor: Colors.black,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
       Row(
        
          children: const [
            Icon(Icons.lock_clock_rounded),
            SizedBox(
              width: 5,
            ),
            Text(
              'JohnMicheal17',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/icons/addPost.png',
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            const SizedBox(
              width: 15,
            ),
            const Icon(Icons.menu)
          ],
        )
      ],
    ),
  );
}

Widget FavouriteStoriesWidget() {
  return const Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: CircleAvatar(
      radius: 33,
      backgroundImage: AssetImage('assets/icons/story.jpg'),
      //backgroundColor: Color(0xFF3E3E3E),
    ),
  );
}

