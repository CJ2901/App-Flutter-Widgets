import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         title: const Text('Viva Flutter + M3 OH YEAH!'),
         centerTitle: true,
      ),
      body: const _HomeView(),
    );
    
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
        
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon( Icons.chevron_right, color: colors.primary ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // TODO: Implementar navegación
        //Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}