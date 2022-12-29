/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Spec type in your schema. */
@immutable
class Spec extends Model {
  static const classType = const _SpecModelType();
  final String id;
  final String? _name;
  final String? _creator;
  final String? _year;
  final String? _description;
  final List<double>? _amounts;
  final List<String>? _units;
  final List<Component>? _components;
  final Source? _source;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SpecModelIdentifier get modelIdentifier {
      return SpecModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get creator {
    return _creator;
  }
  
  String? get year {
    return _year;
  }
  
  String? get description {
    return _description;
  }
  
  List<double> get amounts {
    try {
      return _amounts!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String> get units {
    try {
      return _units!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Component> get components {
    try {
      return _components!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Source get source {
    try {
      return _source!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Spec._internal({required this.id, required name, creator, year, description, required amounts, required units, required components, required source, createdAt, updatedAt}): _name = name, _creator = creator, _year = year, _description = description, _amounts = amounts, _units = units, _components = components, _source = source, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Spec({String? id, required String name, String? creator, String? year, String? description, required List<double> amounts, required List<String> units, required List<Component> components, required Source source}) {
    return Spec._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      creator: creator,
      year: year,
      description: description,
      amounts: amounts != null ? List<double>.unmodifiable(amounts) : amounts,
      units: units != null ? List<String>.unmodifiable(units) : units,
      components: components != null ? List<Component>.unmodifiable(components) : components,
      source: source);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Spec &&
      id == other.id &&
      _name == other._name &&
      _creator == other._creator &&
      _year == other._year &&
      _description == other._description &&
      DeepCollectionEquality().equals(_amounts, other._amounts) &&
      DeepCollectionEquality().equals(_units, other._units) &&
      DeepCollectionEquality().equals(_components, other._components) &&
      _source == other._source;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Spec {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("creator=" + "$_creator" + ", ");
    buffer.write("year=" + "$_year" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("amounts=" + (_amounts != null ? _amounts!.toString() : "null") + ", ");
    buffer.write("units=" + (_units != null ? _units!.toString() : "null") + ", ");
    buffer.write("source=" + (_source != null ? _source!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Spec copyWith({String? name, String? creator, String? year, String? description, List<double>? amounts, List<String>? units, List<Component>? components, Source? source}) {
    return Spec._internal(
      id: id,
      name: name ?? this.name,
      creator: creator ?? this.creator,
      year: year ?? this.year,
      description: description ?? this.description,
      amounts: amounts ?? this.amounts,
      units: units ?? this.units,
      components: components ?? this.components,
      source: source ?? this.source);
  }
  
  Spec.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _creator = json['creator'],
      _year = json['year'],
      _description = json['description'],
      _amounts = (json['amounts'] as List?)?.map((e) => (e as num).toDouble()).toList(),
      _units = json['units']?.cast<String>(),
      _components = json['components'] is List
        ? (json['components'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Component.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _source = json['source']?['serializedData'] != null
        ? Source.fromJson(new Map<String, dynamic>.from(json['source']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'creator': _creator, 'year': _year, 'description': _description, 'amounts': _amounts, 'units': _units, 'components': _components?.map((Component? e) => e?.toJson()).toList(), 'source': _source?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'creator': _creator, 'year': _year, 'description': _description, 'amounts': _amounts, 'units': _units, 'components': _components, 'source': _source, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<SpecModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<SpecModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField CREATOR = QueryField(fieldName: "creator");
  static final QueryField YEAR = QueryField(fieldName: "year");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField AMOUNTS = QueryField(fieldName: "amounts");
  static final QueryField UNITS = QueryField(fieldName: "units");
  static final QueryField COMPONENTS = QueryField(
    fieldName: "components",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Component).toString()));
  static final QueryField SOURCE = QueryField(
    fieldName: "source",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Source).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Spec";
    modelSchemaDefinition.pluralName = "Specs";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.CREATOR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.YEAR,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.AMOUNTS,
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.double))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Spec.UNITS,
      isRequired: true,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Spec.COMPONENTS,
      isRequired: false,
      ofModelName: (Component).toString(),
      associatedKey: Component.SPECCOMPONENTSID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Spec.SOURCE,
      isRequired: true,
      targetNames: ["sourceSpecsId"],
      ofModelName: (Source).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _SpecModelType extends ModelType<Spec> {
  const _SpecModelType();
  
  @override
  Spec fromJson(Map<String, dynamic> jsonData) {
    return Spec.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Spec] in your schema.
 */
@immutable
class SpecModelIdentifier implements ModelIdentifier<Spec> {
  final String id;

  /** Create an instance of SpecModelIdentifier using [id] the primary key. */
  const SpecModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'SpecModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SpecModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}