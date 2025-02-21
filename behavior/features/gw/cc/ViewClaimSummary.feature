@claimcenter
Feature: View Claim Summary
    As a user I want to View Claim Summary Page

    @ViewClaimSummary
    Scenario: Viewing the summary of an claim
        Given the user logs into the claims center
        When the user loads the data "defaultDataSet" from json "CreateClaimAddNoteTestData"
        And the user creates new FNOL
        And the user search with claim number
        Then the user verifies claim summary page