// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = <Category>[];
    for (int i = 0; i < _categoryNames.length; i++) {
      categoryList.add(
        Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake,
        ),
      );
    }

    final listView = Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.green[100],
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, i) => categoryList[i],
      ),
    );

    final appBar = AppBar(
      title: Text(
        "Unit Converter",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.green[100],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
