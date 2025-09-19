using {trip} from '../db/schema';


service TripManagerService @(path: '/trip') {

    entity Attachments        as projection on trip.Attachments;

    entity BusinessTrips      as projection on trip.BusinessTrips;

    entity Comments           as projection on trip.Comments;
    entity FlightInformations as projection on trip.FlightInformations;
}
