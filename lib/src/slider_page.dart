import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 125.0;
  double _boxOpacity = 125.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders Page'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitchTile(),
            Divider(),
            _createSquare(),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.purple,
      label: 'Opacity of the box',
      value: _sliderValue,
      min: 0.0,
      max: 255.0,
      onChanged: (_blockCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
                _boxOpacity = value;
                print(value);
              });
            },
    );
  }

  Widget _createCheckbox() {
    // final check = Checkbox(
    //   value: _blockCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _blockCheck = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Block slider'),
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createSwitchTile() {
    return SwitchListTile(
      title: Text('Block slider'),
      value: _blockCheck,
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createSquare() {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(125, 245, 55, _boxOpacity / 255.0)),
    );
  }
}
