class User < ApplicationRecord
  enum role: { admin: 1, member: 2 }
end
