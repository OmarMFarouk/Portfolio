class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Deploma',
    organization: 'MEC Academy',
    date: 'MAY 2023',
    skills: 'Flutter . Dart . Firebase . bLoC',
    credential: '../data/certificates/mec_flutter_deploma.pdf',
  ),
  CertificateModel(
    name: 'Flutter Advanced Course Bloc and MVVM Pattern',
    organization: 'Udemy',
    date: 'MAY 2024',
    skills: 'Flutter . Dart . Programming',
    credential:
        'https://www.udemy.com/certificate/UC-a8f45525-65b4-49cf-b0d7-e9474b6b2a4f',
  ),
  CertificateModel(
      name: 'Complete Flutter & Dart Development Course',
      organization: 'Udemy',
      date: 'APR 2024',
      skills: 'Flutter . iOS Development . Android Development',
      credential:
          'https://www.udemy.com/certificate/UC-e42989e3-bf61-407a-a6fc-7d3111d3fba9'),
  CertificateModel(
    name: 'Mobile Networks',
    organization: 'Egyptian Engineers Syndicate',
    date: 'AUG 2024',
    skills: 'Structure & Operation of [GSM / 3G / 4G / 5G]',
    credential: '../data/certificates/ees_mobile_networks.pdf',
  ),
  CertificateModel(
    name: 'Mobile Networks',
    organization: 'Engovation',
    date: 'AUG 2024',
    skills: 'Structure & Operation of [GSM / 3G / 4G / 5G]',
    credential: '../data/certificates/engovation_mobile_networks.pdf',
  ),
  CertificateModel(
    name: 'Cisco Certified Network Associate',
    organization: 'ICG Innovation',
    date: 'SEPT 2023',
    skills: 'Routing . Switching . IPv4 & IPv6 addressing',
    credential: '../data/certificates/icg_ccna.pdf',
  ),
];
