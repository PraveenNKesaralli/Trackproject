import 'package:flutter/material.dart';
import 'package:mobile_app/service-info.dart';
import 'package:mobile_app/home_page.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/donald.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Donald Trump',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              )),
          ListTile(
            leading: Image.asset(
              'assets/side_home.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Image.asset('assets/side_my_services.png',
                width: 45, height: 25),
            title: Text(
              'My Services',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SinfoPage()));
            },
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_custom_requests.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Custom Requests',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_inbox.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Inbox',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_my_profile.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'My Profile',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_Request_for_Verification.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Become Verified',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_report_an_issue.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Report an Issue',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_terms_conditions.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Terms and Conditions of use',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_help_and_support.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Help & Support',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/notification_settings_icon.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Notifications Settings',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Image.asset(
              'assets/side_logout.png',
              width: 45,
              height: 25,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: null,
          )
        ],
      ),
    );
  }
}
