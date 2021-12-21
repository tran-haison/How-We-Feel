import 'package:json_annotation/json_annotation.dart';

part 'fitness_test.g.dart';

@JsonSerializable()
class FitnessTest {
  FitnessTest({
    required this.id,
    required this.name,
    required this.goal,
    required this.description,
    required this.disease_analysis,
    required this.image,
  });

  int id;
  String name;
  String goal;
  String description;
  String disease_analysis;
  String image;

  factory FitnessTest.fromJson(Map<String, dynamic> json) => _$FitnessTestFromJson(json);
  Map<String, dynamic> toJson() => _$FitnessTestToJson(this);
}