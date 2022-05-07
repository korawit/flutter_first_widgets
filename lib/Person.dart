import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum SearchType { web, image, news, shopping }

class Person extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  SearchType? _searchType = SearchType.web;
  Person(
      {this.firstName = "korawit",
      this.lastName = "orkphol",
      this.email = "korawit.orkphol@gmail.com"});
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Image.asset('assets/images/korawit.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.contain),
      Text("$firstName $lastName", style: const TextStyle(fontSize: 25)),
      Text(email, style: const TextStyle(fontSize: 25)),
      TextField(
        onChanged: (String val) => print(val),
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            labelText: 'Email',
            hintText: "Please type your email",
            icon: Icon(Icons.contact_mail)),
      ),
      const TextField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: "Please type your password",
            icon: Icon(Icons.password)),
      ),
      TextField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp('[0-9-]')),
          LengthLimitingTextInputFormatter(10)
        ],
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
            labelText: 'phone number',
            hintText: "Please type your phone number",
            icon: Icon(Icons.phone)),
      ),
      const TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            labelText: 'Birth date',
            hintText: "Please type your birt date",
            icon: Icon(Icons.cake)),
      ),
      Checkbox(
        value: true,
        onChanged: (val) => {},
      ),
      Radio<SearchType>(
          groupValue: _searchType,
          value: SearchType.web,
          onChanged: (SearchType? val) => _searchType = val),
      const Text('Search anywhere'),
      Radio<SearchType>(
          groupValue: _searchType,
          value: SearchType.image,
          onChanged: (SearchType? val) => _searchType = val),
      const Text('Search page text'),
      Radio<SearchType>(
          groupValue: _searchType,
          value: SearchType.news,
          onChanged: (SearchType? val) => _searchType = val),
      const Text('Search page title'),
    ]);
  }
}
