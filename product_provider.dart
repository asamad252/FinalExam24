import 'package:flutter_application_12/Product.dart';
import 'package:riverpod/riverpod.dart';

final List<Product> allProduct = [
  Product(
    name: 'Xbox One',
    description: 'Xbox One-500gb',
    price: 10.99,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Microsoft-Xbox-One-Console-Set-wKinect.jpg/1200px-Microsoft-Xbox-One-Console-Set-wKinect.jpg',
    details: 
      'Features: Xbox LIVE, Functions as DVD Player, Wi-Fi Capability, Functions as Blu-ray Disc Player\n'
      'Data Storage Capacity: 500GB Hard Drive Capacity\n'
      'Output Type: HDMI\n'
      'Wired Connectivity: Wireless, USB, Ethernet\n'
      'Wireless Technology: 802.11n\n'
      'Model Compatibility: Xbox One\n'
      'Power: 110 V',
    morePictures: [
      'https://www.thefactsite.com/wp-content/uploads/2013/12/xbox-one-facts.webp',
      
      'https://thumbs.dreamstime.com/z/xbox-one-most-powerful-generation-console-wroclaw-poland-jan-video-gaming-136648273.jpg',
    ],
  ),
  Product(
    name: 'Samsung A03',
    description: 'Samsung A03-3gb/32gb',
    price: 19.99,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4CF1i-itSwHeSuKyullCggjyv-M9LGVHYhwg59KlxGA&s',
    details: 
      'OS: Android 11\n'
      'Dimensions: 164.2 x 75.9 x 9.1 mm\n'
      'Weight: 196 g\n'
      'SIM: Dual Sim, Dual Standby (Nano-SIM)\n'
      'Colors: Black, Blue, Red',
    morePictures: [
      'https://m.media-amazon.com/images/I/81pLI1nUBxL.jpg',
      'https://static-01.daraz.pk/p/bd72608928d2409522ca5809e91ae555.jpg',
     
    ],
  ),
   Product(
    name: 'Xbox One',
    description: 'Xbox One-500gb',
    price: 10.99,
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Microsoft-Xbox-One-Console-Set-wKinect.jpg/1200px-Microsoft-Xbox-One-Console-Set-wKinect.jpg',
    details: 
      'Features: Xbox LIVE, Functions as DVD Player, Wi-Fi Capability, Functions as Blu-ray Disc Player\n'
      'Data Storage Capacity: 500GB Hard Drive Capacity\n'
      'Output Type: HDMI\n'
      'Wired Connectivity: Wireless, USB, Ethernet\n'
      'Wireless Technology: 802.11n\n'
      'Model Compatibility: Xbox One\n'
      'Power: 110 V',
    morePictures: [
      'https://www.thefactsite.com/wp-content/uploads/2013/12/xbox-one-facts.webp',
      
      'https://thumbs.dreamstime.com/z/xbox-one-most-powerful-generation-console-wroclaw-poland-jan-video-gaming-136648273.jpg',
    ],
  ),
];
final productProvider=Provider((ref){
 return allProduct;
} );
 
