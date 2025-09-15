using {trip} from '../db/schema';


@(requires: 'worker')
service WorkerService {

    @readonly
    entity Trips as
        projection on trip.BusinessTrips {
            hotelBookingCode,
            flightBookingCode,
            status
        }
}
