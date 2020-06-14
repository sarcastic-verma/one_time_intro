import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String title;
  final bool showButton;
  final String desc;
  final Function onPressed; // this is generally the Navigator.push
  final bool showImage;
  final int elevation;
  final double height;
  final double width;
  final ShapeBorder shape;
  final TextStyle titleTextStyle;
  final TextStyle descTextStyle;
  final String imagePath;
  final Color buttonColor;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final Color color;
  Content(
      {@required this.title,
      this.titleTextStyle,
      this.buttonText,
      this.buttonTextStyle,
      this.buttonColor,
      this.descTextStyle,
      this.height,
      this.width,
      this.imagePath,
      this.onPressed,
      @required this.showButton,
      @required this.desc,
      this.shape,
      this.color,
      this.elevation,
      @required this.showImage});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: elevation ?? 10,
      color: color ?? Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: titleTextStyle ??
                TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(desc,
                style: descTextStyle ??
                    TextStyle(
                        height: 1.5,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                textAlign: TextAlign.center),
          ),
          showImage == true
              ? Image(
                  width: width ?? MediaQuery.of(context).size.width * 0.6,
                  height: height ?? MediaQuery.of(context).size.height * 0.6,
                  image: AssetImage(imagePath),
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
          showButton == true
              ? Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: onPressed,
                    color: buttonColor ?? Color(0xffffffff),
                    child: Text(buttonText,
                        style: buttonTextStyle, textAlign: TextAlign.center),
                  ),
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                )
        ],
      ),
    );
  }
}
