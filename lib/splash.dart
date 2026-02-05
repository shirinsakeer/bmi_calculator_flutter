import 'package:bmi_calculator_flutter/calculator.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              
              colors: [
               const Color.fromARGB(255, 237, 236, 235),
                const Color.fromARGB(167, 226, 107, 3),
              ],
              
            ),border: Border.all(color: Colors.white)
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
            SizedBox(height: 10),
             Text("Calculator ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
          SizedBox(height: 10),
          Text("Calculate Your body",style: TextStyle(fontSize: 20,color: Colors.white),),
        Text("Mass Index easily!",style: TextStyle(fontSize: 20,color: Colors.white),),

        SizedBox(height: 30),
        SizedBox(
          height: 60,
          width: 300,
          child: ElevatedButton( style: 
           ElevatedButton.styleFrom(backgroundColor: Colors.amber,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),      
                 onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Calculator(),));
          }, child: Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 20),)),
        )

          ],
           
          ),
        ),
      ),
      
    );
  }
}