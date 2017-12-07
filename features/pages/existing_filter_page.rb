class ExistingFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
    @button_menu = Element.new(:id, 'Menu opened')
    @button_buy = Element.new(:id, 'buy_filters')
    @title_parameter_name = Element.new(:id, 'row_filter_header_text')
    @title_filter_count = ElementGroup.new(:id, 'row_filter_header_count')
    @title_filter_name= ElementGroup.new(:id, 'row_filter_name')
    @title_filter_date = ElementGroup.new(:id, 'row_filter_date')
  end

  def visible?
    @title.visible?
    @button_menu.visible?
    @button_buy.visible?
  end

  def open_filter(name)
    @title_filter_name.scroll_to_exact(name).click
  end

  def open_menu
    @button_menu.click
  end

  def open_buy_filters
    @button_buy.click
  end
end 