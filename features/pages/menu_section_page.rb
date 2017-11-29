class MenuSectionPage < BasePage
  def initialize
    @title_image = Element.new(:xpath, '//android.widget.ImageView[contains(@content-desc,"NotifyUs")]')
    @menu_title_category = ElementGroup.new(:id, 'item_name')
  end

  def visible?
    @title_image.visible?
    @menu_title_category.visible?
  end

  def menu_title_category(name)
    @menu_title_category.click_by_text(name)
  end
end 