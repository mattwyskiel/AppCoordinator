Pod::Spec.new do |s|
  s.name         = "AppCoordinator"
  s.version      = "0.0.1"
  s.summary      = "A better way to manage app navigation, and a great way to get rid of Massive View Controller."
  s.description  = <<-DESC
  A better way to manage app navigation, and a great way to get rid of Massive View Controller.
                   DESC
  s.homepage     = "http://github.com/mattwyskiel/AppCoordinator"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author             = { "Matthew Wyskiel" => "mwwyskiel@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://github.com/mattwyskiel/AppCoordinator.git", :tag => "#{s.version}" }
  s.source_files  = "Sources/*.swift"
  s.framework  = "UIKit"
end
