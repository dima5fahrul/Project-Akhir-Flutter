import 'package:tugasakhir/models/job_model.dart';
import 'package:tugasakhir/models/category_model.dart';
import 'dart:math';

class CompanyModel {
  final String? name;
  final String? logo;
  final String? logoBg;
  final String? bg;
  final String? job;
  final int? contract;
  final int? apllicant;
  final String? category;
  final String? location;
  final String? description;

  CompanyModel({
    this.name,
    this.logo,
    this.logoBg,
    this.bg,
    this.job,
    this.contract,
    this.apllicant,
    this.category,
    this.location,
    this.description,
  });
}

final random = Random();

final List<CompanyModel> items = [
  CompanyModel(
    name: 'Tokopedia',
    logo: 'assets/logos/tokopedia.png',
    logoBg: 'assets/logos/tokopedia_bg.png',
    bg: 'assets/images/green.png',
    // mengambil data random dari job_model.dart
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    // mengambil data random dari category_model.dart
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Asus',
    logo: 'assets/logos/asus.png',
    logoBg: 'assets/logos/asus_bg.png',
    bg: 'assets/images/blue.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Grab',
    logo: 'assets/logos/grab.png',
    logoBg: 'assets/logos/grab_bg.png',
    bg: 'assets/images/green.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Shopee',
    logo: 'assets/logos/shopee.png',
    logoBg: 'assets/logos/shopee_bg.png',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'PLN',
    logo: 'assets/logos/pln.png',
    logoBg: 'assets/logos/pln_bg.png',
    bg: 'assets/images/yellow.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 2,
    apllicant: 100,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'JnT',
    logo: 'assets/logos/j&t.png',
    logoBg: 'assets/logos/j&t_bg.png',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'McDonalds',
    logo: 'assets/logos/mcd.png',
    logoBg: 'assets/logos/mcd_bg.png',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Pertamina',
    logo: 'assets/logos/pertamina.png',
    logoBg: 'assets/logos/pertamina_bg.png',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Indihome',
    logo: 'assets/logos/telkom.png',
    logoBg: 'assets/logos/telkom_bg.png',
    bg: 'assets/images/red.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
  CompanyModel(
    name: 'Traveloka',
    logo: 'assets/logos/traveloka.png',
    logoBg: 'assets/logos/traveloka_bg.png',
    bg: 'assets/images/blue.png',
    job: jobs[random.nextInt(jobs.length)].name,
    contract: 1,
    apllicant: 50,
    category: categories[random.nextInt(categories.length)].name,
    location: 'Jakarta',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam mauris, eget aliquam nisl nisl sit amet lorem.',
  ),
];
