import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorSlider,
      min: 10,
      max: 400,
      // divisions: 10,
      label: '$_valorSlider',
      activeColor: Colors.deepPurple,
      onChanged: (_bloquearCheck)
          ? null
          : (double newValue) {
              print(newValue);
              setState(() {
                _valorSlider = newValue;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
        'https://static.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20180410032118&path-prefix=es',
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (bool value) {
    //     setState(() {
    //       _bloquearCheck = value;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (bool value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }
}
