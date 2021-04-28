load = function()
	scoreTable.osuAcc = 0
end

receive = function()
	scoreTable.osuAcc = round((((50*(scoreTable.timegates["50"] or 0) + 100*(scoreTable.timegates["100"] or 0) + 200*(scoreTable.timegates["200"] or 0) + 300*((scoreTable.timegates["300"] or 0) + (scoreTable.timegates["MAX"] or 0))) / (300*((scoreTable.timegates["MISS"] or 0) + (scoreTable.timegates["50"] or 0) + (scoreTable.timegates["100"] or 0) + (scoreTable.timegates["200"] or 0) + (scoreTable.timegates["300"] or 0) + (scoreTable.timegates["MAX"] or 0)))) * 100), 3) .. "%"
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
