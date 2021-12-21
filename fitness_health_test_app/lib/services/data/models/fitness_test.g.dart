// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitness_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FitnessTest _$FitnessTestFromJson(Map<String, dynamic> json) => FitnessTest(
      id: json['id'] as int,
      name: json['name'] as String,
      goal: json['goal'] as String,
      description: json['description'] as String,
      disease_analysis: json['disease_analysis'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$FitnessTestToJson(FitnessTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'goal': instance.goal,
      'description': instance.description,
      'disease_analysis': instance.disease_analysis,
      'image': instance.image,
    };
