for name, item in pairs(data.raw['assembling-machine']) do
  if item.fluid_boxes and string.sub(name, 1, 3) == "kr-" then
    for _, fluid_box in ipairs(item.fluid_boxes) do
      if type(fluid_box.base_area) == "number" then
        if fluid_box.base_area > 1 then
          if fluid_box.production_type == "input" then
            fluid_box.base_area = 1
          else
            fluid_box.base_area = 2
          end
        end
      end
    end
  end
end
