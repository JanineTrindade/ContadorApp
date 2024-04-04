import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    )
  );
}
 class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}



class _ContadorState extends State<Contador> {
  
int contador = 0;


  void increment(){
    setState(() {

      if (contador >= 30){
        
      }
      else{
        contador++;
      }
 
    });
    
  }
  void decrement(){
   
    setState(() {

      if (contador <= 0){
        
      }
      else{
        contador--;
    }
    });
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 92, 0),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("image/restaurant.png"),fit: BoxFit.cover)
      ),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Pode entrar!", style:TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 255, 255, 255) ),),
      Text(contador.toString(), style:TextStyle(fontSize: 100.0, color: Color.fromARGB(255, 255, 255, 255) )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextButton(
              onPressed: increment, 
              child: Text("Entrar", style:TextStyle(fontSize: 17.0, color: Color.fromARGB(255, 0, 0, 0))),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              ),
           
           
           SizedBox(width: 64,),// ESPAÇO ENTRE OS BOTOES

            TextButton(onPressed: decrement,
             child: Text("Sair", style:TextStyle(fontSize: 17.0, color: Color.fromARGB(255, 0, 0, 0))),
             style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
             )
            ), 
          ]
        )
        ],
      ),
      )
    );
  }
}