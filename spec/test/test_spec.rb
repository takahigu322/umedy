step ':filenameを保存する' do |filename|
  page.save_screenshot "#{Rails.root}/directory_contains_actual_images/#{filename}.png", full: true
end
