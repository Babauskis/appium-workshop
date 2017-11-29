class Tests
  def initialize(pages)
    @pages = pages
  end

  def filter_test
    @filter_test ||= FilterTest.new @pages
    @filter_test
  end

  def settings_test
    @settings_test ||= SettingsTest.new @pages
    @settings_test
  end
end