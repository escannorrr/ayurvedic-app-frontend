class BaseApiResponse<T> {
  final bool success;
  final String message;
  final T? data;
  final int? statusCode;

  BaseApiResponse({
    required this.success,
    required this.message,
    this.data,
    this.statusCode,
  });

  factory BaseApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json)? fromJsonT,
  ) {
    return BaseApiResponse<T>(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      data: fromJsonT != null && json['data'] != null 
          ? fromJsonT(json['data']) 
          : json['data'] as T?,
      statusCode: json['status_code'],
    );
  }
}
