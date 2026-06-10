cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.6.4"
  sha256 arm:   "0d842ddc77adecb443ab423d8db530c028be475734f94438420199ed4605cefc",
         intel: "53a99ba3644911da0507f71707dc38b76c8d06ef0a4961aac83b631924332850"

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
