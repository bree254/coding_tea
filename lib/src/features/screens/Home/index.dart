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
          Text('Bree',style: Theme.of(context).textTheme.headline1),
          Text('itha',style: Theme.of(context).textTheme.headline2),
          Text('vinn',style: Theme.of(context).textTheme.headline3),
          Text('moses',style: Theme.of(context).textTheme.headline4),
          Text('alex',style: Theme.of(context).textTheme.headline5),
          Text('jeff',style: Theme.of(context).textTheme.headline6),
          Text('newton',style: Theme.of(context).textTheme.headline1),
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
