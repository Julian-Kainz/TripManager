sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'trip.tripmanager',
            componentId: 'BusinessTripsList',
            contextPath: '/BusinessTrips'
        },
        CustomPageDefinitions
    );
});