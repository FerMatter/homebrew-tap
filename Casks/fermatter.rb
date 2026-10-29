cask "fermatter" do
  version "0.11.0,16"
  sha256 "c4711d1134e498c1e66512719052560d1a1306d6a0aa001cb802766b273e556b"

  url "https://github.com/FerMatter/fermatter.github.io/releases/download/v#{version.csv.first}-preview.5/FerMatter.dmg"
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
