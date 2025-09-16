using {trip} from '../db/schema';


service TripManagerService @(path: '/trip') {

    entity Attachments        as projection on trip.Attachments;

    entity BusinessTrips      as
        projection on trip.BusinessTrips {
            *,
            status.name        as statusName,
            transportType.type as transportBy
        };

    entity Comments           as projection on trip.Comments;
    entity FlightInformations as projection on trip.FlightInformations;

}

service ManagementService @(path: '/managment') {
    entity Status         as projection on trip.Status;
    entity FlightRoutes   as projection on trip.FlightRoutes;
    entity Airports       as projection on trip.Airports;
    entity Airlines       as projection on trip.Airlines;
    entity TransportTypes as projection on trip.TransportTypes;
}
