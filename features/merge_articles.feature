Feature: Merge Articles
  As a blog administrator
  In order to save time
  I want to merge articles

  Scenario: A non-admin cannot merge two articles
    Given I am logged in as a non-admin
    And I want to merge two articles with user "joe@example.com"
    Then I should not be authorized

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given the blog is set up
    And I am logged into the admin panel
    And I want to merge two articles with user "joe@snow.com"
    Then a new article with the merged content should be created
