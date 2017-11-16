class NotificationPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Paziņojumi")]')
    @filter_result = ElementGroup.new(:id, 'adv_top_left')
    @menu_section = Element.new(:xpath,'//android.widget.ImageButton[contains(@content-desc,"Menu opened")]')
  end

  def visible?
    @title.visible?
    @filter_result.visible?
    @menu_section.visible?
  end

  def filter_result(name)
    @titles_result.click_by_text(name)
  end

  def menu_section
    @menu_section.click
  end
end