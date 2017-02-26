Feature: Location change

  Scenario: As a user I can check weather according to my location.
	
	#rozwiązanie dzięki Geocoder od Ruby
	
	Then I wait
	Then I should see "London, GB"
	Then I go to "New York"
	Then I press "Więcej opcji"
	Then I press "Erkenne Ort"
	Then I should see "New York, US"