import 'package:air_india/models/cabin_class.dart';
import 'package:air_india/models/route_details.dart';

class RouteDetailsService {
  // Define cabin classes with their images
  static final Map<String, List<CabinClass>> _flightCabinClasses = {
    // Europe Routes
    "FRA_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco1.png",
          "assets/images/eco2.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre1.png",
          "assets/images/pre2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus1.png",
          "assets/images/bus2.png",
        ],
      )
    ],

    //Africa Routes
    "MRU_BOM": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],

    //Indian Sub Continent Routes
    "DAC_BOM": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco7.png",
          "assets/images/eco8.png",
          "assets/images/eco9.png",
          "assets/images/eco10.png",
        ],
      ),
      const CabinClass(name: "PREMIUM ECONOMY", imagePaths: [
        "assets/images/pre7.png",
        "assets/images/pre8.png",
      ]),
      const CabinClass(name: "BUSINESS CLASS", imagePaths: [
        "assets/images/bus7.png",
        "assets/images/bus8.png",
        "assets/images/bus9.png",
        "assets/images/bus10.png",
      ])
    ],
    "MLE_BOM": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco7.png",
          "assets/images/eco8.png",
          "assets/images/eco9.png",
          "assets/images/eco10.png",
        ],
      ),
      const CabinClass(name: "PREMIUM ECONOMY", imagePaths: [
        "assets/images/pre7.png",
        "assets/images/pre8.png",
      ]),
      const CabinClass(name: "BUSINESS CLASS", imagePaths: [
        "assets/images/bus7.png",
        "assets/images/bus8.png",
        "assets/images/bus9.png",
        "assets/images/bus10.png",
      ])
    ],
    "RGN_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco7.png",
          "assets/images/eco8.png",
          "assets/images/eco9.png",
          "assets/images/eco10.png",
        ],
      ),
      const CabinClass(name: "PREMIUM ECONOMY", imagePaths: [
        "assets/images/pre7.png",
        "assets/images/pre8.png",
      ]),
      const CabinClass(name: "BUSINESS CLASS", imagePaths: [
        "assets/images/bus7.png",
        "assets/images/bus8.png",
        "assets/images/bus9.png",
        "assets/images/bus10.png",
      ]),
    ],

    //South East Asia Routes
    "DPS_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],

    "BKK_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],
    "SIN_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],
    "SIN_BOM": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],
    "SIN_PNQ": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],
    "SIN_BLR": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco7.png",
          "assets/images/eco8.png",
          "assets/images/eco9.png",
          "assets/images/eco10.png",
        ],
      ),
      const CabinClass(name: "PREMIUM ECONOMY", imagePaths: [
        "assets/images/pre7.png",
        "assets/images/pre8.png",
      ]),
      const CabinClass(name: "BUSINESS CLASS", imagePaths: [
        "assets/images/bus7.png",
        "assets/images/bus8.png",
        "assets/images/bus9.png",
        "assets/images/bus10.png",
      ]),
    ],

    //FAR EAST
    "HKG_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],

    // Middle East Routes
    "DOH_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco3.png",
          "assets/images/eco4.png",
          "assets/images/eco5.png",
          "assets/images/eco6.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre3.png",
          "assets/images/pre4.png",
          "assets/images/pre5.png",
          "assets/images/pre6.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus3.png",
          "assets/images/bus4.png",
          "assets/images/bus5.png",
          "assets/images/bus6.png",
        ],
      ),
    ],
    "DXB_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco1.png",
          "assets/images/eco2.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/pre1.png",
          "assets/images/pre2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/bus1.png",
          "assets/images/bus2.png",
        ],
      )
    ],
    "DXB_HYD": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/eco7.png",
          "assets/images/eco8.png",
          "assets/images/eco9.png",
          "assets/images/eco10.png",
        ],
      ),
      const CabinClass(name: "PREMIUM ECONOMY", imagePaths: [
        "assets/images/pre7.png",
        "assets/images/pre8.png",
      ]),
      const CabinClass(name: "BUSINESS CLASS", imagePaths: [
        "assets/images/bus7.png",
        "assets/images/bus8.png",
        "assets/images/bus9.png",
        "assets/images/bus10.png",
      ]),
    ],

    // North America Routes
    "EWR_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/na_uk_eco1.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/na_uk_pre1.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bus1.png",
        ],
      ),
    ],
    "EWR_BOM": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "ORD_DEL": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "JFK_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/na_uk_eco1.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/na_uk_pre1.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bus1.png",
        ],
      ),
    ],
    "JFK_BOM": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "SFO_DEL": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "SFO_BOM": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "SFO_BLR": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "YYZ_DEL": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "YVR_DEL": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],

    // UK
    "LHR_BOM": [
      const CabinClass(
        name: "FIRST CLASS",
        imagePaths: [
          "assets/images/na_uk_fs_cls.png",
          "assets/images/na_uk_fs_cls2.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bs_cls.png",
          "assets/images/na_uk_bs_cls2.png",
        ],
      ),
    ],
    "LHR_DEL": [
      const CabinClass(
        name: "ECONOMY",
        imagePaths: [
          "assets/images/na_uk_eco1.png",
        ],
      ),
      const CabinClass(
        name: "PREMIUM ECONOMY",
        imagePaths: [
          "assets/images/na_uk_pre1.png",
        ],
      ),
      const CabinClass(
        name: "BUSINESS CLASS",
        imagePaths: [
          "assets/images/na_uk_bus1.png",
        ],
      ),
    ]
  };

  static RouteDetails getRouteDetails(String fromAirport, String toAirport) {
    // Create a unique key for the route
    final routeKey = '${fromAirport}_$toAirport';

    // Get cabin classes for this route if available
    final cabinClasses = _flightCabinClasses[routeKey];

    switch (routeKey) {
      // Europe Routes
      case "AMS_DEL":
        return const RouteDetails(
          flightNumber: "AI 156",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "CPH_DEL":
        return const RouteDetails(
          flightNumber: "AI 158",
          frequency: "5 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "FRA_DEL":
        return RouteDetails(
          flightNumber: "AI 2026 & AI 2030",
          frequency: "12 x Weekly",
          seats: "292",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "FRA_BOM":
        return RouteDetails(
          flightNumber: "AI 2028",
          frequency: "5 x Weekly",
          seats: "299",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "MXP_DEL":
        return const RouteDetails(
          flightNumber: "AI 138",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "CDG_DEL":
        return const RouteDetails(
          flightNumber: "AI 142 & AI 148",
          frequency: "14 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "VIE_DEL":
        return const RouteDetails(
          flightNumber: "AI 154",
          frequency: "4 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "ZRH_DEL":
        return const RouteDetails(
          flightNumber: "AI 152",
          frequency: "5 x Weekly",
          seats: "299",
          cabinType: "2 Cabin",
        );
      case "TLV_DEL":
        return const RouteDetails(
          flightNumber: "AI 140",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );

      // UK Routes
      case "BHX_DEL":
        return const RouteDetails(
          flightNumber: "AI 114",
          frequency: "3 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "BHX_ATQ":
        return const RouteDetails(
          flightNumber: "AI 118",
          frequency: "4 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "LHR_BOM":
        return RouteDetails(
          flightNumber: "AI 128 & AI 130",
          frequency: "14 x Weekly",
          seats: "328",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "LHR_DEL":
        return RouteDetails(
          flightNumber: "AI 162",
          frequency: "24 x Weekly",
          seats: "316",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );

      // North America Routes
      case "ORD_DEL":
        return RouteDetails(
          flightNumber: "AI 126",
          frequency: "7 x Weekly",
          seats: "342",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "EWR_DEL":
        return RouteDetails(
          flightNumber: "AI 106",
          frequency: "5 x Weekly",
          seats: "316",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "EWR_BOM":
        return RouteDetails(
          flightNumber: "AI 144",
          frequency: "3 x Weekly",
          seats: "328",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "JFK_DEL":
        return RouteDetails(
          flightNumber: "AI 102 & AI 192",
          frequency: "7 x Weekly",
          seats: "316",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "JFK_BOM":
        return RouteDetails(
          flightNumber: "AI 116",
          frequency: "7 x Weekly",
          seats: "328",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SFO_DEL":
        return RouteDetails(
          flightNumber: "AI 174 & AI 184",
          frequency: "10 x Weekly",
          seats: "288",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SFO_BOM":
        return RouteDetails(
          flightNumber: "AI 180",
          frequency: "4 x Weekly",
          seats: "288",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SFO_BLR":
        return RouteDetails(
          flightNumber: "AI 176",
          frequency: "3 x Weekly",
          seats: "288",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "YYZ_DEL":
        return RouteDetails(
          flightNumber: "AI 188 & AI 190",
          frequency: "13 x Weekly",
          seats: "238",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "YVR_DEL":
        return RouteDetails(
          flightNumber: "AI 186",
          frequency: "7 x Weekly",
          seats: "238",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "IAD_DEL":
        return const RouteDetails(
          flightNumber: "AI 104",
          frequency: "5 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );

      // Australia Routes
      case "MEL_DEL":
        return const RouteDetails(
          flightNumber: "AI 0309",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "SYD_DEL":
        return const RouteDetails(
          flightNumber: "AI 0301",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );

      // Africa Routes
      case "MRU_BOM":
        return RouteDetails(
          flightNumber: "AI 2242",
          frequency: "5 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "NBO_DEL":
        return const RouteDetails(
          flightNumber: "AI 0962",
          frequency: "4 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );

      // Middle East Routes
      case "AUH_BOM":
        return const RouteDetails(
          flightNumber: "AI 946",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "DMM_BOM":
        return const RouteDetails(
          flightNumber: "AI 936",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "DOH_DEL":
        return RouteDetails(
          flightNumber: "AI 2284",
          frequency: "7 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "DOH_BOM":
        return const RouteDetails(
          flightNumber: "AI 970, AI 982 & AI 2290",
          frequency: "13 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "DOH_COK":
        return const RouteDetails(
          flightNumber: "AI 954",
          frequency: "6 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "DXB_DEL":
        return RouteDetails(
          flightNumber: "AI 916, AI 918, AI 930, AI 996, AI 2206 & AI 2210",
          frequency: "28 x Weekly",
          seats: "292 & 259",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "DXB_BOM":
        return const RouteDetails(
          flightNumber: "AI 2202, AI 0910 & AI 0920",
          frequency: "26 x Weekly",
          seats: "259 & 162",
          cabinType: "2 Cabin",
        );
      case "DXB_COK":
        return const RouteDetails(
          flightNumber: "AI 934",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "DXB_HYD":
        return RouteDetails(
          flightNumber: "AI 2204",
          frequency: "7 x Weekly",
          seats: "164",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "DXB_MAA":
        return const RouteDetails(
          flightNumber: "AI 0906",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "JED_DEL":
        return const RouteDetails(
          flightNumber: "AI 992",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "JED_BOM":
        return const RouteDetails(
          flightNumber: "AI 932 & AI 938",
          frequency: "10 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "RUH_DEL":
        return const RouteDetails(
          flightNumber: "AI 926",
          frequency: "4 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "RUH_BOM":
        return const RouteDetails(
          flightNumber: "AI 922",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );

      // South East Asia Routes
      case "DPS_DEL":
        return RouteDetails(
          flightNumber: "AI 0369 & AI 2146",
          frequency: "7 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "BKK_DEL":
        return RouteDetails(
          flightNumber: "AI 2303, AI 2333, AI 2335 & AI 2356",
          frequency: "28 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "BKK_BOM":
        return const RouteDetails(
          flightNumber: "AI 0338, AI 2353",
          frequency: "13 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "SGN_DEL":
        return const RouteDetails(
          flightNumber: "AI 0389",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "KUL_DEL":
        return const RouteDetails(
          flightNumber: "AI 0385",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "HKT_DEL":
        return const RouteDetails(
          flightNumber: "AI 0377 & AI 0379",
          frequency: "14 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "SIN_DEL":
        return RouteDetails(
          flightNumber: "AI 2116 & AI 2383",
          frequency: "21 x Weekly",
          seats: "292 & 188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SIN_BOM":
        return RouteDetails(
          flightNumber: "AI 2106 & AI 2108",
          frequency: "14 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SIN_BLR":
        return RouteDetails(
          flightNumber: "AI 2393",
          frequency: "7 x Weekly",
          seats: "164",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "SIN_MAA":
        return const RouteDetails(
          flightNumber: "AI 0347",
          frequency: "7 x Weekly",
          seats: "182",
          cabinType: "2 Cabin",
        );
      case "SIN_PNQ":
        return RouteDetails(
          flightNumber: "AI 2110",
          frequency: "5 x Weekly",
          seats: "188",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );

      // Indian Sub-Continents
      case "CMB_DEL":
        return const RouteDetails(
          flightNumber: "AI 0282",
          frequency: "7 x Weekly",
          seats: "182",
          cabinType: "2 Cabin",
        );
      case "CMB_BOM":
        return const RouteDetails(
          flightNumber: "AI 0275",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "CMB_MAA":
        return const RouteDetails(
          flightNumber: "AI 0274",
          frequency: "7 x Weekly",
          seats: "182",
          cabinType: "2 Cabin",
        );
      case "DAC_DEL":
        return const RouteDetails(
          flightNumber: "AI 0238 & AI 2228",
          frequency: "14 x Weekly",
          seats: "150",
          cabinType: "2 Cabin",
        );
      case "DAC_BOM":
        return RouteDetails(
          flightNumber: "AI 2184",
          frequency: "7 x Weekly",
          seats: "164",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "KTM_DEL":
        return const RouteDetails(
          flightNumber:
              "AI 2216, AI 2220, AI 0212, AI 0214, AI 0216, AI 0218 & AI 2220",
          frequency: "35 x Weekly",
          seats: "150, 162, 164 & 188",
          cabinType: "3 & 2 Cabin",
        );
      case "MLE_DEL":
        return const RouteDetails(
          flightNumber: "AI 0240",
          frequency: "7 x Weekly",
          seats: "162",
          cabinType: "2 Cabin",
        );
      case "MLE_BOM":
        return RouteDetails(
          flightNumber: "AI 2272",
          frequency: "1 x Weekly",
          seats: "164",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "RGN_DEL":
        return RouteDetails(
          flightNumber: "AI 2236",
          frequency: "1 x Weekly",
          seats: "164",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );

      // Far East Routes
      case "HKG_DEL":
        return RouteDetails(
          flightNumber: "AI 2162 & AI 0315",
          frequency: "7 x Weekly",
          seats: "188 & 259",
          cabinType: "3 Cabin",
          cabinClasses: cabinClasses,
        );
      case "ICN_DEL":
        return const RouteDetails(
          flightNumber: "AI 313",
          frequency: "5 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );
      case "HND_DEL":
        return const RouteDetails(
          flightNumber: "AI 357",
          frequency: "7 x Weekly",
          seats: "259",
          cabinType: "2 Cabin",
        );

      default:
        return const RouteDetails(
          flightNumber: "AI ---",
          frequency: "- x Weekly",
          seats: "---",
          cabinType: "- Cabin",
        );
    }
  }
}
