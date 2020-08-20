class UserService

    def self.login(email, password)
        
    end

    def self.register(email, first_name, last_name, nickname, password, password_confirmation)
    
    end
        
    def self.logout(user)
        user.update(token: nil)
    end
end