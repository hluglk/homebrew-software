cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.12"
  sha256 arm:   "02b022cead2d5383be15696d76edc407473071b3dde717186b4697f3230491c6",
         intel: "1d1038465a329472cd3adc992b0c9cb916fb9f7b84e307db06283e0e46c1c70c"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  depends_on :macos

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
