import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_bar_widget.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              child: SearchBar(
                controller: searchController,
                hintText: 'Search on Everything...',
                hintStyle: MaterialStateProperty.all(
                    TextStyle(color: Colors.grey, fontSize: 15)),
                textStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
                padding: MaterialStateProperty.all(EdgeInsets.only(left: 15)),
                backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                elevation: MaterialStateProperty.all(0),
                leading: Icon(
                  size: 30,
                  Icons.search,
                  color: Colors.black,
                ),
                onTap: () {
                  if (searchController.text != '') {}
                },
              ),
            ),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Explore Sources',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 150,
                        width: 105,
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Image(
                                width: 30,
                                height: 30,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/R.8b890ac0ccc07d7670a74840363772fc?rik=nBo6cqCKEo9FQA&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BBC News',
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 15, bottom: 2, left: 18, right: 18),
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAlias,
                                  fillColor: Color(0xFF111827),
                                  child: Text(
                                    'Explore',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBarStyle(
        selectedButton: 1,
      ),
    );
  }
}
