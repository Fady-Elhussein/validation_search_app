import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  SearchPage({super.key});
TextEditingController searchController=TextEditingController();
  TextEditingController searchController2=TextEditingController();

final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller:searchController ,
                validator: (searchText) {
                  if(searchText==null || searchText.isEmpty )
                    {
                      return "Field is Required ";

                    }


                  return null;

                },
                decoration: InputDecoration(
                  hintText: "Search",
                  label: Text("Search"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              TextFormField(
                controller:searchController2 ,
                validator: (searchText) {
                  if(searchText==null || searchText.isEmpty )
                  {
                    return "Field2 is Required ";

                  }
                  if(searchText.length>8){
                    return "more letter Required ";

                  }


                  return null;

                },
                decoration: InputDecoration(
                    hintText: "Search",
                    label: Text("Search"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              TextFormField(
                controller:searchController ,
                validator: (searchText) {
                  if(searchText==null || searchText.isEmpty )
                  {
                    return "Field is Required ";

                  }


                  return null;

                },
                decoration: InputDecoration(
                    hintText: "Search",
                    label: Text("Search"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              TextButton(onPressed: (){
                if(formKey.currentState!.validate()){

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(searchController.text)));

                    }
                  }, child: Text("Search")),
            ],
          ),
        ),
      ),
    );
  }

}



