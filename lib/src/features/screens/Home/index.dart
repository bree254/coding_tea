import 'package:flutter/material.dart';
class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Themes"),
      ),
      body:Padding(
          padding:EdgeInsets.all(20),
        child: ListView(
        children: [
          Text('Bree',style: Theme.of(context).textTheme.displayLarge),
          Text('itha',style: Theme.of(context).textTheme.displayMedium),
          Text('vinn',style: Theme.of(context).textTheme.displaySmall),
          Text('moses',style: Theme.of(context).textTheme.headlineMedium),
          Text('alex',style: Theme.of(context).textTheme.headlineSmall),
          Text('jeff',style: Theme.of(context).textTheme.titleLarge),
          Text('newton',style: Theme.of(context).textTheme.displayLarge),
          ElevatedButton(onPressed: () {}, child: Text('press me')),
          ElevatedButton(onPressed: () {}, child: Text('press me')),
          Padding(
              padding:EdgeInsets.all(20),
            child: Image(
                image: AssetImage('assets/images/withdrawal.png')),
          ),

        ],

        ),
      )
    );
  }
}
