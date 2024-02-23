

import 'package:nb_utils/nb_utils.dart';

import '../model/ShoppingModel.dart';

List<ShoppingModel> getAccount() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'My Order'));
  list.add(ShoppingModel(name: 'Vouchers'));
  list.add(ShoppingModel(name: 'Shopping Address'));
  list.add(ShoppingModel(name: 'FAQ'));
  list.add(ShoppingModel(name: 'Customer Services'));
  list.add(ShoppingModel(name: 'Setting'));

  return list;
}

List<ShoppingModel> paymentList() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'Payment Option', img: 'images/ic_payment.png'));
  list.add(ShoppingModel(name: 'Credit/Debit Card', img: 'images/ic_MasterCard.png'));
  list.add(ShoppingModel(name: 'Paypal', img: 'images/ic_paypal.png'));

  return list;
}

List<ShoppingModel> getShopping() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'New Arrival'));
  list.add(ShoppingModel(name: 'Men'));
  list.add(ShoppingModel(name: 'Women'));
  list.add(ShoppingModel(name: 'Kids'));
  list.add(ShoppingModel(name: 'Sale'));

  return list;
}

List<ShoppingModel> getProductData() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'All Shoes'));
  list.add(ShoppingModel(name: 'Top & T-Shirt'));
  list.add(ShoppingModel(name: 'Caps'));
  list.add(ShoppingModel(name: 'Accessories'));

  return list;
}

List<ShoppingModel> getAllData() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'Nike Air VaporMax Evo', subtitle: 'Men\'s shoes', img: 'images/ic_shoes_5.png', amount: '\$300.00'));
  list.add(ShoppingModel(name: 'Adidas Ultra Boost', subtitle: 'Women\'s shoes', img: 'images/ic_shoes_1.png', amount: '\$200.00'));
  list.add(ShoppingModel(name: 'Jordan Air Retro 1', subtitle: 'Nike Air Huarache', img: 'images/ic_shoes_3.png', amount: '\$250.00'));
  list.add(ShoppingModel(name: 'Puma RS-X', subtitle: 'men\'s shoes', img: 'images/ic_shoes_4.png', amount: '\$350.00'));
  list.add(ShoppingModel(name: 'New Balance 990v5', subtitle: 'Nike Air Huarache', img: 'images/ic_shoes_5.png', amount: '\$400.00'));
  list.add(ShoppingModel(name: 'Reebok Classic Leather', subtitle: 'men\'s shoes', img: 'images/ic_shoes_6.png', amount: '\$300.00'));
  list.add(ShoppingModel(name: 'Converse Chuck Taylor All Star', subtitle: 'men\'s shoes', img: 'images/ic_shoes_8.png', amount: '\$100.00'));

  return list;
}

List<ShoppingModel> getAllFavorite() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'Adidas Ultraboost 21', subtitle: 'Men\'s shoes', img: 'images/ic_shoes_3.png', amount: '\$300.00'));
  list.add(ShoppingModel(name: 'Nike React Infinity Run', subtitle: 'Women\'s shoes', img: 'images/ic_shoes_10.png', amount: '\$200.00'));
  list.add(ShoppingModel(name: 'New Balance Fresh Foam 1080v11', subtitle: 'Nike Air Huarache', img: 'images/ic_shoes_11.png', amount: '\$250.00'));

  return list;
}

List<ShoppingModel> getAllCart() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'Adidas Ultraboost 21', subtitle: 'Men\'s shoes', img: 'images/ic_shoes_11.png', amount: '\$300.00'));
  list.add(ShoppingModel(name: 'Nike React Infinity Run', subtitle: 'Women\'s shoes', img: 'images/ic_shoes_4.png', amount: '\$200.00'));
  list.add(ShoppingModel(name: 'New Balance Fresh Foam 1080v11', subtitle: 'Nike Air Huarache', img: 'images/ic_shoes_1.png', amount: '\$250.00'));

  return list;
}


List<ShoppingModel> getSearchData() {
  List<ShoppingModel> list = [];
  list.add(ShoppingModel(name: 'Top & T-Shirt Collection', subtitle: '15% OFF', img: 'images/ic_arrivals_4.jpg'));
  list.add(ShoppingModel(name: 'Top & T-Shirt Collection', subtitle: '40% OFF', img: 'images/ic_arrivals_2.jpg'));
  list.add(ShoppingModel(name: 'Top & T-Shirt Collection', subtitle: '80% OFF', img: 'images/ic_arrivals_3.jpg'));
  list.add(ShoppingModel(name: 'Top & T-Shirt Collection', subtitle: '95% OFF', img: 'images/ic_arrivals_4.jpg'));
  list.add(ShoppingModel(name: 'Top & T-Shirt Collection', subtitle: '15% OFF', img: 'images/ic_arrivals_5.jpg'));

  return list;
}

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(id: 1, name: 'English', languageCode: 'en', fullLanguageCode: 'en-US', flag: 'images/flag/ic_us.png'),
    LanguageDataModel(id: 2, name: 'Hindi', languageCode: 'hi', fullLanguageCode: 'hi-IN', flag: 'images/flag/ic_hi.png'),
    LanguageDataModel(id: 3, name: 'Arabic', languageCode: 'ar', fullLanguageCode: 'ar-AR', flag: 'images/flag/ic_ar.png'),
    LanguageDataModel(id: 4, name: 'French', languageCode: 'fr', fullLanguageCode: 'fr-FR', flag: 'images/flag/ic_fr.png'),
  ];
}
