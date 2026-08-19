cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.1"
  sha256 arm:   "76a07ed7ffcd1d49a959ecccae04e6b035d7fd29c5bcca629f3b5eba2b67e008",
         intel: "be1daa77ba155df63d9a783cc04d3ff26a0691171576a6b6b843f261d39cdb03"

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
