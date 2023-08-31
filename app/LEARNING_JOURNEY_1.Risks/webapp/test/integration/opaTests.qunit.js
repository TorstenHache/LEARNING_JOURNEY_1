sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'LEARNINGJOURNEY1/Risks/test/integration/FirstJourney',
		'LEARNINGJOURNEY1/Risks/test/integration/pages/RisksList',
		'LEARNINGJOURNEY1/Risks/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('LEARNINGJOURNEY1/Risks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);