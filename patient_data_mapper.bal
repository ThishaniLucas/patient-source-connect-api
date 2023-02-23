import wso2healthcare/healthcare.fhir.r4;

// FHIR Patient resource type as defined in the @healthcare.fhir.r4 module.
// @healthcare.fhir.r4 module is a FHIR library written in Ballerina programming language.
// This module contains the data types and operations related to FHIR R4 resources.
// For more information, see https://central.ballerina.io/wso2healthcare/healthcare.fhir.r4
// For more information on Choreo visual data mapper, 
// see https://wso2.com/blogs/thesource/introducing-choreo-visual-data-mapper/
type Patient r4:Patient;

// This is a sample custom JSON payload just for demonstration purposes.
type jsonPatient record {
    string id;
    record {
        string versionId;
        string[] profile;
    } meta;
    anydata[] identifier;
    string implicitRules;
    string language;
    string gender;
    string dob;
    string name;
};

// Click on the `Design` label below to see the code in the data mapper view.
// This code is generated by the Choreo visual data mapper.
// See: https://wso2.com/blogs/thesource/introducing-choreo-visual-data-mapper/
function convertPatient(jsonPatient jsonPatient) returns Patient => {
    id: jsonPatient.id,
    meta: {
        versionId: jsonPatient.meta.versionId,
        profile: jsonPatient.meta.profile
    },
    implicitRules: jsonPatient.implicitRules,
    birthDate: jsonPatient.dob,
    name: [
        {
            text: jsonPatient.name
        }
    ]
};