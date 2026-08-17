cask "informity-ai" do
  arch arm: "aarch64"

  version "0.16.0"
  sha256 arm: "84c455362d9876637fbe2c7758ac9fdabdb43c4903e813c0ee20f4194de28817"

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
