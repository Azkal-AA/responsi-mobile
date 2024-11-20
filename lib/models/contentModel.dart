// class Restaurant {
//   final bool? error;
//   final String? message;
//   final int? count;
//   final List<Restaurants>? restaurants;

//   Restaurant({
//     this.error,
//     this.message,
//     this.count,
//     this.restaurants,
//   });

//   Restaurant.fromJson(Map<String, dynamic> json)
//       : error = json['error'] as bool?,
//         message = json['message'] as String?,
//         count = json['count'] as int?,
//         restaurants = (json['restaurants'] as List?)
//             ?.map(
//                 (dynamic e) => Restaurants.fromJson(e as Map<String, dynamic>))
//             .toList();

//   Map<String, dynamic> toJson() => {
//         'error': error,
//         'message': message,
//         'count': count,
//         'restaurants': restaurants?.map((e) => e.toJson()).toList()
//       };
// }

// class Restaurants {
//   final String? id;
//   final String? name;
//   final String? description;
//   final String? pictureId;
//   final String? city;
//   final double? rating;

//   Restaurants({
//     this.id,
//     this.name,
//     this.description,
//     this.pictureId,
//     this.city,
//     this.rating,
//   });

//   Restaurants.fromJson(Map<String, dynamic> json)
//       : id = json['id'] as String?,
//         name = json['name'] as String?,
//         description = json['description'] as String?,
//         pictureId = json['pictureId'] as String?,
//         city = json['city'] as String?,
//         rating = json['rating'] as double?;

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'name': name,
//         'description': description,
//         'pictureId': pictureId,
//         'city': city,
//         'rating': rating
//       };
// }

class ContentModel {
  final String id;
  final String name;
  final String description;
  final String pictureId;
  final String city;
  final String rating;

  ContentModel({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
  });

  factory ContentModel.fromJson(Map<String, dynamic> json) {
    return ContentModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      pictureId: json['pictureId'] ?? '',
      city: json['city'] ?? '',
      rating: json['rating']?.toString() ?? '',
    );
  }
}
