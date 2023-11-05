import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';


class CurrencyConverterCupertionoPage extends StatefulWidget {
  const CurrencyConverterCupertionoPage({super.key});

  @override
  State<CurrencyConverterCupertionoPage> createState() => _CurrencyConverterCupertionoPageState();
}

class _CurrencyConverterCupertionoPageState extends State<CurrencyConverterCupertionoPage> {
   double result =0;
  final  TextEditingController textEditingController=TextEditingController();

  void convert(){ 
    result =  double.parse(textEditingController.text)*81;     
    setState(() { });    
  }

  @override
  Widget build(BuildContext context) {
  

    return   CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        
        middle: Text('Currency Converter'),
        
      ),
        child: Center(
          
          
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
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
             decoration: BoxDecoration(
              color: CupertinoColors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
              
             ),
              placeholder: 'Please enter the amount in USD',
              prefix: Icon(CupertinoIcons.money_dollar),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
                signed: true,
              ),
            ),
            const SizedBox(height: 10),
          
               
              CupertinoButton(
                onPressed: convert,
              color: CupertinoColors.black,
             child: const Text('Convert'),
               
              ), 
              
              
               ],
          
             ),
          ) 
        
        ),
         
      );
  }
}


  


 
  
