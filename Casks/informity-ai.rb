cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.0"
  sha256 arm: "072409579fb4af2b556882e4f0c809a4350370c53b1e8a3750e86e76d4c92cc0"

  url "https://www.informity.ai/download/Informity_AI_#{version}_#{arch}.dmg"
  name "Informity AI"
  desc "Privacy-first local document intelligence"
  homepage "https://www.informity.ai"

  livecheck do
    url "https://github.com/informity/informity-ai"
    strategy :github_latest
  end

  app "Informity AI.app"

  zap trash: [
    "~/Library/Application Support/com.informity.ai",
    "~/.informity",
  ]
end
