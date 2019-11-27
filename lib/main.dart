import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
        appBar: AppBar(
          title: Text("Long List"),
        ),
        body: getListView()),
  ));
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

void showSnackBar(BuildContext context, String item) {
  var snackbar = SnackBar(
    content: Text("taped $item"),
  );
  Scaffold.of(context).showSnackBar(snackbar);
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.ac_unit),
      title: Text(listItems[index]),
      trailing: Icon(Icons.add_to_home_screen),
      onTap: () {
        showSnackBar(context, listItems[index]);
      },
    );
  });
  return listView;
}
