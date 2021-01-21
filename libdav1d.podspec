#
# Be sure to run `pod lib lint TestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libdav1d'
  s.version          = '0.7.1'
  s.summary          = 'dav1d is an AV1 decoder :)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
dav1d is a new AV1 cross-platform decoder, open-source, and focused on speed and correctness.
                       DESC

  s.homepage         = 'https://github.com/videolan/dav1d'
  s.license          = { :type => 'BSD 2-clause' }
  s.author           = { 'Alliance for Open Media' => 'https://aomedia.org' }
  s.source           = { :git => 'https://github.com/SDWebImage/libdav1d-Xcode.git', :tag => s.version.to_s, :submodules => true }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'dav1d/src/**/*.{h,c}', 'dav1d/include/**/*.h', 'generate/config.h', 'generate/vcs_version.h', 'generate/tmpl_16/*.c'
  s.public_header_files = 'dav1d/include/dav1d/*.h'
  s.exclude_files = 'dav1d/src/arm', 'dav1d/src/ppc', 'dav1d/src/win32', 'dav1d/src/x86', 'dav1d/src/ext', 'dav1d/include/compat'
  
  s.pod_target_xcconfig = {
    'USE_HEADERMAP' => 'NO',
    'HEADER_SEARCH_PATHS' => '$(inherited) ${PODS_ROOT}/libdav1d/dav1d ${PODS_TARGET_SRCROOT}/dav1d ${PODS_ROOT}/libdav1d/dav1d/include ${PODS_TARGET_SRCROOT}/dav1d/include ${PODS_ROOT}/libdav1d/generate ${PODS_TARGET_SRCROOT}/generate'
  }
  # hack to fix the header include issue from CocoaPods. This effect the static library target form, but not multiple projects
  s.prepare_command = <<-CMD
                      sed -i '' 's/\\"common.h\\"/\\"dav1d\\/common.h\\"/g' './dav1d/src/fg_apply_tmpl.c'
                      cp './dav1d/include/dav1d/version.h.in' './dav1d/include/dav1d/version.h'
                      sed -i '' 's/\\@DAV1D_API_VERSION_MAJOR@/4/g' './dav1d/include/dav1d/version.h'
                      sed -i '' 's/\\@DAV1D_API_VERSION_MINOR@/0/g' './dav1d/include/dav1d/version.h'
                      sed -i '' 's/\\@DAV1D_API_VERSION_PATCH@/2/g' './dav1d/include/dav1d/version.h'
                      CMD
  s.preserve_paths = 'dav1d', 'generate'
end
