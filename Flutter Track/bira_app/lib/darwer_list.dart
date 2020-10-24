import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bira_app/main.dart';
import 'package:bira_app/create.dart';

class DrawerPage extends StatelessWidget {
  final bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/close.svg',
                height: 15,
                width: 25,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              title: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Ink(
              color: isSelected ? Colors.blue : Colors.transparent,
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/Dashboard.svg',
                  height: 20,
                  width: 25,
                  color: Colors.purple,
                ),
                title: Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.purple),
                ),
                onTap: () {},
              ),
            ),
            Ink(
              color: isSelected ? Colors.blue : Colors.transparent,
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/Issues.svg',
                  height: 20,
                  width: 25,
                  color: Colors.purple,
                ),
                title: Text(
                  'Issues',
                  style: TextStyle(color: Colors.purple),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
            ),
            Ink(
              color: isSelected ? Colors.blue : Colors.transparent,
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/Create.svg',
                  height: 20,
                  width: 25,
                  color: Colors.purple,
                ),
                title: Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreatePage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
