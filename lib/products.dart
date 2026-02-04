class Products {
  final String titile, subtitle, descreption, image;
  final int id, price;
  Products({
    required this.descreption,
    required this.titile,
    required this.subtitle,
    required this.image,
    required this.id,
    required this.price,
  });
}

List<Products> products = [
  Products(
    id: 1,
    titile: 'ساعة ذكية Ultra',
    subtitle: 'أحدث إصدار رياضية',
    descreption: 'ساعة ذكية تدعم تتبع الأنشطة الرياضية ومقاومة للماء.',
    price: 1500,
    image: 'assets/1.jpg',
  ),
  Products(
    id: 2,
    titile: 'سماعات لاسلكية',
    subtitle: 'صوت عالي النقاء',
    descreption: 'سماعات بلوتوث مع ميزة إلغاء الضوضاء وبطارية تدوم طويلًا.',
    price: 800,
    image: 'assets/2.jpg',
  ),
  Products(
    id: 3,
    titile: 'لوحة مفاتيح ميكانيكية',
    subtitle: 'إضاءة RGB مذهلة',
    descreption: 'لوحة مفاتيح مخصصة للألعاب مع استجابة سريعة جداً.',
    price: 450,
    image: 'assets/3.jpg',
  ),
  Products(
    id: 4,
    titile: 'ماوس لاسلكي',
    subtitle: 'تصميم مريح لليد',
    descreption: 'ماوس بدقة عالية مثالي للمصممين والمبرمجين.',
    price: 250,
    image: 'assets/4.jpg',
  ),
  Products(
    id: 5,
    titile: 'حقيبة ظهر للابتوب',
    subtitle: 'مقاومة للصدمات',
    descreption: 'حقيبة أنيقة تتسع لأجهزة حتى 15.6 بوصة مع جيوب متعددة.',
    price: 600,
    image: 'assets/5.jpg',
  ),
  Products(
    id: 6,
    titile: 'شاحن سريع 65 وات',
    subtitle: 'يدعم جميع الأجهزة',
    descreption: 'شاحن جداري بتقنية GaN لشحن سريع وآمن للهواتف واللابتوب.',
    price: 350,
    image: 'assets/6.jpg',
  ),
];
