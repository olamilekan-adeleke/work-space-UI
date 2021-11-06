class SpaceModel {
  final String name;
  final String image;
  final double rating;
  final String location;
  final double pricePerHour;
  final String description;

  SpaceModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.location,
    required this.pricePerHour,
    required this.description,
  });
}

final List<SpaceModel> nearBySpaceList = <SpaceModel>[
  SpaceModel(
    name: 'Joshua’s - Workspace',
    image: 'asset/1.jpg',
    rating: 5.0,
    location: 'Alaska, United states',
    pricePerHour: 15,
    description:
        'Collaborative ecosystem  providing workspace, support & networking opportunities to tech. Collaborative ecosystem  providing workspace, support & networking opportunities to tech Read more...',
  ),
  SpaceModel(
    name: 'Kod-x WorkSpace',
    image: 'asset/2.webp',
    rating: 4.5,
    location: 'Alaska, United states',
    pricePerHour: 13,
    description:
        'Collaborative ecosystem  providing workspace, support & networking opportunities to tech. Collaborative ecosystem  providing workspace, support & networking opportunities to tech Read more...',
  ),
  SpaceModel(
    name: 'Plato WorkSpace',
    image: 'asset/3.webp',
    rating: 3.0,
    location: 'Alaska, United states',
    pricePerHour: 12,
    description:
        'Collaborative ecosystem  providing workspace, support & networking opportunities to tech. Collaborative ecosystem  providing workspace, support & networking opportunities to tech Read more...',
  ),
  SpaceModel(
    name: 'Google WorkSpace',
    image: 'asset/4.webp',
    rating: 5.0,
    location: 'Alaska, United states',
    pricePerHour: 25,
    description:
        'Collaborative ecosystem  providing workspace, support & networking opportunities to tech. Collaborative ecosystem  providing workspace, support & networking opportunities to tech Read more...',
  ),
];
