import 'package:flutter/material.dart';
class CustomButten extends StatelessWidget {
  String? tittle;
  var ontap;
  CustomButten({Key? key,this.ontap,this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: MediaQuery.of(context).size.width/1.1,
          height: MediaQuery.of(context).size.height/15,
          decoration: BoxDecoration(
              color:const Color(0xff2972fe),
              borderRadius: BorderRadius.circular(25)
          ),

          child: Center(child: Text(tittle!,style: const TextStyle(fontSize: 20,color: Colors.white,),))

      ),
    );
  }
}
