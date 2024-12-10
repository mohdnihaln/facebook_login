import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
 Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            "FACEBOOK",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        leading: Icon(Icons.arrow_back_ios, size: 17),
        actions: [
          Icon(Icons.qr_code, size: 17),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.question_mark_outlined, size: 17),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center, // Center the container's content
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.start, // Center horizontally
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(.8),
                      child: Icon(Icons.person_2, color: Colors.white ),
                    ),
                  ),
                 SizedBox(width: 10),
                 Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
             SizedBox(height: 40), // Spacing between rows
             Text(
                "Enter your phone number",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
             Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Phone No',
                    fillColor: Colors.white.withOpacity(.5), 
                    filled: true,
                  ),
                ),
              ),
             SizedBox(height: 10), // Spacing between rows
             Text(
                "Enter your Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
             Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    fillColor: Colors.white.withOpacity(.5), 
                    filled: true,
                  ),
                ),
              ),
             SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 43, 0, 174),
                  ),
                  child: Text(
                    "OTP",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30,
                child: Row(
                 children: [ Padding(
                   padding: const EdgeInsets.only(right: 8.0),
                   child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                                 ),
                 ),
                Text(
                  "|  Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                ]
                ),
              ),
              Center(
                child:  Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ElevatedButton(
                       onPressed: () { },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(style: TextStyle(color: Colors.white, fontSize: 20), 'Login'),
                  ),
                ),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
