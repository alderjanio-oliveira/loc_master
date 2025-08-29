// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $VehiclesTable extends Vehicles with TableInfo<$VehiclesTable, Vehicle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VehiclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _plateMeta = const VerificationMeta('plate');
  @override
  late final GeneratedColumn<String> plate = GeneratedColumn<String>(
      'plate', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 7, maxTextLength: 8),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 30),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
      'model', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 30),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
      'year', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('Consórcio'));
  static const VerificationMeta _acquisitionDateMeta =
      const VerificationMeta('acquisitionDate');
  @override
  late final GeneratedColumn<DateTime> acquisitionDate =
      GeneratedColumn<DateTime>('acquisition_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _manufacturedDateMeta =
      const VerificationMeta('manufacturedDate');
  @override
  late final GeneratedColumn<DateTime> manufacturedDate =
      GeneratedColumn<DateTime>('manufactured_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _priceInstallmentMeta =
      const VerificationMeta('priceInstallment');
  @override
  late final GeneratedColumn<double> priceInstallment = GeneratedColumn<double>(
      'price_installment', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
      'amount', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        description,
        plate,
        brand,
        model,
        year,
        status,
        acquisitionDate,
        manufacturedDate,
        priceInstallment,
        amount,
        imagePath
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vehicles';
  @override
  VerificationContext validateIntegrity(Insertable<Vehicle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('plate')) {
      context.handle(
          _plateMeta, plate.isAcceptableOrUnknown(data['plate']!, _plateMeta));
    } else if (isInserting) {
      context.missing(_plateMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
          _modelMeta, model.isAcceptableOrUnknown(data['model']!, _modelMeta));
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('acquisition_date')) {
      context.handle(
          _acquisitionDateMeta,
          acquisitionDate.isAcceptableOrUnknown(
              data['acquisition_date']!, _acquisitionDateMeta));
    }
    if (data.containsKey('manufactured_date')) {
      context.handle(
          _manufacturedDateMeta,
          manufacturedDate.isAcceptableOrUnknown(
              data['manufactured_date']!, _manufacturedDateMeta));
    }
    if (data.containsKey('price_installment')) {
      context.handle(
          _priceInstallmentMeta,
          priceInstallment.isAcceptableOrUnknown(
              data['price_installment']!, _priceInstallmentMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Vehicle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Vehicle(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      plate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}plate'])!,
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand'])!,
      model: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}model'])!,
      year: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}year']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      acquisitionDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}acquisition_date']),
      manufacturedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}manufactured_date']),
      priceInstallment: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}price_installment']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount']),
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path']),
    );
  }

  @override
  $VehiclesTable createAlias(String alias) {
    return $VehiclesTable(attachedDatabase, alias);
  }
}

class Vehicle extends DataClass implements Insertable<Vehicle> {
  final int? id;
  final String? description;
  final String plate;
  final String brand;
  final String model;
  final int? year;
  final String status;
  final DateTime? acquisitionDate;
  final DateTime? manufacturedDate;
  final double? priceInstallment;
  final int? amount;
  final String? imagePath;
  const Vehicle(
      {this.id,
      this.description,
      required this.plate,
      required this.brand,
      required this.model,
      this.year,
      required this.status,
      this.acquisitionDate,
      this.manufacturedDate,
      this.priceInstallment,
      this.amount,
      this.imagePath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['plate'] = Variable<String>(plate);
    map['brand'] = Variable<String>(brand);
    map['model'] = Variable<String>(model);
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int>(year);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || acquisitionDate != null) {
      map['acquisition_date'] = Variable<DateTime>(acquisitionDate);
    }
    if (!nullToAbsent || manufacturedDate != null) {
      map['manufactured_date'] = Variable<DateTime>(manufacturedDate);
    }
    if (!nullToAbsent || priceInstallment != null) {
      map['price_installment'] = Variable<double>(priceInstallment);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<int>(amount);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    return map;
  }

  VehiclesCompanion toCompanion(bool nullToAbsent) {
    return VehiclesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      plate: Value(plate),
      brand: Value(brand),
      model: Value(model),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      status: Value(status),
      acquisitionDate: acquisitionDate == null && nullToAbsent
          ? const Value.absent()
          : Value(acquisitionDate),
      manufacturedDate: manufacturedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(manufacturedDate),
      priceInstallment: priceInstallment == null && nullToAbsent
          ? const Value.absent()
          : Value(priceInstallment),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
    );
  }

  factory Vehicle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Vehicle(
      id: serializer.fromJson<int?>(json['id']),
      description: serializer.fromJson<String?>(json['description']),
      plate: serializer.fromJson<String>(json['plate']),
      brand: serializer.fromJson<String>(json['brand']),
      model: serializer.fromJson<String>(json['model']),
      year: serializer.fromJson<int?>(json['year']),
      status: serializer.fromJson<String>(json['status']),
      acquisitionDate: serializer.fromJson<DateTime?>(json['acquisitionDate']),
      manufacturedDate:
          serializer.fromJson<DateTime?>(json['manufacturedDate']),
      priceInstallment: serializer.fromJson<double?>(json['priceInstallment']),
      amount: serializer.fromJson<int?>(json['amount']),
      imagePath: serializer.fromJson<String?>(json['imagePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'description': serializer.toJson<String?>(description),
      'plate': serializer.toJson<String>(plate),
      'brand': serializer.toJson<String>(brand),
      'model': serializer.toJson<String>(model),
      'year': serializer.toJson<int?>(year),
      'status': serializer.toJson<String>(status),
      'acquisitionDate': serializer.toJson<DateTime?>(acquisitionDate),
      'manufacturedDate': serializer.toJson<DateTime?>(manufacturedDate),
      'priceInstallment': serializer.toJson<double?>(priceInstallment),
      'amount': serializer.toJson<int?>(amount),
      'imagePath': serializer.toJson<String?>(imagePath),
    };
  }

  Vehicle copyWith(
          {Value<int?> id = const Value.absent(),
          Value<String?> description = const Value.absent(),
          String? plate,
          String? brand,
          String? model,
          Value<int?> year = const Value.absent(),
          String? status,
          Value<DateTime?> acquisitionDate = const Value.absent(),
          Value<DateTime?> manufacturedDate = const Value.absent(),
          Value<double?> priceInstallment = const Value.absent(),
          Value<int?> amount = const Value.absent(),
          Value<String?> imagePath = const Value.absent()}) =>
      Vehicle(
        id: id.present ? id.value : this.id,
        description: description.present ? description.value : this.description,
        plate: plate ?? this.plate,
        brand: brand ?? this.brand,
        model: model ?? this.model,
        year: year.present ? year.value : this.year,
        status: status ?? this.status,
        acquisitionDate: acquisitionDate.present
            ? acquisitionDate.value
            : this.acquisitionDate,
        manufacturedDate: manufacturedDate.present
            ? manufacturedDate.value
            : this.manufacturedDate,
        priceInstallment: priceInstallment.present
            ? priceInstallment.value
            : this.priceInstallment,
        amount: amount.present ? amount.value : this.amount,
        imagePath: imagePath.present ? imagePath.value : this.imagePath,
      );
  Vehicle copyWithCompanion(VehiclesCompanion data) {
    return Vehicle(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      plate: data.plate.present ? data.plate.value : this.plate,
      brand: data.brand.present ? data.brand.value : this.brand,
      model: data.model.present ? data.model.value : this.model,
      year: data.year.present ? data.year.value : this.year,
      status: data.status.present ? data.status.value : this.status,
      acquisitionDate: data.acquisitionDate.present
          ? data.acquisitionDate.value
          : this.acquisitionDate,
      manufacturedDate: data.manufacturedDate.present
          ? data.manufacturedDate.value
          : this.manufacturedDate,
      priceInstallment: data.priceInstallment.present
          ? data.priceInstallment.value
          : this.priceInstallment,
      amount: data.amount.present ? data.amount.value : this.amount,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Vehicle(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('status: $status, ')
          ..write('acquisitionDate: $acquisitionDate, ')
          ..write('manufacturedDate: $manufacturedDate, ')
          ..write('priceInstallment: $priceInstallment, ')
          ..write('amount: $amount, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      description,
      plate,
      brand,
      model,
      year,
      status,
      acquisitionDate,
      manufacturedDate,
      priceInstallment,
      amount,
      imagePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Vehicle &&
          other.id == this.id &&
          other.description == this.description &&
          other.plate == this.plate &&
          other.brand == this.brand &&
          other.model == this.model &&
          other.year == this.year &&
          other.status == this.status &&
          other.acquisitionDate == this.acquisitionDate &&
          other.manufacturedDate == this.manufacturedDate &&
          other.priceInstallment == this.priceInstallment &&
          other.amount == this.amount &&
          other.imagePath == this.imagePath);
}

class VehiclesCompanion extends UpdateCompanion<Vehicle> {
  final Value<int?> id;
  final Value<String?> description;
  final Value<String> plate;
  final Value<String> brand;
  final Value<String> model;
  final Value<int?> year;
  final Value<String> status;
  final Value<DateTime?> acquisitionDate;
  final Value<DateTime?> manufacturedDate;
  final Value<double?> priceInstallment;
  final Value<int?> amount;
  final Value<String?> imagePath;
  const VehiclesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.plate = const Value.absent(),
    this.brand = const Value.absent(),
    this.model = const Value.absent(),
    this.year = const Value.absent(),
    this.status = const Value.absent(),
    this.acquisitionDate = const Value.absent(),
    this.manufacturedDate = const Value.absent(),
    this.priceInstallment = const Value.absent(),
    this.amount = const Value.absent(),
    this.imagePath = const Value.absent(),
  });
  VehiclesCompanion.insert({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    required String plate,
    required String brand,
    required String model,
    this.year = const Value.absent(),
    this.status = const Value.absent(),
    this.acquisitionDate = const Value.absent(),
    this.manufacturedDate = const Value.absent(),
    this.priceInstallment = const Value.absent(),
    this.amount = const Value.absent(),
    this.imagePath = const Value.absent(),
  })  : plate = Value(plate),
        brand = Value(brand),
        model = Value(model);
  static Insertable<Vehicle> custom({
    Expression<int>? id,
    Expression<String>? description,
    Expression<String>? plate,
    Expression<String>? brand,
    Expression<String>? model,
    Expression<int>? year,
    Expression<String>? status,
    Expression<DateTime>? acquisitionDate,
    Expression<DateTime>? manufacturedDate,
    Expression<double>? priceInstallment,
    Expression<int>? amount,
    Expression<String>? imagePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (plate != null) 'plate': plate,
      if (brand != null) 'brand': brand,
      if (model != null) 'model': model,
      if (year != null) 'year': year,
      if (status != null) 'status': status,
      if (acquisitionDate != null) 'acquisition_date': acquisitionDate,
      if (manufacturedDate != null) 'manufactured_date': manufacturedDate,
      if (priceInstallment != null) 'price_installment': priceInstallment,
      if (amount != null) 'amount': amount,
      if (imagePath != null) 'image_path': imagePath,
    });
  }

  VehiclesCompanion copyWith(
      {Value<int?>? id,
      Value<String?>? description,
      Value<String>? plate,
      Value<String>? brand,
      Value<String>? model,
      Value<int?>? year,
      Value<String>? status,
      Value<DateTime?>? acquisitionDate,
      Value<DateTime?>? manufacturedDate,
      Value<double?>? priceInstallment,
      Value<int?>? amount,
      Value<String?>? imagePath}) {
    return VehiclesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      plate: plate ?? this.plate,
      brand: brand ?? this.brand,
      model: model ?? this.model,
      year: year ?? this.year,
      status: status ?? this.status,
      acquisitionDate: acquisitionDate ?? this.acquisitionDate,
      manufacturedDate: manufacturedDate ?? this.manufacturedDate,
      priceInstallment: priceInstallment ?? this.priceInstallment,
      amount: amount ?? this.amount,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (plate.present) {
      map['plate'] = Variable<String>(plate.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (acquisitionDate.present) {
      map['acquisition_date'] = Variable<DateTime>(acquisitionDate.value);
    }
    if (manufacturedDate.present) {
      map['manufactured_date'] = Variable<DateTime>(manufacturedDate.value);
    }
    if (priceInstallment.present) {
      map['price_installment'] = Variable<double>(priceInstallment.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VehiclesCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('plate: $plate, ')
          ..write('brand: $brand, ')
          ..write('model: $model, ')
          ..write('year: $year, ')
          ..write('status: $status, ')
          ..write('acquisitionDate: $acquisitionDate, ')
          ..write('manufacturedDate: $manufacturedDate, ')
          ..write('priceInstallment: $priceInstallment, ')
          ..write('amount: $amount, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }
}

class $RentersTable extends Renters with TableInfo<$RentersTable, Renter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RentersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cnhMeta = const VerificationMeta('cnh');
  @override
  late final GeneratedColumn<String> cnh = GeneratedColumn<String>(
      'cnh', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 200),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 10, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 14),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isBlacklistedMeta =
      const VerificationMeta('isBlacklisted');
  @override
  late final GeneratedColumn<bool> isBlacklisted = GeneratedColumn<bool>(
      'is_blacklisted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_blacklisted" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _blacklistReasonMeta =
      const VerificationMeta('blacklistReason');
  @override
  late final GeneratedColumn<String> blacklistReason = GeneratedColumn<String>(
      'blacklist_reason', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        cnh,
        address,
        phone,
        email,
        cpf,
        notes,
        isBlacklisted,
        blacklistReason
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'renters';
  @override
  VerificationContext validateIntegrity(Insertable<Renter> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('cnh')) {
      context.handle(
          _cnhMeta, cnh.isAcceptableOrUnknown(data['cnh']!, _cnhMeta));
    } else if (isInserting) {
      context.missing(_cnhMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('is_blacklisted')) {
      context.handle(
          _isBlacklistedMeta,
          isBlacklisted.isAcceptableOrUnknown(
              data['is_blacklisted']!, _isBlacklistedMeta));
    }
    if (data.containsKey('blacklist_reason')) {
      context.handle(
          _blacklistReasonMeta,
          blacklistReason.isAcceptableOrUnknown(
              data['blacklist_reason']!, _blacklistReasonMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Renter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Renter(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      cnh: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cnh'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      isBlacklisted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_blacklisted'])!,
      blacklistReason: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}blacklist_reason']),
    );
  }

  @override
  $RentersTable createAlias(String alias) {
    return $RentersTable(attachedDatabase, alias);
  }
}

class Renter extends DataClass implements Insertable<Renter> {
  final int? id;
  final String name;
  final String cnh;
  final String address;
  final String phone;
  final String? email;
  final String cpf;
  final String? notes;
  final bool isBlacklisted;
  final String? blacklistReason;
  const Renter(
      {this.id,
      required this.name,
      required this.cnh,
      required this.address,
      required this.phone,
      this.email,
      required this.cpf,
      this.notes,
      required this.isBlacklisted,
      this.blacklistReason});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['name'] = Variable<String>(name);
    map['cnh'] = Variable<String>(cnh);
    map['address'] = Variable<String>(address);
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    map['cpf'] = Variable<String>(cpf);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['is_blacklisted'] = Variable<bool>(isBlacklisted);
    if (!nullToAbsent || blacklistReason != null) {
      map['blacklist_reason'] = Variable<String>(blacklistReason);
    }
    return map;
  }

  RentersCompanion toCompanion(bool nullToAbsent) {
    return RentersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      cnh: Value(cnh),
      address: Value(address),
      phone: Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      cpf: Value(cpf),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      isBlacklisted: Value(isBlacklisted),
      blacklistReason: blacklistReason == null && nullToAbsent
          ? const Value.absent()
          : Value(blacklistReason),
    );
  }

  factory Renter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Renter(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      cnh: serializer.fromJson<String>(json['cnh']),
      address: serializer.fromJson<String>(json['address']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      cpf: serializer.fromJson<String>(json['cpf']),
      notes: serializer.fromJson<String?>(json['notes']),
      isBlacklisted: serializer.fromJson<bool>(json['isBlacklisted']),
      blacklistReason: serializer.fromJson<String?>(json['blacklistReason']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'cnh': serializer.toJson<String>(cnh),
      'address': serializer.toJson<String>(address),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String?>(email),
      'cpf': serializer.toJson<String>(cpf),
      'notes': serializer.toJson<String?>(notes),
      'isBlacklisted': serializer.toJson<bool>(isBlacklisted),
      'blacklistReason': serializer.toJson<String?>(blacklistReason),
    };
  }

  Renter copyWith(
          {Value<int?> id = const Value.absent(),
          String? name,
          String? cnh,
          String? address,
          String? phone,
          Value<String?> email = const Value.absent(),
          String? cpf,
          Value<String?> notes = const Value.absent(),
          bool? isBlacklisted,
          Value<String?> blacklistReason = const Value.absent()}) =>
      Renter(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
        cnh: cnh ?? this.cnh,
        address: address ?? this.address,
        phone: phone ?? this.phone,
        email: email.present ? email.value : this.email,
        cpf: cpf ?? this.cpf,
        notes: notes.present ? notes.value : this.notes,
        isBlacklisted: isBlacklisted ?? this.isBlacklisted,
        blacklistReason: blacklistReason.present
            ? blacklistReason.value
            : this.blacklistReason,
      );
  Renter copyWithCompanion(RentersCompanion data) {
    return Renter(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      cnh: data.cnh.present ? data.cnh.value : this.cnh,
      address: data.address.present ? data.address.value : this.address,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      notes: data.notes.present ? data.notes.value : this.notes,
      isBlacklisted: data.isBlacklisted.present
          ? data.isBlacklisted.value
          : this.isBlacklisted,
      blacklistReason: data.blacklistReason.present
          ? data.blacklistReason.value
          : this.blacklistReason,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Renter(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('cnh: $cnh, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('cpf: $cpf, ')
          ..write('notes: $notes, ')
          ..write('isBlacklisted: $isBlacklisted, ')
          ..write('blacklistReason: $blacklistReason')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, cnh, address, phone, email, cpf,
      notes, isBlacklisted, blacklistReason);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Renter &&
          other.id == this.id &&
          other.name == this.name &&
          other.cnh == this.cnh &&
          other.address == this.address &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.cpf == this.cpf &&
          other.notes == this.notes &&
          other.isBlacklisted == this.isBlacklisted &&
          other.blacklistReason == this.blacklistReason);
}

class RentersCompanion extends UpdateCompanion<Renter> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String> cnh;
  final Value<String> address;
  final Value<String> phone;
  final Value<String?> email;
  final Value<String> cpf;
  final Value<String?> notes;
  final Value<bool> isBlacklisted;
  final Value<String?> blacklistReason;
  const RentersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.cnh = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.cpf = const Value.absent(),
    this.notes = const Value.absent(),
    this.isBlacklisted = const Value.absent(),
    this.blacklistReason = const Value.absent(),
  });
  RentersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String cnh,
    required String address,
    required String phone,
    this.email = const Value.absent(),
    required String cpf,
    this.notes = const Value.absent(),
    this.isBlacklisted = const Value.absent(),
    this.blacklistReason = const Value.absent(),
  })  : name = Value(name),
        cnh = Value(cnh),
        address = Value(address),
        phone = Value(phone),
        cpf = Value(cpf);
  static Insertable<Renter> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? cnh,
    Expression<String>? address,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? cpf,
    Expression<String>? notes,
    Expression<bool>? isBlacklisted,
    Expression<String>? blacklistReason,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (cnh != null) 'cnh': cnh,
      if (address != null) 'address': address,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (cpf != null) 'cpf': cpf,
      if (notes != null) 'notes': notes,
      if (isBlacklisted != null) 'is_blacklisted': isBlacklisted,
      if (blacklistReason != null) 'blacklist_reason': blacklistReason,
    });
  }

  RentersCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<String>? cnh,
      Value<String>? address,
      Value<String>? phone,
      Value<String?>? email,
      Value<String>? cpf,
      Value<String?>? notes,
      Value<bool>? isBlacklisted,
      Value<String?>? blacklistReason}) {
    return RentersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      cnh: cnh ?? this.cnh,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      cpf: cpf ?? this.cpf,
      notes: notes ?? this.notes,
      isBlacklisted: isBlacklisted ?? this.isBlacklisted,
      blacklistReason: blacklistReason ?? this.blacklistReason,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (cnh.present) {
      map['cnh'] = Variable<String>(cnh.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (isBlacklisted.present) {
      map['is_blacklisted'] = Variable<bool>(isBlacklisted.value);
    }
    if (blacklistReason.present) {
      map['blacklist_reason'] = Variable<String>(blacklistReason.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RentersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('cnh: $cnh, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('cpf: $cpf, ')
          ..write('notes: $notes, ')
          ..write('isBlacklisted: $isBlacklisted, ')
          ..write('blacklistReason: $blacklistReason')
          ..write(')'))
        .toString();
  }
}

class $RentalsTable extends Rentals with TableInfo<$RentalsTable, Rental> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RentalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _vehicleIdMeta =
      const VerificationMeta('vehicleId');
  @override
  late final GeneratedColumn<int> vehicleId = GeneratedColumn<int>(
      'vehicle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES vehicles (id)'));
  static const VerificationMeta _renterIdMeta =
      const VerificationMeta('renterId');
  @override
  late final GeneratedColumn<int> renterId = GeneratedColumn<int>(
      'renter_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES renters (id)'));
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endDateMeta =
      const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _returnDateMeta =
      const VerificationMeta('returnDate');
  @override
  late final GeneratedColumn<DateTime> returnDate = GeneratedColumn<DateTime>(
      'return_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _totalValueMeta =
      const VerificationMeta('totalValue');
  @override
  late final GeneratedColumn<double> totalValue = GeneratedColumn<double>(
      'total_value', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _paidValueMeta =
      const VerificationMeta('paidValue');
  @override
  late final GeneratedColumn<double> paidValue = GeneratedColumn<double>(
      'paid_value', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('full'));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('active'));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        vehicleId,
        renterId,
        startDate,
        endDate,
        returnDate,
        totalValue,
        paidValue,
        type,
        status,
        notes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rentals';
  @override
  VerificationContext validateIntegrity(Insertable<Rental> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('vehicle_id')) {
      context.handle(_vehicleIdMeta,
          vehicleId.isAcceptableOrUnknown(data['vehicle_id']!, _vehicleIdMeta));
    } else if (isInserting) {
      context.missing(_vehicleIdMeta);
    }
    if (data.containsKey('renter_id')) {
      context.handle(_renterIdMeta,
          renterId.isAcceptableOrUnknown(data['renter_id']!, _renterIdMeta));
    } else if (isInserting) {
      context.missing(_renterIdMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('return_date')) {
      context.handle(
          _returnDateMeta,
          returnDate.isAcceptableOrUnknown(
              data['return_date']!, _returnDateMeta));
    }
    if (data.containsKey('total_value')) {
      context.handle(
          _totalValueMeta,
          totalValue.isAcceptableOrUnknown(
              data['total_value']!, _totalValueMeta));
    }
    if (data.containsKey('paid_value')) {
      context.handle(_paidValueMeta,
          paidValue.isAcceptableOrUnknown(data['paid_value']!, _paidValueMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Rental map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Rental(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      vehicleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vehicle_id'])!,
      renterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}renter_id'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date']),
      returnDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}return_date']),
      totalValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_value']),
      paidValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}paid_value'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
    );
  }

  @override
  $RentalsTable createAlias(String alias) {
    return $RentalsTable(attachedDatabase, alias);
  }
}

class Rental extends DataClass implements Insertable<Rental> {
  final int id;
  final int vehicleId;
  final int renterId;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? returnDate;
  final double? totalValue;
  final double paidValue;
  final String type;
  final String status;
  final String? notes;
  const Rental(
      {required this.id,
      required this.vehicleId,
      required this.renterId,
      this.startDate,
      this.endDate,
      this.returnDate,
      this.totalValue,
      required this.paidValue,
      required this.type,
      required this.status,
      this.notes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['vehicle_id'] = Variable<int>(vehicleId);
    map['renter_id'] = Variable<int>(renterId);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || returnDate != null) {
      map['return_date'] = Variable<DateTime>(returnDate);
    }
    if (!nullToAbsent || totalValue != null) {
      map['total_value'] = Variable<double>(totalValue);
    }
    map['paid_value'] = Variable<double>(paidValue);
    map['type'] = Variable<String>(type);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  RentalsCompanion toCompanion(bool nullToAbsent) {
    return RentalsCompanion(
      id: Value(id),
      vehicleId: Value(vehicleId),
      renterId: Value(renterId),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      returnDate: returnDate == null && nullToAbsent
          ? const Value.absent()
          : Value(returnDate),
      totalValue: totalValue == null && nullToAbsent
          ? const Value.absent()
          : Value(totalValue),
      paidValue: Value(paidValue),
      type: Value(type),
      status: Value(status),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
    );
  }

  factory Rental.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Rental(
      id: serializer.fromJson<int>(json['id']),
      vehicleId: serializer.fromJson<int>(json['vehicleId']),
      renterId: serializer.fromJson<int>(json['renterId']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      returnDate: serializer.fromJson<DateTime?>(json['returnDate']),
      totalValue: serializer.fromJson<double?>(json['totalValue']),
      paidValue: serializer.fromJson<double>(json['paidValue']),
      type: serializer.fromJson<String>(json['type']),
      status: serializer.fromJson<String>(json['status']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'vehicleId': serializer.toJson<int>(vehicleId),
      'renterId': serializer.toJson<int>(renterId),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'returnDate': serializer.toJson<DateTime?>(returnDate),
      'totalValue': serializer.toJson<double?>(totalValue),
      'paidValue': serializer.toJson<double>(paidValue),
      'type': serializer.toJson<String>(type),
      'status': serializer.toJson<String>(status),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  Rental copyWith(
          {int? id,
          int? vehicleId,
          int? renterId,
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<DateTime?> returnDate = const Value.absent(),
          Value<double?> totalValue = const Value.absent(),
          double? paidValue,
          String? type,
          String? status,
          Value<String?> notes = const Value.absent()}) =>
      Rental(
        id: id ?? this.id,
        vehicleId: vehicleId ?? this.vehicleId,
        renterId: renterId ?? this.renterId,
        startDate: startDate.present ? startDate.value : this.startDate,
        endDate: endDate.present ? endDate.value : this.endDate,
        returnDate: returnDate.present ? returnDate.value : this.returnDate,
        totalValue: totalValue.present ? totalValue.value : this.totalValue,
        paidValue: paidValue ?? this.paidValue,
        type: type ?? this.type,
        status: status ?? this.status,
        notes: notes.present ? notes.value : this.notes,
      );
  Rental copyWithCompanion(RentalsCompanion data) {
    return Rental(
      id: data.id.present ? data.id.value : this.id,
      vehicleId: data.vehicleId.present ? data.vehicleId.value : this.vehicleId,
      renterId: data.renterId.present ? data.renterId.value : this.renterId,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      returnDate:
          data.returnDate.present ? data.returnDate.value : this.returnDate,
      totalValue:
          data.totalValue.present ? data.totalValue.value : this.totalValue,
      paidValue: data.paidValue.present ? data.paidValue.value : this.paidValue,
      type: data.type.present ? data.type.value : this.type,
      status: data.status.present ? data.status.value : this.status,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Rental(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('renterId: $renterId, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('totalValue: $totalValue, ')
          ..write('paidValue: $paidValue, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, vehicleId, renterId, startDate, endDate,
      returnDate, totalValue, paidValue, type, status, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Rental &&
          other.id == this.id &&
          other.vehicleId == this.vehicleId &&
          other.renterId == this.renterId &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.returnDate == this.returnDate &&
          other.totalValue == this.totalValue &&
          other.paidValue == this.paidValue &&
          other.type == this.type &&
          other.status == this.status &&
          other.notes == this.notes);
}

class RentalsCompanion extends UpdateCompanion<Rental> {
  final Value<int> id;
  final Value<int> vehicleId;
  final Value<int> renterId;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<DateTime?> returnDate;
  final Value<double?> totalValue;
  final Value<double> paidValue;
  final Value<String> type;
  final Value<String> status;
  final Value<String?> notes;
  const RentalsCompanion({
    this.id = const Value.absent(),
    this.vehicleId = const Value.absent(),
    this.renterId = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.returnDate = const Value.absent(),
    this.totalValue = const Value.absent(),
    this.paidValue = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
    this.notes = const Value.absent(),
  });
  RentalsCompanion.insert({
    this.id = const Value.absent(),
    required int vehicleId,
    required int renterId,
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.returnDate = const Value.absent(),
    this.totalValue = const Value.absent(),
    this.paidValue = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
    this.notes = const Value.absent(),
  })  : vehicleId = Value(vehicleId),
        renterId = Value(renterId);
  static Insertable<Rental> custom({
    Expression<int>? id,
    Expression<int>? vehicleId,
    Expression<int>? renterId,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<DateTime>? returnDate,
    Expression<double>? totalValue,
    Expression<double>? paidValue,
    Expression<String>? type,
    Expression<String>? status,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (vehicleId != null) 'vehicle_id': vehicleId,
      if (renterId != null) 'renter_id': renterId,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (returnDate != null) 'return_date': returnDate,
      if (totalValue != null) 'total_value': totalValue,
      if (paidValue != null) 'paid_value': paidValue,
      if (type != null) 'type': type,
      if (status != null) 'status': status,
      if (notes != null) 'notes': notes,
    });
  }

  RentalsCompanion copyWith(
      {Value<int>? id,
      Value<int>? vehicleId,
      Value<int>? renterId,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<DateTime?>? returnDate,
      Value<double?>? totalValue,
      Value<double>? paidValue,
      Value<String>? type,
      Value<String>? status,
      Value<String?>? notes}) {
    return RentalsCompanion(
      id: id ?? this.id,
      vehicleId: vehicleId ?? this.vehicleId,
      renterId: renterId ?? this.renterId,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      returnDate: returnDate ?? this.returnDate,
      totalValue: totalValue ?? this.totalValue,
      paidValue: paidValue ?? this.paidValue,
      type: type ?? this.type,
      status: status ?? this.status,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (vehicleId.present) {
      map['vehicle_id'] = Variable<int>(vehicleId.value);
    }
    if (renterId.present) {
      map['renter_id'] = Variable<int>(renterId.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (returnDate.present) {
      map['return_date'] = Variable<DateTime>(returnDate.value);
    }
    if (totalValue.present) {
      map['total_value'] = Variable<double>(totalValue.value);
    }
    if (paidValue.present) {
      map['paid_value'] = Variable<double>(paidValue.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RentalsCompanion(')
          ..write('id: $id, ')
          ..write('vehicleId: $vehicleId, ')
          ..write('renterId: $renterId, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('returnDate: $returnDate, ')
          ..write('totalValue: $totalValue, ')
          ..write('paidValue: $paidValue, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $PaymentsTable extends Payments with TableInfo<$PaymentsTable, Payment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _renterIdMeta =
      const VerificationMeta('renterId');
  @override
  late final GeneratedColumn<int> renterId = GeneratedColumn<int>(
      'renter_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES renters (id)'));
  static const VerificationMeta _rentalIdMeta =
      const VerificationMeta('rentalId');
  @override
  late final GeneratedColumn<int> rentalId = GeneratedColumn<int>(
      'rental_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES rentals (id)'));
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
      'method', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, renterId, rentalId, price, date, type, description, method];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payments';
  @override
  VerificationContext validateIntegrity(Insertable<Payment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('renter_id')) {
      context.handle(_renterIdMeta,
          renterId.isAcceptableOrUnknown(data['renter_id']!, _renterIdMeta));
    } else if (isInserting) {
      context.missing(_renterIdMeta);
    }
    if (data.containsKey('rental_id')) {
      context.handle(_rentalIdMeta,
          rentalId.isAcceptableOrUnknown(data['rental_id']!, _rentalIdMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('method')) {
      context.handle(_methodMeta,
          method.isAcceptableOrUnknown(data['method']!, _methodMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Payment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Payment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      renterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}renter_id'])!,
      rentalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rental_id']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      method: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method']),
    );
  }

  @override
  $PaymentsTable createAlias(String alias) {
    return $PaymentsTable(attachedDatabase, alias);
  }
}

class Payment extends DataClass implements Insertable<Payment> {
  final int id;
  final int renterId;
  final int? rentalId;
  final double price;
  final DateTime date;
  final String? type;
  final String? description;
  final String? method;
  const Payment(
      {required this.id,
      required this.renterId,
      this.rentalId,
      required this.price,
      required this.date,
      this.type,
      this.description,
      this.method});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['renter_id'] = Variable<int>(renterId);
    if (!nullToAbsent || rentalId != null) {
      map['rental_id'] = Variable<int>(rentalId);
    }
    map['price'] = Variable<double>(price);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || method != null) {
      map['method'] = Variable<String>(method);
    }
    return map;
  }

  PaymentsCompanion toCompanion(bool nullToAbsent) {
    return PaymentsCompanion(
      id: Value(id),
      renterId: Value(renterId),
      rentalId: rentalId == null && nullToAbsent
          ? const Value.absent()
          : Value(rentalId),
      price: Value(price),
      date: Value(date),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      method:
          method == null && nullToAbsent ? const Value.absent() : Value(method),
    );
  }

  factory Payment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Payment(
      id: serializer.fromJson<int>(json['id']),
      renterId: serializer.fromJson<int>(json['renterId']),
      rentalId: serializer.fromJson<int?>(json['rentalId']),
      price: serializer.fromJson<double>(json['price']),
      date: serializer.fromJson<DateTime>(json['date']),
      type: serializer.fromJson<String?>(json['type']),
      description: serializer.fromJson<String?>(json['description']),
      method: serializer.fromJson<String?>(json['method']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'renterId': serializer.toJson<int>(renterId),
      'rentalId': serializer.toJson<int?>(rentalId),
      'price': serializer.toJson<double>(price),
      'date': serializer.toJson<DateTime>(date),
      'type': serializer.toJson<String?>(type),
      'description': serializer.toJson<String?>(description),
      'method': serializer.toJson<String?>(method),
    };
  }

  Payment copyWith(
          {int? id,
          int? renterId,
          Value<int?> rentalId = const Value.absent(),
          double? price,
          DateTime? date,
          Value<String?> type = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> method = const Value.absent()}) =>
      Payment(
        id: id ?? this.id,
        renterId: renterId ?? this.renterId,
        rentalId: rentalId.present ? rentalId.value : this.rentalId,
        price: price ?? this.price,
        date: date ?? this.date,
        type: type.present ? type.value : this.type,
        description: description.present ? description.value : this.description,
        method: method.present ? method.value : this.method,
      );
  Payment copyWithCompanion(PaymentsCompanion data) {
    return Payment(
      id: data.id.present ? data.id.value : this.id,
      renterId: data.renterId.present ? data.renterId.value : this.renterId,
      rentalId: data.rentalId.present ? data.rentalId.value : this.rentalId,
      price: data.price.present ? data.price.value : this.price,
      date: data.date.present ? data.date.value : this.date,
      type: data.type.present ? data.type.value : this.type,
      description:
          data.description.present ? data.description.value : this.description,
      method: data.method.present ? data.method.value : this.method,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Payment(')
          ..write('id: $id, ')
          ..write('renterId: $renterId, ')
          ..write('rentalId: $rentalId, ')
          ..write('price: $price, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('method: $method')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, renterId, rentalId, price, date, type, description, method);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Payment &&
          other.id == this.id &&
          other.renterId == this.renterId &&
          other.rentalId == this.rentalId &&
          other.price == this.price &&
          other.date == this.date &&
          other.type == this.type &&
          other.description == this.description &&
          other.method == this.method);
}

class PaymentsCompanion extends UpdateCompanion<Payment> {
  final Value<int> id;
  final Value<int> renterId;
  final Value<int?> rentalId;
  final Value<double> price;
  final Value<DateTime> date;
  final Value<String?> type;
  final Value<String?> description;
  final Value<String?> method;
  const PaymentsCompanion({
    this.id = const Value.absent(),
    this.renterId = const Value.absent(),
    this.rentalId = const Value.absent(),
    this.price = const Value.absent(),
    this.date = const Value.absent(),
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.method = const Value.absent(),
  });
  PaymentsCompanion.insert({
    this.id = const Value.absent(),
    required int renterId,
    this.rentalId = const Value.absent(),
    required double price,
    required DateTime date,
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.method = const Value.absent(),
  })  : renterId = Value(renterId),
        price = Value(price),
        date = Value(date);
  static Insertable<Payment> custom({
    Expression<int>? id,
    Expression<int>? renterId,
    Expression<int>? rentalId,
    Expression<double>? price,
    Expression<DateTime>? date,
    Expression<String>? type,
    Expression<String>? description,
    Expression<String>? method,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (renterId != null) 'renter_id': renterId,
      if (rentalId != null) 'rental_id': rentalId,
      if (price != null) 'price': price,
      if (date != null) 'date': date,
      if (type != null) 'type': type,
      if (description != null) 'description': description,
      if (method != null) 'method': method,
    });
  }

  PaymentsCompanion copyWith(
      {Value<int>? id,
      Value<int>? renterId,
      Value<int?>? rentalId,
      Value<double>? price,
      Value<DateTime>? date,
      Value<String?>? type,
      Value<String?>? description,
      Value<String?>? method}) {
    return PaymentsCompanion(
      id: id ?? this.id,
      renterId: renterId ?? this.renterId,
      rentalId: rentalId ?? this.rentalId,
      price: price ?? this.price,
      date: date ?? this.date,
      type: type ?? this.type,
      description: description ?? this.description,
      method: method ?? this.method,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (renterId.present) {
      map['renter_id'] = Variable<int>(renterId.value);
    }
    if (rentalId.present) {
      map['rental_id'] = Variable<int>(rentalId.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentsCompanion(')
          ..write('id: $id, ')
          ..write('renterId: $renterId, ')
          ..write('rentalId: $rentalId, ')
          ..write('price: $price, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('method: $method')
          ..write(')'))
        .toString();
  }
}

class $EventsTable extends Events with TableInfo<$EventsTable, Event> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _rentalIdMeta =
      const VerificationMeta('rentalId');
  @override
  late final GeneratedColumn<int> rentalId = GeneratedColumn<int>(
      'rental_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES rentals (id)'));
  static const VerificationMeta _renterIdMeta =
      const VerificationMeta('renterId');
  @override
  late final GeneratedColumn<int> renterId = GeneratedColumn<int>(
      'renter_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES renters (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('delay'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _requiresActionMeta =
      const VerificationMeta('requiresAction');
  @override
  late final GeneratedColumn<bool> requiresAction = GeneratedColumn<bool>(
      'requires_action', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("requires_action" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _resolvedMeta =
      const VerificationMeta('resolved');
  @override
  late final GeneratedColumn<bool> resolved = GeneratedColumn<bool>(
      'resolved', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("resolved" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _resolutionNotesMeta =
      const VerificationMeta('resolutionNotes');
  @override
  late final GeneratedColumn<String> resolutionNotes = GeneratedColumn<String>(
      'resolution_notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        rentalId,
        renterId,
        date,
        type,
        description,
        requiresAction,
        resolved,
        resolutionNotes
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(Insertable<Event> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('rental_id')) {
      context.handle(_rentalIdMeta,
          rentalId.isAcceptableOrUnknown(data['rental_id']!, _rentalIdMeta));
    }
    if (data.containsKey('renter_id')) {
      context.handle(_renterIdMeta,
          renterId.isAcceptableOrUnknown(data['renter_id']!, _renterIdMeta));
    } else if (isInserting) {
      context.missing(_renterIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('requires_action')) {
      context.handle(
          _requiresActionMeta,
          requiresAction.isAcceptableOrUnknown(
              data['requires_action']!, _requiresActionMeta));
    }
    if (data.containsKey('resolved')) {
      context.handle(_resolvedMeta,
          resolved.isAcceptableOrUnknown(data['resolved']!, _resolvedMeta));
    }
    if (data.containsKey('resolution_notes')) {
      context.handle(
          _resolutionNotesMeta,
          resolutionNotes.isAcceptableOrUnknown(
              data['resolution_notes']!, _resolutionNotesMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Event(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      rentalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rental_id']),
      renterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}renter_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      requiresAction: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}requires_action'])!,
      resolved: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}resolved'])!,
      resolutionNotes: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}resolution_notes']),
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class Event extends DataClass implements Insertable<Event> {
  final int id;
  final int? rentalId;
  final int renterId;
  final DateTime date;
  final String type;
  final String description;
  final bool requiresAction;
  final bool resolved;
  final String? resolutionNotes;
  const Event(
      {required this.id,
      this.rentalId,
      required this.renterId,
      required this.date,
      required this.type,
      required this.description,
      required this.requiresAction,
      required this.resolved,
      this.resolutionNotes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || rentalId != null) {
      map['rental_id'] = Variable<int>(rentalId);
    }
    map['renter_id'] = Variable<int>(renterId);
    map['date'] = Variable<DateTime>(date);
    map['type'] = Variable<String>(type);
    map['description'] = Variable<String>(description);
    map['requires_action'] = Variable<bool>(requiresAction);
    map['resolved'] = Variable<bool>(resolved);
    if (!nullToAbsent || resolutionNotes != null) {
      map['resolution_notes'] = Variable<String>(resolutionNotes);
    }
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      rentalId: rentalId == null && nullToAbsent
          ? const Value.absent()
          : Value(rentalId),
      renterId: Value(renterId),
      date: Value(date),
      type: Value(type),
      description: Value(description),
      requiresAction: Value(requiresAction),
      resolved: Value(resolved),
      resolutionNotes: resolutionNotes == null && nullToAbsent
          ? const Value.absent()
          : Value(resolutionNotes),
    );
  }

  factory Event.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<int>(json['id']),
      rentalId: serializer.fromJson<int?>(json['rentalId']),
      renterId: serializer.fromJson<int>(json['renterId']),
      date: serializer.fromJson<DateTime>(json['date']),
      type: serializer.fromJson<String>(json['type']),
      description: serializer.fromJson<String>(json['description']),
      requiresAction: serializer.fromJson<bool>(json['requiresAction']),
      resolved: serializer.fromJson<bool>(json['resolved']),
      resolutionNotes: serializer.fromJson<String?>(json['resolutionNotes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'rentalId': serializer.toJson<int?>(rentalId),
      'renterId': serializer.toJson<int>(renterId),
      'date': serializer.toJson<DateTime>(date),
      'type': serializer.toJson<String>(type),
      'description': serializer.toJson<String>(description),
      'requiresAction': serializer.toJson<bool>(requiresAction),
      'resolved': serializer.toJson<bool>(resolved),
      'resolutionNotes': serializer.toJson<String?>(resolutionNotes),
    };
  }

  Event copyWith(
          {int? id,
          Value<int?> rentalId = const Value.absent(),
          int? renterId,
          DateTime? date,
          String? type,
          String? description,
          bool? requiresAction,
          bool? resolved,
          Value<String?> resolutionNotes = const Value.absent()}) =>
      Event(
        id: id ?? this.id,
        rentalId: rentalId.present ? rentalId.value : this.rentalId,
        renterId: renterId ?? this.renterId,
        date: date ?? this.date,
        type: type ?? this.type,
        description: description ?? this.description,
        requiresAction: requiresAction ?? this.requiresAction,
        resolved: resolved ?? this.resolved,
        resolutionNotes: resolutionNotes.present
            ? resolutionNotes.value
            : this.resolutionNotes,
      );
  Event copyWithCompanion(EventsCompanion data) {
    return Event(
      id: data.id.present ? data.id.value : this.id,
      rentalId: data.rentalId.present ? data.rentalId.value : this.rentalId,
      renterId: data.renterId.present ? data.renterId.value : this.renterId,
      date: data.date.present ? data.date.value : this.date,
      type: data.type.present ? data.type.value : this.type,
      description:
          data.description.present ? data.description.value : this.description,
      requiresAction: data.requiresAction.present
          ? data.requiresAction.value
          : this.requiresAction,
      resolved: data.resolved.present ? data.resolved.value : this.resolved,
      resolutionNotes: data.resolutionNotes.present
          ? data.resolutionNotes.value
          : this.resolutionNotes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('rentalId: $rentalId, ')
          ..write('renterId: $renterId, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('requiresAction: $requiresAction, ')
          ..write('resolved: $resolved, ')
          ..write('resolutionNotes: $resolutionNotes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, rentalId, renterId, date, type,
      description, requiresAction, resolved, resolutionNotes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.rentalId == this.rentalId &&
          other.renterId == this.renterId &&
          other.date == this.date &&
          other.type == this.type &&
          other.description == this.description &&
          other.requiresAction == this.requiresAction &&
          other.resolved == this.resolved &&
          other.resolutionNotes == this.resolutionNotes);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<int> id;
  final Value<int?> rentalId;
  final Value<int> renterId;
  final Value<DateTime> date;
  final Value<String> type;
  final Value<String> description;
  final Value<bool> requiresAction;
  final Value<bool> resolved;
  final Value<String?> resolutionNotes;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.rentalId = const Value.absent(),
    this.renterId = const Value.absent(),
    this.date = const Value.absent(),
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.requiresAction = const Value.absent(),
    this.resolved = const Value.absent(),
    this.resolutionNotes = const Value.absent(),
  });
  EventsCompanion.insert({
    this.id = const Value.absent(),
    this.rentalId = const Value.absent(),
    required int renterId,
    this.date = const Value.absent(),
    this.type = const Value.absent(),
    required String description,
    this.requiresAction = const Value.absent(),
    this.resolved = const Value.absent(),
    this.resolutionNotes = const Value.absent(),
  })  : renterId = Value(renterId),
        description = Value(description);
  static Insertable<Event> custom({
    Expression<int>? id,
    Expression<int>? rentalId,
    Expression<int>? renterId,
    Expression<DateTime>? date,
    Expression<String>? type,
    Expression<String>? description,
    Expression<bool>? requiresAction,
    Expression<bool>? resolved,
    Expression<String>? resolutionNotes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rentalId != null) 'rental_id': rentalId,
      if (renterId != null) 'renter_id': renterId,
      if (date != null) 'date': date,
      if (type != null) 'type': type,
      if (description != null) 'description': description,
      if (requiresAction != null) 'requires_action': requiresAction,
      if (resolved != null) 'resolved': resolved,
      if (resolutionNotes != null) 'resolution_notes': resolutionNotes,
    });
  }

  EventsCompanion copyWith(
      {Value<int>? id,
      Value<int?>? rentalId,
      Value<int>? renterId,
      Value<DateTime>? date,
      Value<String>? type,
      Value<String>? description,
      Value<bool>? requiresAction,
      Value<bool>? resolved,
      Value<String?>? resolutionNotes}) {
    return EventsCompanion(
      id: id ?? this.id,
      rentalId: rentalId ?? this.rentalId,
      renterId: renterId ?? this.renterId,
      date: date ?? this.date,
      type: type ?? this.type,
      description: description ?? this.description,
      requiresAction: requiresAction ?? this.requiresAction,
      resolved: resolved ?? this.resolved,
      resolutionNotes: resolutionNotes ?? this.resolutionNotes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rentalId.present) {
      map['rental_id'] = Variable<int>(rentalId.value);
    }
    if (renterId.present) {
      map['renter_id'] = Variable<int>(renterId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (requiresAction.present) {
      map['requires_action'] = Variable<bool>(requiresAction.value);
    }
    if (resolved.present) {
      map['resolved'] = Variable<bool>(resolved.value);
    }
    if (resolutionNotes.present) {
      map['resolution_notes'] = Variable<String>(resolutionNotes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('rentalId: $rentalId, ')
          ..write('renterId: $renterId, ')
          ..write('date: $date, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('requiresAction: $requiresAction, ')
          ..write('resolved: $resolved, ')
          ..write('resolutionNotes: $resolutionNotes')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $VehiclesTable vehicles = $VehiclesTable(this);
  late final $RentersTable renters = $RentersTable(this);
  late final $RentalsTable rentals = $RentalsTable(this);
  late final $PaymentsTable payments = $PaymentsTable(this);
  late final $EventsTable events = $EventsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [vehicles, renters, rentals, payments, events];
}

typedef $$VehiclesTableCreateCompanionBuilder = VehiclesCompanion Function({
  Value<int?> id,
  Value<String?> description,
  required String plate,
  required String brand,
  required String model,
  Value<int?> year,
  Value<String> status,
  Value<DateTime?> acquisitionDate,
  Value<DateTime?> manufacturedDate,
  Value<double?> priceInstallment,
  Value<int?> amount,
  Value<String?> imagePath,
});
typedef $$VehiclesTableUpdateCompanionBuilder = VehiclesCompanion Function({
  Value<int?> id,
  Value<String?> description,
  Value<String> plate,
  Value<String> brand,
  Value<String> model,
  Value<int?> year,
  Value<String> status,
  Value<DateTime?> acquisitionDate,
  Value<DateTime?> manufacturedDate,
  Value<double?> priceInstallment,
  Value<int?> amount,
  Value<String?> imagePath,
});

final class $$VehiclesTableReferences
    extends BaseReferences<_$AppDatabase, $VehiclesTable, Vehicle> {
  $$VehiclesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RentalsTable, List<Rental>> _rentalsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.rentals,
          aliasName:
              $_aliasNameGenerator(db.vehicles.id, db.rentals.vehicleId));

  $$RentalsTableProcessedTableManager get rentalsRefs {
    final manager = $$RentalsTableTableManager($_db, $_db.rentals)
        .filter((f) => f.vehicleId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_rentalsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$VehiclesTableFilterComposer
    extends Composer<_$AppDatabase, $VehiclesTable> {
  $$VehiclesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get plate => $composableBuilder(
      column: $table.plate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get model => $composableBuilder(
      column: $table.model, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get acquisitionDate => $composableBuilder(
      column: $table.acquisitionDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get manufacturedDate => $composableBuilder(
      column: $table.manufacturedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get priceInstallment => $composableBuilder(
      column: $table.priceInstallment,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnFilters(column));

  Expression<bool> rentalsRefs(
      Expression<bool> Function($$RentalsTableFilterComposer f) f) {
    final $$RentalsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.vehicleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableFilterComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VehiclesTableOrderingComposer
    extends Composer<_$AppDatabase, $VehiclesTable> {
  $$VehiclesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get plate => $composableBuilder(
      column: $table.plate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get brand => $composableBuilder(
      column: $table.brand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get model => $composableBuilder(
      column: $table.model, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get year => $composableBuilder(
      column: $table.year, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get acquisitionDate => $composableBuilder(
      column: $table.acquisitionDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get manufacturedDate => $composableBuilder(
      column: $table.manufacturedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get priceInstallment => $composableBuilder(
      column: $table.priceInstallment,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnOrderings(column));
}

class $$VehiclesTableAnnotationComposer
    extends Composer<_$AppDatabase, $VehiclesTable> {
  $$VehiclesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get plate =>
      $composableBuilder(column: $table.plate, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get acquisitionDate => $composableBuilder(
      column: $table.acquisitionDate, builder: (column) => column);

  GeneratedColumn<DateTime> get manufacturedDate => $composableBuilder(
      column: $table.manufacturedDate, builder: (column) => column);

  GeneratedColumn<double> get priceInstallment => $composableBuilder(
      column: $table.priceInstallment, builder: (column) => column);

  GeneratedColumn<int> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  Expression<T> rentalsRefs<T extends Object>(
      Expression<T> Function($$RentalsTableAnnotationComposer a) f) {
    final $$RentalsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.vehicleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableAnnotationComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$VehiclesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VehiclesTable,
    Vehicle,
    $$VehiclesTableFilterComposer,
    $$VehiclesTableOrderingComposer,
    $$VehiclesTableAnnotationComposer,
    $$VehiclesTableCreateCompanionBuilder,
    $$VehiclesTableUpdateCompanionBuilder,
    (Vehicle, $$VehiclesTableReferences),
    Vehicle,
    PrefetchHooks Function({bool rentalsRefs})> {
  $$VehiclesTableTableManager(_$AppDatabase db, $VehiclesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VehiclesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VehiclesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VehiclesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String> plate = const Value.absent(),
            Value<String> brand = const Value.absent(),
            Value<String> model = const Value.absent(),
            Value<int?> year = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime?> acquisitionDate = const Value.absent(),
            Value<DateTime?> manufacturedDate = const Value.absent(),
            Value<double?> priceInstallment = const Value.absent(),
            Value<int?> amount = const Value.absent(),
            Value<String?> imagePath = const Value.absent(),
          }) =>
              VehiclesCompanion(
            id: id,
            description: description,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            status: status,
            acquisitionDate: acquisitionDate,
            manufacturedDate: manufacturedDate,
            priceInstallment: priceInstallment,
            amount: amount,
            imagePath: imagePath,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String?> description = const Value.absent(),
            required String plate,
            required String brand,
            required String model,
            Value<int?> year = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime?> acquisitionDate = const Value.absent(),
            Value<DateTime?> manufacturedDate = const Value.absent(),
            Value<double?> priceInstallment = const Value.absent(),
            Value<int?> amount = const Value.absent(),
            Value<String?> imagePath = const Value.absent(),
          }) =>
              VehiclesCompanion.insert(
            id: id,
            description: description,
            plate: plate,
            brand: brand,
            model: model,
            year: year,
            status: status,
            acquisitionDate: acquisitionDate,
            manufacturedDate: manufacturedDate,
            priceInstallment: priceInstallment,
            amount: amount,
            imagePath: imagePath,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$VehiclesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({rentalsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (rentalsRefs) db.rentals],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rentalsRefs)
                    await $_getPrefetchedData<Vehicle, $VehiclesTable, Rental>(
                        currentTable: table,
                        referencedTable:
                            $$VehiclesTableReferences._rentalsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$VehiclesTableReferences(db, table, p0)
                                .rentalsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.vehicleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$VehiclesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VehiclesTable,
    Vehicle,
    $$VehiclesTableFilterComposer,
    $$VehiclesTableOrderingComposer,
    $$VehiclesTableAnnotationComposer,
    $$VehiclesTableCreateCompanionBuilder,
    $$VehiclesTableUpdateCompanionBuilder,
    (Vehicle, $$VehiclesTableReferences),
    Vehicle,
    PrefetchHooks Function({bool rentalsRefs})>;
typedef $$RentersTableCreateCompanionBuilder = RentersCompanion Function({
  Value<int?> id,
  required String name,
  required String cnh,
  required String address,
  required String phone,
  Value<String?> email,
  required String cpf,
  Value<String?> notes,
  Value<bool> isBlacklisted,
  Value<String?> blacklistReason,
});
typedef $$RentersTableUpdateCompanionBuilder = RentersCompanion Function({
  Value<int?> id,
  Value<String> name,
  Value<String> cnh,
  Value<String> address,
  Value<String> phone,
  Value<String?> email,
  Value<String> cpf,
  Value<String?> notes,
  Value<bool> isBlacklisted,
  Value<String?> blacklistReason,
});

final class $$RentersTableReferences
    extends BaseReferences<_$AppDatabase, $RentersTable, Renter> {
  $$RentersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RentalsTable, List<Rental>> _rentalsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.rentals,
          aliasName: $_aliasNameGenerator(db.renters.id, db.rentals.renterId));

  $$RentalsTableProcessedTableManager get rentalsRefs {
    final manager = $$RentalsTableTableManager($_db, $_db.rentals)
        .filter((f) => f.renterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_rentalsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$PaymentsTable, List<Payment>> _paymentsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.payments,
          aliasName: $_aliasNameGenerator(db.renters.id, db.payments.renterId));

  $$PaymentsTableProcessedTableManager get paymentsRefs {
    final manager = $$PaymentsTableTableManager($_db, $_db.payments)
        .filter((f) => f.renterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_paymentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$EventsTable, List<Event>> _eventsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.events,
          aliasName: $_aliasNameGenerator(db.renters.id, db.events.renterId));

  $$EventsTableProcessedTableManager get eventsRefs {
    final manager = $$EventsTableTableManager($_db, $_db.events)
        .filter((f) => f.renterId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RentersTableFilterComposer
    extends Composer<_$AppDatabase, $RentersTable> {
  $$RentersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cnh => $composableBuilder(
      column: $table.cnh, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isBlacklisted => $composableBuilder(
      column: $table.isBlacklisted, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get blacklistReason => $composableBuilder(
      column: $table.blacklistReason,
      builder: (column) => ColumnFilters(column));

  Expression<bool> rentalsRefs(
      Expression<bool> Function($$RentalsTableFilterComposer f) f) {
    final $$RentalsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableFilterComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> paymentsRefs(
      Expression<bool> Function($$PaymentsTableFilterComposer f) f) {
    final $$PaymentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableFilterComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> eventsRefs(
      Expression<bool> Function($$EventsTableFilterComposer f) f) {
    final $$EventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.events,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventsTableFilterComposer(
              $db: $db,
              $table: $db.events,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentersTableOrderingComposer
    extends Composer<_$AppDatabase, $RentersTable> {
  $$RentersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cnh => $composableBuilder(
      column: $table.cnh, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isBlacklisted => $composableBuilder(
      column: $table.isBlacklisted,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get blacklistReason => $composableBuilder(
      column: $table.blacklistReason,
      builder: (column) => ColumnOrderings(column));
}

class $$RentersTableAnnotationComposer
    extends Composer<_$AppDatabase, $RentersTable> {
  $$RentersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get cnh =>
      $composableBuilder(column: $table.cnh, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get isBlacklisted => $composableBuilder(
      column: $table.isBlacklisted, builder: (column) => column);

  GeneratedColumn<String> get blacklistReason => $composableBuilder(
      column: $table.blacklistReason, builder: (column) => column);

  Expression<T> rentalsRefs<T extends Object>(
      Expression<T> Function($$RentalsTableAnnotationComposer a) f) {
    final $$RentalsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableAnnotationComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> paymentsRefs<T extends Object>(
      Expression<T> Function($$PaymentsTableAnnotationComposer a) f) {
    final $$PaymentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableAnnotationComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> eventsRefs<T extends Object>(
      Expression<T> Function($$EventsTableAnnotationComposer a) f) {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.events,
        getReferencedColumn: (t) => t.renterId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventsTableAnnotationComposer(
              $db: $db,
              $table: $db.events,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RentersTable,
    Renter,
    $$RentersTableFilterComposer,
    $$RentersTableOrderingComposer,
    $$RentersTableAnnotationComposer,
    $$RentersTableCreateCompanionBuilder,
    $$RentersTableUpdateCompanionBuilder,
    (Renter, $$RentersTableReferences),
    Renter,
    PrefetchHooks Function(
        {bool rentalsRefs, bool paymentsRefs, bool eventsRefs})> {
  $$RentersTableTableManager(_$AppDatabase db, $RentersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RentersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RentersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RentersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> cnh = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> cpf = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isBlacklisted = const Value.absent(),
            Value<String?> blacklistReason = const Value.absent(),
          }) =>
              RentersCompanion(
            id: id,
            name: name,
            cnh: cnh,
            address: address,
            phone: phone,
            email: email,
            cpf: cpf,
            notes: notes,
            isBlacklisted: isBlacklisted,
            blacklistReason: blacklistReason,
          ),
          createCompanionCallback: ({
            Value<int?> id = const Value.absent(),
            required String name,
            required String cnh,
            required String address,
            required String phone,
            Value<String?> email = const Value.absent(),
            required String cpf,
            Value<String?> notes = const Value.absent(),
            Value<bool> isBlacklisted = const Value.absent(),
            Value<String?> blacklistReason = const Value.absent(),
          }) =>
              RentersCompanion.insert(
            id: id,
            name: name,
            cnh: cnh,
            address: address,
            phone: phone,
            email: email,
            cpf: cpf,
            notes: notes,
            isBlacklisted: isBlacklisted,
            blacklistReason: blacklistReason,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RentersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {rentalsRefs = false, paymentsRefs = false, eventsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (rentalsRefs) db.rentals,
                if (paymentsRefs) db.payments,
                if (eventsRefs) db.events
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (rentalsRefs)
                    await $_getPrefetchedData<Renter, $RentersTable, Rental>(
                        currentTable: table,
                        referencedTable:
                            $$RentersTableReferences._rentalsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentersTableReferences(db, table, p0).rentalsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.renterId == item.id),
                        typedResults: items),
                  if (paymentsRefs)
                    await $_getPrefetchedData<Renter, $RentersTable, Payment>(
                        currentTable: table,
                        referencedTable:
                            $$RentersTableReferences._paymentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentersTableReferences(db, table, p0)
                                .paymentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.renterId == item.id),
                        typedResults: items),
                  if (eventsRefs)
                    await $_getPrefetchedData<Renter, $RentersTable, Event>(
                        currentTable: table,
                        referencedTable:
                            $$RentersTableReferences._eventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentersTableReferences(db, table, p0).eventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.renterId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RentersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RentersTable,
    Renter,
    $$RentersTableFilterComposer,
    $$RentersTableOrderingComposer,
    $$RentersTableAnnotationComposer,
    $$RentersTableCreateCompanionBuilder,
    $$RentersTableUpdateCompanionBuilder,
    (Renter, $$RentersTableReferences),
    Renter,
    PrefetchHooks Function(
        {bool rentalsRefs, bool paymentsRefs, bool eventsRefs})>;
typedef $$RentalsTableCreateCompanionBuilder = RentalsCompanion Function({
  Value<int> id,
  required int vehicleId,
  required int renterId,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<DateTime?> returnDate,
  Value<double?> totalValue,
  Value<double> paidValue,
  Value<String> type,
  Value<String> status,
  Value<String?> notes,
});
typedef $$RentalsTableUpdateCompanionBuilder = RentalsCompanion Function({
  Value<int> id,
  Value<int> vehicleId,
  Value<int> renterId,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<DateTime?> returnDate,
  Value<double?> totalValue,
  Value<double> paidValue,
  Value<String> type,
  Value<String> status,
  Value<String?> notes,
});

final class $$RentalsTableReferences
    extends BaseReferences<_$AppDatabase, $RentalsTable, Rental> {
  $$RentalsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VehiclesTable _vehicleIdTable(_$AppDatabase db) => db.vehicles
      .createAlias($_aliasNameGenerator(db.rentals.vehicleId, db.vehicles.id));

  $$VehiclesTableProcessedTableManager get vehicleId {
    final $_column = $_itemColumn<int>('vehicle_id')!;

    final manager = $$VehiclesTableTableManager($_db, $_db.vehicles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vehicleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RentersTable _renterIdTable(_$AppDatabase db) => db.renters
      .createAlias($_aliasNameGenerator(db.rentals.renterId, db.renters.id));

  $$RentersTableProcessedTableManager get renterId {
    final $_column = $_itemColumn<int>('renter_id')!;

    final manager = $$RentersTableTableManager($_db, $_db.renters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_renterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$PaymentsTable, List<Payment>> _paymentsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.payments,
          aliasName: $_aliasNameGenerator(db.rentals.id, db.payments.rentalId));

  $$PaymentsTableProcessedTableManager get paymentsRefs {
    final manager = $$PaymentsTableTableManager($_db, $_db.payments)
        .filter((f) => f.rentalId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_paymentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$EventsTable, List<Event>> _eventsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.events,
          aliasName: $_aliasNameGenerator(db.rentals.id, db.events.rentalId));

  $$EventsTableProcessedTableManager get eventsRefs {
    final manager = $$EventsTableTableManager($_db, $_db.events)
        .filter((f) => f.rentalId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RentalsTableFilterComposer
    extends Composer<_$AppDatabase, $RentalsTable> {
  $$RentalsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get paidValue => $composableBuilder(
      column: $table.paidValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  $$VehiclesTableFilterComposer get vehicleId {
    final $$VehiclesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VehiclesTableFilterComposer(
              $db: $db,
              $table: $db.vehicles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableFilterComposer get renterId {
    final $$RentersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableFilterComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> paymentsRefs(
      Expression<bool> Function($$PaymentsTableFilterComposer f) f) {
    final $$PaymentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.rentalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableFilterComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> eventsRefs(
      Expression<bool> Function($$EventsTableFilterComposer f) f) {
    final $$EventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.events,
        getReferencedColumn: (t) => t.rentalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventsTableFilterComposer(
              $db: $db,
              $table: $db.events,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentalsTableOrderingComposer
    extends Composer<_$AppDatabase, $RentalsTable> {
  $$RentalsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get paidValue => $composableBuilder(
      column: $table.paidValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  $$VehiclesTableOrderingComposer get vehicleId {
    final $$VehiclesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VehiclesTableOrderingComposer(
              $db: $db,
              $table: $db.vehicles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableOrderingComposer get renterId {
    final $$RentersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableOrderingComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RentalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RentalsTable> {
  $$RentalsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<DateTime> get returnDate => $composableBuilder(
      column: $table.returnDate, builder: (column) => column);

  GeneratedColumn<double> get totalValue => $composableBuilder(
      column: $table.totalValue, builder: (column) => column);

  GeneratedColumn<double> get paidValue =>
      $composableBuilder(column: $table.paidValue, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  $$VehiclesTableAnnotationComposer get vehicleId {
    final $$VehiclesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.vehicleId,
        referencedTable: $db.vehicles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$VehiclesTableAnnotationComposer(
              $db: $db,
              $table: $db.vehicles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableAnnotationComposer get renterId {
    final $$RentersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableAnnotationComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> paymentsRefs<T extends Object>(
      Expression<T> Function($$PaymentsTableAnnotationComposer a) f) {
    final $$PaymentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.payments,
        getReferencedColumn: (t) => t.rentalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$PaymentsTableAnnotationComposer(
              $db: $db,
              $table: $db.payments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> eventsRefs<T extends Object>(
      Expression<T> Function($$EventsTableAnnotationComposer a) f) {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.events,
        getReferencedColumn: (t) => t.rentalId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$EventsTableAnnotationComposer(
              $db: $db,
              $table: $db.events,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RentalsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RentalsTable,
    Rental,
    $$RentalsTableFilterComposer,
    $$RentalsTableOrderingComposer,
    $$RentalsTableAnnotationComposer,
    $$RentalsTableCreateCompanionBuilder,
    $$RentalsTableUpdateCompanionBuilder,
    (Rental, $$RentalsTableReferences),
    Rental,
    PrefetchHooks Function(
        {bool vehicleId, bool renterId, bool paymentsRefs, bool eventsRefs})> {
  $$RentalsTableTableManager(_$AppDatabase db, $RentalsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RentalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RentalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RentalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> vehicleId = const Value.absent(),
            Value<int> renterId = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<DateTime?> returnDate = const Value.absent(),
            Value<double?> totalValue = const Value.absent(),
            Value<double> paidValue = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              RentalsCompanion(
            id: id,
            vehicleId: vehicleId,
            renterId: renterId,
            startDate: startDate,
            endDate: endDate,
            returnDate: returnDate,
            totalValue: totalValue,
            paidValue: paidValue,
            type: type,
            status: status,
            notes: notes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int vehicleId,
            required int renterId,
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<DateTime?> returnDate = const Value.absent(),
            Value<double?> totalValue = const Value.absent(),
            Value<double> paidValue = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> notes = const Value.absent(),
          }) =>
              RentalsCompanion.insert(
            id: id,
            vehicleId: vehicleId,
            renterId: renterId,
            startDate: startDate,
            endDate: endDate,
            returnDate: returnDate,
            totalValue: totalValue,
            paidValue: paidValue,
            type: type,
            status: status,
            notes: notes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RentalsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {vehicleId = false,
              renterId = false,
              paymentsRefs = false,
              eventsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (paymentsRefs) db.payments,
                if (eventsRefs) db.events
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (vehicleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.vehicleId,
                    referencedTable:
                        $$RentalsTableReferences._vehicleIdTable(db),
                    referencedColumn:
                        $$RentalsTableReferences._vehicleIdTable(db).id,
                  ) as T;
                }
                if (renterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.renterId,
                    referencedTable:
                        $$RentalsTableReferences._renterIdTable(db),
                    referencedColumn:
                        $$RentalsTableReferences._renterIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (paymentsRefs)
                    await $_getPrefetchedData<Rental, $RentalsTable, Payment>(
                        currentTable: table,
                        referencedTable:
                            $$RentalsTableReferences._paymentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentalsTableReferences(db, table, p0)
                                .paymentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.rentalId == item.id),
                        typedResults: items),
                  if (eventsRefs)
                    await $_getPrefetchedData<Rental, $RentalsTable, Event>(
                        currentTable: table,
                        referencedTable:
                            $$RentalsTableReferences._eventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RentalsTableReferences(db, table, p0).eventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.rentalId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RentalsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RentalsTable,
    Rental,
    $$RentalsTableFilterComposer,
    $$RentalsTableOrderingComposer,
    $$RentalsTableAnnotationComposer,
    $$RentalsTableCreateCompanionBuilder,
    $$RentalsTableUpdateCompanionBuilder,
    (Rental, $$RentalsTableReferences),
    Rental,
    PrefetchHooks Function(
        {bool vehicleId, bool renterId, bool paymentsRefs, bool eventsRefs})>;
typedef $$PaymentsTableCreateCompanionBuilder = PaymentsCompanion Function({
  Value<int> id,
  required int renterId,
  Value<int?> rentalId,
  required double price,
  required DateTime date,
  Value<String?> type,
  Value<String?> description,
  Value<String?> method,
});
typedef $$PaymentsTableUpdateCompanionBuilder = PaymentsCompanion Function({
  Value<int> id,
  Value<int> renterId,
  Value<int?> rentalId,
  Value<double> price,
  Value<DateTime> date,
  Value<String?> type,
  Value<String?> description,
  Value<String?> method,
});

final class $$PaymentsTableReferences
    extends BaseReferences<_$AppDatabase, $PaymentsTable, Payment> {
  $$PaymentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RentersTable _renterIdTable(_$AppDatabase db) => db.renters
      .createAlias($_aliasNameGenerator(db.payments.renterId, db.renters.id));

  $$RentersTableProcessedTableManager get renterId {
    final $_column = $_itemColumn<int>('renter_id')!;

    final manager = $$RentersTableTableManager($_db, $_db.renters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_renterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RentalsTable _rentalIdTable(_$AppDatabase db) => db.rentals
      .createAlias($_aliasNameGenerator(db.payments.rentalId, db.rentals.id));

  $$RentalsTableProcessedTableManager? get rentalId {
    final $_column = $_itemColumn<int>('rental_id');
    if ($_column == null) return null;
    final manager = $$RentalsTableTableManager($_db, $_db.rentals)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_rentalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$PaymentsTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnFilters(column));

  $$RentersTableFilterComposer get renterId {
    final $$RentersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableFilterComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentalsTableFilterComposer get rentalId {
    final $$RentalsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableFilterComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnOrderings(column));

  $$RentersTableOrderingComposer get renterId {
    final $$RentersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableOrderingComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentalsTableOrderingComposer get rentalId {
    final $$RentalsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableOrderingComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentsTable> {
  $$PaymentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  $$RentersTableAnnotationComposer get renterId {
    final $$RentersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableAnnotationComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentalsTableAnnotationComposer get rentalId {
    final $$RentalsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableAnnotationComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$PaymentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PaymentsTable,
    Payment,
    $$PaymentsTableFilterComposer,
    $$PaymentsTableOrderingComposer,
    $$PaymentsTableAnnotationComposer,
    $$PaymentsTableCreateCompanionBuilder,
    $$PaymentsTableUpdateCompanionBuilder,
    (Payment, $$PaymentsTableReferences),
    Payment,
    PrefetchHooks Function({bool renterId, bool rentalId})> {
  $$PaymentsTableTableManager(_$AppDatabase db, $PaymentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> renterId = const Value.absent(),
            Value<int?> rentalId = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> method = const Value.absent(),
          }) =>
              PaymentsCompanion(
            id: id,
            renterId: renterId,
            rentalId: rentalId,
            price: price,
            date: date,
            type: type,
            description: description,
            method: method,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int renterId,
            Value<int?> rentalId = const Value.absent(),
            required double price,
            required DateTime date,
            Value<String?> type = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> method = const Value.absent(),
          }) =>
              PaymentsCompanion.insert(
            id: id,
            renterId: renterId,
            rentalId: rentalId,
            price: price,
            date: date,
            type: type,
            description: description,
            method: method,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$PaymentsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({renterId = false, rentalId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (renterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.renterId,
                    referencedTable:
                        $$PaymentsTableReferences._renterIdTable(db),
                    referencedColumn:
                        $$PaymentsTableReferences._renterIdTable(db).id,
                  ) as T;
                }
                if (rentalId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.rentalId,
                    referencedTable:
                        $$PaymentsTableReferences._rentalIdTable(db),
                    referencedColumn:
                        $$PaymentsTableReferences._rentalIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$PaymentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PaymentsTable,
    Payment,
    $$PaymentsTableFilterComposer,
    $$PaymentsTableOrderingComposer,
    $$PaymentsTableAnnotationComposer,
    $$PaymentsTableCreateCompanionBuilder,
    $$PaymentsTableUpdateCompanionBuilder,
    (Payment, $$PaymentsTableReferences),
    Payment,
    PrefetchHooks Function({bool renterId, bool rentalId})>;
typedef $$EventsTableCreateCompanionBuilder = EventsCompanion Function({
  Value<int> id,
  Value<int?> rentalId,
  required int renterId,
  Value<DateTime> date,
  Value<String> type,
  required String description,
  Value<bool> requiresAction,
  Value<bool> resolved,
  Value<String?> resolutionNotes,
});
typedef $$EventsTableUpdateCompanionBuilder = EventsCompanion Function({
  Value<int> id,
  Value<int?> rentalId,
  Value<int> renterId,
  Value<DateTime> date,
  Value<String> type,
  Value<String> description,
  Value<bool> requiresAction,
  Value<bool> resolved,
  Value<String?> resolutionNotes,
});

final class $$EventsTableReferences
    extends BaseReferences<_$AppDatabase, $EventsTable, Event> {
  $$EventsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RentalsTable _rentalIdTable(_$AppDatabase db) => db.rentals
      .createAlias($_aliasNameGenerator(db.events.rentalId, db.rentals.id));

  $$RentalsTableProcessedTableManager? get rentalId {
    final $_column = $_itemColumn<int>('rental_id');
    if ($_column == null) return null;
    final manager = $$RentalsTableTableManager($_db, $_db.rentals)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_rentalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RentersTable _renterIdTable(_$AppDatabase db) => db.renters
      .createAlias($_aliasNameGenerator(db.events.renterId, db.renters.id));

  $$RentersTableProcessedTableManager get renterId {
    final $_column = $_itemColumn<int>('renter_id')!;

    final manager = $$RentersTableTableManager($_db, $_db.renters)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_renterIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get requiresAction => $composableBuilder(
      column: $table.requiresAction,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get resolved => $composableBuilder(
      column: $table.resolved, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes,
      builder: (column) => ColumnFilters(column));

  $$RentalsTableFilterComposer get rentalId {
    final $$RentalsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableFilterComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableFilterComposer get renterId {
    final $$RentersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableFilterComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get requiresAction => $composableBuilder(
      column: $table.requiresAction,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get resolved => $composableBuilder(
      column: $table.resolved, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes,
      builder: (column) => ColumnOrderings(column));

  $$RentalsTableOrderingComposer get rentalId {
    final $$RentalsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableOrderingComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableOrderingComposer get renterId {
    final $$RentersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableOrderingComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<bool> get requiresAction => $composableBuilder(
      column: $table.requiresAction, builder: (column) => column);

  GeneratedColumn<bool> get resolved =>
      $composableBuilder(column: $table.resolved, builder: (column) => column);

  GeneratedColumn<String> get resolutionNotes => $composableBuilder(
      column: $table.resolutionNotes, builder: (column) => column);

  $$RentalsTableAnnotationComposer get rentalId {
    final $$RentalsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.rentalId,
        referencedTable: $db.rentals,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentalsTableAnnotationComposer(
              $db: $db,
              $table: $db.rentals,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RentersTableAnnotationComposer get renterId {
    final $$RentersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.renterId,
        referencedTable: $db.renters,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RentersTableAnnotationComposer(
              $db: $db,
              $table: $db.renters,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$EventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EventsTable,
    Event,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (Event, $$EventsTableReferences),
    Event,
    PrefetchHooks Function({bool rentalId, bool renterId})> {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> rentalId = const Value.absent(),
            Value<int> renterId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<bool> requiresAction = const Value.absent(),
            Value<bool> resolved = const Value.absent(),
            Value<String?> resolutionNotes = const Value.absent(),
          }) =>
              EventsCompanion(
            id: id,
            rentalId: rentalId,
            renterId: renterId,
            date: date,
            type: type,
            description: description,
            requiresAction: requiresAction,
            resolved: resolved,
            resolutionNotes: resolutionNotes,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> rentalId = const Value.absent(),
            required int renterId,
            Value<DateTime> date = const Value.absent(),
            Value<String> type = const Value.absent(),
            required String description,
            Value<bool> requiresAction = const Value.absent(),
            Value<bool> resolved = const Value.absent(),
            Value<String?> resolutionNotes = const Value.absent(),
          }) =>
              EventsCompanion.insert(
            id: id,
            rentalId: rentalId,
            renterId: renterId,
            date: date,
            type: type,
            description: description,
            requiresAction: requiresAction,
            resolved: resolved,
            resolutionNotes: resolutionNotes,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$EventsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({rentalId = false, renterId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (rentalId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.rentalId,
                    referencedTable: $$EventsTableReferences._rentalIdTable(db),
                    referencedColumn:
                        $$EventsTableReferences._rentalIdTable(db).id,
                  ) as T;
                }
                if (renterId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.renterId,
                    referencedTable: $$EventsTableReferences._renterIdTable(db),
                    referencedColumn:
                        $$EventsTableReferences._renterIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$EventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EventsTable,
    Event,
    $$EventsTableFilterComposer,
    $$EventsTableOrderingComposer,
    $$EventsTableAnnotationComposer,
    $$EventsTableCreateCompanionBuilder,
    $$EventsTableUpdateCompanionBuilder,
    (Event, $$EventsTableReferences),
    Event,
    PrefetchHooks Function({bool rentalId, bool renterId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$VehiclesTableTableManager get vehicles =>
      $$VehiclesTableTableManager(_db, _db.vehicles);
  $$RentersTableTableManager get renters =>
      $$RentersTableTableManager(_db, _db.renters);
  $$RentalsTableTableManager get rentals =>
      $$RentalsTableTableManager(_db, _db.rentals);
  $$PaymentsTableTableManager get payments =>
      $$PaymentsTableTableManager(_db, _db.payments);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
}
