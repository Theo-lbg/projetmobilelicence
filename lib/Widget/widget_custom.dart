import 'package:flutter/material.dart';

class WidgetCustom extends StatelessWidget {
  final String title;
  final String Year;
  final String thumbnailUrl;
  WidgetCustom({
    required this.title,
    required this.Year,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/route2');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: NetworkImage(thumbnailUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 19, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          Year,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            size: 26,
                          ),
                          color: Colors.yellow,
                          iconSize: 18,
                          onPressed: () => null,
                          //Navigator.pushNamed(context, '/route'),
                        ),
                        SizedBox(width: 7),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
      ),
    );
  }
}
