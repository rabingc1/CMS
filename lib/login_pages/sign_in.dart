import 'package:collegemanagmentsystem/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class signin extends StatelessWidget {
  final List<imageModel> data;
  const signin({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            /* Container(
          width: MediaQuery.of(context).size.width , // 80% of screen width
          height: MediaQuery.of(context).size.height * 1.5,

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(model[3].image,fit: BoxFit.cover,

                ),
                Text("log in ")

              ],
            ),
          ),
        )*/

            Container(
      width: MediaQuery.of(context).size.width, // 80% of screen width
      height: MediaQuery.of(context).size.height, // 80% of screen width

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            model[3].image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65, top: 400, bottom: 0),
              child: Container(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.arrow_circle_right_rounded)
                          ],
                        )),
                    Text("  "),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Sign up",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.arrow_circle_right_rounded)
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));

    /*ListView.builder(
        itemCount: model.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Column(
              children: [
                Image.asset(
                  model[3].image,

                ),

              ],
            ),
          );
        }
      )*/
  }

  // Foreground widget her
}
