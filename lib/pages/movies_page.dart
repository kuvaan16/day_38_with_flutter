import 'dart:ui';
import 'package:day_38_with_flutter/pages/about_movie.dart';
import 'package:ionicons/ionicons.dart';
import 'package:day_38_with_flutter/models/movies_cover_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  PageController _pageController = PageController();
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              ExactAssetImage(getMoviesCover[_selectedIndex].cover.toString()),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 60,
            sigmaY: 60,
          ),
          child: Container(
            color: Colors.grey.withOpacity(0.1),
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getMoviesCover[_selectedIndex].name.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Ionicons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Ionicons.notifications_outline,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                                color: Color.fromARGB(136, 255, 255, 255))),
                        child: Text(
                          getMoviesCover[_selectedIndex].type1.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                                color: Color.fromARGB(136, 255, 255, 255))),
                        child: Text(
                          getMoviesCover[_selectedIndex].type2.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                                color: Color.fromARGB(136, 255, 255, 255))),
                        child: Text(
                          getMoviesCover[_selectedIndex].type3.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_outlined,
                            color: getMoviesCover[_selectedIndex].isRated
                                ? Colors.yellow[700]
                                : Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          getMoviesCover[_selectedIndex].isRated
                              ? Text(
                                  "8.7/10 193k votes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              : Text("No Ratings yet",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(110, 0, 0, 0)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Watch Trailer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 530,
                    child: PageView.builder(
                      physics: BouncingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      itemCount: getMoviesCover.length,
                      itemBuilder: (context, index) {
                        var _scale = _selectedIndex == index ? 1.0 : 0.9;
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutMove(
                                      movieData: getMoviesCover[index]),
                                ));
                          },
                          child: TweenAnimationBuilder(
                            tween: Tween(begin: _scale, end: _scale),
                            duration: Duration(milliseconds: 350),
                            curve: Curves.ease,
                            builder: (BuildContext context, double value,
                                Widget? child) {
                              return Transform.scale(
                                scale: value,
                                child: child,
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Hero(
                                  
                                  tag: getMoviesCover[index].cover.toString(),
                                  child: Image.asset(
                                    getMoviesCover[index].cover.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
