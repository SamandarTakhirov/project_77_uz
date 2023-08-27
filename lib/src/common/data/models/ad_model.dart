import 'dart:convert';


class Result {
  final int? id;
  final String? name;
  final String? slug;
  final SubCategory? subCategory;
  final List<String>? photos;
  final int? price;
  final String? currency;
  final DateTime? publishedAt;
  final String? description;
  final String? phoneNumber;
  final Address? address;
  final Seller? seller;
  final Extra? extra;

  Result({
    this.id,
    this.name,
    this.slug,
    this.subCategory,
    this.photos,
    this.price,
    this.currency,
    this.publishedAt,
    this.description,
    this.phoneNumber,
    this.address,
    this.seller,
    this.extra,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    subCategory: json["sub_category"] == null ? null : SubCategory.fromMap(json["sub_category"]),
    photos: json["photos"] == null ? [] : List<String>.from(json["photos"]!.map((x) => x)),
    price: json["price"],
    currency: json["currency"],
    publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
    description: json["description"],
    phoneNumber: json["phone_number"],
    address: json["address"] == null ? null : Address.fromMap(json["address"]),
    seller: json["seller"] == null ? null : Seller.fromMap(json["seller"]),
    extra: json["extra"] == null ? null : Extra.fromMap(json["extra"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "slug": slug,
    "sub_category": subCategory?.toMap(),
    "photos": photos == null ? [] : List<dynamic>.from(photos!.map((x) => x)),
    "price": price,
    "currency": currency,
    "published_at": publishedAt?.toIso8601String(),
    "description": description,
    "phone_number": phoneNumber,
    "address": address?.toMap(),
    "seller": seller?.toMap(),
    "extra": extra?.toMap(),
  };
}

class Address {
  final District? district;
  final String? name;
  final double? lat;
  final double? long;

  Address({
    this.district,
    this.name,
    this.lat,
    this.long,
  });

  factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Address.fromMap(Map<String, dynamic> json) => Address(
    district: json["district"] == null ? null : District.fromMap(json["district"]),
    name: json["name"],
    lat: json["lat"]?.toDouble(),
    long: json["long"]?.toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "district": district?.toMap(),
    "name": name,
    "lat": lat,
    "long": long,
  };
}

class District {
  final int? id;
  final String? name;
  final Region? region;

  District({
    this.id,
    this.name,
    this.region,
  });

  factory District.fromJson(String str) => District.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory District.fromMap(Map<String, dynamic> json) => District(
    id: json["id"],
    name: json["name"],
    region: json["region"] == null ? null : Region.fromMap(json["region"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "region": region?.toMap(),
  };
}

class Region {
  final int? id;
  final String? name;

  Region({
    this.id,
    this.name,
  });

  factory Region.fromJson(String str) => Region.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Region.fromMap(Map<String, dynamic> json) => Region(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
  };
}

class Extra {
  final bool? isMine;
  final String? status;
  final DateTime? expiresAt;

  Extra({
    this.isMine,
    this.status,
    this.expiresAt,
  });

  factory Extra.fromJson(String str) => Extra.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Extra.fromMap(Map<String, dynamic> json) => Extra(
    isMine: json["is_mine"],
    status: json["status"],
    expiresAt: json["expires_at"] == null ? null : DateTime.parse(json["expires_at"]),
  );

  Map<String, dynamic> toMap() => {
    "is_mine": isMine,
    "status": status,
    "expires_at": "${expiresAt!.year.toString().padLeft(4, '0')}-${expiresAt!.month.toString().padLeft(2, '0')}-${expiresAt!.day.toString().padLeft(2, '0')}",
  };
}

class Seller {
  final int? id;
  final String? fullName;
  final String? profilePhoto;

  Seller({
    this.id,
    this.fullName,
    this.profilePhoto,
  });

  factory Seller.fromJson(String str) => Seller.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Seller.fromMap(Map<String, dynamic> json) => Seller(
    id: json["id"],
    fullName: json["full_name"],
    profilePhoto: json["profile_photo"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "full_name": fullName,
    "profile_photo": profilePhoto,
  };
}

class SubCategory {
  final int? id;
  final String? name;
  final Category? category;

  SubCategory({
    this.id,
    this.name,
    this.category,
  });

  factory SubCategory.fromJson(String str) => SubCategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubCategory.fromMap(Map<String, dynamic> json) => SubCategory(
    id: json["id"],
    name: json["name"],
    category: json["category"] == null ? null : Category.fromMap(json["category"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "category": category?.toMap(),
  };
}

class Category {
  final int? id;
  final String? name;
  final int? adsCount;
  final String? icon;

  Category({
    this.id,
    this.name,
    this.adsCount,
    this.icon,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    adsCount: json["ads_count"],
    icon: json["icon"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "ads_count": adsCount,
    "icon": icon,
  };
}
