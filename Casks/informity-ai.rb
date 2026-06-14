cask "informity-ai" do
  arch arm: "aarch64"

  version "0.14.1"
  sha256 arm: "615ee6485f384894bcae8cbdfa4be0e2367ad142f10cf667faff00cb2d0891b9"

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
