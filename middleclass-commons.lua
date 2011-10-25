if common_class ~= false then
  common = type(common) == "table" and common or {}

  function common.class(name, klass, superclass)
    local c = class(name, superclass)
    for i, v in pairs(class) do
      c[i] = v
    end

    if class.init then
      c.initialize = class.init
    end
    return c
  end
end


