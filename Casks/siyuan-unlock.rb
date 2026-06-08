cask "siyuan-unlock" do
  version "3.6.4"
  sha256 ""

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac-arm64.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  app "SiYuan.app"
  livecheck do
    url :homepage
    strategy :github_latest
  end
end
