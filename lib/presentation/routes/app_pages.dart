import 'package:get/get.dart';
import 'package:loc_master/presentation/bindings/details_renters.bindings.dart';
import 'package:loc_master/presentation/bindings/home_bindings.dart';
import 'package:loc_master/presentation/bindings/rental_bindings.dart';
import 'package:loc_master/presentation/bindings/renter_bindings.dart';
import 'package:loc_master/presentation/bindings/search_bindings.dart';
import 'package:loc_master/presentation/bindings/tenant_register_binding.dart';
import 'package:loc_master/presentation/bindings/vehicle_bindings.dart';
import 'package:loc_master/presentation/bindings/vehicle_details_binding.dart';
import 'package:loc_master/presentation/bindings/vehicle_register_binding.dart';
import 'package:loc_master/presentation/organisms/renters/search_page.dart';
import 'package:loc_master/presentation/pages/home/home_page.dart';
import 'package:loc_master/presentation/pages/rentals/retals_page.dart';
import 'package:loc_master/presentation/pages/tenants/tenant_register_page.dart';
import 'package:loc_master/presentation/pages/tenants/tenant_details_page.dart';
import 'package:loc_master/presentation/pages/tenants/tenants_page.dart';
import 'package:loc_master/presentation/pages/vehicle/vehicle_datails.dart';
import 'package:loc_master/presentation/pages/vehicle/vehicle_page.dart';
import 'package:loc_master/presentation/pages/vehicle/vehicle_register_page.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.motorcycleRegister,
      page: () => VehicleRegisterPage(),
      binding: MotorcycleRegisterBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.tenants,
      page: () => TenantsPage(),
      binding: TenantsBinding(),
    ),
    GetPage(
      name: Routes.vehicles,
      page: () => VehiclesPage(),
      binding: VehiclesBinding(),
    ),
    GetPage(
      name: Routes.vehicleDetails,
      page: () => VehicleDetailsPage(),
      binding: VehicleDetailsBinding(),
    ),
    GetPage(
      name: Routes.tenantRegister,
      page: () => TenantRegisterPage(),
      binding: TenantRegisterBinding(),
    ),
    GetPage(
      name: Routes.search,
      page: () => SearchPage(),
      binding: SearchBindings(),
    ),
    GetPage(
      name: Routes.rentals,
      page: () => RentalsPage(),
      binding: RentalBindings(),
    ),
    GetPage(
      name: Routes.detailsRenters,
      page: () => TenantDetailsPage(),
      binding: DetailsRetersBinding(),
    ),
  ];
}
