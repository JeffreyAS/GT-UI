@policycenter @designatedfunction

Feature: New Submission to Issue
    As a user, I want to perform Issue Policy transaction in policy center

    @issue_submission
    Scenario: Creating personal auto issue
        Given the user logs into the policy center as "superuser"
        When the user loads "pc" data "newSubmission_01" from json "NewSubmissionTestData"
        And the user creates personal account
        And the user issue the new submission
        Then the policy is issued
