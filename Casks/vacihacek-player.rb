cask "vacihacek-player" do
  version "1.0.0"
  sha256 "ab5a777fa3f56e4d385ff5ff106bd9a60f9b2ac300f7772a02503ba1c58c1c7d" # Will be calculated after first release

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