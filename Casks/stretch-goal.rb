cask "stretch-goal" do
  version "0.6.2"
  sha256 "a3c0955a6427e8c34721bc4221b26aab7d825a167c8438ac8ef97bc5f73c62c4"

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
