Feature: Format date change

  Scenario: As a user I can change date format.
	Then I wait
	Then I press "Więcej opcji"
	Then I press "Ustawienia"
	Then I press "Format daty:"
	Then I press "14.01.2016 - 22:00"
	Then I should see "14.01.2016 - 22:00"
	Then I should not see "pon."
	Then I should not see "wt."
	Then I should not see "śr."
	Then I should not see "czw."
	Then I should not see "pt."
	Then I should not see "sob."
	Then I should not see "nd."
	Then I go back
	
	#odświeżenie
	Then I press view with id "action_refresh"
	
	Then I should not see "pon."
	Then I should not see "wt."
	Then I should not see "śr."
	Then I should not see "czw."
	Then I should not see "pt."
	Then I should not see "sob."
	Then I should not see "nd."
	
	Then I press "Jutro"
	Then I should not see "pon."
	Then I should not see "wt."
	Then I should not see "śr."
	Then I should not see "czw."
	Then I should not see "pt."
	Then I should not see "sob."
	Then I should not see "nd."
	
	Then I press "Pojutrze"
	Then I should not see "pon."
	Then I should not see "wt."
	Then I should not see "śr."
	Then I should not see "czw."
	Then I should not see "pt."
	Then I should not see "sob."
	Then I should not see "nd."