class Blog < ApplicationRecord

  varidates :title, presense: true
  varidates :category, presense: true
  varidates :body, presense: true

end
