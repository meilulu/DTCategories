

Pod::Spec.new do |s|

  s.name         = "DTCategories"
  s.version      = "0.0.1"
  s.summary      = "自己搜集的一些在开发中提供便利的categories"


  s.homepage     = "https://github.com/meilulu/DTCategories.git"


  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "meilulu" => "84005870@qq.com" }
   s.platform    = :ios, "10.0" 
  s.source       = { :git => "https://github.com/meilulu/DTCategories.git", :tag => "#{s.version}" }

  s.requires_arc = true
  s.source_files  = "DTCategories","*.{h,m}" 



end
