cask "informity-ai" do
  arch arm: "aarch64"

  version "0.14.1"
  sha256 arm: "0684721f7cad73a462652e6f0addac4a0bb3a2944b9f4aae5c4ce8e2318b09c8"

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
