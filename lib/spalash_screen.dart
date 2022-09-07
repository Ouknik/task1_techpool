import 'package:flutter/material.dart';
import 'package:qr_code_test/scannarScreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12,top: 0 , right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color:Colors.blue,
                      onPressed:(){},
                      child: Text("  " ,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                        ),),
                      minWidth: 100,
                    ),
                    SizedBox(width: 10,),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color:Colors.blue,
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ScannerCode();
                        }));
                      },
                      child: Text("Scan" ,
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                        ),),
                      minWidth: 100,
                    ),

                  ],),
              ),

            ],
          )
        ],
      ),
    );
  }
}
