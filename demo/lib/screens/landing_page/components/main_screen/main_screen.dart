import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:demo/prefrences/consts.dart';
import 'package:demo/prefrences/enums/vectors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Container(
      width: devSize.width,
      height: devSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: 'BINARY\n',
                          style:
                              TextStyle(color: Theme.of(context).accentColor)),
                      TextSpan(
                          text: 'Egypt',
                          style: TextStyle(color: Colors.grey.shade500))
                    ]),
                    style: TextStyle(
                        fontFamily: 'PS2P',
                        fontSize: 64,
                        fontWeight: FontWeight.w900),
                    maxFontSize: 96,
                    minFontSize: 32,
                    maxLines: 2,
                  ),
                  SizedBox(height: devSize.height * 0.05),
                  AutoSizeText(
                    placeHolder,
                    maxFontSize: 24,
                    minFontSize: 16,
                    maxLines: 8,
                    style: TextStyle(color: Colors.grey.shade400),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                width: devSize.width * .55,
                height: devSize.width * .55,
                decoration: BoxDecoration(
                    image: DecorationImage(image: Vectors.mainVector.asset)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
