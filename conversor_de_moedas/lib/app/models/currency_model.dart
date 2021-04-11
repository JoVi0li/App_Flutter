class CurrencyModel {
  final String name;
  final double real;
  final double euro;
  final double dolar;
  final double bitcoin;

  CurrencyModel({this.name, this.real, this.euro, this.dolar, this.bitcoin});

  static List<CurrencyModel> getCurrency() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, euro: 0.15, dolar: 0.10, bitcoin: 0.000016),
      CurrencyModel(
          name: 'Euro', euro: 1.0, real: 6.62, dolar: 1.17, bitcoin: 0.00010),
      CurrencyModel(
          name: 'Dolar', dolar: 1.0, real: 5.65, euro: 0.85, bitcoin: 0.000088),
      CurrencyModel(
          name: 'Bitcoin',
          real: 84116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1.0),
    ];
  }
}
