cask 'soundcast' do
  version '1.6'
  sha256 '470098b66a9d48c7c0fada09cc8bf27190d09015eaee9be74c8c4f01d29f84ef'

  url "https://github.com/andresgottlieb/soundcast/releases/download/v#{version}/Soundcast_v#{version}.zip"
  appcast 'https://github.com/andresgottlieb/soundcast/releases.atom'
  name 'Soundcast'
  homepage 'https://github.com/andresgottlieb/soundcast'
  license :mit

  depends_on :cask => 'soundflower'

  app 'soundcast.app'
end
