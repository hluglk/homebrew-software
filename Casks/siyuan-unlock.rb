cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.7.2"
  sha256 arm:   "03f42ace01dbf387e66f73ce279a383544925ed09ff4c7f1750d95f6a31117f0",
         intel: "5d89951750d290924f1f8cef413923f715c3590af2597b694737fcc565df1ed5"

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
