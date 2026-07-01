cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.7.0"
  sha256 arm:   "a13c8d866e479e94f23f7dc3a778ad80681d3163efa02a7ab39548df6fc86608",
         intel: "826671490ac7ef70ba6217e3e58cb824dcab0155389346f8292687e9f00c1af6"

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
