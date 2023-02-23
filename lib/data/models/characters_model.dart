class CharacterModel {
  String? id;
  String? name;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  bool? alive;
  String? image;

  CharacterModel(
      {this.id,
        this.name,
        this.species,
        this.gender,
        this.house,
        this.dateOfBirth,
        this.yearOfBirth,
        this.wizard,
        this.ancestry,
        this.eyeColour,
        this.hairColour,
        this.patronus,
        this.hogwartsStudent,
        this.hogwartsStaff,
        this.actor,
        this.alive,
        this.image});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth'];
    wizard = json['wizard'];
    ancestry = json['ancestry'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    alive = json['alive'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['species'] = species;
    data['gender'] = gender;
    data['house'] = house;
    data['dateOfBirth'] = dateOfBirth;
    data['yearOfBirth'] = yearOfBirth;
    data['wizard'] = wizard;
    data['ancestry'] = ancestry;
    data['eyeColour'] = eyeColour;
    data['hairColour'] = hairColour;
    data['patronus'] = patronus;
    data['hogwartsStudent'] = hogwartsStudent;
    data['hogwartsStaff'] = hogwartsStaff;
    data['actor'] = actor;

    data['alive'] = alive;
    data['image'] = image;
    return data;
  }
}
// class CharacterModel {
//   int? id;
//   String? title;
//   double? price;
//   String? description;
//   String? category;
//   String? image;
//   Rating? rating;
//
//   CharacterModel(
//       {this.id,
//         this.title,
//         this.price,
//         this.description,
//         this.category,
//         this.image,
//         this.rating});
//
//   CharacterModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     price = json['price'];
//     description = json['description'];
//     category = json['category'];
//     image = json['image'];
//     rating =
//     json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['description'] = this.description;
//     data['category'] = this.category;
//     data['image'] = this.image;
//     if (this.rating != null) {
//       data['rating'] = this.rating!.toJson();
//     }
//     return data;
//   }
// }
//
// class Rating {
//   double? rate;
//   int? count;
//
//   Rating({this.rate, this.count});
//
//   Rating.fromJson(Map<String, dynamic> json) {
//     rate = json['rate'];
//     count = json['count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rate'] = this.rate;
//     data['count'] = this.count;
//     return data;
//   }
// }
// // class CharacterModel
// // {
// //   late String id ;
// //    late  String name;
// //    late  List<dynamic> alternate_names;
// //    late  String species;
// //    late  String gender;
// //    late  String house;
// //    late String dateOfBirth;
// //    late bool wizard;
// //    late String ancestry;
// //    late String eyeColour;
// //    late String hairColour;
// //    late bool hogwartsStudent;
// //    late bool hogwartsStaff;
// //    late String actorName;
// //    late bool alive;
// //    late String image;
// //    late WandModel wand;
// //
// //   // CharacterModel({
// //   //   required this.actorName,required this.image,required this.name,required this.id,required this.alive,
// //   //   required this.alternate_names,required this.ancestry,required this.dateOfBirth,required this.gender,
// //   //   required this.eyeColour,required this.hairColour,required this.hogwartsStaff,required this.house,
// //   //   required this.species,required this.hogwartsStudent,required this.wizard
// //   // });
// //   CharacterModel.fromJson(Map<String , dynamic >jsonData)
// //   {
// //     id:jsonData['id'];
// //     name:jsonData['name'];
// //     alternate_names:jsonData['alternate_names'];
// //     species:jsonData['species'];
// //     gender:jsonData['gender'];
// //     house:jsonData['house'];
// //     dateOfBirth:jsonData['dateOfBirth'];
// //     wizard:jsonData['wizard'];
// //     ancestry:jsonData['ancestry'];
// //     eyeColour:jsonData['eyeColour'];
// //     hairColour:jsonData['hairColour'];
// //     hogwartsStudent:jsonData['hogwartsStudent'];
// //     hogwartsStaff:jsonData['hogwartsStaff'];
// //     actorName:jsonData['actor'];
// //     alive:jsonData['alive'];
// //     image:jsonData['image'];
// //     wand:jsonData['wand']==null
// //         ? null
// //         :WandModel.fromJson(jsonData['wand']);
// //   }
// //
// //
// //
// // }
// // class WandModel
// // {
// //   late String wood;
// //   late String core;
// //   late double length;
// //
// //   WandModel.fromJson(Map<String ,dynamic> jsonData)
// //   {
// //     wood:jsonData['wood'];
// //     core:jsonData['core'];
// //     length:jsonData['length'];
// //   }
// // }