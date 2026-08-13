enum OperationType {
  addition(symbol: '+'),
  subtraction(symbol: '-'),
  multiplication(symbol: 'x'),
  division(symbol: '\u00f7');

  const OperationType({required this.symbol});

  final String symbol;
}