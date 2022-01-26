

class WeekModel {
  final double id;
  final String week;
  final double value;

  WeekModel({
    required this.id,
    required this.week,
    required this.value,
  });

  WeekModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        week = json['weekEnum'],
        value = json['value'];

  Map<String, dynamic> toJson() => {
    'id' : id,
    'weekEnum' : week,
    'value' : value,
  };
}
