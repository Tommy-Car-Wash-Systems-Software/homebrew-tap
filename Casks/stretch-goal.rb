cask "stretch-goal" do
  version "0.1.0"
  sha256 "09052f36c5f16e6a049bbe8538db4832c141d8171a52728b787d41de33d64b9d"

  url "https://github.com/Tommy-Car-Wash-Systems-Software/stretch-goal/releases/download/v#{version}/StretchGoal-#{version}.zip"
  name "Stretch Goal"
  desc "Menu bar nudges to move, stretch and hydrate, with a team leaderboard"
  homepage "https://github.com/Tommy-Car-Wash-Systems-Software/stretch-goal"

  depends_on macos: ">= :tahoe"

  app "Stretch Goal.app"

  postflight do
    # Ad-hoc signed, not notarized: without --no-quarantine Gatekeeper blocks first launch.
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Stretch Goal.app"], sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Stretch Goal",
    "~/Library/Preferences/com.tommycarwash.StretchGoal.plist",
  ]
end
