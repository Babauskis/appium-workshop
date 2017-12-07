class DeleteFilterPage < BasePage
  def initialize
   @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Dzēst filtru?")]')
    @button_cancel = Element.new(:xpath, '//android.widget.Button[contains(@text, "ATCELT")]')
    @button_delete = Element.new(:xpath, '//android.widget.Button[contains(@text, "DZĒST")]')
  end

  def visible?
    @title.visible?
    @button_cancel.visible?
    @button_delete.visible?
  end

  def delete_filter
    @button_delete.click
  end

  def cancel_filter
    @button_cancel.click
  end
end 