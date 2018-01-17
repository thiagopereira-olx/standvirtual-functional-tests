Given(/^I access the register page$/) do
  visit '/conta/registar/'
end

When(/^I fill out obrigatory fields$/) do
  find(:css, '#userEmail').set(Faker::Internet.email)
  find(:css, '#userPass').set('inicial1234')
  find(:css, '#userPass-repeat').set('inicial1234')
  execute_script("$('.focusbox #acceptCheck').click()")
  click_button 'Criar conta'
end

Then(/^the user is created with success$/) do
  expect(page).to have_content 'Por favor active a sua conta!'
end
