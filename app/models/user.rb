class User < ApplicationRecord

    has_secure_password
    validates :email, 
        format: {with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, message: 'Email is invalid'},
        uniqueness: {case_sensitive: false}

end