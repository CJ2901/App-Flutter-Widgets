import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';
  
  const ButtonsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ButtonsScreen'),
          centerTitle: true,
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.chevron_left),
      )
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          
          // crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // context.push('/cards');
              }, 
              child: const Text('Elevated')
            ),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Disabled')
            ),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.apple_rounded), 
              label: const Text('Elevated icon')
            ),
            
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.android_rounded),
              label: const Text('Filled icon'),
            ),

            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.android_rounded),
              label: const Text('Outlined icon'),
            ),

            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.android_rounded),
              label: const Text('Text icon'),
            ),

            // TODO: CUSTOM BUTTON
            CustomButton(),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              iconSize: 30,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
                overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.2)),
                shadowColor: MaterialStatePropertyAll(Colors.black.withOpacity(0.5)),
                

              ),
            )
            
          ]
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  const CustomButton({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}