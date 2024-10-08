import 'package:design_system_sample_app/DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import 'package:design_system_sample_app/DesignSystem/Components/Buttons/ActionButton/action_button_view_model.dart';
import 'package:design_system_sample_app/DesignSystem/Components/LinkedLabel/linked_label.dart';
import 'package:design_system_sample_app/DesignSystem/Components/LinkedLabel/linked_label_view_model.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 3; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.png'), 
            ),
            SizedBox(height: 16),
            Text(
              'Amanda Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'amanda@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 30),
            ListTile(
              title: Text('Edit Name'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Shipping Info'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Notification'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Terms & Condition'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.logout, color: Colors.red),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; 
          });
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/search'); 
              break;
            case 2:
              // Navegue para a página Notifications
              Navigator.pushReplacementNamed(context, '/notifications'); 
              break;
            case 3:
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
