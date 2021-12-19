import 'package:flutter/material.dart';

class OnBoardingModel {
  String _title;
  String _description;
  IconData _icon;
  String _image;

  OnBoardingModel(
      this._title,
      this._description,
      this._icon,
      this._image,
      );

  String get image => _image;

  IconData get icon => _icon;

  String get description => _description;

  String get title => _title;
}