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
            {
                $Type : 'UI.DataField',
                Label : 'statusName',
                Value : statusName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'transportBy',
                Value : transportBy,
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
            Label : 'additionalInformation',
            Value : additionalInformation,
        },
    ],
);

