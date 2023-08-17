class Tag < ApplicationRecord
    has_many :plant_tags

    ICONS = {
        "flower" => "🌻",
        "plant" => "🍀",
        "evergreen" => "🌲",
        "succulent" => "🪴"
    }
end
