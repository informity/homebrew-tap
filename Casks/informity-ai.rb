cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.1"
  sha256 arm: "0dde9e78bf123557b14b920f35a5fd6ce1f83fb482f6ea6bd9496cde498c585f"

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
