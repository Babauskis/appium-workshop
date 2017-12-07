class MenuSectionPage < BasePage
  def initialize
    @menu_title_category = ElementGroup.new(:id, 'item_name')
   
  end

  def visible?
    @menu_title_category.visible?
  end

  def menu_title_category(name)
    @menu_title_category.click_by_text(name)
  end
end 