import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({super.key});

  @override
  State<home_Screen> createState() => _home_ScreenState();
}



class _home_ScreenState extends State<home_Screen> {
  

   bool _obscureText = false;
   
   TextEditingController HDPUTTY = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('HD PUTTY'),
      titleTextStyle: TextStyle(backgroundColor: Colors.blue,),
      ),
      
       body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/os.jpg'),
            fit: BoxFit.cover,
          ),
        ),

      child: Padding(
        
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          
          children: [
            TextField(
             decoration: InputDecoration(
              labelText: 'name',
              hintText: 'your name',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white),
             ),
             ),
             onChanged: (text){
              setState(() {
              HDPUTTY.text = text;
              });
             },
            
            ),
            SizedBox(height: 20),
              TextField(
             decoration: InputDecoration(
              labelText: 'your email',
              hintText: 'email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
             ),
             ),
            
      
            ),
             
             const SizedBox(height: 20,),
            TextField(
              obscureText: _obscureText,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Your Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {

                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              String name = HDPUTTY.text.trim();
              if(name.isEmpty) { print('provide name');
              }
              else{
                print('name $HDPUTTY');
              }
            }, child: const Text('submit'))

          ],
        
        ),
      ),
    ),
    );
  }
}