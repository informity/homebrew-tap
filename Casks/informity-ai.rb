cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.0"
  sha256 arm: "f7351434565aaa487e660e771ddd0d0b49f40fd65513f685fd8f4833cde1b01a"

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
