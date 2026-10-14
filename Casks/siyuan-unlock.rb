cask "siyuan-unlock" do
  arch arm: "-arm64"

  version "3.8.6"
  sha256 arm:   "0fcbf3ae17ca394d03bfb827e7bf3edd2d6cbd351ef0e83244ebf5142b57f676",
         intel: "cfd9b227198ef4c07a12cd11ca96e7f8fa154c8674d40efc0517d6583a29b321"

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
