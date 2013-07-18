Feature:
  Testing the simple view widget.

  @api @current
  Scenario: Verify the simple view widget works after tagging node to term.
     Given I am logging in as "john"
       And the widget "Simple view list" is set in the "Classes" page with the following <settings>:
           | Content Type               | Class   | select list |
           | edit-only-vocabs-values--2 | authors | select list |
      When I assign the node "John F. Kennedy" to the term "Stephen William Hawking"
       And I visit "john/classes"
      Then I should see "Simple view list"
       And I should see "John F. Kennedy"
