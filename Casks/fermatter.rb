cask "fermatter" do
  version "0.11.0,14"
  sha256 "bf371ec0314c130fb51a5b5d13fbee6fa6aef2e0d2202d5a26922851b4b1f73a"

  url "https://github.com/FerMatter/fermatter.github.io/releases/download/v#{version.csv.first}-preview.3/FerMatter.dmg"
  name "FerMatter"
  desc "Equations and figures for your slides"
  homepage "https://fermatter.github.io/"

  livecheck do
    skip "Unnotarized preview; releases are updated manually"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FerMatter.app"

  caveats <<~EOS
    This is an unnotarized preview. If macOS blocks first launch, use
    System Settings > Privacy & Security > Open Anyway for FerMatter.
    https://support.apple.com/102445

    Install Typst or TeX tools separately:
    https://fermatter.github.io/guide/requirements/
  EOS
end
