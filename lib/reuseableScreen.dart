import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




class EhtishamContainer extends StatelessWidget {
  const EhtishamContainer({
    required this.userText,
    required this.myColor,
    //required this.myImage
  });

 final String userText;
  final Color myColor;
  //final Image myImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(14),
      //  image: NetworkImage(myImage),
      ),
      child: Center(
        child: Text( userText, style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w300
        ),),
      ),
    );
  }
}




class reuseWidget extends StatelessWidget {
  const reuseWidget({
    required this.Label,
    required this.hint,
    required this.icon,
    this.passIcon,
    required this.passHide,
    required this.textController,
    required this.errormsg,
    required this.formatter
  }) ;

  final String Label;
  final String hint;
  final Icon icon;
  final bool passHide;
  final IconButton? passIcon;
  final String errormsg;

  final bool formatter;
final  TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: textController,
        inputFormatters: [
          formatter == true?LengthLimitingTextInputFormatter(6): LengthLimitingTextInputFormatter(-1)
        ],
        maxLength: formatter== true? 6: null,
        validator: (value){
          if (value == null || value.isEmpty || value == " "){
            return errormsg;
          }
          // if(value.length < 6 ){
          //   return "Password must greater than 6";
          // }
        },
        decoration: InputDecoration(
            label:  Text(Label),
            hintText: hint,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(14)
            ),
            prefixIcon: icon,
          suffixIcon: passIcon
        ),
       // obscureText: true,
        obscureText: passHide,
        obscuringCharacter: '*',
      ),
    );
  }
}



class pictureWidget extends StatelessWidget {
  const pictureWidget({
   required this.myPicture,
   required this.text1,
   required this.text2,
   required this.text3,
   required this.text4
  }) ;


  final String myPicture;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4)
          ),
          //color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: 150,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(myPicture)
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(text1),
                  Text(text2),
                  Text(text3),
                  Text(text4)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}