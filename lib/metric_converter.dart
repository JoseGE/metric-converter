class MetricConverter {

  double _value;
  String _origin;
  String _destination;
  Map _metricFactor = {
    'cm': 1,
    'm': 0.01,
    'km':0.00001,
    'in':0.3937007874,
    'ft':0.03280839895,
    'mi':0.000006213711922
  };
  MetricConverter(number){
    _value =  double.tryParse(number[0].toString());
    _origin = number[1];
    _destination = number[2];
  }
  
  convert() {
    double cal = (_value/_metricFactor[_origin]) * _metricFactor[_destination];
    return cal;
   }
 

}