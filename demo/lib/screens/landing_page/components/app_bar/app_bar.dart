import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return SizedBox(
      width: devSize.width,
      height: devSize.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
          Text(
            'About',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Courses',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Training',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Quotes',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Contact',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  width: devSize.width * 0.07,
                  height: devSize.width * 0.025,
                  color: Theme.of(context).accentColor,
                  child: Center(
                    child: AutoSizeText.rich(
                      TextSpan(text: 'Login'),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                      maxFontSize: 32,
                      minFontSize: 12,
                    ),
                  ),
                ),
              )),
          TextButton(
            onPressed: () {},
            child: Container(
              width: devSize.width * 0.07,
              height: devSize.width * 0.025,
              child: Center(
                child: AutoSizeText.rich(
                  TextSpan(text: 'Join'),
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w900,
                      fontSize: 24),
                  maxFontSize: 32,
                  minFontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}
