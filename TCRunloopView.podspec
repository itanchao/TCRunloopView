Pod::Spec.new do |s|
    s.name             = 'TCRunloopView'
    s.version          = '2.0.2'
    s.summary          = '图片轮播器'
    s.homepage         = "https://github.com/itanchao/TCRunloopView"
    s.license          = "MIT"
    s.author           = { "谈超" => "itanchao@gmail.com" }
    s.platform         = :ios, "8.0"
    s.source           = { :git => "https://github.com/itanchao/TCRunloopView.git", :tag => s.version }
    s.source_files     = "Sauces", "Sauces/*.{swift}"

    # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'SDWebImage', '~> 4.0.0'
end
