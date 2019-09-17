
Pod::Spec.new do |spec|
  spec.name         = "OpeninstallDynamic"
  spec.version      = "0.0.1"
  spec.summary      = "OpeninstallDynamic for components"
  spec.description  = <<-DESC
                      OpeninstallDynamic  for components
                      DESC
  spec.homepage     = "https://github.com/bbrichard/OpeninstallDynamic"
  spec.license      = "MIT. Copyright (c) 2019年 BB. All rights reserved."
  spec.author       = { "Richard" => "Richard@seektopser.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  spec.source = { :http  => 'https://raw.githubusercontent.com/bbrichard/OpeninstallDynamic/master/Products/OpeninstallDynamic.framework.zip' }

  spec.default_subspec = 'zip'
  spec.subspec 'zip' do |zip|
      puts '-------------------------------------------------------------------'
      puts 'Notice: OpeninstallDynamic is zip now'
      puts '-------------------------------------------------------------------'
      zip.ios.vendored_frameworks = '*.framework'
  end
end
