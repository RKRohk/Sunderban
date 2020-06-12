class Items {
  final String item;
  final String desc;
  final double price1;
  final double price2;
  final double price3;
  final double mrp;
  final imageUrl;

  Items(
      {this.item,
      this.desc,
      this.price1,
      this.price2,
      this.price3,
      this.mrp,
      this.imageUrl});
}

var items = [
  Items(
      item: "iPhone X (Product Red)",
      desc: "More magical than ever",
      price1: 80000,
      price2: 82000,
      price3: 79000,
      mrp: 90000,
      imageUrl:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xr/iphone-xr-red-select-201809?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1551226038669"),
  Items(
      item: "AirPods with Wireless Charging Case",
      desc: 'More magical than ever.',
      mrp: 14000,
      price1: 13500,
      price2: 12999,
      price3: 10000,
      imageUrl:
          'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/image/AppleInc/aos/published/images/M/RX/MRXJ2/MRXJ2?wid=1144&hei=1144&fmt=jpeg&qlt=95&op_usm=0.5%2C0.5&.v=1551489675083'),
];

var citems = [
  Items(
      item: "Laptops",
      desc: "Cheap laptops",
      mrp: 100000,
      price3: 90000,
      price2: 89000,
      price1: 91000,
      imageUrl:
          'https://image.freepik.com/free-vector/business-ad-banners_83728-2398.jpg'),
  Items(
      item: "Laptops",
      desc: "Cheap laptops",
      mrp: 100000,
      price3: 90000,
      price2: 89000,
      price1: 91000,
      imageUrl:
          'https://image.freepik.com/free-psd/online-shopping-banner-concept_23-2148567672.jpg')
];
