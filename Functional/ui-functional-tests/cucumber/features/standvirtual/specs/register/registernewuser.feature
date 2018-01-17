Feature: Register

I as buyer
I would like to register on standvirtual

@register_new_user
Scenario: Register new user
    Given I access the register page
    When I fill out obrigatory fields
    Then the user is created with success
