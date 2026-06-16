cask "informity-ai" do
  arch arm: "aarch64"

  version "0.14.1"
  sha256 arm: "0fa385cd8670835496acd1c2932df49db794b1c171685c2d03df07f2b91f1dd3"

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
