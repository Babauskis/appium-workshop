class MenuSectionPage < BasePage
  def initialize
    @title_image = Element.new(:class_name, 'android.widget.ImageView')
    @menu_title_category = ElementGroup.new(:id, 'item_name')
    #Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
  end

  def visible?
    @title_image.visible?
    @menu_title_category.visible?
  end

  def menu_title_category(name)
    @menu_title_category.click_by_text(name)
  end
end