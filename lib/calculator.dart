import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result="";
  final heightcontroller=TextEditingController();
  final weightcontroller=TextEditingController();
  void Calculate(){
    double h=double.parse(heightcontroller.text)/100;
    double w=double.parse(weightcontroller.text);
    double bmi=w/(h*h);
    setState(() {
      result="Your bmi is ${bmi.toStringAsFixed(2)}";
    });

  }
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
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
              SizedBox(height: 30),
              Container(
                height: 400,
                width: 300,
                
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                
                child:  Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                                  controller: heightcontroller,
                                  decoration: InputDecoration(
                                    fillColor: const Color.fromARGB(255, 220, 213, 213),
                                    filled: true,
                                    prefixIcon: Icon(Icons.height),
                                    labelText: "Height(cm)",
                                    labelStyle: TextStyle(color: Colors.black),
                                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                    ),

                               SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                            controller: weightcontroller,
                                  decoration: InputDecoration(
                                    fillColor: const Color.fromARGB(255, 218, 213, 213),
                                    filled: true,
                                    prefixIcon: Icon(Icons.monitor_weight),
                                    labelText: "Weight(kg)",
                                    labelStyle: TextStyle(color: Colors.black),
                                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                    ),
                    SizedBox(height: 20),
                     SizedBox(
          height: 60,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton( style: 
             ElevatedButton.styleFrom(backgroundColor: Colors.amber,foregroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),      
                   onPressed: () {
             Calculate();
            }, child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 20),)),
            
          ),
        ),
        Text(result,style: TextStyle(color: Colors.red),),
                  ],
                  
                ),
              ),
              

              
            ],
          ),
        ),
       

  
      ),
    );
  }
}