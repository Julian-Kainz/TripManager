sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'at/clouddna/tripmanager/test/integration/FirstJourney',
		'at/clouddna/tripmanager/test/integration/pages/BusinessTripsList',
		'at/clouddna/tripmanager/test/integration/pages/BusinessTripsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessTripsList, BusinessTripsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('at/clouddna/tripmanager') + '/index.html'
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