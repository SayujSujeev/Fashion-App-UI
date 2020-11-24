import 'package:fashion_app/models/product_model.dart';

final _dress1 = ProductModel(
    name: 'Dye Grey Dress',
    manufacturer: 'porcelain',
    imageUrl: 'assets/images/dress2.jpg',
    listImagesUrl: ['assets/images/dress2.jpg','assets/images/dress1.jpg',],
    price: 650,
    size: 'XL',
    color: 'Grey'
);

final _dress2 = ProductModel(
    name: 'Black Dress',
    manufacturer: 'bewitched',
    imageUrl: 'assets/images/dress4.jpg',
    listImagesUrl: ['assets/images/dress4.jpg','assets/images/dress3.jpg',],
    price: 540,
    size: 'L',
    color: 'Black'
);

final List <ProductModel> productList = [
  _dress2,
  _dress1,
];

List<String> categoryList = [
  'What\'s New',
  'Style',
  'Outfit',
  'Trending',
];
