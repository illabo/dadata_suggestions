// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestionData _$SuggestionDataFromJson(Map<String, dynamic> json) {
  return SuggestionData()
    ..postalCode = json['postal_code'] as String
    ..country = json['country'] as String
    ..countryIsoCode = json['country_iso_code'] as String
    ..federalDistrict = json['federal_district'] as String
    ..regionFiasId = json['region_fias_id'] as String
    ..regionKladrId = json['region_kladr_id'] as String
    ..regionIsoCode = json['region_iso_code'] as String
    ..regionWithType = json['region_with_type'] as String
    ..regionType = json['region_type'] as String
    ..regionTypeFull = json['region_type_full'] as String
    ..region = json['region'] as String
    ..areaFiasId = json['area_fias_id'] as String
    ..areaKladrId = json['area_kladr_id'] as String
    ..areaWithType = json['area_with_type'] as String
    ..areaType = json['area_type'] as String
    ..areaTypeFull = json['area_type_full'] as String
    ..area = json['area'] as String
    ..cityFiasId = json['city_fias_id'] as String
    ..cityKladrId = json['city_kladr_id'] as String
    ..cityWithType = json['city_with_type'] as String
    ..cityType = json['city_type'] as String
    ..cityTypeFull = json['city_type_full'] as String
    ..city = json['city'] as String
    ..cityArea = json['city_area'] as String
    ..cityDistrictFiasId = json['city_district_fias_id'] as String
    ..cityDistrictKladrId = json['city_district_kladr_id'] as String
    ..cityDistrictWithType = json['city_district_with_type'] as String
    ..cityDistrictType = json['city_district_type'] as String
    ..cityDistrictTypeFull = json['city_district_type_full'] as String
    ..cityDistrict = json['city_district'] as String
    ..settlementFiasId = json['settlement_fias_id'] as String
    ..settlementKladrId = json['settlement_kladr_id'] as String
    ..settlementWithType = json['settlement_with_type'] as String
    ..settlementType = json['settlement_type'] as String
    ..settlementTypeFull = json['settlement_type_full'] as String
    ..settlement = json['settlement'] as String
    ..streetFiasId = json['street_fias_id'] as String
    ..streetKladrId = json['street_kladr_id'] as String
    ..streetWithType = json['street_with_type'] as String
    ..streetType = json['street_type'] as String
    ..streetTypeFull = json['street_type_full'] as String
    ..street = json['street'] as String
    ..houseFiasId = json['house_fias_id'] as String
    ..houseKladrId = json['house_kladr_id'] as String
    ..houseType = json['house_type'] as String
    ..houseTypeFull = json['house_type_full'] as String
    ..house = json['house'] as String
    ..blockType = json['block_type'] as String
    ..blockTypeFull = json['block_type_full'] as String
    ..block = json['block'] as String
    ..flatFiasId = json['flat_fias_id'] as String
    ..flatType = json['flat_type'] as String
    ..flatTypeFull = json['flat_type_full'] as String
    ..flat = json['flat'] as String
    ..flatArea = json['flat_area'] as String
    ..squareMeterPrice = json['square_meter_price'] as String
    ..flatPrice = json['flat_price'] as String
    ..postalBox = json['postal_box'] as String
    ..fiasId = json['fias_id'] as String
    ..fiasCode = json['fias_code'] as String
    ..fiasLevel = json['fias_level'] as String
    ..fiasActualityState = json['fias_actuality_state'] as String
    ..kladrId = json['kladr_id'] as String
    ..geonameId = json['geoname_id'] as String
    ..capitalMarker = json['capital_marker'] as String
    ..okato = json['okato'] as String
    ..oktmo = json['oktmo'] as String
    ..taxOffice = json['tax_office'] as String
    ..taxOfficeLegal = json['tax_office_legal'] as String
    ..timezone = json['timezone'] as String
    ..geoLat = json['geo_lat']
    ..geoLon = json['geo_lon']
    ..beltwayHit = json['beltway_hit'] as String
    ..beltwayDistance = json['beltway_distance'] as String
    ..metro = json['metro'] as List
    ..qc = json['qc']
    ..qcGeo = json['qc_geo']
    ..qcComplete = json['qc_complete']
    ..qcHouse = json['qc_house']
    ..historyValues =
        (json['history_values'] as List)?.map((e) => e as String)?.toList()
    ..unparsedParts = json['unparsed_parts'] as String
    ..source = json['source'] as String;
}

Map<String, dynamic> _$SuggestionDataToJson(SuggestionData instance) =>
    <String, dynamic>{
      'postal_code': instance.postalCode,
      'country': instance.country,
      'country_iso_code': instance.countryIsoCode,
      'federal_district': instance.federalDistrict,
      'region_fias_id': instance.regionFiasId,
      'region_kladr_id': instance.regionKladrId,
      'region_iso_code': instance.regionIsoCode,
      'region_with_type': instance.regionWithType,
      'region_type': instance.regionType,
      'region_type_full': instance.regionTypeFull,
      'region': instance.region,
      'area_fias_id': instance.areaFiasId,
      'area_kladr_id': instance.areaKladrId,
      'area_with_type': instance.areaWithType,
      'area_type': instance.areaType,
      'area_type_full': instance.areaTypeFull,
      'area': instance.area,
      'city_fias_id': instance.cityFiasId,
      'city_kladr_id': instance.cityKladrId,
      'city_with_type': instance.cityWithType,
      'city_type': instance.cityType,
      'city_type_full': instance.cityTypeFull,
      'city': instance.city,
      'city_area': instance.cityArea,
      'city_district_fias_id': instance.cityDistrictFiasId,
      'city_district_kladr_id': instance.cityDistrictKladrId,
      'city_district_with_type': instance.cityDistrictWithType,
      'city_district_type': instance.cityDistrictType,
      'city_district_type_full': instance.cityDistrictTypeFull,
      'city_district': instance.cityDistrict,
      'settlement_fias_id': instance.settlementFiasId,
      'settlement_kladr_id': instance.settlementKladrId,
      'settlement_with_type': instance.settlementWithType,
      'settlement_type': instance.settlementType,
      'settlement_type_full': instance.settlementTypeFull,
      'settlement': instance.settlement,
      'street_fias_id': instance.streetFiasId,
      'street_kladr_id': instance.streetKladrId,
      'street_with_type': instance.streetWithType,
      'street_type': instance.streetType,
      'street_type_full': instance.streetTypeFull,
      'street': instance.street,
      'house_fias_id': instance.houseFiasId,
      'house_kladr_id': instance.houseKladrId,
      'house_type': instance.houseType,
      'house_type_full': instance.houseTypeFull,
      'house': instance.house,
      'block_type': instance.blockType,
      'block_type_full': instance.blockTypeFull,
      'block': instance.block,
      'flat_fias_id': instance.flatFiasId,
      'flat_type': instance.flatType,
      'flat_type_full': instance.flatTypeFull,
      'flat': instance.flat,
      'flat_area': instance.flatArea,
      'square_meter_price': instance.squareMeterPrice,
      'flat_price': instance.flatPrice,
      'postal_box': instance.postalBox,
      'fias_id': instance.fiasId,
      'fias_code': instance.fiasCode,
      'fias_level': instance.fiasLevel,
      'fias_actuality_state': instance.fiasActualityState,
      'kladr_id': instance.kladrId,
      'geoname_id': instance.geonameId,
      'capital_marker': instance.capitalMarker,
      'okato': instance.okato,
      'oktmo': instance.oktmo,
      'tax_office': instance.taxOffice,
      'tax_office_legal': instance.taxOfficeLegal,
      'timezone': instance.timezone,
      'geo_lat': instance.geoLat,
      'geo_lon': instance.geoLon,
      'beltway_hit': instance.beltwayHit,
      'beltway_distance': instance.beltwayDistance,
      'metro': instance.metro,
      'qc': instance.qc,
      'qc_geo': instance.qcGeo,
      'qc_complete': instance.qcComplete,
      'qc_house': instance.qcHouse,
      'history_values': instance.historyValues,
      'unparsed_parts': instance.unparsedParts,
      'source': instance.source,
    };
