// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Türkmençe`
  String get lang {
    return Intl.message(
      'Türkmençe',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Baş sahypa`
  String get homeScreen {
    return Intl.message(
      'Baş sahypa',
      name: 'homeScreen',
      desc: '',
      args: [],
    );
  }

  /// `Bölümler`
  String get categories {
    return Intl.message(
      'Bölümler',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Gyzgyn`
  String get hot {
    return Intl.message(
      'Gyzgyn',
      name: 'hot',
      desc: '',
      args: [],
    );
  }

  /// `Media`
  String get media {
    return Intl.message(
      'Media',
      name: 'media',
      desc: '',
      args: [],
    );
  }

  /// `Sebet`
  String get cart {
    return Intl.message(
      'Sebet',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Profil`
  String get profile {
    return Intl.message(
      'Profil',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `media/user_agreement.pdf`
  String get userAgreementLink {
    return Intl.message(
      'media/user_agreement.pdf',
      name: 'userAgreementLink',
      desc: '',
      args: [],
    );
  }

  /// `media/privacy_policy.pdf`
  String get privacyPolicyLink {
    return Intl.message(
      'media/privacy_policy.pdf',
      name: 'privacyPolicyLink',
      desc: '',
      args: [],
    );
  }

  /// `Täzeden synanyşyň`
  String get retry {
    return Intl.message(
      'Täzeden synanyşyň',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Çykmak üçin ýene bir gezek basyň`
  String get doubleBackToExit {
    return Intl.message(
      'Çykmak üçin ýene bir gezek basyň',
      name: 'doubleBackToExit',
      desc: '',
      args: [],
    );
  }

  /// `Näsazlyk ýüze çykdy`
  String get somethingWentWrong {
    return Intl.message(
      'Näsazlyk ýüze çykdy',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Biz tarapda näsazylyk ýüze çykdy.\nBiz düzetmegiň ugrunda işleýäris.`
  String get serverError {
    return Intl.message(
      'Biz tarapda näsazylyk ýüze çykdy.\nBiz düzetmegiň ugrunda işleýäris.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Internet ýok`
  String get loadError {
    return Intl.message(
      'Internet ýok',
      name: 'loadError',
      desc: '',
      args: [],
    );
  }

  /// `Bu amaly ýerine ýetirmek üçin sizde ýeterlik hukuk ýok`
  String get forbidden {
    return Intl.message(
      'Bu amaly ýerine ýetirmek üçin sizde ýeterlik hukuk ýok',
      name: 'forbidden',
      desc: '',
      args: [],
    );
  }

  /// `Serwere baglanyp bolmady`
  String get connectionError {
    return Intl.message(
      'Serwere baglanyp bolmady',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `Nädogry format`
  String get invalidFormat {
    return Intl.message(
      'Nädogry format',
      name: 'invalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `Amal wagtlaýyn elýeter däl.\nBiraz wagtdan synanyşyp görüň.`
  String get unknownError {
    return Intl.message(
      'Amal wagtlaýyn elýeter däl.\nBiraz wagtdan synanyşyp görüň.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Nädogry format`
  String get wrongFormat {
    return Intl.message(
      'Nädogry format',
      name: 'wrongFormat',
      desc: '',
      args: [],
    );
  }

  /// `Nädogry kod`
  String get invalidVerificationCode {
    return Intl.message(
      'Nädogry kod',
      name: 'invalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Boş bolmaly däl`
  String get requiredField {
    return Intl.message(
      'Boş bolmaly däl',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Nädogry email`
  String get wrongEmail {
    return Intl.message(
      'Nädogry email',
      name: 'wrongEmail',
      desc: '',
      args: [],
    );
  }

  /// `SMS programmany açmakda näsazlyk ýüze çykdy. SMS programma geçip, bellenen nomere bellenen kody ugratmagyňyzy haýyş edýäris.`
  String get cantNavigateToSMSApp {
    return Intl.message(
      'SMS programmany açmakda näsazlyk ýüze çykdy. SMS programma geçip, bellenen nomere bellenen kody ugratmagyňyzy haýyş edýäris.',
      name: 'cantNavigateToSMSApp',
      desc: '',
      args: [],
    );
  }

  /// `Bu gün`
  String get today {
    return Intl.message(
      'Bu gün',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Düýn`
  String get yesterday {
    return Intl.message(
      'Düýn',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `в`
  String get in_ {
    return Intl.message(
      'в',
      name: 'in_',
      desc: '',
      args: [],
    );
  }

  /// `Togtatmak`
  String get cancel {
    return Intl.message(
      'Togtatmak',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ählisi`
  String get all {
    return Intl.message(
      'Ählisi',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Bu ýerde häzirlikçe haryt ýok (`
  String get noProducts {
    return Intl.message(
      'Bu ýerde häzirlikçe haryt ýok (',
      name: 'noProducts',
      desc: '',
      args: [],
    );
  }

  /// `Reňkler`
  String get productColors {
    return Intl.message(
      'Reňkler',
      name: 'productColors',
      desc: '',
      args: [],
    );
  }

  /// `Ölçegler`
  String get productSizes {
    return Intl.message(
      'Ölçegler',
      name: 'productSizes',
      desc: '',
      args: [],
    );
  }

  /// `Bahasy`
  String get productPrice {
    return Intl.message(
      'Bahasy',
      name: 'productPrice',
      desc: '',
      args: [],
    );
  }

  /// `Bölek bahasy`
  String get retailPrice {
    return Intl.message(
      'Bölek bahasy',
      name: 'retailPrice',
      desc: '',
      args: [],
    );
  }

  /// `Adaty (45 gün)`
  String get productPriceNormal {
    return Intl.message(
      'Adaty (45 gün)',
      name: 'productPriceNormal',
      desc: '',
      args: [],
    );
  }

  /// `Express (15 gün)`
  String get productPriceExpress {
    return Intl.message(
      'Express (15 gün)',
      name: 'productPriceExpress',
      desc: '',
      args: [],
    );
  }

  /// `Lomaý baha`
  String get productPriceWholesale {
    return Intl.message(
      'Lomaý baha',
      name: 'productPriceWholesale',
      desc: '',
      args: [],
    );
  }

  /// `{count}+`
  String productWholesaleDesc(Object count) {
    return Intl.message(
      '$count+',
      name: 'productWholesaleDesc',
      desc: '',
      args: [count],
    );
  }

  /// `Agramy`
  String get productWeight {
    return Intl.message(
      'Agramy',
      name: 'productWeight',
      desc: '',
      args: [],
    );
  }

  /// `Sebede goşmak`
  String get addToCart {
    return Intl.message(
      'Sebede goşmak',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Sebetden aýyrmak`
  String get removeFromCart {
    return Intl.message(
      'Sebetden aýyrmak',
      name: 'removeFromCart',
      desc: '',
      args: [],
    );
  }

  /// `Reňk saýlaň`
  String get selectColor {
    return Intl.message(
      'Reňk saýlaň',
      name: 'selectColor',
      desc: '',
      args: [],
    );
  }

  /// `Ölçeg saýlaň`
  String get selectSize {
    return Intl.message(
      'Ölçeg saýlaň',
      name: 'selectSize',
      desc: '',
      args: [],
    );
  }

  /// `Sebede goşuldy`
  String get addedToCart {
    return Intl.message(
      'Sebede goşuldy',
      name: 'addedToCart',
      desc: '',
      args: [],
    );
  }

  /// `Sebetden aýryldy`
  String get removedFromCart {
    return Intl.message(
      'Sebetden aýryldy',
      name: 'removedFromCart',
      desc: '',
      args: [],
    );
  }

  /// `Sebetden pozmakçymy?`
  String get confirmRemove {
    return Intl.message(
      'Sebetden pozmakçymy?',
      name: 'confirmRemove',
      desc: '',
      args: [],
    );
  }

  /// `Halanlaryma goşmak`
  String get addToFavorites {
    return Intl.message(
      'Halanlaryma goşmak',
      name: 'addToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Halanlarymdan aýyrmak`
  String get removeFromFavorites {
    return Intl.message(
      'Halanlarymdan aýyrmak',
      name: 'removeFromFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Halanlaryňyza goşmakda näsazlyk ýüze çykdy`
  String get addToFavoritesError {
    return Intl.message(
      'Halanlaryňyza goşmakda näsazlyk ýüze çykdy',
      name: 'addToFavoritesError',
      desc: '',
      args: [],
    );
  }

  /// `Halanlaryňyzdan aýyrmakda näsazlyk ýüze çykdy`
  String get removeFromFavoritesError {
    return Intl.message(
      'Halanlaryňyzdan aýyrmakda näsazlyk ýüze çykdy',
      name: 'removeFromFavoritesError',
      desc: '',
      args: [],
    );
  }

  /// `Maslahat bermek`
  String get share {
    return Intl.message(
      'Maslahat bermek',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Ölçeg`
  String get size {
    return Intl.message(
      'Ölçeg',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Ölçeg tablisa`
  String get sizeTable {
    return Intl.message(
      'Ölçeg tablisa',
      name: 'sizeTable',
      desc: '',
      args: [],
    );
  }

  /// `Hasaba girmek`
  String get login {
    return Intl.message(
      'Hasaba girmek',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Telefon belgiňiz`
  String get phone {
    return Intl.message(
      'Telefon belgiňiz',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Maslahat bereniň nomeri`
  String get referrersPhone {
    return Intl.message(
      'Maslahat bereniň nomeri',
      name: 'referrersPhone',
      desc: '',
      args: [],
    );
  }

  /// `SMS ugratmak`
  String get sendSms {
    return Intl.message(
      'SMS ugratmak',
      name: 'sendSms',
      desc: '',
      args: [],
    );
  }

  /// `Hasaba girmek üçin, \n{phone} belgä {code} kody SMS arkaly ugradyň we programma dolanyň.`
  String sendSmsExplanation(Object phone, Object code) {
    return Intl.message(
      'Hasaba girmek üçin, \n$phone belgä $code kody SMS arkaly ugradyň we programma dolanyň.',
      name: 'sendSmsExplanation',
      desc: '',
      args: [phone, code],
    );
  }

  /// `Siziň telefon belgiňiz tassyklanýar. 1-2 minut garaşmagyňyzy haýyş edýäris)`
  String get waitingVerificationText {
    return Intl.message(
      'Siziň telefon belgiňiz tassyklanýar. 1-2 minut garaşmagyňyzy haýyş edýäris)',
      name: 'waitingVerificationText',
      desc: '',
      args: [],
    );
  }

  /// `Telefon belgiňizi tassyklap bolmady. Ony dogry ýazandygyňyza we internede birigendigiňize göz ýetirip, täzeden synanyşyp göriň`
  String get canNotVerify {
    return Intl.message(
      'Telefon belgiňizi tassyklap bolmady. Ony dogry ýazandygyňyza we internede birigendigiňize göz ýetirip, täzeden synanyşyp göriň',
      name: 'canNotVerify',
      desc: '',
      args: [],
    );
  }

  /// `Dowam etmek`
  String get continueButton {
    return Intl.message(
      'Dowam etmek',
      name: 'continueButton',
      desc: '',
      args: [],
    );
  }

  /// `Sargyt etmek`
  String get makeOrder {
    return Intl.message(
      'Sargyt etmek',
      name: 'makeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Jemi`
  String get total {
    return Intl.message(
      'Jemi',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `{total} man.`
  String nMan(Object total) {
    return Intl.message(
      '$total man.',
      name: 'nMan',
      desc: '',
      args: [total],
    );
  }

  /// `Sargydyňyz kabul edildi. Sargydyňyzy profildäki Sargytlarym bölüminden yzarlap bilersiňiz.\nSöwdanyň üçin sag boluň!`
  String get orderCreated {
    return Intl.message(
      'Sargydyňyz kabul edildi. Sargydyňyzy profildäki Sargytlarym bölüminden yzarlap bilersiňiz.\nSöwdanyň üçin sag boluň!',
      name: 'orderCreated',
      desc: '',
      args: [],
    );
  }

  /// `Bolýar`
  String get ok {
    return Intl.message(
      'Bolýar',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Sebetde haryt ýok`
  String get cartEmpty {
    return Intl.message(
      'Sebetde haryt ýok',
      name: 'cartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Häzirlikçe bu ýeri boş`
  String get empty {
    return Intl.message(
      'Häzirlikçe bu ýeri boş',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Tertip`
  String get sort {
    return Intl.message(
      'Tertip',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Filtr`
  String get filter {
    return Intl.message(
      'Filtr',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Täzeler başda`
  String get sortTime {
    return Intl.message(
      'Täzeler başda',
      name: 'sortTime',
      desc: '',
      args: [],
    );
  }

  /// `Arzanlar başda`
  String get sortPriceAsc {
    return Intl.message(
      'Arzanlar başda',
      name: 'sortPriceAsc',
      desc: '',
      args: [],
    );
  }

  /// `Gymmatlar başda`
  String get sortPriceDesc {
    return Intl.message(
      'Gymmatlar başda',
      name: 'sortPriceDesc',
      desc: '',
      args: [],
    );
  }

  /// `Biziň gowy baha berenlerimiz başda`
  String get sortOurRating {
    return Intl.message(
      'Biziň gowy baha berenlerimiz başda',
      name: 'sortOurRating',
      desc: '',
      args: [],
    );
  }

  /// `Gyzgynlar başda`
  String get sortHot {
    return Intl.message(
      'Gyzgynlar başda',
      name: 'sortHot',
      desc: '',
      args: [],
    );
  }

  /// `Ýeňiller başda`
  String get sortWeightAsc {
    return Intl.message(
      'Ýeňiller başda',
      name: 'sortWeightAsc',
      desc: '',
      args: [],
    );
  }

  /// `Agyrlar başda`
  String get sortWeightDesc {
    return Intl.message(
      'Agyrlar başda',
      name: 'sortWeightDesc',
      desc: '',
      args: [],
    );
  }

  /// `Kabul etmek`
  String get apply {
    return Intl.message(
      'Kabul etmek',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Arzanladyş`
  String get isDiscounted {
    return Intl.message(
      'Arzanladyş',
      name: 'isDiscounted',
      desc: '',
      args: [],
    );
  }

  /// `Ölçegler`
  String get sizes {
    return Intl.message(
      'Ölçegler',
      name: 'sizes',
      desc: '',
      args: [],
    );
  }

  /// `Ählisini saýla`
  String get selectAll {
    return Intl.message(
      'Ählisini saýla',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Erkek`
  String get man {
    return Intl.message(
      'Erkek',
      name: 'man',
      desc: '',
      args: [],
    );
  }

  /// `Zenan`
  String get woman {
    return Intl.message(
      'Zenan',
      name: 'woman',
      desc: '',
      args: [],
    );
  }

  /// `Aşgabat`
  String get ag {
    return Intl.message(
      'Aşgabat',
      name: 'ag',
      desc: '',
      args: [],
    );
  }

  /// `Ahal`
  String get ah {
    return Intl.message(
      'Ahal',
      name: 'ah',
      desc: '',
      args: [],
    );
  }

  /// `Balkan`
  String get bn {
    return Intl.message(
      'Balkan',
      name: 'bn',
      desc: '',
      args: [],
    );
  }

  /// `Daşoguz`
  String get dz {
    return Intl.message(
      'Daşoguz',
      name: 'dz',
      desc: '',
      args: [],
    );
  }

  /// `Lebap`
  String get lb {
    return Intl.message(
      'Lebap',
      name: 'lb',
      desc: '',
      args: [],
    );
  }

  /// `Mary`
  String get mr {
    return Intl.message(
      'Mary',
      name: 'mr',
      desc: '',
      args: [],
    );
  }

  /// `Üýtgetmek`
  String get edit {
    return Intl.message(
      'Üýtgetmek',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Doldurmak`
  String get fill {
    return Intl.message(
      'Doldurmak',
      name: 'fill',
      desc: '',
      args: [],
    );
  }

  /// `Maglumatlaryňyz girizilmedik`
  String get noData {
    return Intl.message(
      'Maglumatlaryňyz girizilmedik',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `sany`
  String get count {
    return Intl.message(
      'sany',
      name: 'count',
      desc: '',
      args: [],
    );
  }

  /// `manat`
  String get manat {
    return Intl.message(
      'manat',
      name: 'manat',
      desc: '',
      args: [],
    );
  }

  /// `Bu näme?`
  String get whatIsThis {
    return Intl.message(
      'Bu näme?',
      name: 'whatIsThis',
      desc: '',
      args: [],
    );
  }

  /// `Hasapdan çykmak`
  String get logOut {
    return Intl.message(
      'Hasapdan çykmak',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Halanlarym`
  String get favorites {
    return Intl.message(
      'Halanlarym',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Sargytlarym`
  String get orders {
    return Intl.message(
      'Sargytlarym',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Maglumatlary üýtgetmek`
  String get editProfile {
    return Intl.message(
      'Maglumatlary üýtgetmek',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Adyňyz`
  String get name {
    return Intl.message(
      'Adyňyz',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Salgy`
  String get address {
    return Intl.message(
      'Salgy',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Jynsyňyz`
  String get gender {
    return Intl.message(
      'Jynsyňyz',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Welaýat (şäher)`
  String get region {
    return Intl.message(
      'Welaýat (şäher)',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Jyns we welaýat hökman saýlanmaly`
  String get selectGenderAndRegion {
    return Intl.message(
      'Jyns we welaýat hökman saýlanmaly',
      name: 'selectGenderAndRegion',
      desc: '',
      args: [],
    );
  }

  /// `Sizde halanan haryt ýok`
  String get noFavorites {
    return Intl.message(
      'Sizde halanan haryt ýok',
      name: 'noFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Häzirlikçe sizde sargyt ýok`
  String get noOrders {
    return Intl.message(
      'Häzirlikçe sizde sargyt ýok',
      name: 'noOrders',
      desc: '',
      args: [],
    );
  }

  /// `Barlanylýar`
  String get orderPlaced {
    return Intl.message(
      'Barlanylýar',
      name: 'orderPlaced',
      desc: '',
      args: [],
    );
  }

  /// `Kabul edildi`
  String get accepted {
    return Intl.message(
      'Kabul edildi',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Ýüz öwrüldi`
  String get declined {
    return Intl.message(
      'Ýüz öwrüldi',
      name: 'declined',
      desc: '',
      args: [],
    );
  }

  /// `Ugradylmaga taýýar`
  String get readyToShip {
    return Intl.message(
      'Ugradylmaga taýýar',
      name: 'readyToShip',
      desc: '',
      args: [],
    );
  }

  /// `Ugradyldy`
  String get shipping {
    return Intl.message(
      'Ugradyldy',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Gowşyrylmaga taýýar`
  String get readyToDeliver {
    return Intl.message(
      'Gowşyrylmaga taýýar',
      name: 'readyToDeliver',
      desc: '',
      args: [],
    );
  }

  /// `Gowşyryldy`
  String get delivered {
    return Intl.message(
      'Gowşyryldy',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Yzyna gaýtaryldy`
  String get returned {
    return Intl.message(
      'Yzyna gaýtaryldy',
      name: 'returned',
      desc: '',
      args: [],
    );
  }

  /// `Hawa`
  String get yes {
    return Intl.message(
      'Hawa',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Ýapmak`
  String get close {
    return Intl.message(
      'Ýapmak',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Açmak`
  String get open {
    return Intl.message(
      'Açmak',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Hasabyňyzdan çykmakçymy?`
  String get confirmSignOut {
    return Intl.message(
      'Hasabyňyzdan çykmakçymy?',
      name: 'confirmSignOut',
      desc: '',
      args: [],
    );
  }

  /// `Islendik wagt telefon belgiňiz arkaly ýene-de girip bilersiňiz.`
  String get confirmSignOutContent {
    return Intl.message(
      'Islendik wagt telefon belgiňiz arkaly ýene-de girip bilersiňiz.',
      name: 'confirmSignOutContent',
      desc: '',
      args: [],
    );
  }

  /// `Hasaby pozmak`
  String get deleteAccount {
    return Intl.message(
      'Hasaby pozmak',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Hasabyňyzy pozmakçymy?`
  String get confirmDeleteAccount {
    return Intl.message(
      'Hasabyňyzy pozmakçymy?',
      name: 'confirmDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sargytlaryňyz togtadylar, sargyt taryhy, halanlaryňyz we galan ähli maglumatlaryňyz pozular. Ýöne, siz islendik wagt täze hasap döredip bilersiňiz.`
  String get confirmDeleteAccountContent {
    return Intl.message(
      'Sargytlaryňyz togtadylar, sargyt taryhy, halanlaryňyz we galan ähli maglumatlaryňyz pozular. Ýöne, siz islendik wagt täze hasap döredip bilersiňiz.',
      name: 'confirmDeleteAccountContent',
      desc: '',
      args: [],
    );
  }

  /// `Sargyt etmek üçin hasap dörediň ýa-da hasabyňyza giriň.`
  String get signInForMakeOrder {
    return Intl.message(
      'Sargyt etmek üçin hasap dörediň ýa-da hasabyňyza giriň.',
      name: 'signInForMakeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Halanlaryňyza goşmak üçin hasap dörediň ýa-da hasabyňyza giriň.`
  String get signInToAddToFavorites {
    return Intl.message(
      'Halanlaryňyza goşmak üçin hasap dörediň ýa-da hasabyňyza giriň.',
      name: 'signInToAddToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Siz biziň arzanladyşlarymyz, aksiýalarymyz baradaky täzelikleri kabul edip bilmeýärsiňiz.\nSazlamalardan (уведомения) düzetmegiňizi haýyş edýäris)`
  String get youCantReceiveNotifications {
    return Intl.message(
      'Siz biziň arzanladyşlarymyz, aksiýalarymyz baradaky täzelikleri kabul edip bilmeýärsiňiz.\nSazlamalardan (уведомения) düzetmegiňizi haýyş edýäris)',
      name: 'youCantReceiveNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Başla`
  String get start {
    return Intl.message(
      'Başla',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Indiki`
  String get next {
    return Intl.message(
      'Indiki',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Ýüzlerçe görnüşli harytlardan`
  String get page1title {
    return Intl.message(
      'Ýüzlerçe görnüşli harytlardan',
      name: 'page1title',
      desc: '',
      args: [],
    );
  }

  /// `öz halaýan harydyňyzy tapyň...`
  String get page1subtitle {
    return Intl.message(
      'öz halaýan harydyňyzy tapyň...',
      name: 'page1subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Halan harydyňyzyň`
  String get page2title {
    return Intl.message(
      'Halan harydyňyzyň',
      name: 'page2title',
      desc: '',
      args: [],
    );
  }

  /// `reňkini we ölçegini saýlaň we sargyt ediň...`
  String get page2subtitle {
    return Intl.message(
      'reňkini we ölçegini saýlaň we sargyt ediň...',
      name: 'page2subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Gysga wagtda`
  String get page3title {
    return Intl.message(
      'Gysga wagtda',
      name: 'page3title',
      desc: '',
      args: [],
    );
  }

  /// `sargytlaryňyzy kabul ediň!`
  String get page3subtitle {
    return Intl.message(
      'sargytlaryňyzy kabul ediň!',
      name: 'page3subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Gözleýän harydyňyzy ýazyň...`
  String get searchHint {
    return Intl.message(
      'Gözleýän harydyňyzy ýazyň...',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Kod`
  String get code {
    return Intl.message(
      'Kod',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Beýany`
  String get description {
    return Intl.message(
      'Beýany',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Öndirilen ýurdy`
  String get country {
    return Intl.message(
      'Öndirilen ýurdy',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Brend`
  String get brand {
    return Intl.message(
      'Brend',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Brendler`
  String get brands {
    return Intl.message(
      'Brendler',
      name: 'brands',
      desc: '',
      args: [],
    );
  }

  /// `Hytaýdan we Türkiýeden islendik harydy bölek hem-de lomaý görnüşinde satyn almak isleseňiz Google Play we App Store-dan "Yakynyol" programmasyny ýükläp alyp bilersiňiz!`
  String get shareContent {
    return Intl.message(
      'Hytaýdan we Türkiýeden islendik harydy bölek hem-de lomaý görnüşinde satyn almak isleseňiz Google Play we App Store-dan "Yakynyol" programmasyny ýükläp alyp bilersiňiz!',
      name: 'shareContent',
      desc: '',
      args: [],
    );
  }

  /// `Eltip bermek usulyny saýlaň`
  String get selectShippingOption {
    return Intl.message(
      'Eltip bermek usulyny saýlaň',
      name: 'selectShippingOption',
      desc: '',
      args: [],
    );
  }

  /// `Wideo görmek`
  String get watchVideo {
    return Intl.message(
      'Wideo görmek',
      name: 'watchVideo',
      desc: '',
      args: [],
    );
  }

  /// `Başga harytlar`
  String get randomProducts {
    return Intl.message(
      'Başga harytlar',
      name: 'randomProducts',
      desc: '',
      args: [],
    );
  }

  /// `Meňzeş harytlar`
  String get similarProducts {
    return Intl.message(
      'Meňzeş harytlar',
      name: 'similarProducts',
      desc: '',
      args: [],
    );
  }

  /// `Dükanlar`
  String get shops {
    return Intl.message(
      'Dükanlar',
      name: 'shops',
      desc: '',
      args: [],
    );
  }

  /// `Sargyt ID`
  String get orderId {
    return Intl.message(
      'Sargyt ID',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Nädogry kod`
  String get wrongCode {
    return Intl.message(
      'Nädogry kod',
      name: 'wrongCode',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
