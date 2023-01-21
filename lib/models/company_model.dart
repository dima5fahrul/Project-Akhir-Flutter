import 'package:tugasakhir/models/job_model.dart';
import 'package:tugasakhir/models/category_model.dart';
import 'dart:math';

class CompanyModel {
  String? name;
  String? logo;
  String? logoBg;
  String? type;
  String? time;
  String? bg;
  String? job;
  int? contract;
  int? apllicant;
  String? category;
  String? location;
  String? description;
  String? requriement;

  CompanyModel({
    this.name,
    this.logo,
    this.logoBg,
    this.type,
    this.time,
    this.bg,
    this.job,
    this.contract,
    this.apllicant,
    this.category,
    this.location,
    this.description,
    this.requriement,
  });
}

final random = Random();

final List<CompanyModel> items = [
  CompanyModel(
    name: 'Tokopedia',
    logo: 'assets/logos/tokopedia.png',
    logoBg: 'assets/logos/tokopedia_bg.png',
    bg: 'assets/images/green.png',
    type: 'green',
    time: '20h ago',
    // mengambil data random dari job_model.dart
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    // mengambil data random dari category_model.dart
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'Tokopedia is an Indonesian technology company with a mission to democratize commerce through technology. Since its founding in 2009, Tokopedia has been a force that pioneers digital transformation in Indonesia. Consistent in building a bridge to connect millions of people, we have now reached more than 99% of districts and empowered around 12 million merchants listed across Indonesia.',
  ),
  CompanyModel(
    name: 'Asus',
    logo: 'assets/logos/asus.png',
    logoBg: 'assets/logos/asus_bg.png',
    type: 'blue',
    time: '1 day ago',
    bg: 'assets/images/blue.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'ASUS is a global technology leader delivering incredible experiences that enhance the lives of people everywhere. World renowned for continuously reimagining today`s technologies for tomorrow, ASUS puts users first In Search of Incredible to provide the world`s most innovative and intuitive devices, components, and solutions. Today`s ASUS is more ambitious than ever, unleashing remarkable gaming, content-creation, AIoT, and cloud solutions that solve user needs and infuse delight.',
  ),
  CompanyModel(
    name: 'Grab',
    logo: 'assets/logos/grab.png',
    logoBg: 'assets/logos/grab_bg.png',
    type: 'green',
    time: '1 day ago',
    bg: 'assets/images/green.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'Grab is Southeast Asia`s leading superapp, offering a suite of services consisting of deliveries, mobility, financial services, enterprise and others. Grabbers come from all over the world, and we are united by a common mission: to drive Southeast Asia forward by creating economic empowerment for everyone.',
  ),
  CompanyModel(
    name: 'Shopee',
    logo: 'assets/logos/shopee.png',
    logoBg: 'assets/logos/shopee_bg.png',
    type: 'red',
    time: '3 days ago',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'Shopee, a Sea company, was first launched in Singapore in 2015, and has since expanded its reach to Malaysia, Thailand, Taiwan, Indonesia, Vietnam and the Philippines. Sea is a leader in digital entertainment, e-commerce and digital financial services across Greater Southeast Asia. Sea`s mission is to better the lives of consumers and small businesses with technology, and is listed on the NYSE under the symbol SE.',
  ),
  CompanyModel(
    name: 'PLN',
    logo: 'assets/logos/pln.png',
    logoBg: 'assets/logos/pln_bg.png',
    type: 'yellow',
    time: '4 days ago',
    bg: 'assets/images/yellow.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'An early-stage startup committed to transforming sexual and reproductive healthcare for LGBTQIA+ individuals through a mobile-first digital clinic is looking for a Flutter Mobile Developer. The selected candidate will be responsible for sustaining the software throughout the product lifecycle, including the layout, development, verification, and bug fixes. The platform is boosting access to remote care and empowering users to take control of their health by providing them with customized services and features tailored to their needs. The company has managed to raise close to \$2.5 mn+ in funding.',
  ),
  CompanyModel(
    name: 'JnT',
    logo: 'assets/logos/j&t.png',
    logoBg: 'assets/logos/j&t_bg.png',
    type: 'red',
    time: '6 days ago',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'PLN has a long history in electricity industry of Indonesia. As the sole provider of electricity in Indonesia, PLN is striving to increase quality of services to all Indonesian. In 1972, in accordance with Government Regulation No.17, the State-owned Electricity Company was enacted as a State-owned General Electricity Company and as PKUK responsible to provide electricity to meet public needs. While the Government policy was giving opportunity to the Private Sectors to focus on the provision of electricity, the status of PLN was changed from a General Company to Corporation` as well as PKUK in providing electricity for public needs until the present.',
  ),
  CompanyModel(
    name: 'McDonalds',
    logo: 'assets/logos/mcd.png',
    logoBg: 'assets/logos/mcd_bg.png',
    type: 'red',
    time: '1 week ago',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'McDonald`s is the world`s leading global foodservice retailer with over 37,000 locations in over 100 countries. More than 90% of McDonald`s restaurants worldwide are owned and operated by independent local business men and women. McDonald`s & our franchisees employ 1.9 million people worldwide. We serve the world some of its favorite foods - World Famous Fries, Big Mac, Quarter Pounder, Chicken McNuggets and Egg McMuffin.',
  ),
  CompanyModel(
    name: 'Traveloka',
    logo: 'assets/logos/traveloka.png',
    logoBg: 'assets/logos/traveloka_bg.png',
    type: 'blue',
    time: '3 weeks ago',
    bg: 'assets/images/blue.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'We don`t innovate for the sake of innovation, we utilize technology to simplify people`s lives so they can enjoy their lives better. That belief is what brought Traveloka to be the leading travel platform in Southeast Asia. Traveloka serves 20+ products that include comprehensive travel services. From transportations to accommodations, discovering nearby attractions, and insurance products to financial services, including the groundbreaking `Buy Now Pay Later`.',
  ),
  CompanyModel(
    name: 'Pertamina',
    logo: 'assets/logos/pertamina.png',
    logoBg: 'assets/logos/pertamina_bg.png',
    type: 'red',
    time: '3 weeks ago',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'PT Pertamina (Persero) is an Indonesian state-owned enterprise, which is engaged in the integrated energy in Indonesia. Established on December 10, 1957, Pertamina had the experiences in upstream, midstream, downstream and renewable energy sectors for more than 50 years. This is the official LinkedIn Pertamina account and managed by Pertamina. Any other official social media account link in the corporate website Pertamina subsidiaries. Please kindly check the validity of the account.',
  ),
  CompanyModel(
    name: 'Indihome',
    logo: 'assets/logos/telkom.png',
    logoBg: 'assets/logos/telkom_bg.png',
    type: 'red',
    time: '1 month ago',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta, Indonesia',
    description:
        'UseeTV merupakan layanan televisi interaktif dari IndiHome yang pertama di Indonesia. Layanan televisi berbayar yang memberikan pengalaman baru, pemirsa tidak hanya sekadar menonton televisi, tetapi juga dapat memegang kendali seakan jadi sutradaranya. Selain memberikan tayangan yang berkualitas, UseeTV juga memberikan berbagai macam fitur yang tidak ada di penyedia layanan kabel lainnya, seperti Pause & Rewind TV, Video on Demand, Video Recorder dan lainnya.',
  ),
];
