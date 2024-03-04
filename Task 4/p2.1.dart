class Car {
  String _model;
  int _year;
  double _mileage;
  bool _isAutomatic;

  Car(this._model, this._year, this._mileage, this._isAutomatic);

  String get model {
    return _model;
  }

  int get year {
    return _year;
  }

  double get mileage {
    return _mileage;
  }

  set Mileage(double mileage) {
    this._mileage = mileage;
  }
}
