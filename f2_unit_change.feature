Feature: Unit change

  Scenario: As a user I can change unit from Celsius to Fahrenheit.
	Then I wait
	Then I press "Więcej opcji"
	Then I press "Ustawienia"
	Then I should see "Celsjusza"
	Then I press "Jednostki temperatury"
	Then I press "Fahrenheita"
	Then I should see "Fahrenheita"
	Then I go back
	
  #zmiana jest widoczna dopiero przy przejściach w aplikacji lub odświeżeniu manualnie
  #odświeżam w celu weryfikacji zmiany

	Then I press view with id "action_refresh"
	Then I should see "°F"
	Then I should not see "°C"
	
	Then I should see "°F" 
	Then I should not see "°C"
	Then I press "Jutro"
	Then I should see "°F"
	Then I should not see "°C"
	Then I press "Pojutrze"
	Then I should see "°F"
	Then I should not see "°C"
	
  #zmiana Fahrenheita na Celsjusza

	Then I press "Więcej opcji"
	Then I press "Ustawienia"
	Then I should see "Fahrenheita"
	Then I press "Jednostki temperatury"
	Then I press "Celsjusza"
	Then I should see "Celsjusza"
	Then I go back
	
  #zmiana jest widoczna dopiero przy przejściach w aplikacji lub odświeżeniu manualnie
  #odświeżam w celu weryfikacji zmiany

	Then I press view with id "action_refresh"
	Then I should see "°C"
	Then I should not see "°F"
  
	Then I should see "°C" 
	Then I should not see "°F"
	Then I press "Jutro"
	Then I should see "°C"
	Then I should not see "°F"
	Then I press "Dziś"
	Then I should see "°C"
	Then I should not see "°F"
	
