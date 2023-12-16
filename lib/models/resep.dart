class Resep {
  final String name;
  final String asal;
  final String resep;
  final String bahan;
  final String bumbu;
  final String imageAsset;
  final List<String> imageUrls;
  bool isFavorite;

  Resep({
    required this.name,
    required this.asal,
    required this.resep,
    required this.bahan,
    required this.bumbu,
    required this.imageAsset,
    required this.imageUrls,
    this.isFavorite = false,
  });

}

