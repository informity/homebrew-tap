cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.0"
  sha256 arm: "91cb88f3edf2730bc468ae19dd852e43f8d0b96e8eb57ab27eb14361ea2a08fe"

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
