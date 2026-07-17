cask "informity-ai" do
  arch arm: "aarch64"

  version "0.15.1"
  sha256 arm: "b86754008e31f64cd703d12ed34db876d203e29cbd960e1d3b872c32b09381bc"

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
