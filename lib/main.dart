import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getview_getwidget_in_getx/count_controller.dart';

void main() {

  Get.create(() => CountController());
  runApp(MyApp());
}

/*  GetView => If we have a single controller as a dependency then we can use
    GetView instead of StatelessWidget and avoid writing Get.find

    GetWidget => This is similar to GetView with one difference, it gives the
    same instance of Get.find every time. GetWidget becomes very useful when
    used in combination with Get.create
*/

/*
class MyApp extends GetView<CountController> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    return GetMaterialApp(
      title: 'GetView and GetWidget in GetX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetView and GetWidget in GetX'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=> Text('The button has been ${controller.count} pressed')),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}*/

class MyApp extends GetWidget<CountController> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetView and GetWidget in GetX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetView and GetWidget in GetX'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=> Text('The button has been ${controller.count} pressed'),
              ),

              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  controller.increment();
                  print('controller.hashCode ${controller.hashCode}');
                },
                child: Text(
                  'Increment',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
