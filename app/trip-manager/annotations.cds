using TripManagerService as service from '../../srv/service';

annotate service.BusinessTrips with @(
    UI.FieldGroup #GeneratedGroup         : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'startDate',
                Value: startDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'endDate',
                Value: endDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'destination',
                Value: destination,
            },
            {
                $Type: 'UI.DataField',
                Label: 'hotel',
                Value: hotel,
            },
            {
                $Type: 'UI.DataField',
                Label: 'additionalInformation',
                Value: additionalInformation,
            },
        ],
    },
    UI.Facets                             : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information2',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                           : [
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Startdate}',
            Value: startDate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Enddate}',
            Value: endDate,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Destination}',
            Value: destination,
        },
        {
            $Type: 'UI.DataField',
            Label: '{i18n>Hotel}',
            Value: hotel,
        },
        {
            $Type: 'UI.DataField',
            Value: statusName,
            Label: '{i18n>Statusname}',
        },
        {
            $Type: 'UI.DataField',
            Value: transportBy,
            Label: '{i18n>Transportby}',
        },
        {
            $Type         : 'UI.DataField',
            Value         : additionalInformation,
            Label         : '{i18n>Additionalinformation}',
            @UI.Importance: #High,
        },
    ],
    UI.SelectionPresentationVariant #table: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
    },
    UI.HeaderInfo                         : {
        TypeName      : 'HII',
        TypeNamePlural: '',
    },
);

annotate service.BusinessTrips with {
    additionalInformation @UI.MultiLineText: true
};
