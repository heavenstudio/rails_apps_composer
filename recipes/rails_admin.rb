gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
unless recipes.include? 'devise'
  gem 'devise'
end

after_bundler do
  generate 'rails_admin:install'
end

__END__

name: RailsAdmin
description: "Install RailsAdmin to manage data in your application"
author: alno

category: other

config:
  - ckeditor:
      type: boolean
      prompt: Install CKEditor?

