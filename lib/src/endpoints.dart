import 'package:onebusaway_api_client_library/src/enums/endpoint_enum.dart';

const Map<Endpoint, String> Endpoints = {
  Endpoint.agenciesWithCoverage: 'agencies-with-coverage',
  Endpoint.agency: 'agency',
  Endpoint.arrivalAndDepartureForStop: 'arrival-and-departure-for-stop',
  Endpoint.arrivalsAndDeparturesForStop: 'arrivals-and-departures-for-stop',
  Endpoint.block: 'block',
  Endpoint.config: 'config',
  Endpoint.currentTime: 'current-time',
  Endpoint.reportProblemWithStop: 'report-problem-with-stop',
  Endpoint.reportProblemWithTrip: 'report-problem-with-trip',
  Endpoint.routeIdsForAgency: 'route-ids-for-agency',
  Endpoint.route: 'route',
  Endpoint.routesForAgency: 'routes-for-agency',
  Endpoint.routesForLocation: 'routes-for-location',
  Endpoint.scheduleForRoute: 'schedule-for-route',
  Endpoint.scheduleForStop: 'schedule-for-stop',
  Endpoint.shape: 'shape',
  Endpoint.stopIdsForAgency: 'stop-ids-for-agency',
  Endpoint.stop: 'stop',
  Endpoint.stopsForLocation: 'stops-for-location',
  Endpoint.stopsForRoute: 'stops-for-route',
  Endpoint.tripDetails: 'trip-details',
  Endpoint.tripForVehicle: 'trip-for-vehicle',
  Endpoint.trip: 'trip',
  Endpoint.tripsForLocation: 'trips-for-location',
  Endpoint.tripsForRoute: 'trips-for-route',
  Endpoint.vehiclesForAgency: 'vehicles-for-agency',
};
