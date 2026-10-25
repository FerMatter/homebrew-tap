cask "fermatter" do
  version "0.11.0,15"
  sha256 "e54bb07d5b29a2bd3c4a3b7d90063c7d45ebdfb74ca5486c06056f906b2cf42c"

  url "https://github.com/FerMatter/fermatter.github.io/releases/download/v#{version.csv.first}-preview.4/FerMatter.dmg"
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
