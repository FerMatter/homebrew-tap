cask "fermatter" do
  version "0.11.0,13"
  sha256 "4aa7f32aea7be0b5a01593bb51232ace28284b2c0f8bfa6d5e7dcd8b26e15a42"

  url "https://github.com/FerMatter/fermatter.github.io/releases/download/v#{version.csv.first}-preview.2/FerMatter.dmg"
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
