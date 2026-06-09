cask "informity-ai" do
  arch arm: "aarch64"

  version "0.14.0"
  sha256 arm: "bcc0075a057ec6b16eda0a4da3ae24fbf711f5d8993551a73ccd9f87d05110b6"

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
