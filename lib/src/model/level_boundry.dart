///Levels of `from_bound` and `to_bound` according to
///Dadata online API documentation https://confluence.hflabs.ru/pages/viewpage.action?pageId=285343795.
enum LevelBoundry { country, region, area, city, settlement, street, house }

/// Helper extension of [LevelBoundry] enum.
extension LevelBoundryValue on LevelBoundry {
  /// Returns string value of a enum case.
  String get value {
    switch (this) {
      case LevelBoundry.country:
        return 'country';
        break;
      case LevelBoundry.region:
        return 'region';
        break;
      case LevelBoundry.area:
        return 'area';
        break;
      case LevelBoundry.city:
        return 'city';
        break;
      case LevelBoundry.settlement:
        return 'settlement';
        break;
      case LevelBoundry.street:
        return 'street';
        break;
      case LevelBoundry.house:
        return 'house';
        break;
      default:
        return null;
    }
  }

  /// Converts string [value] to enum case if available.
  /// Please check [LevelBoundry] for available cases.
  static LevelBoundry forValue(String value) {
    switch (value) {
      case 'country':
        return LevelBoundry.country;
        break;
      case 'region':
        return LevelBoundry.region;
        break;
      case 'area':
        return LevelBoundry.area;
        break;
      case 'city':
        return LevelBoundry.city;
        break;
      case 'settlement':
        return LevelBoundry.settlement;
        break;
      case 'street':
        return LevelBoundry.street;
        break;
      case 'house':
        return LevelBoundry.house;
        break;
      default:
        return null;
    }
  }
}
