Feature: City change

  Scenario: As a valid user I can change city.
	Then I wait
	Then I press view with id "action_search"
	Then I wait to see "Wyszukaj miejscowość"
	Then I enter "Polańczyk" into input field number 1
	Then I should see "Polańczyk"
	Given I press the "OK" button
	#w tym miejscu aplikacji nie prezentuje się znak diakrytyczny, zatem zwraca błąd
	Then I should see "Polańczyk, PL" 