class Operation {
  double _numA;
  double _numB;
  double _result;

  Operation(this._numA, this._numB);

  void add() => _result = _numA + _numB;

  void substract() => _result = _numA - _numB;

  void product() => _result = _numA * _numB;

  void division() => _result = _numA / _numB;

  double getResult() => _result;
}