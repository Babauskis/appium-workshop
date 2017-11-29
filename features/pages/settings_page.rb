class SettingsPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
    @sub_title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "PAZIŅOJUMI")]')
    @notif_vibrate = Element.new(:id, 'settings_one')
    @notif_sound = Element.new(:id, 'settings_two')
    @menu_section = Element.new(:xpath,'//android.widget.ImageButton[contains(@content-desc,"Menu opened")]')
    @notif_vib_comp_btn = Element.new(:id, 'notif_id_one')
    @notif_sound_comp_btn = Element.new(:id, 'notif_id_two')
  end

  def visible?
    @title.visible?
    @notif_vibrate.visible?
    @notif_sound.visible?
    @menu_section.visible?
    @notif_sound_comp_btn.visible?
    @notif_vib_comp_btn.visible?         
  end

  def menu_section
    @menu_section.click
  end
end 