import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
                "MyCart"
                ),
            ),
          ),
          Offer_container(),
          Offer_container(),
          Offer_container(),
          CheckOut_Btn()
        ],
      ),
    );
  }
}

class CheckOut_Btn extends StatelessWidget {
  const CheckOut_Btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(34.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 83, 177, 117),
        ),
        height: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Text(
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
          "Go to CheckOut"
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 72, 158, 103),
    
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
                "12.99"
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}

class Offer_container extends StatelessWidget {
  const Offer_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(226, 226, 226, 226),
            width: 1
          ),
          bottom: BorderSide(
             color: Color.fromARGB(226, 226, 226, 226),
              width: 1
          )
        )
      ),
      height: 200,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                width: 130,
                height: 130,
                "https://i.ibb.co/vchKgGh/png-red-apple-isolated-white-background.png"
                ),
              Column(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    "Name Product"
                    ),
                  Text(
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(124, 124, 124, 124),
                      fontSize: 14
                    ),
                    "weight in Kg"
                    ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(
                          size: 45,
                          Icons.remove_circle_outline
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            style: TextStyle(fontSize: 22),
                            "1"
                            ),
                        ),
                        Icon(
                          size: 45,
                          Icons.add_box_rounded
                          )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    size: 45,
                    color: Color.fromARGB(124, 124, 124, 124),
                    Icons.highlight_remove
                    ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      "12.99"
                      ),
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}