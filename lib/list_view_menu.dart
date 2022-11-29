import 'package:flutter/material.dart';

class ListMenu {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({this.title, this.subtitle, this.icon});
}

List<ListMenu> menus = [
  const ListMenu(title: 'MENU-1', subtitle: 'SUB-1', icon: Icons.person),
  const ListMenu(title: 'MENU-2', subtitle: 'SUB-2', icon: Icons.person_add),
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
          itemCount: menus.length,
          separatorBuilder: (_, index) {
            return Divider(color: Colors.red);
          },
          itemBuilder: (context, index) {
            return ListTile(
                title: Text('${menus[index].title}'),
                subtitle: Text('${menus[index].subtitle}'),
                leading: CircleAvatar(child: Icon(menus[index].icon)),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  debugPrint('${menus[index].title}');
                });
          },
        ),
      ),
    );
  }
}
