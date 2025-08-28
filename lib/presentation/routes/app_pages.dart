import 'package:get/get.dart';
import 'package:loc_master/presentation/bindings/details_renters.bindings.dart';
import 'package:loc_master/presentation/bindings/home_bindings.dart';
import 'package:loc_master/presentation/bindings/rental_bindings.dart';
import 'package:loc_master/presentation/bindings/search_bindings.dart';
import 'package:loc_master/presentation/bindings/tenant_bindings.dart';
import 'package:loc_master/presentation/bindings/tenant_register_binding.dart';
import 'package:loc_master/presentation/bindings/vehicle_bindings.dart';
import 'package:loc_master/presentation/bindings/vehicle_details_binding.dart';
import 'package:loc_master/presentation/organisms/renters/search_page.dart';
import 'package:loc_master/presentation/pages/home_page.dart';
import 'package:loc_master/presentation/pages/rentals/retals_page.dart';
import 'package:loc_master/presentation/pages/tenants/consumer_register_page.dart';
import 'package:loc_master/presentation/pages/tenants/details_reters_page.dart';
import 'package:loc_master/presentation/pages/tenants/tenants_page.dart';
import 'package:loc_master/presentation/pages/vehicle/vehicle_datails.dart';
import 'package:loc_master/presentation/pages/vehicle/vehicle_page.dart';
import '../bindings/motorcycle_register_binding.dart';
import '../pages/motorcycle_register_page.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.MOTORCYCLE_REGISTER,
      page: () => MotorcycleRegisterPage(),
      binding: MotorcycleRegisterBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.TENANTS,
      page: () => TenantsPage(),
      binding: TenantsBinding(),
    ),
    GetPage(
      name: Routes.VEHICLES,
      page: () => VehiclesPage(),
      binding: VehiclesBinding(),
    ),
    GetPage(
      name: Routes.VEHICLE_DETAILS,
      page: () => VehicleDetailsPage(),
      binding: VehicleDetailsBinding(),
    ),
    GetPage(
      name: Routes.TENANT_REGISTER,
      page: () => ConsumerRegisterPage(),
      binding: TenantRegisterBinding(),
    ),
    GetPage(
      name: Routes.SEARCH_PAGE,
      page: () => SearchPage(),
      binding: SearchBindings(),
    ),
    GetPage(
      name: Routes.RENTALS,
      page: () => RentalsPage(),
      binding: RentalBindings(),
    ),
    GetPage(
      name: Routes.DETAILS_RENTERS,
      page: () => DetailsRetersPage(),
      binding: DetailsRetersBinding(),
    ),
  ];
}
