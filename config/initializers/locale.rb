# tell the I18n library where to find your translations
%w{yml rb}.each do |type|
  I18n.load_path += Dir.glob("#{RAILS_ROOT}/config/locales/**/*.#{type}")
end

# you can omit this if you're happy with English as a default locale
I18n.default_locale = "fr-BE"