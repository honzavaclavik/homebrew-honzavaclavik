cask "vaci-player" do
  version "1.0.1"
  sha256 "2fa117944b06fdb322458fbf1d5a48a38a0bf0668d3ce089ac00b80460847707"

  url "https://github.com/honzavaclavik/Vaci-Player/releases/download/#{version}/VaciPlayer-#{version}-darwin.tar.gz"
  name "VáciHáček Player"
  desc "Nativní macOS MP3 přehrávač s pokročilými funkcemi"
  homepage "https://github.com/honzavaclavik/Vaci-Player"

  depends_on macos: ">= :sonoma"

  app "VaciPlayer.app"

  zap trash: [
    "~/Library/Preferences/com.example.vacihacek.player.plist",
    "~/Library/Application Support/VaciPlayer",
  ]
end