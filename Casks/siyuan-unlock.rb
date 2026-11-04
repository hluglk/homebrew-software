cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.9"
  sha256 arm:   "de8a38b47e206de531fb14d6a0348077508cee6d3a6130771b5f6200f3c35121",
         intel: "1e875d625d9912d9c68581812f7a054132521552c5d0e05b4336a875c65e05f1"

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
