import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ProfileAppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
              child: Row(
                children: [ProfileAvatar(), ProfileInfo()],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "korospace",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                text: TextSpan(
                  text:
                      "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "#hastag",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "link goes here",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (context) {
                      return StoryItem(
                        title: "story 1",
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  TabItem(
                    selected: true,
                    icon: Icons.grid_on_outlined,
                  ),
                  TabItem(
                    selected: false,
                    icon: Icons.person_pin_outlined,
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/id/${index + 1}/200/300",
                  fit: BoxFit.cover,
                );
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black87,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: "profile",
            ),
          ],
        ));
  }
}

class TabItem extends StatelessWidget {
  TabItem({
    required this.icon,
    required this.selected,
    super.key,
  });

  IconData icon;
  bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: selected ? 2 : 0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Icon(icon),
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  StoryItem({
    required this.title,
    super.key,
  });

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1,
                  ),
                ),
              ),
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/id/1/200/300"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(38),
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Text(title),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  ProfileInfo({
    super.key,
  });

  List<Map<String, dynamic>> dataProfileInfo = [
    {"count": "0,000", "title": "Posts"},
    {"count": "0,000", "title": "Followers"},
    {"count": "0,000", "title": "Following"},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: dataProfileInfo.map((row) {
          return ProfileInfoItem(
              countInfo: row["count"], titleInfo: row["title"]);
        }).toList(),
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  ProfileInfoItem({
    required this.countInfo,
    required this.titleInfo,
    super.key,
  });

  String countInfo;
  String titleInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          countInfo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          titleInfo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.amber,
                ],
              ),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/id/1/200/300"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(55),
              border: Border.all(
                color: Colors.white,
                width: 4,
              )),
        ),
      ],
    );
  }
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            "korospace",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_drop_down)
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
