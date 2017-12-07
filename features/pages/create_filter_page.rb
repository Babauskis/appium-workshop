class CreateFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]')
    @titles_category = ElementGroup.new(:id, 'main_row_text')
    @menu_section = Element.new(:xpath,'//android.widget.ImageButton[contains(@content-desc,"Menu opened")]')
  end

  def visible?
    @title.visible?
    @titles_category.visible?
  end

  def open_category(name)
    @titles_category.click_by_text(name)
  end
  
  def menu_section
    @menu_section.click
  end
end