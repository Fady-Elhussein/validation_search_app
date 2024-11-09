import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
   SearchPage({super.key});
  TextEditingController searchController=TextEditingController();
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              controller: searchController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field is Required ';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Search ",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(onPressed: () {
                if (formKey.currentState!.validate()) {


                }
              },child: Text("Search"),),
            )
          ],
        ),
      ),
    );
  }

}