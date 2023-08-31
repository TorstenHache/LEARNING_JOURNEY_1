using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { LEARNING_JOURNEY_1 as my } from '../db/schema';

using LEARNING_JOURNEY_1 from '../db/schema';

@path : '/service/LEARNING_JOURNEY_1'
service LEARNING_JOURNEY_1Service
{
    annotate Mitigations with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    annotate Risks with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    @odata.draft.enabled
    entity A_BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner;
}

annotate LEARNING_JOURNEY_1Service with @requires :
[
    'authenticated-user'
];
