cask "stretch-goal" do
  version "0.4.1"
  sha256 "3b300c0653f76323b34858cabab475fd71200c7055393a3c3be02c2b3103952f"

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
