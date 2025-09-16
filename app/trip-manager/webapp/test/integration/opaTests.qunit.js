sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'trip/tripmanager/test/integration/FirstJourney',
		'trip/tripmanager/test/integration/pages/BusinessTripsList',
		'trip/tripmanager/test/integration/pages/BusinessTripsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessTripsList, BusinessTripsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('trip/tripmanager') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessTripsList: BusinessTripsList,
					onTheBusinessTripsObjectPage: BusinessTripsObjectPage
                }
            },
            opaJourney.run
        );
    }
);