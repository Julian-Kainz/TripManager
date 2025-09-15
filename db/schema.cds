using {
    cuid,
    Country,
    managed
} from '@sap/cds/common';


namespace trip;


entity Status : cuid, managed {
    name : String(50);
}

entity Comments : cuid, managed {
    text         : LargeString;
    businessTrip : Association to one BusinessTrips;
}

entity BookingCodes : cuid, managed {
    @assert.format: '[A-Z0-9]{12}'
    code : String(12);
}

entity Airlines : managed {
        @assert.format: '[A-Z0-9]{2}'
    key code : String(2);
}


entity TransportTypes : cuid, managed {
    type : String(50);
}


entity Attachments : cuid, managed {

    fileName     : String;

    mimeType     : String      @Corse.IsMediaType;
    fileContent  : LargeBinary @Corse.MediaType: mimeType;

    businessTrip : Association to one BusinessTrips;
}


entity Airports : managed {
        @assert.format: '[A-Z]{3}'
    key IATA    : String(3);
        name    : String(50);
        country : Country;
        city    : String(50);
}


entity FlightRoutes : cuid {
    departureAirport   : Association to one Airports @mandatory;
    destinationAirport : Association to one Airports @mandatory;
}

entity FlightInformations : cuid, managed {
    departureDateTime    : DateTime default $now           @mandatory  @assert.range : [
        '$now',
        '$self.destinationDateTime'
    ];

    destinationDateTime  : DateTime                        @mandatory  @assert.format: ['$self.departureDateTime'];

    returnFlightDateTime : DateTime                        @mandatory  @assert.format: ['$self.destinationDateTime'];

    airline              : Association to one Airlines     @mandatory;

    @assert.format: '[0-9A-Z]{6}'
    flightNumber         : String(6)                       @mandatory;

    returnFlightAirport  : Association to one Airports     @mandatory;

    flightRoute          : Composition of one FlightRoutes @mandatory;
}

entity BusinessTrips : cuid, managed {
    startDate             : Date                              @mandatory  @assert.range: [
        '$now',
        '$self.endDate'
    ];

    endDate               : Date                              @mandatory  @assert.range: ['$self.startDate'];
    destination           : String(100)                       @mandatory;

    hotel                 : Boolean default false;

    additionalInformation : LargeString;

    status                : Association to one Status         @mandatory;
    transportType         : Association to one TransportTypes @mandatory;
    comments              : Composition of many Comments
                                on comments.businessTrip = $self;

    hotelBookingCode      : Composition of one BookingCodes;
    flightBookingCode     : Composition of one BookingCodes;

    flightInformation     : Composition of one FlightInformations;

    attachments           : Composition of many Attachments
                                on attachments.businessTrip = $self;
}
