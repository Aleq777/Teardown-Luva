

if not table.unpack then
    table.unpack = unpack
end

if table.pack == nil then
    --- Returns a new table with all arguments stored into keys 1, 2, etc. and with a field "n" with the total number of arguments.
    ---@param ... any
    ---@return table
    table.pack = function (...) ---@diagnostic disable-line : duplicate-set-field
        return {
            n = select("#", ...),
            ...
        }
    end
end