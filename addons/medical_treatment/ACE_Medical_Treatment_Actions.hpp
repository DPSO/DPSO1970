class ACEGVAR(medical_treatment,actions) {
    class BasicBandage {
        treatmentTime = QUOTE(call ACEFUNC(medical_treatment,getBandageTime));
    };

    class ApplyTourniquet: BasicBandage {
        treatmentTime = 2.5;
    };
    class RemoveTourniquet: ApplyTourniquet {
        treatmentTime = 1.5;
    };

    class Splint: BasicBandage {
        treatmentTime = 5;
    };

    class Morphine;
    class EatApap: Morphine {
        allowedSelections[] = {"head"};
        allowSelfTreatment = 1;
        displayName = CSTRING(Eat_Apap);
        displayNameProgress = CSTRING(Eating_Apap);
        icon = QPATHTOF(ui\icons\apap.paa);
        items[] = {"AFMED_apap"};
        condition = "(_this select 1) isEqualTo player";
        litter[] = { {"All", "", {"AFMED_MedicalLitter_apap"}} };
    };
    class AdministerApap: EatApap {
        allowSelfTreatment = 0;
        displayName = CSTRING(Administer_Apap);
        displayNameProgress = CSTRING(Administering_Apap);
        condition = "!((_this select 1) getVariable ['ACE_isUnconscious', false])";
    };

    class BloodIV: BasicBandage {
        treatmentTime = 5;
    };
};
