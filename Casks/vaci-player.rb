cask "vaci-player" do
  version "1.1.0"
  sha256 "fa084b9d05de4a13363d702d04e35e1c583959f80acfffbedf43c60c1d89ad00"

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