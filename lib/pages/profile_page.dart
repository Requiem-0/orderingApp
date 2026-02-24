import 'package:flutter/material.dart';
import 'package:insta_food/pages/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(Icons.chevron_left, size: 40),
                ),

                SizedBox(width: 15),

                Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Spacer(),

                Icon(Icons.edit_outlined, color: Color(0xFFEC4A14), size: 30),
              ],
            ),
            SizedBox(height: 20),

            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 207, 117, 60),
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFE6B191),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR47mOOZu7JgFXS8IEeWeVBYnyEyBtAHnidHg&s',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -2,
                    right: -2,
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 207, 117, 60),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.verified_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Center(
              child: Text(
                'Alexander Sterling',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 12),

            Center(
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFB8860B).withValues(alpha: 0.4),
                  border: Border.all(width: 2, color: Color(0xFFB8860B)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFB8860B),
                        ),
                        child: Icon(Icons.star, color: Colors.white),
                      ),
                    ),

                    Text(
                      'GOLD MEMBER',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB8860B),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Text(
              'ACCOUNT SETTINGS',
              style: TextStyle(
                color: Color.fromARGB(145, 106, 105, 105),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
              ),
            ),

            SizedBox(height: 5),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Color.fromARGB(
                      255,
                      189,
                      189,
                      189,
                    ).withValues(alpha: 0.7),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 189, 189, 189),
                  width: 1,
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.person_2_outlined, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.money, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Payment Methods',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Text(
              'PREFERENCES',
              style: TextStyle(
                color: Color.fromARGB(145, 106, 105, 105),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
              ),
            ),

            SizedBox(height: 5),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Color.fromARGB(
                      255,
                      189,
                      189,
                      189,
                    ).withValues(alpha: 0.7),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 189, 189, 189),
                  width: 1,
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.restaurant, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Dietary Restrictions',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.notifications_active_outlined, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Text(
              'Support',
              style: TextStyle(
                color: Color.fromARGB(145, 106, 105, 105),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
              ),
            ),

            SizedBox(height: 5),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 3,
                    color: Color.fromARGB(
                      255,
                      189,
                      189,
                      189,
                    ).withValues(alpha: 0.7),
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 189, 189, 189),
                  width: 1,
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.history, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Order History',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[400]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.question_mark, size: 20),

                        SizedBox(width: 15),

                        Text(
                          'Help Center',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(Icons.chevron_right, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.logout, size: 20, color: Colors.red),

                  Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            Center(
              child: Text(
                'Version 2.4.0 • Premium Edition',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 189, 189, 189),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
