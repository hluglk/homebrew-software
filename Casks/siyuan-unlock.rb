cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.3"
  sha256 arm:   "89706fc50f9d6cb9eef61f8ebd5ae336d160f11ba41ba654882f61a660017036",
         intel: "5465ac5f207beb2a67eb3501e300a1a671604c3d1996d45b1ac06dc5156001c8"

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
