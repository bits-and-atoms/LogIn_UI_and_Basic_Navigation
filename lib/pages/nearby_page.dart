// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:login_page1/components/toolbar.dart';
import 'package:login_page1/config/app_icons.dart';
import 'package:login_page1/config/app_strings.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
            center: LatLng(24.75718213437842, 92.78519958570718), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            //z means zoom, x and y means lat and longitude which we gave before
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 50,
                  point: LatLng(24.75718213437842, 92.78519958570718),
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          child: Text(
                            "username",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.icLocation,
                          colorFilter:
                              ColorFilter.mode(Colors.black, BlendMode.srcIn),
                        )
                      ],
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}
