class UserMailer < ActionMailer::Base
  default from: 'qileiwangnan@sina.com'

    def welcome_email(email)
      @idea = email
      @url  = 'http://example.com/login'
      mail(to: @idea.email, subject: 'Welcome to My Awesome Site')
      puts 'send email successful'
  end
end
