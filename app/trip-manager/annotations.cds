using TripManagerService as service from '../../srv/service';
annotate service.BusinessTrips with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'startDate',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'endDate',
                Value : endDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'destination',
                Value : destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'hotel',
                Value : hotel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'additionalInformation',
                Value : additionalInformation,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'startDate',
            Value : startDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'endDate',
            Value : endDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'destination',
            Value : destination,
        },
        {
            $Type : 'UI.DataField',
            Label : 'hotel',
            Value : hotel,
        },
        {
            $Type : 'UI.DataField',
            Value : statusName,
            Label : 'statusName',
        },
        {
            $Type : 'UI.DataField',
            Value : transportBy,
            Label : 'transportBy',
        },
        {
            $Type : 'UI.DataField',
            Value : additionalInformation,
            Label : 'additionalInformation',
        },
    ],
);

annotate service.BusinessTrips with {
    additionalInformation @UI.MultiLineText : true
};

