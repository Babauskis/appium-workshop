# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on welcome screen$/ do
    $driver.alert_accept
    if 
        $driver.find_elements(:id, 'close_intro').any?
        $driver.find_element(:id, 'close_intro').click
    end
                        
    if 
        $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').any?
        $driver.find_element(:xpath, '//android.widget.Button[contains(@text, "OK")]').click
        $driver.alert_accept
    end

#Pārbauda vai ir attēlots elements "Transports". Ja ir, tad uzspiež uz elementa
    $driver.wait { $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Transports')]").displayed? }
    $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Transports')]").click

  
#Pārbauda vai ir attēlots elements "Vieglie auto". Ja ir, tad uzspiež uz elementa
    $driver.wait { $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Vieglie auto')]").displayed? }
    $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Vieglie auto')]").click
#Nospiež pogu atapakaļ
    $driver.back

#Pārbauda vai ir attēlota Menu sadaļa. Ja ir, tad uzspiež uz elementa.
    $driver.wait { $driver.find_element(:xpath,"//android.widget.ImageButton[contains(@content-desc,'Menu opened')]").displayed? }
    $driver.find_element(:xpath,"//android.widget.ImageButton[contains(@content-desc,'Menu opened')]").click

#Pārbauda vai ir attēlots elements "Meklēšanas filtri". Ja ir, tad uzspiež uz elementa.
    $driver.wait { $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Meklēšanas filtri')]").displayed? }
    $driver.find_element(:xpath, "//android.widget.TextView[contains(@text, 'Meklēšanas filtri')]").click

#Sleep, lai verificētu vai pēdējais solis izpildījās
sleep(6)
end