cask "informity-ai" do
  arch arm: "aarch64"

  version "0.16.0"
  sha256 arm: "08ac277a53117c13f1f74b17aa28beb7ac41d7dd3283dbb0bf8ec248b46b207e"

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
