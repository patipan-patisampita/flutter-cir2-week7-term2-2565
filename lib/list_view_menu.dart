import 'package:flutter/material.dart';

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
          itemCount: 4,
          separatorBuilder: (_,index){
            return Divider(color: Colors.red);
          },
          itemBuilder: (context,index){
            return ListTile(
              title: Text('Menu-1'),
              subtitle: Text('SUB-1'),
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                debugPrint('MENU-1');
              }
            );
          },
        ),
      ),
    );
  }
}
