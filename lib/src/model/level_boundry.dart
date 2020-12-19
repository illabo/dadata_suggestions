enum LevelBoundry { country, region, area, city, settlement, street, house }

extension LevelBoundryValue on LevelBoundry {
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
