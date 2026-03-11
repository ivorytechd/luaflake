local cortisolLevel = 0
local flakeDirectory = "/etc/nixos"

local function fetch()
  local files = {}
  local f = io.popen("find . -maxdepth 1 -name '*.nix'")
  for line in f:lines() do
    table.insert(files, line)
  end
  f:close()

  for _, file in ipairs(files) do
    local count = 0
    for _ in io.lines(file) do
      count = count + 1
    end
    print(file .. " has " .. count .. " lines")
    if count<50 then
      cortisolLevel = 4
    elseif count<100 then
      cortisolLevel = 3
    elseif count<200 then
      cortisolLevel = 2
    elseif count<350 then
      cortisolLevel = 1
    elseif count >=350 then
      cortisolLevel = 0
    end

    local cortisolSummary = "no"

    if cortisolLevel == 4 then
      cortisolSummary = "extremely high, youre either a windows or nix-darwin user or a nix beginner."
    elseif cortisolLevel == 3 then
      cortisolSummary = "high, you may be a nixOS user but youre a beginner, get to work"
    elseif cortisolLevel == 2 then
      cortisolSummary = "medium, you are someway in the nix rabbithole but you need to work on these lines"
    elseif cortisolLevel == 1 then
      cortisolSummary = "low, you are now officially missing cruitial things like hydration, sunlight or a father but you have now finally achieved good cortisol levels, good job but to unlock the final level of cortisol ascension you shalt type more lines mortal"
    elseif cortisolLevel == 0 then
      cortisolSummary = "EXTREMELY LOW, good boy~~ I MEAN, you have done it. throughout the days of missing school, to the days when you didnt shower to the times when you forgot to hydrate, to your lack of vitamin D, you have achieved the final level of low cortisol, congrats. you are now eligible to play luafuck once, dont thank me"
    end
    print("Your cortisol is "..cortisolSummary)
    if cortisolLevel>1 then

      os.execute("sleep 5")

      os.execute("vi /etc/nixos/configuration.nix")
    end
  end
end

fetch()
