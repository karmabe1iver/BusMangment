import 'package:bus_details/app/components/seat.dart';
import 'package:flutter/material.dart';

class BusLayout {
  static Widget twoistwoLayout() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8),
                child: Container(
                  height: 80,
                  width: 70,
                  child: Wrap(
                    runSpacing: 24,
                    spacing: 8,
                    children: [
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8),
                child: Container(
                  height: 80,
                  width: 70,
                  child: Wrap(
                    runSpacing: 24,
                    spacing: 8,
                    children: [
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      // children: [
      //   Container(height: 10, width: 10, color: MyTheme.red,)
      // ],
    );
  }

  static Widget oneistothreeLayout() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0,right: 8,bottom: 8),
                child: Container(
                  height: 40,
                  width: 40,
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 24,
                    spacing: 6,
                    children: [
                      PassengerSeat(),
                      PassengerSeat(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8),
                child: Container(
                  height: 80,
                  width: 100,
                  child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 24,
                    spacing: 6,
                    children: [
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                      PassengerSeat(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      // children: [
      //   Container(height: 10, width: 10, color: MyTheme.red,)
      // ],
    );
  }
}
