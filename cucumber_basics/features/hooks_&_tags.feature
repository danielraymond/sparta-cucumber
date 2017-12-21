Feature: hooks and tags
  As a user I wish to see how cucumber uses tags and hooks

  Scenario: I am able to use hooks
    Given have a before hook in place
    Then I can validate the information in the before hook
