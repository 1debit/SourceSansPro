Pod::Spec.new do |spec|
  spec.name = 'OpenSans'
  spec.version = '1.0.0'
  spec.summary = 'A podspec encapsulating Source Sans Pro font for iOS'
  spec.platform = :ios
  spec.source = { :git => 'https://github.com/1debit/SourceSansPro.git', :tag => spec.version.to_s }
  spec.source_files = 'UIFont+SourceSansPro.{h,m}'
  spec.resource_bundle = { 'SourceSansPro' => 'Fonts/*.otf' }
  spec.frameworks = 'UIKit', 'CoreText'
  spec.requires_arc = true
end
