cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.7.1"
  sha256 arm:   "bb55ebc164c622a3dc33dab9016f714b80491cb362da8c6b447d9605263f440e",
         intel: "a5647286941ff76f5dbeafbc6caf0301f3d41bd1cc06ad96de47dead929cc068"

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
