import 'package:flutter_figma_template/jobby/models/profile_card.dart';

final profileCards = <ProfileCard>[
  ProfileCard(
    imageName: "account",
    title: "Личные данные",
    description: "Информация о вас",
  ),
  ProfileCard(
    imageName: "folder",
    title: "Документы",
    description: "Нужно заполнить",
  ),
  ProfileCard(
    imageName: "payment",
    title: "Платежные реквизиты",
    description: "Не заполнены",
  ),
  ProfileCard(
    imageName: "location",
    title: "Любимая локация",
    description: "Россия, Москва, парк Зарядье",
  ),
  ProfileCard(
    imageName: "heart",
    title: "Мои подписки",
    description: "Интересные компании",
  ),
  ProfileCard(
    imageName: "house",
    title: "Моя работа",
    description: "История работы",
  ),
  ProfileCard(
    imageName: "chat",
    title: "Сообщения",
    description: "Переписка с работодателями",
  ),
];
