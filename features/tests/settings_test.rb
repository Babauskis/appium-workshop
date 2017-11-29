class SettingsTest
  def initialize(pages)
    @pages = pages
  end
  
  def open_settings
    @pages.page_settings.menu_section
    @pages.page_menu_section.visible?
    @pages.page_menu_section.menu_title_category("Iestatījumi")
    @pages.page_settings.visible?
  end
end