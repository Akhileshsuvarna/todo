import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Second.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=881&q=80',
  'https://images.unsplash.com/photo-1585060514873-fe2710180762?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=879&q=80',
  'https://images.unsplash.com/photo-1582133456636-fa7c928448eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=848&q=80',
  'https://images.unsplash.com/photo-1569975242089-e6ccf2a872bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
  'https://images.unsplash.com/photo-1601972599720-36938d4ecd31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  'https://images.unsplash.com/photo-1570891836654-d4961a7b6929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
];
int current = 0;
final List<String> textList = [
  '1 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
  '2 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
  '3 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
  '4 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
  '5 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
  '6 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod'
];

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final dataKey = new GlobalKey();
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          child: Image.network(item,
                              fit: BoxFit.cover, width: 1000.0)),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    final List<Widget> TextSliders = textList
        .map((item) => Center(
            child: Container(
                child: current == 3
                    ? Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Image.network(item,
                            //     fit: BoxFit.cover, width: 150.0),
                            Container(
                              alignment: Alignment.center,
                              child: const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Using ',
                                        style: TextStyle(
                                          fontSize: 30,
                                        )),
                                    TextSpan(
                                      text: 'iCloud',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                        text: '?',
                                        style: TextStyle(
                                          fontSize: 30,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 05, horizontal: 15),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      "Not Now",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      "use iColud",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : current == 4
                        ? Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Image.network(item,
                                //     fit: BoxFit.cover, width: 150.0),
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Sign Up For Newsletter",
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  height: 50,
                                  child: TextFormField(
                                    maxLines: 10,
                                    minLines: 10,
                                    // scrollPadding: EdgeInsets.only(bottom: 125),
                                    // keyboardType: keyboardType,
                                    // onChanged: onChanged,
                                    // controller: controller,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      // suffixIcon: suffix ? suffixIcon : Text(''),
                                      // prefix: prefix ? prefixWidget : Text(''),
                                      isDense: true,
                                      // prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: Color(0xFFD6D8DD),
                                          )),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 05, horizontal: 15),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 25),
                                        // width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          "Skip",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 25),
                                        // width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          "Join",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Container(
                                child: Text(
                            item,
                            style: TextStyle(fontSize: 15),
                          ))))))
        .toList();

    return Scaffold(
      body: Center(
          child: PageView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            fontSize: 30,
                          )),
                      TextSpan(
                        text: 'Clear',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Tap or Swipe ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: 'to begin',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: current < 3
                          ? CarouselSlider(
                              key: dataKey,
                              items: TextSliders,
                              carouselController: _controller,
                              options: CarouselOptions(
                                  // autoPlay: true,
                                  enlargeCenterPage: true,
                                  aspectRatio: 2.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      current = index;
                                      _controller.animateToPage(index);
                                      if (index == TextSliders.length - 1) {
                                        print("trigger");
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SecondPage()));
                                      }
                                    });
                                  }),
                            )
                          : Container(
                              height: MediaQuery.of(context).size.height / 1.2,
                              child: CarouselSlider(
                                key: dataKey,
                                items: TextSliders,
                                carouselController: _controller,
                                options: CarouselOptions(
                                    // autoPlay: true,
                                    enlargeCenterPage: true,
                                    aspectRatio: 2.0,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        current = index;
                                        _controller.animateToPage(index);
                                        if (index == TextSliders.length - 1) {
                                          print("trigger");
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SecondPage()));
                                        }
                                      });
                                    }),
                              ),
                            )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                  Container(
                    child: current < 3
                        ? Expanded(
                            child: CarouselSlider(
                              items: imageSliders,
                              carouselController: _controller,
                              options: CarouselOptions(
                                  enlargeCenterPage: true,
                                  aspectRatio: 2.0,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      current = index;
                                      _controller.animateToPage(index);
                                    });
                                  }),
                            ),
                          )
                        : null,
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}