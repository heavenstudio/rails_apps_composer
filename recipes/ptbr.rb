configuration = <<-CONFIG
config.time_zone = "Brasilia"
    config.i18n.default_locale = :"pt-BR"
CONFIG

application configuration
get "https://raw.github.com/svenfuchs/rails-i18n/master/rails/locale/pt-BR.yml", "config/locales/pt-BR.yml"

if recipes.include? 'simple_form'
  get "https://raw.github.com/gist/1183689/efb1194cec52b09946c4e136e56c21d0769f94a0/simple-form.pt-BR.yml", "config/locales/simple-form.pt-BR.yml"
end

if recipes.include? 'devise'
  get "https://raw.github.com/gist/924555/5c5b5324ccd221bbca0034304d7620341e271db5/devise.pt-BR.yml", "config/locales/devise.pt-BR.yml"
end

__END__

name: ptbr
description: "Adds default configurations and translations for ptbr applications"
author: teonimesic

category: i18n
tags: [configuration]