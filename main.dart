import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 104, 183, 248),
                  Color.fromARGB(255, 232, 17, 88),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 12.0,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black),
                ],
              ),
              child: SizedBox(
                height: 350,
                width: 450,
                child: Card(
                  color: const Color.fromARGB(53, 96, 125, 139),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFhvYvnDjr3qYAMcICqzYkec62Y03O2YGwmg&s',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Analytic Data',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Apple Officer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                
                              ],
                            ),
                          
                          )
                          ,Padding(padding: EdgeInsets.all(10)
                          ,child: Icon(Icons.bookmark_added,
                          color: Colors.white,),
                          )
                          ,
                        ],
                      ),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Container(
                                  color: Colors.black,
                                  child: const Center(
                                    child: Text(
                                      'Full time',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Container(
                                  color: Colors.black,
                                  child: const Center(
                                    child: Text(
                                      'Offline',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                            Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Container(
                                  color: Colors.black,
                                  child: const Center(
                                    child: Text(
                                      '1 Years EXP',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                   Container(
                    width: 300,
                    height: 100,
                    alignment: Alignment.center,
  child:Text(
    'Discover how you can make an impact:'
    ' See our areas of work, worldwide locations, '
    'and opportunities for students',
    style: TextStyle(color: Colors.white),
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
  ), 
)
],) 

,                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                         Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Container(
                                
                                  child: const Center(
                                    child: Text(
                                      '\$  250 / Month',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                              
                              Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Container(
                                  color: Colors.white,
                                
                                  child: const Center(
                                    child: Text(
                                      '1 Week Ago',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                    ,
                                  ),
                                
                                ),
                              ),
                            ),
                          ),

                            
                             ],
)

 ],
                  )
                  ,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
