cask "siyuan-unlock" do
  version "3.6.5"
  sha256 "0d842ddc77adecb443ab423d8db530c028be475734f94438420199ed4605cefc"

  url "https://github.com/appdev/siyuan-unlock/releases/download/v#{version}/siyuan-#{version}-mac-arm64.dmg"
  name "siyuan-unlock"
  desc "思源笔记免登录版本；可以不登录使用同步功能"
  homepage "https://github.com/appdev/siyuan-unlock"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on :macos

  app "SiYuan.app"
end
