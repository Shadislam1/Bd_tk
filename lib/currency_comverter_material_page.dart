


import 'package:flutter/material.dart';

//1.Create a variable that stores the  currency converter value 
//2.Create a function that multiplies the value given by the textfield
//Store the value in the variable that we created
//display the variables

class  CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});
    
    
    @override
  State<CurrencyConverterMaterialPage> createState()=>
     _CurrencyConverterMaterialPage();
  }
   
class _CurrencyConverterMaterialPage
 extends State<CurrencyConverterMaterialPage>{
  double result =0;
  final  TextEditingController textEditingController=TextEditingController();

  void convert(){ 
    result =  double.parse(textEditingController.text)*81;     
    setState(() { });    
  }



@override
  Widget build(BuildContext context){
    print('rebuilt');
    
    final border = OutlineInputBorder(
                borderSide: const BorderSide(
                  
                  width: 2.0,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignOutside
                  ),
                  borderRadius: BorderRadius.circular(5),
        );

    return   Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
        
      ),
        body: Center(
          
          
          child:  Padding(
            padding:const EdgeInsets.all(10.0),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
            
                   Text(
            'BDT ${result !=0? result.toStringAsFixed(3):result.toStringAsFixed(0)}',
            style:const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
              
            ),
            //padding
            //container
            TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText:  'Plase entre the amount in INR',
                hintStyle:const TextStyle(
                  color: Colors.black,
                ),
                 prefixIcon:const Icon(Icons.monetization_on_outlined),
                 prefixIconColor: Colors.black,
                 filled: true,
                 fillColor: Colors.white,
                 focusedBorder: border,
                 enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
            ),
        const SizedBox(height: 10),
          
               
              ElevatedButton(
                onPressed: convert,
              
               
                
              
              
              style: TextButton.styleFrom(
                 backgroundColor: Colors.black,
                foregroundColor:Colors.white,
               minimumSize: const  Size(double.infinity, 50),
               
               
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
               ),
               
              ), 
              
               child: const Text('Convert'),
              ),
            
                  ],
          
                  ),
          ) 
        
        ),
         
      );
  }
}


  


 