// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    "Search":"بحث",
    "BestSeller": "الاكثر مبيعا",
    "Favourites":"المفضلة",
    "BookDetail": "تفاصيل الكتاب",

  "WroteBy":"بقلم",
  "Pages":"الصفحات",
  "HullNumber":"القاعة",
    "BookAdded":"تم اضافة الكتاب للمفضلة",
    "BookRemoved":"تم ازالة الكتاب للمفضلة",

    "Suite":"الجناح",
  "Publishing":"النشر",
  "NearBy":"دار النشر الاقرب",
    "NoResult":"لايوجد نتائج لبحثك",
    "SimilarBook":"كتب مشابهة",
    "SETTINGS":"الاعدادات",
    "Price":"السعر"
  };
  static const Map<String, dynamic> en = {
    "Search":"Search",
    "BestSeller": "Best Seller",
  "WroteBy":"Wrote By",
    "NoResult":"No result found for your search",

    "BookAdded":"Book added to your favourite",
    "BookRemoved":"Book deleted from your favourite",

    "Pages":"Pages",
  "HullNumber":"Hull Number",
  "Suite":"Suite",
  "Publishing":"Publishing",
  "NearBy":"Nearby Publishing House",
  "SimilarBook":"Similar Book",
  "BookDetail": "Book Detail",
    "Favourites":"Favourites",
    "SETTINGS":"SETTINGS",
    "Price":"Price"
  };

static const Map<String, Map<String, dynamic>> mapLocales = {
  "ar": ar,
  "en": en
};}
