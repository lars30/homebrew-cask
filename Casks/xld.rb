cask :v1 => 'xld' do
  version '20151128'
  sha256 '813fd8339ce856a81a1b9228fd952ead6d43b83a'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          :sha256 => :no_check
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                  '~/Library/Caches/jp.tmkk.XLD',
                  '~/Library/Saved Application State/jp.tmkk.XLD.savedState'
                 ]
end
