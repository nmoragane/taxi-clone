import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uber_user/Assistants/requestAssistant.dart';

class AssistantMethods {
  static Future<String> searchCoordinateAddress(Position position) async {
    String placeAddress = "";
    String url =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=AIzaSyCeV1wc_Lk4Cio8PtrXrt_K_-14tBgH0L8";

    var response = await RequestAssistant.getRequest(url);

    if (response != 'failed') {
      placeAddress = response['response'][0]["formatted_address"];
    }

    return placeAddress;
  }
}
