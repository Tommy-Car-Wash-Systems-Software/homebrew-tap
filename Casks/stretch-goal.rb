cask "stretch-goal" do
  version "0.5.0"
  sha256 "fc39907bf62058bd738b147e725be6e6be20f075d3aa0acf0d3224136200d061"

  url "https://github.com/Tommy-Car-Wash-Systems-Software/stretch-goal/releases/download/v#{version}/StretchGoal-#{version}.zip"
  name "Stretch Goal"
  desc "Menu bar nudges to move, stretch and hydrate, with a team leaderboard"
  homepage "https://github.com/Tommy-Car-Wash-Systems-Software/stretch-goal"

  depends_on macos: :tahoe

  app "Stretch Goal.app"

  zap trash: [
    "~/Library/Application Support/Stretch Goal",
    "~/Library/Preferences/com.tommycarwash.StretchGoal.plist",
  ]
end
