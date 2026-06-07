cask "informity-ai" do
  arch arm: "aarch64"

  version "0.14.0"
  sha256 arm: "83db64430a023a7b6981af17ddcb8cda0d8cdcf98486f53cb77f27c9cc47102a"

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
