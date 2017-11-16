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


Given /^I am on create filter page$/ do
 @pages.page_intro.close_intro_if_visible
 @pages.page_create_filter.visible?
end


Given /^I open sub cat (.*)$/ do |sub_cat|
  @pages.page_sub_category.open_sub_category(sub_cat)
end

Given /^I open on Transports category$/ do
    @pages.page_create_filter.open_category("Transports")
end

Given /^I am on parameters page$/ do
  @pages.page_paremeters.visible?
end
#Aizpilda parametrus
Given /^I set filter parameters$/ do
  @pages.page_paremeters.set_name("Audi A1")
  @pages.page_paremeters.set_parameter("CENA (EUR)", "9001", "10001")
  @pages.page_paremeters.set_parameter("GADS", "2011", "2012")
  @pages.page_paremeters.set_parameter("NOBRAUKUMS (TŪKST.)", "70000", "150000")
  #@pages.page_parameters.set_parameter("TILPUMS", "1.4", "1.6")
  @pages.page_paremeters.save_filter
end

#Pārbaudam vai papildus filtru iegādes paziņojums ir parādījies
Given /^I am on buy extra filters page$/ do
  @pages.page_buy_filter.visible?
end
#Aizveram paziņojuma logu par papildus filtru iegādi
Given /^I click cancel to move forward$/ do
  @pages.page_buy_filter.close_pay_window
end
#Atveram menu sadaļu
Given /^I click on menu button$/ do
  @pages.page_create_filter.menu_section
end
#Pārbaudam vai menu sadaļa ir parādījusies
Given /^I am on menu_section page$/ do
  @pages.page_menu_section.visible?
end
#Atveram meklēšanas filtru sadaļu
Given /^I click on search filter page$/ do
  @pages.page_menu_section.menu_title_category("Meklēšanas filtri")
end
#Pārbaudam vai nepieciešamie elementi ir parādījušies
Given /^I am on search_filters page$/ do
  @pages.page_search_filters.visible?
end
#Atveram filtru ar mūsu piešķirto nosaukumu
Given /^I open filter_audi filter$/ do
  @pages.page_search_filters.open_filter("Audi A1")
end
#Pārbaudam vai tas ir atvēries
Given /^I am on filter page$/ do
  @pages.page_filter_view.visible?
end
#Nosipiežam uz delete pogas
Given /^I click on delete button/ do
  @pages.page_filter_view.delete_filter_click
end
#Pārbaudam vai atvērās brīdinājums par to, vai tiešām vēlamies dzēst...
Given /^I am on delete frame page/ do
  @pages.page_delete_filter.visible?
end
#Izvēlamies opciju dzēst
Given /^I click to delete filter/ do
  @pages.page_delete_filter.delete_filter
end