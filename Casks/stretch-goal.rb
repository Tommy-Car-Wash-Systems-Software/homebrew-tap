cask "stretch-goal" do
  version "0.2.1"
  sha256 "fb647ceb176e133383454b6d1cf25ce83cdae2c4336739bf9bbf15cb241c98eb"

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
