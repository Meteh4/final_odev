class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Merkür',
      iconImage: 'assets/mercury.png',
      description:
          "Merkür, Güneş'e en yakın gezegendir. Güneş'e olan uzaklığı yaklaşık 58 milyon kilometredir. Güneş ışınları Merkür'e 3.2 dakikada ulaşır. Bu süre Dünya için yaklaşık 8 dakika 20 saniyedir. Buna rağmen Merkür, sistemimiz içerisindeki en sıcak gezegen değildir.",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(2,
      name: 'Venüs',
      iconImage: 'assets/venus.png',
      description:
          "Venüs, Güneş Sisteminde, Güneş'e uzaklık bakımından ikinci sıradaki, sıcaklık bakımından da birinci sıradaki gezegendir. Güneşe uzaklık bakımından ikinci sırada olmasına rağmen en sıcak gezegen olmasının nedeni de atmosferinin gelen güneş ışınlarının dışarı çıkmasına izin vermemesidir.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
      ]),
  PlanetInfo(3,
      name: 'Dünya',
      iconImage: 'assets/earth.png',
      description:
          "Dünya, Güneş Sistemi'nde Güneş'e en yakın üçüncü gezegen olup şu an için üzerinde yaşam ve sıvı su barındırdığı bilinen tek astronomik cisimdir. Radyometrik tarihleme ve diğer kanıtlara göre 4,5 milyar yıldan fazla süre önce oluşmuştur.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  PlanetInfo(4,
      name: 'Mars',
      iconImage: 'assets/mars.png',
      description:
          "Mars, Güneş Sistemi'nin Güneş'ten itibaren dördüncü gezegeni. Roma mitolojisindeki savaş tanrısı Mars'a ithafen adlandırılmıştır. Yüzeyindeki yaygın demir oksitten dolayı kızılımsı bir görünüme sahip olduğu için Kızıl Gezegen de denir. ",
      images: []),
  PlanetInfo(5,
      name: 'Jüpiter',
      iconImage: 'assets/jupiter.png',
      description:
          "Jüpiter, Güneş Sistemi'nin en büyük gezegeni. Güneş'ten uzaklığa göre beşinci sırada yer alır. Adını Roma mitolojisindeki tanrıların en büyüğü olan Jüpiter'den alır. Büyük ölçüde hidrojen ve helyumdan oluşmakta ve gaz devi sınıfına girmektedir.",
      images: []),
  PlanetInfo(6,
      name: 'Satürn',
      iconImage: 'assets/saturn.png',
      description:
          "Satürn Güneş Sisteminin Güneş'e yakınlık sırasına göre 6. gezegenidir. Büyüklük açısından Jüpiter'den sonra ikinci sırada gelir. Adını Yunan mitolojisindeki Kronos'tan alır. Çıplak gözle izlenebilen 5 gezegenden biri olarak eski çağlardan beri insanoğlunun dikkatini çekmiştir.",
      images: []),
  PlanetInfo(7,
      name: 'Uranüs',
      iconImage: 'assets/uranus.png',
      description:
          "Uranüs, Güneş Sisteminin Güneş'den uzaklık sıralamasına göre 7. gezegenidir. Çap açısından Jüpiter ve Satürn'den sonra üçüncü, kütle açısından bu iki gezegen ve Neptün'ün ardından dördüncü sırada gelir. Adını Yunan mitolojisi'ndeki gökyüzü tanrısı Uranos'tan alır. 1781 yılında William Herschel tarafından bulunmuştur. ",
      images: []),
  PlanetInfo(8,
      name: 'Neptün',
      iconImage: 'assets/neptune.png',
      description:
          "Neptün, Güneş Sistemi'nin sekizinci, Güneş'e en uzak ve katı yüzeyi bulunmayan gezegendir. Gaz gezegenler sınıfında yer alan Neptün, Jupiter ve Satürn'e kıyasla farklı yapısından ötürü buz devi olarak da sınıflandırılır. Güneş sisteminin Uranüs ile beraber en soğuk iki gezegeninden biridir.",
      images: []),
];
