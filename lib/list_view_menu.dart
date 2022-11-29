import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? Icon;
  const ListMenu({this.title, this.subtitle, this.Icon});
}

List<ListMenu> menus = [
  const ListMenu(title: 'MENU-1', subtitle: 'SUB-1', Icon: Icons.person),
];

class ListViewMenuPage extends StatelessWidget {
  const ListViewMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (_, index) {
            return Divider(color: Colors.red);
          },
          itemBuilder: (context, index) {
            return ListTile(
                title: Text('Menu-1'),
                subtitle: Text('SUB-1'),
                leading: CircleAvatar(child: Icon(Icons.person)),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  debugPrint('MENU-1');
                });
          },
        ),
      ),
    );
  }
}
