// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EmployeeService {
  int noOfService;
  String serviceType;
  String employeeName;
  double bookingPrice;
  String currency;
  String description;
  EmployeeService({
    required this.noOfService,
    required this.serviceType,
    required this.employeeName,
    required this.bookingPrice,
    required this.currency,
    required this.description,
  });

  EmployeeService copyWith({
    int? noOfService,
    String? serviceType,
    String? employeeName,
    double? bookingPrice,
    String? currency,
    String? description,
  }) {
    return EmployeeService(
      noOfService: noOfService ?? this.noOfService,
      serviceType: serviceType ?? this.serviceType,
      employeeName: employeeName ?? this.employeeName,
      bookingPrice: bookingPrice ?? this.bookingPrice,
      currency: currency ?? this.currency,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noOfService': noOfService,
      'serviceType': serviceType,
      'employeeName': employeeName,
      'bookingPrice': bookingPrice,
      'currency': currency,
      'description': description,
    };
  }

  factory EmployeeService.fromMap(Map<String, dynamic> map) {
    return EmployeeService(
      noOfService: map['noOfService'] as int,
      serviceType: map['serviceType'] as String,
      employeeName: map['employeeName'] as String,
      bookingPrice: map['bookingPrice'] as double,
      currency: map['currency'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EmployeeService.fromJson(String source) =>
      EmployeeService.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EmployeeService(noOfService: $noOfService, serviceType: $serviceType, employeeName: $employeeName, bookingPrice: $bookingPrice, currency: $currency, description: $description)';
  }

  @override
  bool operator ==(covariant EmployeeService other) {
    if (identical(this, other)) return true;

    return other.noOfService == noOfService &&
        other.serviceType == serviceType &&
        other.employeeName == employeeName &&
        other.bookingPrice == bookingPrice &&
        other.currency == currency &&
        other.description == description;
  }

  @override
  int get hashCode {
    return noOfService.hashCode ^
        serviceType.hashCode ^
        employeeName.hashCode ^
        bookingPrice.hashCode ^
        currency.hashCode ^
        description.hashCode;
  }
}
