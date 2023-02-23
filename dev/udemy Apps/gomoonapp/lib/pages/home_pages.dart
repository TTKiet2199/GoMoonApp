import 'package:flutter/material.dart';
import 'package:gomoonapp/pages/widgets/drop_down_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitleWidget(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitleWidget() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w800, fontSize: 70),
    );
  }

  Widget _destinationDropDownWidget() {
    return DropDownButtonCustom(values: const [
      'Asia station',
      'Europe station',
      'North america station',
      'Africa station'
    ], width: _deviceWidth);
  }

  Widget _travellerInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DropDownButtonCustom(
            values: const ['1', '2', '3', '4', '5', '6', '7', '8', '9'],
            width: _deviceWidth * 0.45),
        DropDownButtonCustom(
            values: ['Economy', 'Business', 'First', 'Privates'],
            width: _deviceWidth * 0.4)
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellerInformationWidget(),
          _rideButtonWidget(),
        ],
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      width: _deviceWidth * 0.65,
      height: _deviceHeight * 0.5,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/astro_moon.png'))),
    );
  }

  Widget _rideButtonWidget() {
    return Container(
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          'Book Ride!',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
