cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.5"
  sha256 arm:   "9393deb24e79fd750d830d342b9ea754120f35fc3da8dab37495b1c212172644",
         intel: "a365711f6aaee67a989064b60161ac5c337034a656796117fe896b64d3404c94"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  depends_on macos: :big_sur

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
