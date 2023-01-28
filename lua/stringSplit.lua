local function s(str, chr)
    if #chr>1 or not chr then return end
    local rs = ""
    local rt = {}
    for i = 1, #str do
        if string.sub(str, i, i) == chr or chr == "" then
            rt[#rt+1] = rs
            rs = ""
        else
            rs = rs..string.sub(str, i, i)
        end
    end
    rt[#rt+1] = rs
    return rt
end

return s
