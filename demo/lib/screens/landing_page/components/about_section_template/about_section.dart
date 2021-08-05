import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:demo/models/section.dart';
import 'package:demo/prefrences/consts.dart';
import 'package:demo/prefrences/enums/vectors.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  bool leftImage;
  String buttonTitle;
  void Function() buttonOnPressed;
  Section section;
  AboutSection({
    required this.section,
    required this.leftImage,
    required this.buttonTitle,
    required this.buttonOnPressed,
  });
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return leftImage
        ? Container(
            width: devSize.width,
            height: devSize.height * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: devSize.width * .2,
                          width: devSize.width * .35,
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: section.vector.asset)),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText.rich(
                          TextSpan(
                              text: section.title,
                              style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 64,
                              fontWeight: FontWeight.w900),
                          maxFontSize: 96,
                          minFontSize: 32,
                          maxLines: 2,
                        ),
                        SizedBox(height: devSize.height * 0.05),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08),
                          child: AutoSizeText(
                            placeHolder.substring(0, 500),
                            textAlign: TextAlign.center,
                            maxFontSize: 24,
                            minFontSize: 16,
                            maxLines: 8,
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: SizedBox(
                                width: double.infinity,
                                height: devSize.height * 0.12,
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: TextButton(
                                      onPressed: this.buttonOnPressed,
                                      child: Container(
                                        width: devSize.width * 0.2,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                transform:
                                                    GradientRotation(270),
                                                begin: Alignment(-1.0, -8.0),
                                                end: Alignment(1.0, 8.0),
                                                stops: [
                                              0,
                                              0.45,
                                              0.49,
                                              0.51,
                                              0.56,
                                              1
                                            ],
                                                colors: [
                                              Theme.of(context).accentColor,
                                              Theme.of(context).accentColor,
                                              Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.5),
                                              Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.5),
                                              Theme.of(context).accentColor,
                                              Theme.of(context).accentColor,
                                            ])),
                                        child: Center(
                                          child: AutoSizeText.rich(
                                            TextSpan(
                                                text: this.buttonTitle,
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 32,
                                                fontWeight: FontWeight.w900),
                                            maxFontSize: 48,
                                            minFontSize: 16,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        Spacer(flex: 1)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: devSize.width,
            height: devSize.height * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AutoSizeText.rich(
                          TextSpan(
                              text: section.title,
                              style: TextStyle(
                                  color: Theme.of(context).accentColor)),
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 64,
                              fontWeight: FontWeight.w900),
                          maxFontSize: 96,
                          minFontSize: 32,
                          maxLines: 2,
                        ),
                        SizedBox(height: devSize.height * 0.05),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08),
                          child: AutoSizeText(
                            placeHolder.substring(0, 500),
                            textAlign: TextAlign.center,
                            maxFontSize: 24,
                            minFontSize: 16,
                            maxLines: 8,
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: SizedBox(
                                width: double.infinity,
                                height: devSize.height * 0.12,
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: TextButton(
                                      onPressed: this.buttonOnPressed,
                                      child: Container(
                                        width: devSize.width * 0.2,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                transform:
                                                    GradientRotation(270),
                                                begin: Alignment(-1.0, -8.0),
                                                end: Alignment(1.0, 8.0),
                                                stops: [
                                              0,
                                              0.45,
                                              0.49,
                                              0.51,
                                              0.56,
                                              1
                                            ],
                                                colors: [
                                              Theme.of(context).accentColor,
                                              Theme.of(context).accentColor,
                                              Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.5),
                                              Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.5),
                                              Theme.of(context).accentColor,
                                              Theme.of(context).accentColor,
                                            ])),
                                        child: Center(
                                          child: AutoSizeText.rich(
                                            TextSpan(
                                                text: this.buttonTitle,
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 32,
                                                fontWeight: FontWeight.w900),
                                            maxFontSize: 48,
                                            minFontSize: 16,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        Spacer(flex: 1)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: devSize.width * .35,
                          height: devSize.width * .2,
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: section.vector.asset)),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
