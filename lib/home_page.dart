import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_DropDownButton.dart';

class HomePage extends StatelessWidget {
  late double _devicesHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _devicesHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _devicesHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_pageTitle(), _bookRideWidget()],
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

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _devicesHeight*0.50,
      width: _deviceWidth*0.65,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownbutton(
      values: const ['Nallasopara', 'Vasai'],
      width: _deviceWidth,
    );
  }

  Widget _travlersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownbutton(
          values: const ['1', '2', '3', '4', '5'],
          width: _deviceWidth * 0.42,
        ),
        CustomDropdownbutton(
          values: const [
            'Economy',
            'Premium Economy',
            'Business Class',
            'First Class',
          ],
          width: _deviceWidth * 0.42,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _devicesHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travlersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _devicesHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride!",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
