cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.1"
  sha256 arm: "48d54930e671f37c3914e97dfb426d8dcdbd002bb14e7ede20924e7f18286905"

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
