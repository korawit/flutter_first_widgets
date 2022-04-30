import 'package:flutter/material.dart';

class Person extends StatelessWidget{
  final String firstName;
  final String lastName;
  final String email;
  Person({this.firstName="korawit",this.lastName="orkphol",this.email="korawit.orkphol@gmail.com"});
  @override
  Widget build(BuildContext context){
    return  Center(child: Column(
            children: <Widget>[
              Image.network('https://mymodernmet.com/wp/wp-content/uploads/2020/10/cooper-baby-corgi-dogs-8.jpg'),
              Text("$firstName $lastName",style: const TextStyle(fontSize: 25)),
              Text("$email",style: const TextStyle(fontSize: 25))
            ]
          )
        );
  }
}