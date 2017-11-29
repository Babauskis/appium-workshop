class BuyFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iegādājies papildu filtru")]')
    @button_buy = Element.new(:xpath, '//android.widget.TextView[contains(@text, "PIRKT")]')
    @button_cancel = Element.new(:xpath, '//android.widget.TextView[contains(@text, "ATCELT")]')
  end

  def visible?
    @title.visible?
  end

  def close_buy_filter
    if @button_cancel.any?
       @button_cancel.click
    end
  end
end