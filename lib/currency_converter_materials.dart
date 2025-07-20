import 'package:flutter/material.dart';

class CurrencyConverterMaterial extends StatefulWidget{
  const CurrencyConverterMaterial({super.key});

  @override
  State<CurrencyConverterMaterial>createState()=>
       _CurrencyConverterMaterial();
}

class _CurrencyConverterMaterial extends State<CurrencyConverterMaterial>{
  double result=0;
  String money='BDT';
  final TextEditingController textEditingController= TextEditingController();
  @override
  Widget build (BuildContext context){
    
    final border = OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0, style: BorderStyle.solid, color: Color.fromRGBO(3, 38, 57, 1)),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    final borderTwo= OutlineInputBorder(
      borderSide: const BorderSide(width: 3.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(60, 103, 131, 1),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 98, 167, 202),
        elevation: 0,
        title: Text(
          'Currency Converter',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          
          ),
        ),
        toolbarHeight: 80,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text(
                'The amount in $money is : $result',
                textAlign:TextAlign.center,
                style:const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                           ),
             ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in BDT',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: borderTwo,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result=double.parse(textEditingController.text)*0.0082;
                    money='USD';
                  });
                  
                }, 
              

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),

                child: const Text('USD'),
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result=double.parse(textEditingController.text)*0.0061;
                    money='POUND';
                  });
                  
                }, 

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),

                child: const Text('Pound'),
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result=double.parse(textEditingController.text)*0.0071;
                    money='EURO';
                  });
                  
                }, 

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),

                child: const Text('Euro'),
              ),
            ),
            ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result=0.0;
                    textEditingController.text='';
                    money='BDT';
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child:const Text(
                  'Refresh'
                  )
                ),
            ),
          ],
        ),
      ),
    );
  }
}

